; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/ipc/extr_util.c_ipcctl_pre_down.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/ipc/extr_util.c_ipcctl_pre_down.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kern_ipc_perm = type { i64, i64 }
%struct.ipc_ids = type { i32 }
%struct.ipc64_perm = type { i32, i32, i32 }

@IPC_SET = common dso_local global i32 0, align 4
@CAP_SYS_ADMIN = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.kern_ipc_perm* @ipcctl_pre_down(%struct.ipc_ids* %0, i32 %1, i32 %2, %struct.ipc64_perm* %3, i32 %4) #0 {
  %6 = alloca %struct.kern_ipc_perm*, align 8
  %7 = alloca %struct.ipc_ids*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ipc64_perm*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.kern_ipc_perm*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.ipc_ids* %0, %struct.ipc_ids** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store %struct.ipc64_perm* %3, %struct.ipc64_perm** %10, align 8
  store i32 %4, i32* %11, align 4
  %15 = load %struct.ipc_ids*, %struct.ipc_ids** %7, align 8
  %16 = getelementptr inbounds %struct.ipc_ids, %struct.ipc_ids* %15, i32 0, i32 0
  %17 = call i32 @down_write(i32* %16)
  %18 = load %struct.ipc_ids*, %struct.ipc_ids** %7, align 8
  %19 = load i32, i32* %8, align 4
  %20 = call %struct.kern_ipc_perm* @ipc_lock_check(%struct.ipc_ids* %18, i32 %19)
  store %struct.kern_ipc_perm* %20, %struct.kern_ipc_perm** %12, align 8
  %21 = load %struct.kern_ipc_perm*, %struct.kern_ipc_perm** %12, align 8
  %22 = call i64 @IS_ERR(%struct.kern_ipc_perm* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %5
  %25 = load %struct.kern_ipc_perm*, %struct.kern_ipc_perm** %12, align 8
  %26 = call i32 @PTR_ERR(%struct.kern_ipc_perm* %25)
  store i32 %26, i32* %14, align 4
  br label %69

27:                                               ; preds = %5
  %28 = load %struct.kern_ipc_perm*, %struct.kern_ipc_perm** %12, align 8
  %29 = call i32 @audit_ipc_obj(%struct.kern_ipc_perm* %28)
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* @IPC_SET, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %45

33:                                               ; preds = %27
  %34 = load i32, i32* %11, align 4
  %35 = load %struct.ipc64_perm*, %struct.ipc64_perm** %10, align 8
  %36 = getelementptr inbounds %struct.ipc64_perm, %struct.ipc64_perm* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.ipc64_perm*, %struct.ipc64_perm** %10, align 8
  %39 = getelementptr inbounds %struct.ipc64_perm, %struct.ipc64_perm* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.ipc64_perm*, %struct.ipc64_perm** %10, align 8
  %42 = getelementptr inbounds %struct.ipc64_perm, %struct.ipc64_perm* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @audit_ipc_set_perm(i32 %34, i32 %37, i32 %40, i32 %43)
  br label %45

45:                                               ; preds = %33, %27
  %46 = call i64 (...) @current_euid()
  store i64 %46, i64* %13, align 8
  %47 = load i64, i64* %13, align 8
  %48 = load %struct.kern_ipc_perm*, %struct.kern_ipc_perm** %12, align 8
  %49 = getelementptr inbounds %struct.kern_ipc_perm, %struct.kern_ipc_perm* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp eq i64 %47, %50
  br i1 %51, label %62, label %52

52:                                               ; preds = %45
  %53 = load i64, i64* %13, align 8
  %54 = load %struct.kern_ipc_perm*, %struct.kern_ipc_perm** %12, align 8
  %55 = getelementptr inbounds %struct.kern_ipc_perm, %struct.kern_ipc_perm* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = icmp eq i64 %53, %56
  br i1 %57, label %62, label %58

58:                                               ; preds = %52
  %59 = load i32, i32* @CAP_SYS_ADMIN, align 4
  %60 = call i64 @capable(i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %58, %52, %45
  %63 = load %struct.kern_ipc_perm*, %struct.kern_ipc_perm** %12, align 8
  store %struct.kern_ipc_perm* %63, %struct.kern_ipc_perm** %6, align 8
  br label %75

64:                                               ; preds = %58
  %65 = load i32, i32* @EPERM, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %14, align 4
  %67 = load %struct.kern_ipc_perm*, %struct.kern_ipc_perm** %12, align 8
  %68 = call i32 @ipc_unlock(%struct.kern_ipc_perm* %67)
  br label %69

69:                                               ; preds = %64, %24
  %70 = load %struct.ipc_ids*, %struct.ipc_ids** %7, align 8
  %71 = getelementptr inbounds %struct.ipc_ids, %struct.ipc_ids* %70, i32 0, i32 0
  %72 = call i32 @up_write(i32* %71)
  %73 = load i32, i32* %14, align 4
  %74 = call %struct.kern_ipc_perm* @ERR_PTR(i32 %73)
  store %struct.kern_ipc_perm* %74, %struct.kern_ipc_perm** %6, align 8
  br label %75

75:                                               ; preds = %69, %62
  %76 = load %struct.kern_ipc_perm*, %struct.kern_ipc_perm** %6, align 8
  ret %struct.kern_ipc_perm* %76
}

declare dso_local i32 @down_write(i32*) #1

declare dso_local %struct.kern_ipc_perm* @ipc_lock_check(%struct.ipc_ids*, i32) #1

declare dso_local i64 @IS_ERR(%struct.kern_ipc_perm*) #1

declare dso_local i32 @PTR_ERR(%struct.kern_ipc_perm*) #1

declare dso_local i32 @audit_ipc_obj(%struct.kern_ipc_perm*) #1

declare dso_local i32 @audit_ipc_set_perm(i32, i32, i32, i32) #1

declare dso_local i64 @current_euid(...) #1

declare dso_local i64 @capable(i32) #1

declare dso_local i32 @ipc_unlock(%struct.kern_ipc_perm*) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local %struct.kern_ipc_perm* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
