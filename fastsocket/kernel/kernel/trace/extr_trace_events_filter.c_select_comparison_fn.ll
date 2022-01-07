; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_trace_events_filter.c_select_comparison_fn.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_trace_events_filter.c_select_comparison_fn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@OP_EQ = common dso_local global i32 0, align 4
@OP_NE = common dso_local global i32 0, align 4
@filter_pred_64 = common dso_local global i32* null, align 8
@filter_pred_s64 = common dso_local global i32* null, align 8
@filter_pred_u64 = common dso_local global i32* null, align 8
@filter_pred_32 = common dso_local global i32* null, align 8
@filter_pred_s32 = common dso_local global i32* null, align 8
@filter_pred_u32 = common dso_local global i32* null, align 8
@filter_pred_16 = common dso_local global i32* null, align 8
@filter_pred_s16 = common dso_local global i32* null, align 8
@filter_pred_u16 = common dso_local global i32* null, align 8
@filter_pred_8 = common dso_local global i32* null, align 8
@filter_pred_s8 = common dso_local global i32* null, align 8
@filter_pred_u8 = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32, i32, i32)* @select_comparison_fn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @select_comparison_fn(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32* null, i32** %7, align 8
  %8 = load i32, i32* %5, align 4
  switch i32 %8, label %85 [
    i32 8, label %9
    i32 4, label %28
    i32 2, label %47
    i32 1, label %66
  ]

9:                                                ; preds = %3
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @OP_EQ, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %17, label %13

13:                                               ; preds = %9
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @OP_NE, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %13, %9
  %18 = load i32*, i32** @filter_pred_64, align 8
  store i32* %18, i32** %7, align 8
  br label %27

19:                                               ; preds = %13
  %20 = load i32, i32* %6, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %19
  %23 = load i32*, i32** @filter_pred_s64, align 8
  store i32* %23, i32** %7, align 8
  br label %26

24:                                               ; preds = %19
  %25 = load i32*, i32** @filter_pred_u64, align 8
  store i32* %25, i32** %7, align 8
  br label %26

26:                                               ; preds = %24, %22
  br label %27

27:                                               ; preds = %26, %17
  br label %85

28:                                               ; preds = %3
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* @OP_EQ, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %36, label %32

32:                                               ; preds = %28
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* @OP_NE, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %32, %28
  %37 = load i32*, i32** @filter_pred_32, align 8
  store i32* %37, i32** %7, align 8
  br label %46

38:                                               ; preds = %32
  %39 = load i32, i32* %6, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %38
  %42 = load i32*, i32** @filter_pred_s32, align 8
  store i32* %42, i32** %7, align 8
  br label %45

43:                                               ; preds = %38
  %44 = load i32*, i32** @filter_pred_u32, align 8
  store i32* %44, i32** %7, align 8
  br label %45

45:                                               ; preds = %43, %41
  br label %46

46:                                               ; preds = %45, %36
  br label %85

47:                                               ; preds = %3
  %48 = load i32, i32* %4, align 4
  %49 = load i32, i32* @OP_EQ, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %55, label %51

51:                                               ; preds = %47
  %52 = load i32, i32* %4, align 4
  %53 = load i32, i32* @OP_NE, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %51, %47
  %56 = load i32*, i32** @filter_pred_16, align 8
  store i32* %56, i32** %7, align 8
  br label %65

57:                                               ; preds = %51
  %58 = load i32, i32* %6, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %57
  %61 = load i32*, i32** @filter_pred_s16, align 8
  store i32* %61, i32** %7, align 8
  br label %64

62:                                               ; preds = %57
  %63 = load i32*, i32** @filter_pred_u16, align 8
  store i32* %63, i32** %7, align 8
  br label %64

64:                                               ; preds = %62, %60
  br label %65

65:                                               ; preds = %64, %55
  br label %85

66:                                               ; preds = %3
  %67 = load i32, i32* %4, align 4
  %68 = load i32, i32* @OP_EQ, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %74, label %70

70:                                               ; preds = %66
  %71 = load i32, i32* %4, align 4
  %72 = load i32, i32* @OP_NE, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %74, label %76

74:                                               ; preds = %70, %66
  %75 = load i32*, i32** @filter_pred_8, align 8
  store i32* %75, i32** %7, align 8
  br label %84

76:                                               ; preds = %70
  %77 = load i32, i32* %6, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %76
  %80 = load i32*, i32** @filter_pred_s8, align 8
  store i32* %80, i32** %7, align 8
  br label %83

81:                                               ; preds = %76
  %82 = load i32*, i32** @filter_pred_u8, align 8
  store i32* %82, i32** %7, align 8
  br label %83

83:                                               ; preds = %81, %79
  br label %84

84:                                               ; preds = %83, %74
  br label %85

85:                                               ; preds = %3, %84, %65, %46, %27
  %86 = load i32*, i32** %7, align 8
  ret i32* %86
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
