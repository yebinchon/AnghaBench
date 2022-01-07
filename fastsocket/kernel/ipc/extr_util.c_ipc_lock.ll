; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/ipc/extr_util.c_ipc_lock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/ipc/extr_util.c_ipc_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kern_ipc_perm = type { i32, i64 }
%struct.ipc_ids = type { i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.kern_ipc_perm* @ipc_lock(%struct.ipc_ids* %0, i32 %1) #0 {
  %3 = alloca %struct.kern_ipc_perm*, align 8
  %4 = alloca %struct.ipc_ids*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.kern_ipc_perm*, align 8
  %7 = alloca i32, align 4
  store %struct.ipc_ids* %0, %struct.ipc_ids** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = call i32 @ipcid_to_idx(i32 %8)
  store i32 %9, i32* %7, align 4
  %10 = call i32 (...) @rcu_read_lock()
  %11 = load %struct.ipc_ids*, %struct.ipc_ids** %4, align 8
  %12 = getelementptr inbounds %struct.ipc_ids, %struct.ipc_ids* %11, i32 0, i32 0
  %13 = load i32, i32* %7, align 4
  %14 = call %struct.kern_ipc_perm* @idr_find(i32* %12, i32 %13)
  store %struct.kern_ipc_perm* %14, %struct.kern_ipc_perm** %6, align 8
  %15 = load %struct.kern_ipc_perm*, %struct.kern_ipc_perm** %6, align 8
  %16 = icmp eq %struct.kern_ipc_perm* %15, null
  br i1 %16, label %17, label %22

17:                                               ; preds = %2
  %18 = call i32 (...) @rcu_read_unlock()
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  %21 = call %struct.kern_ipc_perm* @ERR_PTR(i32 %20)
  store %struct.kern_ipc_perm* %21, %struct.kern_ipc_perm** %3, align 8
  br label %40

22:                                               ; preds = %2
  %23 = load %struct.kern_ipc_perm*, %struct.kern_ipc_perm** %6, align 8
  %24 = getelementptr inbounds %struct.kern_ipc_perm, %struct.kern_ipc_perm* %23, i32 0, i32 0
  %25 = call i32 @spin_lock(i32* %24)
  %26 = load %struct.kern_ipc_perm*, %struct.kern_ipc_perm** %6, align 8
  %27 = getelementptr inbounds %struct.kern_ipc_perm, %struct.kern_ipc_perm* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %22
  %31 = load %struct.kern_ipc_perm*, %struct.kern_ipc_perm** %6, align 8
  %32 = getelementptr inbounds %struct.kern_ipc_perm, %struct.kern_ipc_perm* %31, i32 0, i32 0
  %33 = call i32 @spin_unlock(i32* %32)
  %34 = call i32 (...) @rcu_read_unlock()
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  %37 = call %struct.kern_ipc_perm* @ERR_PTR(i32 %36)
  store %struct.kern_ipc_perm* %37, %struct.kern_ipc_perm** %3, align 8
  br label %40

38:                                               ; preds = %22
  %39 = load %struct.kern_ipc_perm*, %struct.kern_ipc_perm** %6, align 8
  store %struct.kern_ipc_perm* %39, %struct.kern_ipc_perm** %3, align 8
  br label %40

40:                                               ; preds = %38, %30, %17
  %41 = load %struct.kern_ipc_perm*, %struct.kern_ipc_perm** %3, align 8
  ret %struct.kern_ipc_perm* %41
}

declare dso_local i32 @ipcid_to_idx(i32) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.kern_ipc_perm* @idr_find(i32*, i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local %struct.kern_ipc_perm* @ERR_PTR(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
