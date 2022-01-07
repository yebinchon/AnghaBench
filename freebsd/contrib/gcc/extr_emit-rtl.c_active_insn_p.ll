; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_emit-rtl.c_active_insn_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_emit-rtl.c_active_insn_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@reload_completed = common dso_local global i32 0, align 4
@USE = common dso_local global i64 0, align 8
@CLOBBER = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @active_insn_p(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = call i64 @CALL_P(i32 %3)
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %35, label %6

6:                                                ; preds = %1
  %7 = load i32, i32* %2, align 4
  %8 = call i64 @JUMP_P(i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %35, label %10

10:                                               ; preds = %6
  %11 = load i32, i32* %2, align 4
  %12 = call i64 @NONJUMP_INSN_P(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %33

14:                                               ; preds = %10
  %15 = load i32, i32* @reload_completed, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %31

17:                                               ; preds = %14
  %18 = load i32, i32* %2, align 4
  %19 = call i32 @PATTERN(i32 %18)
  %20 = call i64 @GET_CODE(i32 %19)
  %21 = load i64, i64* @USE, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %29

23:                                               ; preds = %17
  %24 = load i32, i32* %2, align 4
  %25 = call i32 @PATTERN(i32 %24)
  %26 = call i64 @GET_CODE(i32 %25)
  %27 = load i64, i64* @CLOBBER, align 8
  %28 = icmp ne i64 %26, %27
  br label %29

29:                                               ; preds = %23, %17
  %30 = phi i1 [ false, %17 ], [ %28, %23 ]
  br label %31

31:                                               ; preds = %29, %14
  %32 = phi i1 [ true, %14 ], [ %30, %29 ]
  br label %33

33:                                               ; preds = %31, %10
  %34 = phi i1 [ false, %10 ], [ %32, %31 ]
  br label %35

35:                                               ; preds = %33, %6, %1
  %36 = phi i1 [ true, %6 ], [ true, %1 ], [ %34, %33 ]
  %37 = zext i1 %36 to i32
  ret i32 %37
}

declare dso_local i64 @CALL_P(i32) #1

declare dso_local i64 @JUMP_P(i32) #1

declare dso_local i64 @NONJUMP_INSN_P(i32) #1

declare dso_local i64 @GET_CODE(i32) #1

declare dso_local i32 @PATTERN(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
