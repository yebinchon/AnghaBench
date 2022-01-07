; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcclibs/libdecnumber/extr_decRound.c___dfp_get_round.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcclibs/libdecnumber/extr_decRound.c___dfp_get_round.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__dfp_rounding_mode = common dso_local global i32 0, align 4
@FE_DEC_DOWNWARD = common dso_local global i32 0, align 4
@FE_DEC_TONEAREST = common dso_local global i32 0, align 4
@FE_DEC_TONEARESTFROMZERO = common dso_local global i32 0, align 4
@FE_DEC_TOWARDZERO = common dso_local global i32 0, align 4
@FE_DEC_UPWARD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__dfp_get_round() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @__dfp_rounding_mode, align 4
  switch i32 %2, label %13 [
    i32 130, label %3
    i32 129, label %5
    i32 128, label %7
    i32 131, label %9
    i32 132, label %11
  ]

3:                                                ; preds = %0
  %4 = load i32, i32* @FE_DEC_DOWNWARD, align 4
  store i32 %4, i32* %1, align 4
  br label %14

5:                                                ; preds = %0
  %6 = load i32, i32* @FE_DEC_TONEAREST, align 4
  store i32 %6, i32* %1, align 4
  br label %14

7:                                                ; preds = %0
  %8 = load i32, i32* @FE_DEC_TONEARESTFROMZERO, align 4
  store i32 %8, i32* %1, align 4
  br label %14

9:                                                ; preds = %0
  %10 = load i32, i32* @FE_DEC_TOWARDZERO, align 4
  store i32 %10, i32* %1, align 4
  br label %14

11:                                               ; preds = %0
  %12 = load i32, i32* @FE_DEC_UPWARD, align 4
  store i32 %12, i32* %1, align 4
  br label %14

13:                                               ; preds = %0
  store i32 -1, i32* %1, align 4
  br label %14

14:                                               ; preds = %13, %11, %9, %7, %5, %3
  %15 = load i32, i32* %1, align 4
  ret i32 %15
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
