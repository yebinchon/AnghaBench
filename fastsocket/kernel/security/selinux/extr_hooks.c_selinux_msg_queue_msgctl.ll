; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/selinux/extr_hooks.c_selinux_msg_queue_msgctl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/selinux/extr_hooks.c_selinux_msg_queue_msgctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msg_queue = type { i32 }

@current = common dso_local global i32 0, align 4
@SYSTEM__IPC_INFO = common dso_local global i32 0, align 4
@MSGQ__GETATTR = common dso_local global i32 0, align 4
@MSGQ__ASSOCIATE = common dso_local global i32 0, align 4
@MSGQ__SETATTR = common dso_local global i32 0, align 4
@MSGQ__DESTROY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.msg_queue*, i32)* @selinux_msg_queue_msgctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @selinux_msg_queue_msgctl(%struct.msg_queue* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.msg_queue*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.msg_queue* %0, %struct.msg_queue** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  switch i32 %8, label %21 [
    i32 133, label %9
    i32 129, label %9
    i32 130, label %13
    i32 128, label %13
    i32 131, label %17
    i32 132, label %19
  ]

9:                                                ; preds = %2, %2
  %10 = load i32, i32* @current, align 4
  %11 = load i32, i32* @SYSTEM__IPC_INFO, align 4
  %12 = call i32 @task_has_system(i32 %10, i32 %11)
  store i32 %12, i32* %3, align 4
  br label %28

13:                                               ; preds = %2, %2
  %14 = load i32, i32* @MSGQ__GETATTR, align 4
  %15 = load i32, i32* @MSGQ__ASSOCIATE, align 4
  %16 = or i32 %14, %15
  store i32 %16, i32* %7, align 4
  br label %22

17:                                               ; preds = %2
  %18 = load i32, i32* @MSGQ__SETATTR, align 4
  store i32 %18, i32* %7, align 4
  br label %22

19:                                               ; preds = %2
  %20 = load i32, i32* @MSGQ__DESTROY, align 4
  store i32 %20, i32* %7, align 4
  br label %22

21:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %28

22:                                               ; preds = %19, %17, %13
  %23 = load %struct.msg_queue*, %struct.msg_queue** %4, align 8
  %24 = getelementptr inbounds %struct.msg_queue, %struct.msg_queue* %23, i32 0, i32 0
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @ipc_has_perm(i32* %24, i32 %25)
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  store i32 %27, i32* %3, align 4
  br label %28

28:                                               ; preds = %22, %21, %9
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

declare dso_local i32 @task_has_system(i32, i32) #1

declare dso_local i32 @ipc_has_perm(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
