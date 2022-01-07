; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_cfghooks.c_make_forwarder_block.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_cfghooks.c_make_forwarder_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32 (%struct.TYPE_20__*)*, i32 }
%struct.TYPE_20__ = type { i64, %struct.TYPE_19__*, %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i64, i64, i32 }

@cfg_hooks = common dso_local global %struct.TYPE_18__* null, align 8
@.str = private unnamed_addr constant [41 x i8] c"%s does not support make_forwarder_block\00", align 1
@CDI_DOMINATORS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_20__* @make_forwarder_block(%struct.TYPE_19__* %0, i32 (%struct.TYPE_20__*)* %1, void (%struct.TYPE_19__*)* %2) #0 {
  %4 = alloca %struct.TYPE_19__*, align 8
  %5 = alloca i32 (%struct.TYPE_20__*)*, align 8
  %6 = alloca void (%struct.TYPE_19__*)*, align 8
  %7 = alloca %struct.TYPE_20__*, align 8
  %8 = alloca %struct.TYPE_20__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_19__*, align 8
  %11 = alloca %struct.TYPE_19__*, align 8
  %12 = alloca [2 x %struct.TYPE_19__*], align 16
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %4, align 8
  store i32 (%struct.TYPE_20__*)* %1, i32 (%struct.TYPE_20__*)** %5, align 8
  store void (%struct.TYPE_19__*)* %2, void (%struct.TYPE_19__*)** %6, align 8
  %13 = load %struct.TYPE_18__*, %struct.TYPE_18__** @cfg_hooks, align 8
  %14 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %13, i32 0, i32 0
  %15 = load i32 (%struct.TYPE_20__*)*, i32 (%struct.TYPE_20__*)** %14, align 8
  %16 = icmp ne i32 (%struct.TYPE_20__*)* %15, null
  br i1 %16, label %22, label %17

17:                                               ; preds = %3
  %18 = load %struct.TYPE_18__*, %struct.TYPE_18__** @cfg_hooks, align 8
  %19 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @internal_error(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %20)
  br label %22

22:                                               ; preds = %17, %3
  %23 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %24 = call %struct.TYPE_20__* @split_block_after_labels(%struct.TYPE_19__* %23)
  store %struct.TYPE_20__* %24, %struct.TYPE_20__** %8, align 8
  %25 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %25, i32 0, i32 2
  %27 = load %struct.TYPE_19__*, %struct.TYPE_19__** %26, align 8
  store %struct.TYPE_19__* %27, %struct.TYPE_19__** %10, align 8
  %28 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %28, i32 0, i32 1
  %30 = load %struct.TYPE_19__*, %struct.TYPE_19__** %29, align 8
  store %struct.TYPE_19__* %30, %struct.TYPE_19__** %4, align 8
  %31 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %32 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @ei_start(i32 %33)
  store i32 %34, i32* %9, align 4
  br label %35

35:                                               ; preds = %99, %44, %22
  %36 = load i32, i32* %9, align 4
  %37 = call %struct.TYPE_20__* @ei_safe_edge(i32 %36)
  store %struct.TYPE_20__* %37, %struct.TYPE_20__** %7, align 8
  %38 = icmp ne %struct.TYPE_20__* %37, null
  br i1 %38, label %39, label %100

39:                                               ; preds = %35
  %40 = load i32 (%struct.TYPE_20__*)*, i32 (%struct.TYPE_20__*)** %5, align 8
  %41 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %42 = call i32 %40(%struct.TYPE_20__* %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %39
  %45 = call i32 @ei_next(i32* %9)
  br label %35

46:                                               ; preds = %39
  %47 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %48 = call i64 @EDGE_FREQUENCY(%struct.TYPE_20__* %47)
  %49 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %50 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = sub nsw i64 %51, %48
  store i64 %52, i64* %50, align 8
  %53 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %57 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = sub nsw i64 %58, %55
  store i64 %59, i64* %57, align 8
  %60 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %61 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp slt i64 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %46
  %65 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %66 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %65, i32 0, i32 0
  store i64 0, i64* %66, align 8
  br label %67

67:                                               ; preds = %64, %46
  %68 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %69 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = icmp slt i64 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %67
  %73 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %74 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %73, i32 0, i32 1
  store i64 0, i64* %74, align 8
  br label %75

75:                                               ; preds = %72, %67
  %76 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %77 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %80 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = sub nsw i64 %81, %78
  store i64 %82, i64* %80, align 8
  %83 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %84 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = icmp slt i64 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %75
  %88 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %89 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %88, i32 0, i32 0
  store i64 0, i64* %89, align 8
  br label %90

90:                                               ; preds = %87, %75
  %91 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %92 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %93 = call %struct.TYPE_19__* @redirect_edge_and_branch_force(%struct.TYPE_20__* %91, %struct.TYPE_19__* %92)
  store %struct.TYPE_19__* %93, %struct.TYPE_19__** %11, align 8
  %94 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %95 = icmp ne %struct.TYPE_19__* %94, null
  br i1 %95, label %96, label %99

96:                                               ; preds = %90
  %97 = load void (%struct.TYPE_19__*)*, void (%struct.TYPE_19__*)** %6, align 8
  %98 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  call void %97(%struct.TYPE_19__* %98)
  br label %99

99:                                               ; preds = %96, %90
  br label %35

100:                                              ; preds = %35
  %101 = load i32, i32* @CDI_DOMINATORS, align 4
  %102 = call i64 @dom_info_available_p(i32 %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %112

104:                                              ; preds = %100
  %105 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %106 = getelementptr inbounds [2 x %struct.TYPE_19__*], [2 x %struct.TYPE_19__*]* %12, i64 0, i64 0
  store %struct.TYPE_19__* %105, %struct.TYPE_19__** %106, align 16
  %107 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %108 = getelementptr inbounds [2 x %struct.TYPE_19__*], [2 x %struct.TYPE_19__*]* %12, i64 0, i64 1
  store %struct.TYPE_19__* %107, %struct.TYPE_19__** %108, align 8
  %109 = load i32, i32* @CDI_DOMINATORS, align 4
  %110 = getelementptr inbounds [2 x %struct.TYPE_19__*], [2 x %struct.TYPE_19__*]* %12, i64 0, i64 0
  %111 = call i32 @iterate_fix_dominators(i32 %109, %struct.TYPE_19__** %110, i32 2)
  br label %112

112:                                              ; preds = %104, %100
  %113 = load %struct.TYPE_18__*, %struct.TYPE_18__** @cfg_hooks, align 8
  %114 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %113, i32 0, i32 0
  %115 = load i32 (%struct.TYPE_20__*)*, i32 (%struct.TYPE_20__*)** %114, align 8
  %116 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %117 = call i32 %115(%struct.TYPE_20__* %116)
  %118 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  ret %struct.TYPE_20__* %118
}

declare dso_local i32 @internal_error(i8*, i32) #1

declare dso_local %struct.TYPE_20__* @split_block_after_labels(%struct.TYPE_19__*) #1

declare dso_local i32 @ei_start(i32) #1

declare dso_local %struct.TYPE_20__* @ei_safe_edge(i32) #1

declare dso_local i32 @ei_next(i32*) #1

declare dso_local i64 @EDGE_FREQUENCY(%struct.TYPE_20__*) #1

declare dso_local %struct.TYPE_19__* @redirect_edge_and_branch_force(%struct.TYPE_20__*, %struct.TYPE_19__*) #1

declare dso_local i64 @dom_info_available_p(i32) #1

declare dso_local i32 @iterate_fix_dominators(i32, %struct.TYPE_19__**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
