; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-loop-prefetch.c_determine_unroll_factor.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-loop-prefetch.c_determine_unroll_factor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.loop = type { i32 }
%struct.mem_ref_group = type { %struct.mem_ref*, %struct.mem_ref_group* }
%struct.mem_ref = type { i32, %struct.mem_ref* }
%struct.tree_niter_desc = type { i32 }

@PARAM_MAX_UNROLL_TIMES = common dso_local global i32 0, align 4
@PARAM_MAX_UNROLLED_INSNS = common dso_local global i32 0, align 4
@SIMULTANEOUS_PREFETCHES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.loop*, %struct.mem_ref_group*, i32, i32, %struct.tree_niter_desc*)* @determine_unroll_factor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @determine_unroll_factor(%struct.loop* %0, %struct.mem_ref_group* %1, i32 %2, i32 %3, %struct.tree_niter_desc* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.loop*, align 8
  %8 = alloca %struct.mem_ref_group*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.tree_niter_desc*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.mem_ref_group*, align 8
  %19 = alloca %struct.mem_ref*, align 8
  store %struct.loop* %0, %struct.loop** %7, align 8
  store %struct.mem_ref_group* %1, %struct.mem_ref_group** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.tree_niter_desc* %4, %struct.tree_niter_desc** %11, align 8
  %20 = load i32, i32* @PARAM_MAX_UNROLL_TIMES, align 4
  %21 = call i32 @PARAM_VALUE(i32 %20)
  store i32 %21, i32* %12, align 4
  %22 = load i32, i32* @PARAM_MAX_UNROLLED_INSNS, align 4
  %23 = call i32 @PARAM_VALUE(i32 %22)
  %24 = load i32, i32* %10, align 4
  %25 = udiv i32 %23, %24
  store i32 %25, i32* %13, align 4
  %26 = load i32, i32* %13, align 4
  %27 = icmp ule i32 %26, 1
  br i1 %27, label %28, label %29

28:                                               ; preds = %5
  store i32 1, i32* %6, align 4
  br label %101

29:                                               ; preds = %5
  %30 = load i32, i32* %13, align 4
  %31 = load i32, i32* %12, align 4
  %32 = icmp ult i32 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %29
  %34 = load i32, i32* %13, align 4
  store i32 %34, i32* %12, align 4
  br label %35

35:                                               ; preds = %33, %29
  store i32 1, i32* %16, align 4
  %36 = load %struct.mem_ref_group*, %struct.mem_ref_group** %8, align 8
  store %struct.mem_ref_group* %36, %struct.mem_ref_group** %18, align 8
  br label %37

37:                                               ; preds = %67, %35
  %38 = load %struct.mem_ref_group*, %struct.mem_ref_group** %18, align 8
  %39 = icmp ne %struct.mem_ref_group* %38, null
  br i1 %39, label %40, label %71

40:                                               ; preds = %37
  %41 = load %struct.mem_ref_group*, %struct.mem_ref_group** %18, align 8
  %42 = getelementptr inbounds %struct.mem_ref_group, %struct.mem_ref_group* %41, i32 0, i32 0
  %43 = load %struct.mem_ref*, %struct.mem_ref** %42, align 8
  store %struct.mem_ref* %43, %struct.mem_ref** %19, align 8
  br label %44

44:                                               ; preds = %62, %40
  %45 = load %struct.mem_ref*, %struct.mem_ref** %19, align 8
  %46 = icmp ne %struct.mem_ref* %45, null
  br i1 %46, label %47, label %66

47:                                               ; preds = %44
  %48 = load %struct.mem_ref*, %struct.mem_ref** %19, align 8
  %49 = call i64 @should_issue_prefetch_p(%struct.mem_ref* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %61

51:                                               ; preds = %47
  %52 = load %struct.mem_ref*, %struct.mem_ref** %19, align 8
  %53 = getelementptr inbounds %struct.mem_ref, %struct.mem_ref* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* %16, align 4
  %56 = icmp ugt i32 %54, %55
  br i1 %56, label %57, label %61

57:                                               ; preds = %51
  %58 = load %struct.mem_ref*, %struct.mem_ref** %19, align 8
  %59 = getelementptr inbounds %struct.mem_ref, %struct.mem_ref* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  store i32 %60, i32* %16, align 4
  br label %61

61:                                               ; preds = %57, %51, %47
  br label %62

62:                                               ; preds = %61
  %63 = load %struct.mem_ref*, %struct.mem_ref** %19, align 8
  %64 = getelementptr inbounds %struct.mem_ref, %struct.mem_ref* %63, i32 0, i32 1
  %65 = load %struct.mem_ref*, %struct.mem_ref** %64, align 8
  store %struct.mem_ref* %65, %struct.mem_ref** %19, align 8
  br label %44

66:                                               ; preds = %44
  br label %67

67:                                               ; preds = %66
  %68 = load %struct.mem_ref_group*, %struct.mem_ref_group** %18, align 8
  %69 = getelementptr inbounds %struct.mem_ref_group, %struct.mem_ref_group* %68, i32 0, i32 1
  %70 = load %struct.mem_ref_group*, %struct.mem_ref_group** %69, align 8
  store %struct.mem_ref_group* %70, %struct.mem_ref_group** %18, align 8
  br label %37

71:                                               ; preds = %37
  %72 = load i32, i32* %16, align 4
  store i32 %72, i32* %14, align 4
  %73 = load i32, i32* %9, align 4
  %74 = load i32, i32* @SIMULTANEOUS_PREFETCHES, align 4
  %75 = add i32 %73, %74
  %76 = sub i32 %75, 1
  %77 = load i32, i32* @SIMULTANEOUS_PREFETCHES, align 4
  %78 = udiv i32 %76, %77
  store i32 %78, i32* %17, align 4
  %79 = load i32, i32* %14, align 4
  %80 = load i32, i32* %17, align 4
  %81 = icmp ult i32 %79, %80
  br i1 %81, label %82, label %84

82:                                               ; preds = %71
  %83 = load i32, i32* %17, align 4
  store i32 %83, i32* %15, align 4
  br label %86

84:                                               ; preds = %71
  %85 = load i32, i32* %14, align 4
  store i32 %85, i32* %15, align 4
  br label %86

86:                                               ; preds = %84, %82
  %87 = load i32, i32* %15, align 4
  %88 = load i32, i32* %12, align 4
  %89 = icmp ugt i32 %87, %88
  br i1 %89, label %90, label %92

90:                                               ; preds = %86
  %91 = load i32, i32* %12, align 4
  store i32 %91, i32* %15, align 4
  br label %92

92:                                               ; preds = %90, %86
  %93 = load %struct.loop*, %struct.loop** %7, align 8
  %94 = load %struct.tree_niter_desc*, %struct.tree_niter_desc** %11, align 8
  %95 = load i32, i32* %15, align 4
  %96 = call i32 @should_unroll_loop_p(%struct.loop* %93, %struct.tree_niter_desc* %94, i32 %95)
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %99, label %98

98:                                               ; preds = %92
  store i32 1, i32* %6, align 4
  br label %101

99:                                               ; preds = %92
  %100 = load i32, i32* %15, align 4
  store i32 %100, i32* %6, align 4
  br label %101

101:                                              ; preds = %99, %98, %28
  %102 = load i32, i32* %6, align 4
  ret i32 %102
}

declare dso_local i32 @PARAM_VALUE(i32) #1

declare dso_local i64 @should_issue_prefetch_p(%struct.mem_ref*) #1

declare dso_local i32 @should_unroll_loop_p(%struct.loop*, %struct.tree_niter_desc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
