; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/xfrm/extr_xfrm_ipcomp.c_ipcomp_init_state.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/xfrm/extr_xfrm_ipcomp.c_ipcomp_init_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfrm_state = type { %struct.ipcomp_data*, %struct.TYPE_4__*, i64 }
%struct.ipcomp_data = type { i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.xfrm_algo_desc = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ipcomp_resource_mutex = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ipcomp_init_state(%struct.xfrm_state* %0) #0 {
  %2 = alloca %struct.xfrm_state*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.ipcomp_data*, align 8
  %5 = alloca %struct.xfrm_algo_desc*, align 8
  store %struct.xfrm_state* %0, %struct.xfrm_state** %2, align 8
  %6 = load i32, i32* @EINVAL, align 4
  %7 = sub nsw i32 0, %6
  store i32 %7, i32* %3, align 4
  %8 = load %struct.xfrm_state*, %struct.xfrm_state** %2, align 8
  %9 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %8, i32 0, i32 1
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = icmp ne %struct.TYPE_4__* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  br label %69

13:                                               ; preds = %1
  %14 = load %struct.xfrm_state*, %struct.xfrm_state** %2, align 8
  %15 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %13
  br label %69

19:                                               ; preds = %13
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call %struct.ipcomp_data* @kzalloc(i32 8, i32 %22)
  store %struct.ipcomp_data* %23, %struct.ipcomp_data** %4, align 8
  %24 = load %struct.ipcomp_data*, %struct.ipcomp_data** %4, align 8
  %25 = icmp ne %struct.ipcomp_data* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %19
  br label %69

27:                                               ; preds = %19
  %28 = call i32 @mutex_lock(i32* @ipcomp_resource_mutex)
  %29 = call i32 (...) @ipcomp_alloc_scratches()
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %27
  br label %71

32:                                               ; preds = %27
  %33 = load %struct.xfrm_state*, %struct.xfrm_state** %2, align 8
  %34 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %33, i32 0, i32 1
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @ipcomp_alloc_tfms(i32 %37)
  %39 = load %struct.ipcomp_data*, %struct.ipcomp_data** %4, align 8
  %40 = getelementptr inbounds %struct.ipcomp_data, %struct.ipcomp_data* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 4
  %41 = load %struct.ipcomp_data*, %struct.ipcomp_data** %4, align 8
  %42 = getelementptr inbounds %struct.ipcomp_data, %struct.ipcomp_data* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %32
  br label %71

46:                                               ; preds = %32
  %47 = call i32 @mutex_unlock(i32* @ipcomp_resource_mutex)
  %48 = load %struct.xfrm_state*, %struct.xfrm_state** %2, align 8
  %49 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %48, i32 0, i32 1
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call %struct.xfrm_algo_desc* @xfrm_calg_get_byname(i32 %52, i32 0)
  store %struct.xfrm_algo_desc* %53, %struct.xfrm_algo_desc** %5, align 8
  %54 = load %struct.xfrm_algo_desc*, %struct.xfrm_algo_desc** %5, align 8
  %55 = icmp ne %struct.xfrm_algo_desc* %54, null
  %56 = xor i1 %55, true
  %57 = zext i1 %56 to i32
  %58 = call i32 @BUG_ON(i32 %57)
  %59 = load %struct.xfrm_algo_desc*, %struct.xfrm_algo_desc** %5, align 8
  %60 = getelementptr inbounds %struct.xfrm_algo_desc, %struct.xfrm_algo_desc* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.ipcomp_data*, %struct.ipcomp_data** %4, align 8
  %65 = getelementptr inbounds %struct.ipcomp_data, %struct.ipcomp_data* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 4
  %66 = load %struct.ipcomp_data*, %struct.ipcomp_data** %4, align 8
  %67 = load %struct.xfrm_state*, %struct.xfrm_state** %2, align 8
  %68 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %67, i32 0, i32 0
  store %struct.ipcomp_data* %66, %struct.ipcomp_data** %68, align 8
  store i32 0, i32* %3, align 4
  br label %69

69:                                               ; preds = %71, %46, %26, %18, %12
  %70 = load i32, i32* %3, align 4
  ret i32 %70

71:                                               ; preds = %45, %31
  %72 = load %struct.ipcomp_data*, %struct.ipcomp_data** %4, align 8
  %73 = call i32 @ipcomp_free_data(%struct.ipcomp_data* %72)
  %74 = call i32 @mutex_unlock(i32* @ipcomp_resource_mutex)
  %75 = load %struct.ipcomp_data*, %struct.ipcomp_data** %4, align 8
  %76 = call i32 @kfree(%struct.ipcomp_data* %75)
  br label %69
}

declare dso_local %struct.ipcomp_data* @kzalloc(i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ipcomp_alloc_scratches(...) #1

declare dso_local i32 @ipcomp_alloc_tfms(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local %struct.xfrm_algo_desc* @xfrm_calg_get_byname(i32, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @ipcomp_free_data(%struct.ipcomp_data*) #1

declare dso_local i32 @kfree(%struct.ipcomp_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
