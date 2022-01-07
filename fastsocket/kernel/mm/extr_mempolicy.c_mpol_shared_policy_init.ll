; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_mempolicy.c_mpol_shared_policy_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_mempolicy.c_mpol_shared_policy_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.shared_policy = type { i32, i32 }
%struct.mempolicy = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.vm_area_struct = type { i32 }

@RB_ROOT = common dso_local global i32 0, align 4
@scratch = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@TASK_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mpol_shared_policy_init(%struct.shared_policy* %0, %struct.mempolicy* %1) #0 {
  %3 = alloca %struct.shared_policy*, align 8
  %4 = alloca %struct.mempolicy*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.vm_area_struct, align 4
  %7 = alloca %struct.mempolicy*, align 8
  store %struct.shared_policy* %0, %struct.shared_policy** %3, align 8
  store %struct.mempolicy* %1, %struct.mempolicy** %4, align 8
  %8 = load i32, i32* @RB_ROOT, align 4
  %9 = load %struct.shared_policy*, %struct.shared_policy** %3, align 8
  %10 = getelementptr inbounds %struct.shared_policy, %struct.shared_policy* %9, i32 0, i32 1
  store i32 %8, i32* %10, align 4
  %11 = load %struct.shared_policy*, %struct.shared_policy** %3, align 8
  %12 = getelementptr inbounds %struct.shared_policy, %struct.shared_policy* %11, i32 0, i32 0
  %13 = call i32 @spin_lock_init(i32* %12)
  %14 = load %struct.mempolicy*, %struct.mempolicy** %4, align 8
  %15 = icmp ne %struct.mempolicy* %14, null
  br i1 %15, label %16, label %72

16:                                               ; preds = %2
  %17 = load i32, i32* @scratch, align 4
  %18 = call i32 @NODEMASK_SCRATCH(i32 %17)
  %19 = load i32, i32* @scratch, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %16
  br label %72

22:                                               ; preds = %16
  %23 = load %struct.mempolicy*, %struct.mempolicy** %4, align 8
  %24 = getelementptr inbounds %struct.mempolicy, %struct.mempolicy* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.mempolicy*, %struct.mempolicy** %4, align 8
  %27 = getelementptr inbounds %struct.mempolicy, %struct.mempolicy* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.mempolicy*, %struct.mempolicy** %4, align 8
  %30 = getelementptr inbounds %struct.mempolicy, %struct.mempolicy* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = call %struct.mempolicy* @mpol_new(i32 %25, i32 %28, i32* %31)
  store %struct.mempolicy* %32, %struct.mempolicy** %7, align 8
  %33 = load %struct.mempolicy*, %struct.mempolicy** %7, align 8
  %34 = call i64 @IS_ERR(%struct.mempolicy* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %22
  %37 = load %struct.mempolicy*, %struct.mempolicy** %4, align 8
  %38 = call i32 @mpol_put(%struct.mempolicy* %37)
  %39 = load i32, i32* @scratch, align 4
  %40 = call i32 @NODEMASK_SCRATCH_FREE(i32 %39)
  br label %72

41:                                               ; preds = %22
  %42 = load i32, i32* @current, align 4
  %43 = call i32 @task_lock(i32 %42)
  %44 = load %struct.mempolicy*, %struct.mempolicy** %7, align 8
  %45 = load %struct.mempolicy*, %struct.mempolicy** %4, align 8
  %46 = getelementptr inbounds %struct.mempolicy, %struct.mempolicy* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* @scratch, align 4
  %49 = call i32 @mpol_set_nodemask(%struct.mempolicy* %44, i32* %47, i32 %48)
  store i32 %49, i32* %5, align 4
  %50 = load i32, i32* @current, align 4
  %51 = call i32 @task_unlock(i32 %50)
  %52 = load %struct.mempolicy*, %struct.mempolicy** %4, align 8
  %53 = call i32 @mpol_put(%struct.mempolicy* %52)
  %54 = load i32, i32* %5, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %41
  %57 = load i32, i32* @scratch, align 4
  %58 = call i32 @NODEMASK_SCRATCH_FREE(i32 %57)
  %59 = load %struct.mempolicy*, %struct.mempolicy** %7, align 8
  %60 = call i32 @mpol_put(%struct.mempolicy* %59)
  br label %72

61:                                               ; preds = %41
  %62 = call i32 @memset(%struct.vm_area_struct* %6, i32 0, i32 4)
  %63 = load i32, i32* @TASK_SIZE, align 4
  %64 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %6, i32 0, i32 0
  store i32 %63, i32* %64, align 4
  %65 = load %struct.shared_policy*, %struct.shared_policy** %3, align 8
  %66 = load %struct.mempolicy*, %struct.mempolicy** %7, align 8
  %67 = call i32 @mpol_set_shared_policy(%struct.shared_policy* %65, %struct.vm_area_struct* %6, %struct.mempolicy* %66)
  %68 = load %struct.mempolicy*, %struct.mempolicy** %7, align 8
  %69 = call i32 @mpol_put(%struct.mempolicy* %68)
  %70 = load i32, i32* @scratch, align 4
  %71 = call i32 @NODEMASK_SCRATCH_FREE(i32 %70)
  br label %72

72:                                               ; preds = %21, %36, %56, %61, %2
  ret void
}

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @NODEMASK_SCRATCH(i32) #1

declare dso_local %struct.mempolicy* @mpol_new(i32, i32, i32*) #1

declare dso_local i64 @IS_ERR(%struct.mempolicy*) #1

declare dso_local i32 @mpol_put(%struct.mempolicy*) #1

declare dso_local i32 @NODEMASK_SCRATCH_FREE(i32) #1

declare dso_local i32 @task_lock(i32) #1

declare dso_local i32 @mpol_set_nodemask(%struct.mempolicy*, i32*, i32) #1

declare dso_local i32 @task_unlock(i32) #1

declare dso_local i32 @memset(%struct.vm_area_struct*, i32, i32) #1

declare dso_local i32 @mpol_set_shared_policy(%struct.shared_policy*, %struct.vm_area_struct*, %struct.mempolicy*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
