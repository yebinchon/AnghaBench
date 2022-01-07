; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_except.c_sjlj_find_directly_reachable_regions.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_except.c_sjlj_find_directly_reachable_regions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.sjlj_lp_info = type { i32 }
%struct.eh_region = type { i64, i64, %struct.eh_region*, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@REG_EH_REGION = common dso_local global i32 0, align 4
@NULL_RTX = common dso_local global i32 0, align 4
@eh_region = common dso_local global i32 0, align 4
@cfun = common dso_local global %struct.TYPE_8__* null, align 8
@NULL_TREE = common dso_local global i32 0, align 4
@ERT_THROW = common dso_local global i64 0, align 8
@RNL_NOT_CAUGHT = common dso_local global i32 0, align 4
@RNL_MAYBE_CAUGHT = common dso_local global i32 0, align 4
@RNL_CAUGHT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sjlj_lp_info*)* @sjlj_find_directly_reachable_regions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sjlj_find_directly_reachable_regions(%struct.sjlj_lp_info* %0) #0 {
  %2 = alloca %struct.sjlj_lp_info*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.eh_region*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.sjlj_lp_info* %0, %struct.sjlj_lp_info** %2, align 8
  store i32 0, i32* %4, align 4
  %9 = call i64 (...) @get_insns()
  store i64 %9, i64* %3, align 8
  br label %10

10:                                               ; preds = %91, %1
  %11 = load i64, i64* %3, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %94

13:                                               ; preds = %10
  %14 = load i64, i64* %3, align 8
  %15 = call i32 @INSN_P(i64 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %13
  br label %91

18:                                               ; preds = %13
  %19 = load i64, i64* %3, align 8
  %20 = load i32, i32* @REG_EH_REGION, align 4
  %21 = load i32, i32* @NULL_RTX, align 4
  %22 = call i64 @find_reg_note(i64 %19, i32 %20, i32 %21)
  store i64 %22, i64* %8, align 8
  %23 = load i64, i64* %8, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %18
  %26 = load i64, i64* %8, align 8
  %27 = call i32 @XEXP(i64 %26, i32 0)
  %28 = call i64 @INTVAL(i32 %27)
  %29 = icmp sle i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %25, %18
  br label %91

31:                                               ; preds = %25
  %32 = load i32, i32* @eh_region, align 4
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** @cfun, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i64, i64* %8, align 8
  %39 = call i32 @XEXP(i64 %38, i32 0)
  %40 = call i64 @INTVAL(i32 %39)
  %41 = call %struct.eh_region* @VEC_index(i32 %32, i32 %37, i64 %40)
  store %struct.eh_region* %41, %struct.eh_region** %5, align 8
  %42 = load i32, i32* @NULL_TREE, align 4
  store i32 %42, i32* %7, align 4
  %43 = load %struct.eh_region*, %struct.eh_region** %5, align 8
  %44 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @ERT_THROW, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %57

48:                                               ; preds = %31
  %49 = load %struct.eh_region*, %struct.eh_region** %5, align 8
  %50 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %49, i32 0, i32 3
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  store i32 %53, i32* %7, align 4
  %54 = load %struct.eh_region*, %struct.eh_region** %5, align 8
  %55 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %54, i32 0, i32 2
  %56 = load %struct.eh_region*, %struct.eh_region** %55, align 8
  store %struct.eh_region* %56, %struct.eh_region** %5, align 8
  br label %57

57:                                               ; preds = %48, %31
  %58 = load i32, i32* @RNL_NOT_CAUGHT, align 4
  store i32 %58, i32* %6, align 4
  br label %59

59:                                               ; preds = %71, %57
  %60 = load %struct.eh_region*, %struct.eh_region** %5, align 8
  %61 = icmp ne %struct.eh_region* %60, null
  br i1 %61, label %62, label %75

62:                                               ; preds = %59
  %63 = load %struct.eh_region*, %struct.eh_region** %5, align 8
  %64 = load i32, i32* %7, align 4
  %65 = call i32 @reachable_next_level(%struct.eh_region* %63, i32 %64, i32* null)
  store i32 %65, i32* %6, align 4
  %66 = load i32, i32* %6, align 4
  %67 = load i32, i32* @RNL_NOT_CAUGHT, align 4
  %68 = icmp ne i32 %66, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %62
  br label %75

70:                                               ; preds = %62
  br label %71

71:                                               ; preds = %70
  %72 = load %struct.eh_region*, %struct.eh_region** %5, align 8
  %73 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %72, i32 0, i32 2
  %74 = load %struct.eh_region*, %struct.eh_region** %73, align 8
  store %struct.eh_region* %74, %struct.eh_region** %5, align 8
  br label %59

75:                                               ; preds = %69, %59
  %76 = load i32, i32* %6, align 4
  %77 = load i32, i32* @RNL_MAYBE_CAUGHT, align 4
  %78 = icmp eq i32 %76, %77
  br i1 %78, label %83, label %79

79:                                               ; preds = %75
  %80 = load i32, i32* %6, align 4
  %81 = load i32, i32* @RNL_CAUGHT, align 4
  %82 = icmp eq i32 %80, %81
  br i1 %82, label %83, label %90

83:                                               ; preds = %79, %75
  %84 = load %struct.sjlj_lp_info*, %struct.sjlj_lp_info** %2, align 8
  %85 = load %struct.eh_region*, %struct.eh_region** %5, align 8
  %86 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = getelementptr inbounds %struct.sjlj_lp_info, %struct.sjlj_lp_info* %84, i64 %87
  %89 = getelementptr inbounds %struct.sjlj_lp_info, %struct.sjlj_lp_info* %88, i32 0, i32 0
  store i32 1, i32* %89, align 4
  store i32 1, i32* %4, align 4
  br label %90

90:                                               ; preds = %83, %79
  br label %91

91:                                               ; preds = %90, %30, %17
  %92 = load i64, i64* %3, align 8
  %93 = call i64 @NEXT_INSN(i64 %92)
  store i64 %93, i64* %3, align 8
  br label %10

94:                                               ; preds = %10
  %95 = load i32, i32* %4, align 4
  ret i32 %95
}

declare dso_local i64 @get_insns(...) #1

declare dso_local i32 @INSN_P(i64) #1

declare dso_local i64 @find_reg_note(i64, i32, i32) #1

declare dso_local i64 @INTVAL(i32) #1

declare dso_local i32 @XEXP(i64, i32) #1

declare dso_local %struct.eh_region* @VEC_index(i32, i32, i64) #1

declare dso_local i32 @reachable_next_level(%struct.eh_region*, i32, i32*) #1

declare dso_local i64 @NEXT_INSN(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
