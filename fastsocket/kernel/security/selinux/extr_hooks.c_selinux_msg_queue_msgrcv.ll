; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/selinux/extr_hooks.c_selinux_msg_queue_msgrcv.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/selinux/extr_hooks.c_selinux_msg_queue_msgrcv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msg_queue = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.ipc_security_struct* }
%struct.ipc_security_struct = type { i32 }
%struct.msg_msg = type { %struct.msg_security_struct* }
%struct.msg_security_struct = type { i32 }
%struct.task_struct = type { i32 }
%struct.common_audit_data = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@IPC = common dso_local global i32 0, align 4
@SECCLASS_MSGQ = common dso_local global i32 0, align 4
@MSGQ__READ = common dso_local global i32 0, align 4
@SECCLASS_MSG = common dso_local global i32 0, align 4
@MSG__RECEIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.msg_queue*, %struct.msg_msg*, %struct.task_struct*, i64, i32)* @selinux_msg_queue_msgrcv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @selinux_msg_queue_msgrcv(%struct.msg_queue* %0, %struct.msg_msg* %1, %struct.task_struct* %2, i64 %3, i32 %4) #0 {
  %6 = alloca %struct.msg_queue*, align 8
  %7 = alloca %struct.msg_msg*, align 8
  %8 = alloca %struct.task_struct*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.ipc_security_struct*, align 8
  %12 = alloca %struct.msg_security_struct*, align 8
  %13 = alloca %struct.common_audit_data, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.msg_queue* %0, %struct.msg_queue** %6, align 8
  store %struct.msg_msg* %1, %struct.msg_msg** %7, align 8
  store %struct.task_struct* %2, %struct.task_struct** %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 %4, i32* %10, align 4
  %16 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %17 = call i32 @task_sid(%struct.task_struct* %16)
  store i32 %17, i32* %14, align 4
  %18 = load %struct.msg_queue*, %struct.msg_queue** %6, align 8
  %19 = getelementptr inbounds %struct.msg_queue, %struct.msg_queue* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  %21 = load %struct.ipc_security_struct*, %struct.ipc_security_struct** %20, align 8
  store %struct.ipc_security_struct* %21, %struct.ipc_security_struct** %11, align 8
  %22 = load %struct.msg_msg*, %struct.msg_msg** %7, align 8
  %23 = getelementptr inbounds %struct.msg_msg, %struct.msg_msg* %22, i32 0, i32 0
  %24 = load %struct.msg_security_struct*, %struct.msg_security_struct** %23, align 8
  store %struct.msg_security_struct* %24, %struct.msg_security_struct** %12, align 8
  %25 = load i32, i32* @IPC, align 4
  %26 = call i32 @COMMON_AUDIT_DATA_INIT(%struct.common_audit_data* %13, i32 %25)
  %27 = load %struct.msg_queue*, %struct.msg_queue** %6, align 8
  %28 = getelementptr inbounds %struct.msg_queue, %struct.msg_queue* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = getelementptr inbounds %struct.common_audit_data, %struct.common_audit_data* %13, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 4
  %33 = load i32, i32* %14, align 4
  %34 = load %struct.ipc_security_struct*, %struct.ipc_security_struct** %11, align 8
  %35 = getelementptr inbounds %struct.ipc_security_struct, %struct.ipc_security_struct* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @SECCLASS_MSGQ, align 4
  %38 = load i32, i32* @MSGQ__READ, align 4
  %39 = call i32 @avc_has_perm(i32 %33, i32 %36, i32 %37, i32 %38, %struct.common_audit_data* %13)
  store i32 %39, i32* %15, align 4
  %40 = load i32, i32* %15, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %50, label %42

42:                                               ; preds = %5
  %43 = load i32, i32* %14, align 4
  %44 = load %struct.msg_security_struct*, %struct.msg_security_struct** %12, align 8
  %45 = getelementptr inbounds %struct.msg_security_struct, %struct.msg_security_struct* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @SECCLASS_MSG, align 4
  %48 = load i32, i32* @MSG__RECEIVE, align 4
  %49 = call i32 @avc_has_perm(i32 %43, i32 %46, i32 %47, i32 %48, %struct.common_audit_data* %13)
  store i32 %49, i32* %15, align 4
  br label %50

50:                                               ; preds = %42, %5
  %51 = load i32, i32* %15, align 4
  ret i32 %51
}

declare dso_local i32 @task_sid(%struct.task_struct*) #1

declare dso_local i32 @COMMON_AUDIT_DATA_INIT(%struct.common_audit_data*, i32) #1

declare dso_local i32 @avc_has_perm(i32, i32, i32, i32, %struct.common_audit_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
