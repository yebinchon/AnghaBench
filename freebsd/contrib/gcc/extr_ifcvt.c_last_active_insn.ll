; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_ifcvt.c_last_active_insn.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_ifcvt.c_last_active_insn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@USE = common dso_local global i64 0, align 8
@NULL_RTX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i32)* @last_active_insn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @last_active_insn(i32 %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %4, align 4
  %9 = call i64 @BB_END(i32 %8)
  store i64 %9, i64* %6, align 8
  %10 = load i32, i32* %4, align 4
  %11 = call i64 @BB_HEAD(i32 %10)
  store i64 %11, i64* %7, align 8
  br label %12

12:                                               ; preds = %43, %2
  %13 = load i64, i64* %6, align 8
  %14 = call i64 @NOTE_P(i64 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %35, label %16

16:                                               ; preds = %12
  %17 = load i64, i64* %6, align 8
  %18 = call i64 @JUMP_P(i64 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %35, label %20

20:                                               ; preds = %16
  %21 = load i32, i32* %5, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %33

23:                                               ; preds = %20
  %24 = load i64, i64* %6, align 8
  %25 = call i64 @NONJUMP_INSN_P(i64 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %23
  %28 = load i64, i64* %6, align 8
  %29 = call i32 @PATTERN(i64 %28)
  %30 = call i64 @GET_CODE(i32 %29)
  %31 = load i64, i64* @USE, align 8
  %32 = icmp eq i64 %30, %31
  br label %33

33:                                               ; preds = %27, %23, %20
  %34 = phi i1 [ false, %23 ], [ false, %20 ], [ %32, %27 ]
  br label %35

35:                                               ; preds = %33, %16, %12
  %36 = phi i1 [ true, %16 ], [ true, %12 ], [ %34, %33 ]
  br i1 %36, label %37, label %46

37:                                               ; preds = %35
  %38 = load i64, i64* %6, align 8
  %39 = load i64, i64* %7, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %37
  %42 = load i64, i64* @NULL_RTX, align 8
  store i64 %42, i64* %3, align 8
  br label %54

43:                                               ; preds = %37
  %44 = load i64, i64* %6, align 8
  %45 = call i64 @PREV_INSN(i64 %44)
  store i64 %45, i64* %6, align 8
  br label %12

46:                                               ; preds = %35
  %47 = load i64, i64* %6, align 8
  %48 = call i64 @LABEL_P(i64 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %46
  %51 = load i64, i64* @NULL_RTX, align 8
  store i64 %51, i64* %3, align 8
  br label %54

52:                                               ; preds = %46
  %53 = load i64, i64* %6, align 8
  store i64 %53, i64* %3, align 8
  br label %54

54:                                               ; preds = %52, %50, %41
  %55 = load i64, i64* %3, align 8
  ret i64 %55
}

declare dso_local i64 @BB_END(i32) #1

declare dso_local i64 @BB_HEAD(i32) #1

declare dso_local i64 @NOTE_P(i64) #1

declare dso_local i64 @JUMP_P(i64) #1

declare dso_local i64 @NONJUMP_INSN_P(i64) #1

declare dso_local i64 @GET_CODE(i32) #1

declare dso_local i32 @PATTERN(i64) #1

declare dso_local i64 @PREV_INSN(i64) #1

declare dso_local i64 @LABEL_P(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
