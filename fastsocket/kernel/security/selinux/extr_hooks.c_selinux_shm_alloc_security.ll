; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/selinux/extr_hooks.c_selinux_shm_alloc_security.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/selinux/extr_hooks.c_selinux_shm_alloc_security.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.shmid_kernel = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, %struct.ipc_security_struct* }
%struct.ipc_security_struct = type { i32 }
%struct.common_audit_data = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@current = common dso_local global i32 0, align 4
@SECCLASS_SHM = common dso_local global i32 0, align 4
@IPC = common dso_local global i32 0, align 4
@SHM__CREATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.shmid_kernel*)* @selinux_shm_alloc_security to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @selinux_shm_alloc_security(%struct.shmid_kernel* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.shmid_kernel*, align 8
  %4 = alloca %struct.ipc_security_struct*, align 8
  %5 = alloca %struct.common_audit_data, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.shmid_kernel* %0, %struct.shmid_kernel** %3, align 8
  %8 = call i32 (...) @current_sid()
  store i32 %8, i32* %6, align 4
  %9 = load i32, i32* @current, align 4
  %10 = load %struct.shmid_kernel*, %struct.shmid_kernel** %3, align 8
  %11 = getelementptr inbounds %struct.shmid_kernel, %struct.shmid_kernel* %10, i32 0, i32 0
  %12 = load i32, i32* @SECCLASS_SHM, align 4
  %13 = call i32 @ipc_alloc_security(i32 %9, %struct.TYPE_5__* %11, i32 %12)
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = load i32, i32* %7, align 4
  store i32 %17, i32* %2, align 4
  br label %46

18:                                               ; preds = %1
  %19 = load %struct.shmid_kernel*, %struct.shmid_kernel** %3, align 8
  %20 = getelementptr inbounds %struct.shmid_kernel, %struct.shmid_kernel* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 1
  %22 = load %struct.ipc_security_struct*, %struct.ipc_security_struct** %21, align 8
  store %struct.ipc_security_struct* %22, %struct.ipc_security_struct** %4, align 8
  %23 = load i32, i32* @IPC, align 4
  %24 = call i32 @COMMON_AUDIT_DATA_INIT(%struct.common_audit_data* %5, i32 %23)
  %25 = load %struct.shmid_kernel*, %struct.shmid_kernel** %3, align 8
  %26 = getelementptr inbounds %struct.shmid_kernel, %struct.shmid_kernel* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = getelementptr inbounds %struct.common_audit_data, %struct.common_audit_data* %5, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 4
  %31 = load i32, i32* %6, align 4
  %32 = load %struct.ipc_security_struct*, %struct.ipc_security_struct** %4, align 8
  %33 = getelementptr inbounds %struct.ipc_security_struct, %struct.ipc_security_struct* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @SECCLASS_SHM, align 4
  %36 = load i32, i32* @SHM__CREATE, align 4
  %37 = call i32 @avc_has_perm(i32 %31, i32 %34, i32 %35, i32 %36, %struct.common_audit_data* %5)
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* %7, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %18
  %41 = load %struct.shmid_kernel*, %struct.shmid_kernel** %3, align 8
  %42 = getelementptr inbounds %struct.shmid_kernel, %struct.shmid_kernel* %41, i32 0, i32 0
  %43 = call i32 @ipc_free_security(%struct.TYPE_5__* %42)
  %44 = load i32, i32* %7, align 4
  store i32 %44, i32* %2, align 4
  br label %46

45:                                               ; preds = %18
  store i32 0, i32* %2, align 4
  br label %46

46:                                               ; preds = %45, %40, %16
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local i32 @current_sid(...) #1

declare dso_local i32 @ipc_alloc_security(i32, %struct.TYPE_5__*, i32) #1

declare dso_local i32 @COMMON_AUDIT_DATA_INIT(%struct.common_audit_data*, i32) #1

declare dso_local i32 @avc_has_perm(i32, i32, i32, i32, %struct.common_audit_data*) #1

declare dso_local i32 @ipc_free_security(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
