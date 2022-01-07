; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/ipc/extr_mqueue.c_pipelined_receive.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/ipc/extr_mqueue.c_pipelined_receive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mqueue_inode_info = type { i32 }
%struct.ext_wait_queue = type { i32, i32, i32, i32 }

@SEND = common dso_local global i32 0, align 4
@STATE_PENDING = common dso_local global i32 0, align 4
@STATE_READY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mqueue_inode_info*)* @pipelined_receive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pipelined_receive(%struct.mqueue_inode_info* %0) #0 {
  %2 = alloca %struct.mqueue_inode_info*, align 8
  %3 = alloca %struct.ext_wait_queue*, align 8
  store %struct.mqueue_inode_info* %0, %struct.mqueue_inode_info** %2, align 8
  %4 = load %struct.mqueue_inode_info*, %struct.mqueue_inode_info** %2, align 8
  %5 = load i32, i32* @SEND, align 4
  %6 = call %struct.ext_wait_queue* @wq_get_first_waiter(%struct.mqueue_inode_info* %4, i32 %5)
  store %struct.ext_wait_queue* %6, %struct.ext_wait_queue** %3, align 8
  %7 = load %struct.ext_wait_queue*, %struct.ext_wait_queue** %3, align 8
  %8 = icmp ne %struct.ext_wait_queue* %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %1
  %10 = load %struct.mqueue_inode_info*, %struct.mqueue_inode_info** %2, align 8
  %11 = getelementptr inbounds %struct.mqueue_inode_info, %struct.mqueue_inode_info* %10, i32 0, i32 0
  %12 = call i32 @wake_up_interruptible(i32* %11)
  br label %36

13:                                               ; preds = %1
  %14 = load %struct.ext_wait_queue*, %struct.ext_wait_queue** %3, align 8
  %15 = getelementptr inbounds %struct.ext_wait_queue, %struct.ext_wait_queue* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.mqueue_inode_info*, %struct.mqueue_inode_info** %2, align 8
  %18 = call i64 @msg_insert(i32 %16, %struct.mqueue_inode_info* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %13
  br label %36

21:                                               ; preds = %13
  %22 = load %struct.ext_wait_queue*, %struct.ext_wait_queue** %3, align 8
  %23 = getelementptr inbounds %struct.ext_wait_queue, %struct.ext_wait_queue* %22, i32 0, i32 2
  %24 = call i32 @list_del(i32* %23)
  %25 = load i32, i32* @STATE_PENDING, align 4
  %26 = load %struct.ext_wait_queue*, %struct.ext_wait_queue** %3, align 8
  %27 = getelementptr inbounds %struct.ext_wait_queue, %struct.ext_wait_queue* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 4
  %28 = load %struct.ext_wait_queue*, %struct.ext_wait_queue** %3, align 8
  %29 = getelementptr inbounds %struct.ext_wait_queue, %struct.ext_wait_queue* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @wake_up_process(i32 %30)
  %32 = call i32 (...) @smp_wmb()
  %33 = load i32, i32* @STATE_READY, align 4
  %34 = load %struct.ext_wait_queue*, %struct.ext_wait_queue** %3, align 8
  %35 = getelementptr inbounds %struct.ext_wait_queue, %struct.ext_wait_queue* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 4
  br label %36

36:                                               ; preds = %21, %20, %9
  ret void
}

declare dso_local %struct.ext_wait_queue* @wq_get_first_waiter(%struct.mqueue_inode_info*, i32) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

declare dso_local i64 @msg_insert(i32, %struct.mqueue_inode_info*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @wake_up_process(i32) #1

declare dso_local i32 @smp_wmb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
