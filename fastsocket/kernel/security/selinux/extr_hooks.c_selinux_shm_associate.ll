; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/selinux/extr_hooks.c_selinux_shm_associate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/selinux/extr_hooks.c_selinux_shm_associate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.shmid_kernel = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.ipc_security_struct* }
%struct.ipc_security_struct = type { i32 }
%struct.common_audit_data = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@IPC = common dso_local global i32 0, align 4
@SECCLASS_SHM = common dso_local global i32 0, align 4
@SHM__ASSOCIATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.shmid_kernel*, i32)* @selinux_shm_associate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @selinux_shm_associate(%struct.shmid_kernel* %0, i32 %1) #0 {
  %3 = alloca %struct.shmid_kernel*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ipc_security_struct*, align 8
  %6 = alloca %struct.common_audit_data, align 4
  %7 = alloca i32, align 4
  store %struct.shmid_kernel* %0, %struct.shmid_kernel** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = call i32 (...) @current_sid()
  store i32 %8, i32* %7, align 4
  %9 = load %struct.shmid_kernel*, %struct.shmid_kernel** %3, align 8
  %10 = getelementptr inbounds %struct.shmid_kernel, %struct.shmid_kernel* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 1
  %12 = load %struct.ipc_security_struct*, %struct.ipc_security_struct** %11, align 8
  store %struct.ipc_security_struct* %12, %struct.ipc_security_struct** %5, align 8
  %13 = load i32, i32* @IPC, align 4
  %14 = call i32 @COMMON_AUDIT_DATA_INIT(%struct.common_audit_data* %6, i32 %13)
  %15 = load %struct.shmid_kernel*, %struct.shmid_kernel** %3, align 8
  %16 = getelementptr inbounds %struct.shmid_kernel, %struct.shmid_kernel* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = getelementptr inbounds %struct.common_audit_data, %struct.common_audit_data* %6, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 4
  %21 = load i32, i32* %7, align 4
  %22 = load %struct.ipc_security_struct*, %struct.ipc_security_struct** %5, align 8
  %23 = getelementptr inbounds %struct.ipc_security_struct, %struct.ipc_security_struct* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @SECCLASS_SHM, align 4
  %26 = load i32, i32* @SHM__ASSOCIATE, align 4
  %27 = call i32 @avc_has_perm(i32 %21, i32 %24, i32 %25, i32 %26, %struct.common_audit_data* %6)
  ret i32 %27
}

declare dso_local i32 @current_sid(...) #1

declare dso_local i32 @COMMON_AUDIT_DATA_INIT(%struct.common_audit_data*, i32) #1

declare dso_local i32 @avc_has_perm(i32, i32, i32, i32, %struct.common_audit_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
