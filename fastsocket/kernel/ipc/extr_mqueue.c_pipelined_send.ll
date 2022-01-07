; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/ipc/extr_mqueue.c_pipelined_send.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/ipc/extr_mqueue.c_pipelined_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mqueue_inode_info = type { i32 }
%struct.msg_msg = type { i32 }
%struct.ext_wait_queue = type { i32, i32, i32, %struct.msg_msg* }

@STATE_PENDING = common dso_local global i32 0, align 4
@STATE_READY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mqueue_inode_info*, %struct.msg_msg*, %struct.ext_wait_queue*)* @pipelined_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pipelined_send(%struct.mqueue_inode_info* %0, %struct.msg_msg* %1, %struct.ext_wait_queue* %2) #0 {
  %4 = alloca %struct.mqueue_inode_info*, align 8
  %5 = alloca %struct.msg_msg*, align 8
  %6 = alloca %struct.ext_wait_queue*, align 8
  store %struct.mqueue_inode_info* %0, %struct.mqueue_inode_info** %4, align 8
  store %struct.msg_msg* %1, %struct.msg_msg** %5, align 8
  store %struct.ext_wait_queue* %2, %struct.ext_wait_queue** %6, align 8
  %7 = load %struct.msg_msg*, %struct.msg_msg** %5, align 8
  %8 = load %struct.ext_wait_queue*, %struct.ext_wait_queue** %6, align 8
  %9 = getelementptr inbounds %struct.ext_wait_queue, %struct.ext_wait_queue* %8, i32 0, i32 3
  store %struct.msg_msg* %7, %struct.msg_msg** %9, align 8
  %10 = load %struct.ext_wait_queue*, %struct.ext_wait_queue** %6, align 8
  %11 = getelementptr inbounds %struct.ext_wait_queue, %struct.ext_wait_queue* %10, i32 0, i32 2
  %12 = call i32 @list_del(i32* %11)
  %13 = load i32, i32* @STATE_PENDING, align 4
  %14 = load %struct.ext_wait_queue*, %struct.ext_wait_queue** %6, align 8
  %15 = getelementptr inbounds %struct.ext_wait_queue, %struct.ext_wait_queue* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 8
  %16 = load %struct.ext_wait_queue*, %struct.ext_wait_queue** %6, align 8
  %17 = getelementptr inbounds %struct.ext_wait_queue, %struct.ext_wait_queue* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @wake_up_process(i32 %18)
  %20 = call i32 (...) @smp_wmb()
  %21 = load i32, i32* @STATE_READY, align 4
  %22 = load %struct.ext_wait_queue*, %struct.ext_wait_queue** %6, align 8
  %23 = getelementptr inbounds %struct.ext_wait_queue, %struct.ext_wait_queue* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 8
  ret void
}

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @wake_up_process(i32) #1

declare dso_local i32 @smp_wmb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
