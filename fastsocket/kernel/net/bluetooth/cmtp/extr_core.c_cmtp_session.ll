; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/cmtp/extr_core.c_cmtp_session.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/cmtp/extr_core.c_cmtp_session.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmtp_session = type { i32, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32, %struct.sock* }
%struct.sock = type { i64, i32, i32 }
%struct.sk_buff = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"session %p\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"kcmtpd_ctr_%d\00", align 1
@current = common dso_local global i32 0, align 4
@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@BT_CONNECTED = common dso_local global i64 0, align 8
@TASK_RUNNING = common dso_local global i32 0, align 4
@cmtp_session_sem = common dso_local global i32 0, align 4
@CMTP_LOOPBACK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @cmtp_session to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmtp_session(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.cmtp_session*, align 8
  %4 = alloca %struct.sock*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = bitcast i8* %7 to %struct.cmtp_session*
  store %struct.cmtp_session* %8, %struct.cmtp_session** %3, align 8
  %9 = load %struct.cmtp_session*, %struct.cmtp_session** %3, align 8
  %10 = getelementptr inbounds %struct.cmtp_session, %struct.cmtp_session* %9, i32 0, i32 1
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 1
  %13 = load %struct.sock*, %struct.sock** %12, align 8
  store %struct.sock* %13, %struct.sock** %4, align 8
  %14 = load %struct.cmtp_session*, %struct.cmtp_session** %3, align 8
  %15 = call i32 @BT_DBG(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), %struct.cmtp_session* %14)
  %16 = load %struct.cmtp_session*, %struct.cmtp_session** %3, align 8
  %17 = getelementptr inbounds %struct.cmtp_session, %struct.cmtp_session* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @daemonize(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %18)
  %20 = load i32, i32* @current, align 4
  %21 = call i32 @set_user_nice(i32 %20, i32 -15)
  %22 = load i32, i32* @current, align 4
  %23 = call i32 @init_waitqueue_entry(i32* %6, i32 %22)
  %24 = load %struct.sock*, %struct.sock** %4, align 8
  %25 = getelementptr inbounds %struct.sock, %struct.sock* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @add_wait_queue(i32 %26, i32* %6)
  br label %28

28:                                               ; preds = %55, %1
  %29 = load %struct.cmtp_session*, %struct.cmtp_session** %3, align 8
  %30 = getelementptr inbounds %struct.cmtp_session, %struct.cmtp_session* %29, i32 0, i32 2
  %31 = call i32 @atomic_read(i32* %30)
  %32 = icmp ne i32 %31, 0
  %33 = xor i1 %32, true
  br i1 %33, label %34, label %59

34:                                               ; preds = %28
  %35 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %36 = call i32 @set_current_state(i32 %35)
  %37 = load %struct.sock*, %struct.sock** %4, align 8
  %38 = getelementptr inbounds %struct.sock, %struct.sock* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @BT_CONNECTED, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %34
  br label %59

43:                                               ; preds = %34
  br label %44

44:                                               ; preds = %49, %43
  %45 = load %struct.sock*, %struct.sock** %4, align 8
  %46 = getelementptr inbounds %struct.sock, %struct.sock* %45, i32 0, i32 2
  %47 = call %struct.sk_buff* @skb_dequeue(i32* %46)
  store %struct.sk_buff* %47, %struct.sk_buff** %5, align 8
  %48 = icmp ne %struct.sk_buff* %47, null
  br i1 %48, label %49, label %55

49:                                               ; preds = %44
  %50 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %51 = call i32 @skb_orphan(%struct.sk_buff* %50)
  %52 = load %struct.cmtp_session*, %struct.cmtp_session** %3, align 8
  %53 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %54 = call i32 @cmtp_recv_frame(%struct.cmtp_session* %52, %struct.sk_buff* %53)
  br label %44

55:                                               ; preds = %44
  %56 = load %struct.cmtp_session*, %struct.cmtp_session** %3, align 8
  %57 = call i32 @cmtp_process_transmit(%struct.cmtp_session* %56)
  %58 = call i32 (...) @schedule()
  br label %28

59:                                               ; preds = %42, %28
  %60 = load i32, i32* @TASK_RUNNING, align 4
  %61 = call i32 @set_current_state(i32 %60)
  %62 = load %struct.sock*, %struct.sock** %4, align 8
  %63 = getelementptr inbounds %struct.sock, %struct.sock* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @remove_wait_queue(i32 %64, i32* %6)
  %66 = call i32 @down_write(i32* @cmtp_session_sem)
  %67 = load %struct.cmtp_session*, %struct.cmtp_session** %3, align 8
  %68 = getelementptr inbounds %struct.cmtp_session, %struct.cmtp_session* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @CMTP_LOOPBACK, align 4
  %71 = shl i32 1, %70
  %72 = and i32 %69, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %77, label %74

74:                                               ; preds = %59
  %75 = load %struct.cmtp_session*, %struct.cmtp_session** %3, align 8
  %76 = call i32 @cmtp_detach_device(%struct.cmtp_session* %75)
  br label %77

77:                                               ; preds = %74, %59
  %78 = load %struct.cmtp_session*, %struct.cmtp_session** %3, align 8
  %79 = getelementptr inbounds %struct.cmtp_session, %struct.cmtp_session* %78, i32 0, i32 1
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @fput(i32 %82)
  %84 = load %struct.cmtp_session*, %struct.cmtp_session** %3, align 8
  %85 = call i32 @__cmtp_unlink_session(%struct.cmtp_session* %84)
  %86 = call i32 @up_write(i32* @cmtp_session_sem)
  %87 = load %struct.cmtp_session*, %struct.cmtp_session** %3, align 8
  %88 = call i32 @kfree(%struct.cmtp_session* %87)
  ret i32 0
}

declare dso_local i32 @BT_DBG(i8*, %struct.cmtp_session*) #1

declare dso_local i32 @daemonize(i8*, i32) #1

declare dso_local i32 @set_user_nice(i32, i32) #1

declare dso_local i32 @init_waitqueue_entry(i32*, i32) #1

declare dso_local i32 @add_wait_queue(i32, i32*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @set_current_state(i32) #1

declare dso_local %struct.sk_buff* @skb_dequeue(i32*) #1

declare dso_local i32 @skb_orphan(%struct.sk_buff*) #1

declare dso_local i32 @cmtp_recv_frame(%struct.cmtp_session*, %struct.sk_buff*) #1

declare dso_local i32 @cmtp_process_transmit(%struct.cmtp_session*) #1

declare dso_local i32 @schedule(...) #1

declare dso_local i32 @remove_wait_queue(i32, i32*) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @cmtp_detach_device(%struct.cmtp_session*) #1

declare dso_local i32 @fput(i32) #1

declare dso_local i32 @__cmtp_unlink_session(%struct.cmtp_session*) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @kfree(%struct.cmtp_session*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
