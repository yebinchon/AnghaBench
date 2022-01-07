; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/dlm/extr_dlmmaster.c___dlm_lockres_reserve_ast.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/dlm/extr_dlmmaster.c___dlm_lockres_reserve_ast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_lock_resource = type { i32, i32, i32 }

@DLM_LOCK_RES_MIGRATING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__dlm_lockres_reserve_ast(%struct.dlm_lock_resource* %0) #0 {
  %2 = alloca %struct.dlm_lock_resource*, align 8
  store %struct.dlm_lock_resource* %0, %struct.dlm_lock_resource** %2, align 8
  %3 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %2, align 8
  %4 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %3, i32 0, i32 2
  %5 = call i32 @assert_spin_locked(i32* %4)
  %6 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %2, align 8
  %7 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @DLM_LOCK_RES_MIGRATING, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %2, align 8
  %14 = call i32 @__dlm_print_one_lock_resource(%struct.dlm_lock_resource* %13)
  br label %15

15:                                               ; preds = %12, %1
  %16 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %2, align 8
  %17 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @DLM_LOCK_RES_MIGRATING, align 4
  %20 = and i32 %18, %19
  %21 = call i32 @BUG_ON(i32 %20)
  %22 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %2, align 8
  %23 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %22, i32 0, i32 1
  %24 = call i32 @atomic_inc(i32* %23)
  ret void
}

declare dso_local i32 @assert_spin_locked(i32*) #1

declare dso_local i32 @__dlm_print_one_lock_resource(%struct.dlm_lock_resource*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
