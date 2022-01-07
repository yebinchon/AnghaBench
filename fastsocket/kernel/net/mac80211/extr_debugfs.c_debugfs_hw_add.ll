; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_debugfs.c_debugfs_hw_add.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_debugfs.c_debugfs_hw_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_local = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i8* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.dentry* }
%struct.dentry = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"keys\00", align 1
@total_ps_buffered = common dso_local global i32 0, align 4
@wep_iv = common dso_local global i32 0, align 4
@queues = common dso_local global i32 0, align 4
@hwflags = common dso_local global i32 0, align 4
@user_power = common dso_local global i32 0, align 4
@power = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"statistics\00", align 1
@transmitted_fragment_count = common dso_local global i32 0, align 4
@multicast_transmitted_frame_count = common dso_local global i32 0, align 4
@failed_count = common dso_local global i32 0, align 4
@retry_count = common dso_local global i32 0, align 4
@multiple_retry_count = common dso_local global i32 0, align 4
@frame_duplicate_count = common dso_local global i32 0, align 4
@received_fragment_count = common dso_local global i32 0, align 4
@multicast_received_frame_count = common dso_local global i32 0, align 4
@transmitted_frame_count = common dso_local global i32 0, align 4
@dot11ACKFailureCount = common dso_local global i32 0, align 4
@dot11RTSFailureCount = common dso_local global i32 0, align 4
@dot11FCSErrorCount = common dso_local global i32 0, align 4
@dot11RTSSuccessCount = common dso_local global i32 0, align 4
@reset = common dso_local global i32 0, align 4
@rx_expand_skb_head = common dso_local global i32 0, align 4
@rx_expand_skb_head2 = common dso_local global i32 0, align 4
@rx_handlers_drop = common dso_local global i32 0, align 4
@rx_handlers_drop_defrag = common dso_local global i32 0, align 4
@rx_handlers_drop_nullfunc = common dso_local global i32 0, align 4
@rx_handlers_drop_short = common dso_local global i32 0, align 4
@rx_handlers_fragments = common dso_local global i32 0, align 4
@rx_handlers_queued = common dso_local global i32 0, align 4
@tx_expand_skb_head = common dso_local global i32 0, align 4
@tx_expand_skb_head_cloned = common dso_local global i32 0, align 4
@tx_handlers_drop = common dso_local global i32 0, align 4
@tx_handlers_drop_fragment = common dso_local global i32 0, align 4
@tx_handlers_drop_not_assoc = common dso_local global i32 0, align 4
@tx_handlers_drop_unauth_port = common dso_local global i32 0, align 4
@tx_handlers_drop_unencrypted = common dso_local global i32 0, align 4
@tx_handlers_drop_wep = common dso_local global i32 0, align 4
@tx_handlers_queued = common dso_local global i32 0, align 4
@tx_status_drop = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @debugfs_hw_add(%struct.ieee80211_local* %0) #0 {
  %2 = alloca %struct.ieee80211_local*, align 8
  %3 = alloca %struct.dentry*, align 8
  %4 = alloca %struct.dentry*, align 8
  store %struct.ieee80211_local* %0, %struct.ieee80211_local** %2, align 8
  %5 = load %struct.ieee80211_local*, %struct.ieee80211_local** %2, align 8
  %6 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %5, i32 0, i32 28
  %7 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load %struct.dentry*, %struct.dentry** %9, align 8
  store %struct.dentry* %10, %struct.dentry** %3, align 8
  %11 = load %struct.dentry*, %struct.dentry** %3, align 8
  %12 = icmp ne %struct.dentry* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  br label %92

14:                                               ; preds = %1
  %15 = load %struct.dentry*, %struct.dentry** %3, align 8
  %16 = call i8* @debugfs_create_dir(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), %struct.dentry* %15)
  %17 = load %struct.ieee80211_local*, %struct.ieee80211_local** %2, align 8
  %18 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %17, i32 0, i32 27
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  store i8* %16, i8** %19, align 8
  %20 = load i32, i32* @total_ps_buffered, align 4
  %21 = call i32 @DEBUGFS_ADD(i32 %20)
  %22 = load i32, i32* @wep_iv, align 4
  %23 = call i32 @DEBUGFS_ADD(i32 %22)
  %24 = load i32, i32* @queues, align 4
  %25 = call i32 @DEBUGFS_ADD(i32 %24)
  %26 = load i32, i32* @hwflags, align 4
  %27 = call i32 @DEBUGFS_ADD(i32 %26)
  %28 = load i32, i32* @user_power, align 4
  %29 = call i32 @DEBUGFS_ADD(i32 %28)
  %30 = load i32, i32* @power, align 4
  %31 = call i32 @DEBUGFS_ADD(i32 %30)
  %32 = load %struct.dentry*, %struct.dentry** %3, align 8
  %33 = call i8* @debugfs_create_dir(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), %struct.dentry* %32)
  %34 = bitcast i8* %33 to %struct.dentry*
  store %struct.dentry* %34, %struct.dentry** %4, align 8
  %35 = load %struct.dentry*, %struct.dentry** %4, align 8
  %36 = icmp ne %struct.dentry* %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %14
  br label %92

38:                                               ; preds = %14
  %39 = load i32, i32* @transmitted_fragment_count, align 4
  %40 = load %struct.ieee80211_local*, %struct.ieee80211_local** %2, align 8
  %41 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %40, i32 0, i32 26
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @DEBUGFS_STATS_ADD(i32 %39, i32 %42)
  %44 = load i32, i32* @multicast_transmitted_frame_count, align 4
  %45 = load %struct.ieee80211_local*, %struct.ieee80211_local** %2, align 8
  %46 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %45, i32 0, i32 25
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @DEBUGFS_STATS_ADD(i32 %44, i32 %47)
  %49 = load i32, i32* @failed_count, align 4
  %50 = load %struct.ieee80211_local*, %struct.ieee80211_local** %2, align 8
  %51 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %50, i32 0, i32 24
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @DEBUGFS_STATS_ADD(i32 %49, i32 %52)
  %54 = load i32, i32* @retry_count, align 4
  %55 = load %struct.ieee80211_local*, %struct.ieee80211_local** %2, align 8
  %56 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %55, i32 0, i32 23
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @DEBUGFS_STATS_ADD(i32 %54, i32 %57)
  %59 = load i32, i32* @multiple_retry_count, align 4
  %60 = load %struct.ieee80211_local*, %struct.ieee80211_local** %2, align 8
  %61 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %60, i32 0, i32 22
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @DEBUGFS_STATS_ADD(i32 %59, i32 %62)
  %64 = load i32, i32* @frame_duplicate_count, align 4
  %65 = load %struct.ieee80211_local*, %struct.ieee80211_local** %2, align 8
  %66 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %65, i32 0, i32 21
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @DEBUGFS_STATS_ADD(i32 %64, i32 %67)
  %69 = load i32, i32* @received_fragment_count, align 4
  %70 = load %struct.ieee80211_local*, %struct.ieee80211_local** %2, align 8
  %71 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %70, i32 0, i32 20
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @DEBUGFS_STATS_ADD(i32 %69, i32 %72)
  %74 = load i32, i32* @multicast_received_frame_count, align 4
  %75 = load %struct.ieee80211_local*, %struct.ieee80211_local** %2, align 8
  %76 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %75, i32 0, i32 19
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @DEBUGFS_STATS_ADD(i32 %74, i32 %77)
  %79 = load i32, i32* @transmitted_frame_count, align 4
  %80 = load %struct.ieee80211_local*, %struct.ieee80211_local** %2, align 8
  %81 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %80, i32 0, i32 18
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @DEBUGFS_STATS_ADD(i32 %79, i32 %82)
  %84 = load i32, i32* @dot11ACKFailureCount, align 4
  %85 = call i32 @DEBUGFS_DEVSTATS_ADD(i32 %84)
  %86 = load i32, i32* @dot11RTSFailureCount, align 4
  %87 = call i32 @DEBUGFS_DEVSTATS_ADD(i32 %86)
  %88 = load i32, i32* @dot11FCSErrorCount, align 4
  %89 = call i32 @DEBUGFS_DEVSTATS_ADD(i32 %88)
  %90 = load i32, i32* @dot11RTSSuccessCount, align 4
  %91 = call i32 @DEBUGFS_DEVSTATS_ADD(i32 %90)
  br label %92

92:                                               ; preds = %38, %37, %13
  ret void
}

declare dso_local i8* @debugfs_create_dir(i8*, %struct.dentry*) #1

declare dso_local i32 @DEBUGFS_ADD(i32) #1

declare dso_local i32 @DEBUGFS_STATS_ADD(i32, i32) #1

declare dso_local i32 @DEBUGFS_DEVSTATS_ADD(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
