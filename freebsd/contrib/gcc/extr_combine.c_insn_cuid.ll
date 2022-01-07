; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_combine.c_insn_cuid.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_combine.c_insn_cuid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@max_uid_cuid = common dso_local global i64 0, align 8
@USE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64)* @insn_cuid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @insn_cuid(i64 %0) #0 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  br label %3

3:                                                ; preds = %23, %1
  %4 = load i64, i64* %2, align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %21

6:                                                ; preds = %3
  %7 = load i64, i64* %2, align 8
  %8 = call i64 @INSN_UID(i64 %7)
  %9 = load i64, i64* @max_uid_cuid, align 8
  %10 = icmp sgt i64 %8, %9
  br i1 %10, label %11, label %21

11:                                               ; preds = %6
  %12 = load i64, i64* %2, align 8
  %13 = call i64 @NONJUMP_INSN_P(i64 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %11
  %16 = load i64, i64* %2, align 8
  %17 = call i32 @PATTERN(i64 %16)
  %18 = call i64 @GET_CODE(i32 %17)
  %19 = load i64, i64* @USE, align 8
  %20 = icmp eq i64 %18, %19
  br label %21

21:                                               ; preds = %15, %11, %6, %3
  %22 = phi i1 [ false, %11 ], [ false, %6 ], [ false, %3 ], [ %20, %15 ]
  br i1 %22, label %23, label %26

23:                                               ; preds = %21
  %24 = load i64, i64* %2, align 8
  %25 = call i64 @NEXT_INSN(i64 %24)
  store i64 %25, i64* %2, align 8
  br label %3

26:                                               ; preds = %21
  %27 = load i64, i64* %2, align 8
  %28 = call i64 @INSN_UID(i64 %27)
  %29 = load i64, i64* @max_uid_cuid, align 8
  %30 = icmp sle i64 %28, %29
  %31 = zext i1 %30 to i32
  %32 = call i32 @gcc_assert(i32 %31)
  %33 = load i64, i64* %2, align 8
  %34 = call i32 @INSN_CUID(i64 %33)
  ret i32 %34
}

declare dso_local i64 @INSN_UID(i64) #1

declare dso_local i64 @NONJUMP_INSN_P(i64) #1

declare dso_local i64 @GET_CODE(i32) #1

declare dso_local i32 @PATTERN(i64) #1

declare dso_local i64 @NEXT_INSN(i64) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i32 @INSN_CUID(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
