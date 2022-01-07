; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_cpuset.c_update_nodemask.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_cpuset.c_update_nodemask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpuset = type { i32 }
%struct.ptr_heap = type { i32 }

@top_cpuset = common dso_local global %struct.cpuset zeroinitializer, align 4
@EACCES = common dso_local global i32 0, align 4
@node_states = common dso_local global i32* null, align 8
@N_HIGH_MEMORY = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@callback_mutex = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpuset*, %struct.cpuset*, i8*)* @update_nodemask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @update_nodemask(%struct.cpuset* %0, %struct.cpuset* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cpuset*, align 8
  %6 = alloca %struct.cpuset*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ptr_heap, align 4
  store %struct.cpuset* %0, %struct.cpuset** %5, align 8
  store %struct.cpuset* %1, %struct.cpuset** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load %struct.cpuset*, %struct.cpuset** %5, align 8
  %12 = icmp eq %struct.cpuset* %11, @top_cpuset
  br i1 %12, label %13, label %16

13:                                               ; preds = %3
  %14 = load i32, i32* @EACCES, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %4, align 4
  br label %86

16:                                               ; preds = %3
  %17 = load i8*, i8** %7, align 8
  %18 = load i8, i8* %17, align 1
  %19 = icmp ne i8 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %16
  %21 = load %struct.cpuset*, %struct.cpuset** %6, align 8
  %22 = getelementptr inbounds %struct.cpuset, %struct.cpuset* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @nodes_clear(i32 %23)
  br label %48

25:                                               ; preds = %16
  %26 = load i8*, i8** %7, align 8
  %27 = load %struct.cpuset*, %struct.cpuset** %6, align 8
  %28 = getelementptr inbounds %struct.cpuset, %struct.cpuset* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @nodelist_parse(i8* %26, i32 %29)
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %9, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %25
  br label %84

34:                                               ; preds = %25
  %35 = load %struct.cpuset*, %struct.cpuset** %6, align 8
  %36 = getelementptr inbounds %struct.cpuset, %struct.cpuset* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32*, i32** @node_states, align 8
  %39 = load i64, i64* @N_HIGH_MEMORY, align 8
  %40 = getelementptr inbounds i32, i32* %38, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @nodes_subset(i32 %37, i32 %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %34
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %4, align 4
  br label %86

47:                                               ; preds = %34
  br label %48

48:                                               ; preds = %47, %20
  %49 = load %struct.cpuset*, %struct.cpuset** %5, align 8
  %50 = getelementptr inbounds %struct.cpuset, %struct.cpuset* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %8, align 4
  %52 = load i32, i32* %8, align 4
  %53 = load %struct.cpuset*, %struct.cpuset** %6, align 8
  %54 = getelementptr inbounds %struct.cpuset, %struct.cpuset* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i64 @nodes_equal(i32 %52, i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %48
  store i32 0, i32* %9, align 4
  br label %84

59:                                               ; preds = %48
  %60 = load %struct.cpuset*, %struct.cpuset** %5, align 8
  %61 = load %struct.cpuset*, %struct.cpuset** %6, align 8
  %62 = call i32 @validate_change(%struct.cpuset* %60, %struct.cpuset* %61)
  store i32 %62, i32* %9, align 4
  %63 = load i32, i32* %9, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %59
  br label %84

66:                                               ; preds = %59
  %67 = load i32, i32* @PAGE_SIZE, align 4
  %68 = load i32, i32* @GFP_KERNEL, align 4
  %69 = call i32 @heap_init(%struct.ptr_heap* %10, i32 %67, i32 %68, i32* null)
  store i32 %69, i32* %9, align 4
  %70 = load i32, i32* %9, align 4
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %66
  br label %84

73:                                               ; preds = %66
  %74 = call i32 @mutex_lock(i32* @callback_mutex)
  %75 = load %struct.cpuset*, %struct.cpuset** %6, align 8
  %76 = getelementptr inbounds %struct.cpuset, %struct.cpuset* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.cpuset*, %struct.cpuset** %5, align 8
  %79 = getelementptr inbounds %struct.cpuset, %struct.cpuset* %78, i32 0, i32 0
  store i32 %77, i32* %79, align 4
  %80 = call i32 @mutex_unlock(i32* @callback_mutex)
  %81 = load %struct.cpuset*, %struct.cpuset** %5, align 8
  %82 = call i32 @update_tasks_nodemask(%struct.cpuset* %81, i32* %8, %struct.ptr_heap* %10)
  %83 = call i32 @heap_free(%struct.ptr_heap* %10)
  br label %84

84:                                               ; preds = %73, %72, %65, %58, %33
  %85 = load i32, i32* %9, align 4
  store i32 %85, i32* %4, align 4
  br label %86

86:                                               ; preds = %84, %44, %13
  %87 = load i32, i32* %4, align 4
  ret i32 %87
}

declare dso_local i32 @nodes_clear(i32) #1

declare dso_local i32 @nodelist_parse(i8*, i32) #1

declare dso_local i32 @nodes_subset(i32, i32) #1

declare dso_local i64 @nodes_equal(i32, i32) #1

declare dso_local i32 @validate_change(%struct.cpuset*, %struct.cpuset*) #1

declare dso_local i32 @heap_init(%struct.ptr_heap*, i32, i32, i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @update_tasks_nodemask(%struct.cpuset*, i32*, %struct.ptr_heap*) #1

declare dso_local i32 @heap_free(%struct.ptr_heap*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
