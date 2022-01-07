; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_mempolicy.c___mpol_dup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_mempolicy.c___mpol_dup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.mempolicy* }
%struct.mempolicy = type { i32, i32 }

@policy_cache = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_5__* null, align 8
@MPOL_F_REBINDING = common dso_local global i32 0, align 4
@MPOL_REBIND_STEP2 = common dso_local global i32 0, align 4
@MPOL_REBIND_ONCE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mempolicy* @__mpol_dup(%struct.mempolicy* %0) #0 {
  %2 = alloca %struct.mempolicy*, align 8
  %3 = alloca %struct.mempolicy*, align 8
  %4 = alloca %struct.mempolicy*, align 8
  %5 = alloca i32, align 4
  store %struct.mempolicy* %0, %struct.mempolicy** %3, align 8
  %6 = load i32, i32* @policy_cache, align 4
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.mempolicy* @kmem_cache_alloc(i32 %6, i32 %7)
  store %struct.mempolicy* %8, %struct.mempolicy** %4, align 8
  %9 = load %struct.mempolicy*, %struct.mempolicy** %4, align 8
  %10 = icmp ne %struct.mempolicy* %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  %14 = call %struct.mempolicy* @ERR_PTR(i32 %13)
  store %struct.mempolicy* %14, %struct.mempolicy** %2, align 8
  br label %63

15:                                               ; preds = %1
  %16 = load %struct.mempolicy*, %struct.mempolicy** %3, align 8
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** @current, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load %struct.mempolicy*, %struct.mempolicy** %18, align 8
  %20 = icmp eq %struct.mempolicy* %16, %19
  br i1 %20, label %21, label %30

21:                                               ; preds = %15
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** @current, align 8
  %23 = call i32 @task_lock(%struct.TYPE_5__* %22)
  %24 = load %struct.mempolicy*, %struct.mempolicy** %4, align 8
  %25 = load %struct.mempolicy*, %struct.mempolicy** %3, align 8
  %26 = bitcast %struct.mempolicy* %24 to i8*
  %27 = bitcast %struct.mempolicy* %25 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %26, i8* align 4 %27, i64 8, i1 false)
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** @current, align 8
  %29 = call i32 @task_unlock(%struct.TYPE_5__* %28)
  br label %35

30:                                               ; preds = %15
  %31 = load %struct.mempolicy*, %struct.mempolicy** %4, align 8
  %32 = load %struct.mempolicy*, %struct.mempolicy** %3, align 8
  %33 = bitcast %struct.mempolicy* %31 to i8*
  %34 = bitcast %struct.mempolicy* %32 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %33, i8* align 4 %34, i64 8, i1 false)
  br label %35

35:                                               ; preds = %30, %21
  %36 = call i32 (...) @rcu_read_lock()
  %37 = call i64 (...) @current_cpuset_is_being_rebound()
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %57

39:                                               ; preds = %35
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** @current, align 8
  %41 = call i32 @cpuset_mems_allowed(%struct.TYPE_5__* %40)
  store i32 %41, i32* %5, align 4
  %42 = load %struct.mempolicy*, %struct.mempolicy** %4, align 8
  %43 = getelementptr inbounds %struct.mempolicy, %struct.mempolicy* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @MPOL_F_REBINDING, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %39
  %49 = load %struct.mempolicy*, %struct.mempolicy** %4, align 8
  %50 = load i32, i32* @MPOL_REBIND_STEP2, align 4
  %51 = call i32 @mpol_rebind_policy(%struct.mempolicy* %49, i32* %5, i32 %50)
  br label %56

52:                                               ; preds = %39
  %53 = load %struct.mempolicy*, %struct.mempolicy** %4, align 8
  %54 = load i32, i32* @MPOL_REBIND_ONCE, align 4
  %55 = call i32 @mpol_rebind_policy(%struct.mempolicy* %53, i32* %5, i32 %54)
  br label %56

56:                                               ; preds = %52, %48
  br label %57

57:                                               ; preds = %56, %35
  %58 = call i32 (...) @rcu_read_unlock()
  %59 = load %struct.mempolicy*, %struct.mempolicy** %4, align 8
  %60 = getelementptr inbounds %struct.mempolicy, %struct.mempolicy* %59, i32 0, i32 1
  %61 = call i32 @atomic_set(i32* %60, i32 1)
  %62 = load %struct.mempolicy*, %struct.mempolicy** %4, align 8
  store %struct.mempolicy* %62, %struct.mempolicy** %2, align 8
  br label %63

63:                                               ; preds = %57, %11
  %64 = load %struct.mempolicy*, %struct.mempolicy** %2, align 8
  ret %struct.mempolicy* %64
}

declare dso_local %struct.mempolicy* @kmem_cache_alloc(i32, i32) #1

declare dso_local %struct.mempolicy* @ERR_PTR(i32) #1

declare dso_local i32 @task_lock(%struct.TYPE_5__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @task_unlock(%struct.TYPE_5__*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local i64 @current_cpuset_is_being_rebound(...) #1

declare dso_local i32 @cpuset_mems_allowed(%struct.TYPE_5__*) #1

declare dso_local i32 @mpol_rebind_policy(%struct.mempolicy*, i32*, i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
