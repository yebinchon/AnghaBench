; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/selinux/extr_hooks.c_selinux_msg_queue_msgsnd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/selinux/extr_hooks.c_selinux_msg_queue_msgsnd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msg_queue = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.ipc_security_struct* }
%struct.ipc_security_struct = type { i64 }
%struct.msg_msg = type { %struct.msg_security_struct* }
%struct.msg_security_struct = type { i64 }
%struct.common_audit_data = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@SECINITSID_UNLABELED = common dso_local global i64 0, align 8
@SECCLASS_MSG = common dso_local global i32 0, align 4
@IPC = common dso_local global i32 0, align 4
@SECCLASS_MSGQ = common dso_local global i32 0, align 4
@MSGQ__WRITE = common dso_local global i32 0, align 4
@MSG__SEND = common dso_local global i32 0, align 4
@MSGQ__ENQUEUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.msg_queue*, %struct.msg_msg*, i32)* @selinux_msg_queue_msgsnd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @selinux_msg_queue_msgsnd(%struct.msg_queue* %0, %struct.msg_msg* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.msg_queue*, align 8
  %6 = alloca %struct.msg_msg*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ipc_security_struct*, align 8
  %9 = alloca %struct.msg_security_struct*, align 8
  %10 = alloca %struct.common_audit_data, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.msg_queue* %0, %struct.msg_queue** %5, align 8
  store %struct.msg_msg* %1, %struct.msg_msg** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = call i64 (...) @current_sid()
  store i64 %13, i64* %11, align 8
  %14 = load %struct.msg_queue*, %struct.msg_queue** %5, align 8
  %15 = getelementptr inbounds %struct.msg_queue, %struct.msg_queue* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 1
  %17 = load %struct.ipc_security_struct*, %struct.ipc_security_struct** %16, align 8
  store %struct.ipc_security_struct* %17, %struct.ipc_security_struct** %8, align 8
  %18 = load %struct.msg_msg*, %struct.msg_msg** %6, align 8
  %19 = getelementptr inbounds %struct.msg_msg, %struct.msg_msg* %18, i32 0, i32 0
  %20 = load %struct.msg_security_struct*, %struct.msg_security_struct** %19, align 8
  store %struct.msg_security_struct* %20, %struct.msg_security_struct** %9, align 8
  %21 = load %struct.msg_security_struct*, %struct.msg_security_struct** %9, align 8
  %22 = getelementptr inbounds %struct.msg_security_struct, %struct.msg_security_struct* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @SECINITSID_UNLABELED, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %40

26:                                               ; preds = %3
  %27 = load i64, i64* %11, align 8
  %28 = load %struct.ipc_security_struct*, %struct.ipc_security_struct** %8, align 8
  %29 = getelementptr inbounds %struct.ipc_security_struct, %struct.ipc_security_struct* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i32, i32* @SECCLASS_MSG, align 4
  %32 = load %struct.msg_security_struct*, %struct.msg_security_struct** %9, align 8
  %33 = getelementptr inbounds %struct.msg_security_struct, %struct.msg_security_struct* %32, i32 0, i32 0
  %34 = call i32 @security_transition_sid(i64 %27, i64 %30, i32 %31, i64* %33)
  store i32 %34, i32* %12, align 4
  %35 = load i32, i32* %12, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %26
  %38 = load i32, i32* %12, align 4
  store i32 %38, i32* %4, align 4
  br label %81

39:                                               ; preds = %26
  br label %40

40:                                               ; preds = %39, %3
  %41 = load i32, i32* @IPC, align 4
  %42 = call i32 @COMMON_AUDIT_DATA_INIT(%struct.common_audit_data* %10, i32 %41)
  %43 = load %struct.msg_queue*, %struct.msg_queue** %5, align 8
  %44 = getelementptr inbounds %struct.msg_queue, %struct.msg_queue* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = getelementptr inbounds %struct.common_audit_data, %struct.common_audit_data* %10, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 4
  %49 = load i64, i64* %11, align 8
  %50 = load %struct.ipc_security_struct*, %struct.ipc_security_struct** %8, align 8
  %51 = getelementptr inbounds %struct.ipc_security_struct, %struct.ipc_security_struct* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i32, i32* @SECCLASS_MSGQ, align 4
  %54 = load i32, i32* @MSGQ__WRITE, align 4
  %55 = call i32 @avc_has_perm(i64 %49, i64 %52, i32 %53, i32 %54, %struct.common_audit_data* %10)
  store i32 %55, i32* %12, align 4
  %56 = load i32, i32* %12, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %66, label %58

58:                                               ; preds = %40
  %59 = load i64, i64* %11, align 8
  %60 = load %struct.msg_security_struct*, %struct.msg_security_struct** %9, align 8
  %61 = getelementptr inbounds %struct.msg_security_struct, %struct.msg_security_struct* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i32, i32* @SECCLASS_MSG, align 4
  %64 = load i32, i32* @MSG__SEND, align 4
  %65 = call i32 @avc_has_perm(i64 %59, i64 %62, i32 %63, i32 %64, %struct.common_audit_data* %10)
  store i32 %65, i32* %12, align 4
  br label %66

66:                                               ; preds = %58, %40
  %67 = load i32, i32* %12, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %79, label %69

69:                                               ; preds = %66
  %70 = load %struct.msg_security_struct*, %struct.msg_security_struct** %9, align 8
  %71 = getelementptr inbounds %struct.msg_security_struct, %struct.msg_security_struct* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.ipc_security_struct*, %struct.ipc_security_struct** %8, align 8
  %74 = getelementptr inbounds %struct.ipc_security_struct, %struct.ipc_security_struct* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i32, i32* @SECCLASS_MSGQ, align 4
  %77 = load i32, i32* @MSGQ__ENQUEUE, align 4
  %78 = call i32 @avc_has_perm(i64 %72, i64 %75, i32 %76, i32 %77, %struct.common_audit_data* %10)
  store i32 %78, i32* %12, align 4
  br label %79

79:                                               ; preds = %69, %66
  %80 = load i32, i32* %12, align 4
  store i32 %80, i32* %4, align 4
  br label %81

81:                                               ; preds = %79, %37
  %82 = load i32, i32* %4, align 4
  ret i32 %82
}

declare dso_local i64 @current_sid(...) #1

declare dso_local i32 @security_transition_sid(i64, i64, i32, i64*) #1

declare dso_local i32 @COMMON_AUDIT_DATA_INIT(%struct.common_audit_data*, i32) #1

declare dso_local i32 @avc_has_perm(i64, i64, i32, i32, %struct.common_audit_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
