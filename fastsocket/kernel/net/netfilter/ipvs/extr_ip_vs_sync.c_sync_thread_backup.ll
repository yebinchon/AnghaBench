; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipvs/extr_ip_vs_sync.c_sync_thread_backup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipvs/extr_ip_vs_sync.c_sync_thread_backup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_vs_sync_thread_data = type { %struct.ip_vs_sync_thread_data*, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32* }

@.str = private unnamed_addr constant [66 x i8] c"sync thread started: state = BACKUP, mcast_ifn = %s, syncid = %d\0A\00", align 1
@ip_vs_backup_mcast_ifn = common dso_local global i32 0, align 4
@ip_vs_backup_syncid = common dso_local global i32 0, align 4
@sync_recv_mesg_maxlen = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"receiving message error\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @sync_thread_backup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sync_thread_backup(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.ip_vs_sync_thread_data*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.ip_vs_sync_thread_data*
  store %struct.ip_vs_sync_thread_data* %6, %struct.ip_vs_sync_thread_data** %3, align 8
  %7 = load i32, i32* @ip_vs_backup_mcast_ifn, align 4
  %8 = load i32, i32* @ip_vs_backup_syncid, align 4
  %9 = call i32 @pr_info(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0), i32 %7, i32 %8)
  br label %10

10:                                               ; preds = %69, %1
  %11 = call i64 (...) @kthread_should_stop()
  %12 = icmp ne i64 %11, 0
  %13 = xor i1 %12, true
  br i1 %13, label %14, label %70

14:                                               ; preds = %10
  %15 = load %struct.ip_vs_sync_thread_data*, %struct.ip_vs_sync_thread_data** %3, align 8
  %16 = getelementptr inbounds %struct.ip_vs_sync_thread_data, %struct.ip_vs_sync_thread_data* %15, i32 0, i32 1
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.ip_vs_sync_thread_data*, %struct.ip_vs_sync_thread_data** %3, align 8
  %24 = getelementptr inbounds %struct.ip_vs_sync_thread_data, %struct.ip_vs_sync_thread_data* %23, i32 0, i32 1
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = call i32 @skb_queue_empty(i32* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %14
  %32 = call i64 (...) @kthread_should_stop()
  %33 = icmp ne i64 %32, 0
  br label %34

34:                                               ; preds = %31, %14
  %35 = phi i1 [ true, %14 ], [ %33, %31 ]
  %36 = zext i1 %35 to i32
  %37 = call i32 @wait_event_interruptible(i32 %22, i32 %36)
  br label %38

38:                                               ; preds = %61, %34
  %39 = load %struct.ip_vs_sync_thread_data*, %struct.ip_vs_sync_thread_data** %3, align 8
  %40 = getelementptr inbounds %struct.ip_vs_sync_thread_data, %struct.ip_vs_sync_thread_data* %39, i32 0, i32 1
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = call i32 @skb_queue_empty(i32* %44)
  %46 = icmp ne i32 %45, 0
  %47 = xor i1 %46, true
  br i1 %47, label %48, label %69

48:                                               ; preds = %38
  %49 = load %struct.ip_vs_sync_thread_data*, %struct.ip_vs_sync_thread_data** %3, align 8
  %50 = getelementptr inbounds %struct.ip_vs_sync_thread_data, %struct.ip_vs_sync_thread_data* %49, i32 0, i32 1
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %50, align 8
  %52 = load %struct.ip_vs_sync_thread_data*, %struct.ip_vs_sync_thread_data** %3, align 8
  %53 = getelementptr inbounds %struct.ip_vs_sync_thread_data, %struct.ip_vs_sync_thread_data* %52, i32 0, i32 0
  %54 = load %struct.ip_vs_sync_thread_data*, %struct.ip_vs_sync_thread_data** %53, align 8
  %55 = load i32, i32* @sync_recv_mesg_maxlen, align 4
  %56 = call i32 @ip_vs_receive(%struct.TYPE_5__* %51, %struct.ip_vs_sync_thread_data* %54, i32 %55)
  store i32 %56, i32* %4, align 4
  %57 = load i32, i32* %4, align 4
  %58 = icmp sle i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %48
  %60 = call i32 @pr_err(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %69

61:                                               ; preds = %48
  %62 = call i32 (...) @local_bh_disable()
  %63 = load %struct.ip_vs_sync_thread_data*, %struct.ip_vs_sync_thread_data** %3, align 8
  %64 = getelementptr inbounds %struct.ip_vs_sync_thread_data, %struct.ip_vs_sync_thread_data* %63, i32 0, i32 0
  %65 = load %struct.ip_vs_sync_thread_data*, %struct.ip_vs_sync_thread_data** %64, align 8
  %66 = load i32, i32* %4, align 4
  %67 = call i32 @ip_vs_process_message(%struct.ip_vs_sync_thread_data* %65, i32 %66)
  %68 = call i32 (...) @local_bh_enable()
  br label %38

69:                                               ; preds = %59, %38
  br label %10

70:                                               ; preds = %10
  %71 = load %struct.ip_vs_sync_thread_data*, %struct.ip_vs_sync_thread_data** %3, align 8
  %72 = getelementptr inbounds %struct.ip_vs_sync_thread_data, %struct.ip_vs_sync_thread_data* %71, i32 0, i32 1
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %72, align 8
  %74 = call i32 @sock_release(%struct.TYPE_5__* %73)
  %75 = load %struct.ip_vs_sync_thread_data*, %struct.ip_vs_sync_thread_data** %3, align 8
  %76 = getelementptr inbounds %struct.ip_vs_sync_thread_data, %struct.ip_vs_sync_thread_data* %75, i32 0, i32 0
  %77 = load %struct.ip_vs_sync_thread_data*, %struct.ip_vs_sync_thread_data** %76, align 8
  %78 = call i32 @kfree(%struct.ip_vs_sync_thread_data* %77)
  %79 = load %struct.ip_vs_sync_thread_data*, %struct.ip_vs_sync_thread_data** %3, align 8
  %80 = call i32 @kfree(%struct.ip_vs_sync_thread_data* %79)
  ret i32 0
}

declare dso_local i32 @pr_info(i8*, i32, i32) #1

declare dso_local i64 @kthread_should_stop(...) #1

declare dso_local i32 @wait_event_interruptible(i32, i32) #1

declare dso_local i32 @skb_queue_empty(i32*) #1

declare dso_local i32 @ip_vs_receive(%struct.TYPE_5__*, %struct.ip_vs_sync_thread_data*, i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @local_bh_disable(...) #1

declare dso_local i32 @ip_vs_process_message(%struct.ip_vs_sync_thread_data*, i32) #1

declare dso_local i32 @local_bh_enable(...) #1

declare dso_local i32 @sock_release(%struct.TYPE_5__*) #1

declare dso_local i32 @kfree(%struct.ip_vs_sync_thread_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
