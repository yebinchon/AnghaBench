; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipvs/extr_ip_vs_sync.c_set_sync_mesg_maxlen.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipvs/extr_ip_vs_sync.c_set_sync_mesg_maxlen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }

@IP_VS_STATE_MASTER = common dso_local global i32 0, align 4
@init_net = common dso_local global i32 0, align 4
@ip_vs_master_mcast_ifn = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@SYNC_MESG_HEADER_LEN = common dso_local global i32 0, align 4
@SIMPLE_CONN_SIZE = common dso_local global i32 0, align 4
@MAX_CONNS_PER_SYNCBUFF = common dso_local global i32 0, align 4
@sync_send_mesg_maxlen = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"setting the maximum length of sync sending message %d.\0A\00", align 1
@IP_VS_STATE_BACKUP = common dso_local global i32 0, align 4
@ip_vs_backup_mcast_ifn = common dso_local global i32 0, align 4
@sync_recv_mesg_maxlen = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [58 x i8] c"setting the maximum length of sync receiving message %d.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @set_sync_mesg_maxlen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_sync_mesg_maxlen(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* @IP_VS_STATE_MASTER, align 4
  %8 = icmp eq i32 %6, %7
  br i1 %8, label %9, label %40

9:                                                ; preds = %1
  %10 = load i32, i32* @ip_vs_master_mcast_ifn, align 4
  %11 = call %struct.net_device* @__dev_get_by_name(i32* @init_net, i32 %10)
  store %struct.net_device* %11, %struct.net_device** %4, align 8
  %12 = icmp eq %struct.net_device* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %9
  %14 = load i32, i32* @ENODEV, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %63

16:                                               ; preds = %9
  %17 = load %struct.net_device*, %struct.net_device** %4, align 8
  %18 = getelementptr inbounds %struct.net_device, %struct.net_device* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = sext i32 %19 to i64
  %21 = sub i64 %20, 4
  %22 = sub i64 %21, 4
  %23 = load i32, i32* @SYNC_MESG_HEADER_LEN, align 4
  %24 = sext i32 %23 to i64
  %25 = sub i64 %22, %24
  %26 = sub i64 %25, 20
  %27 = load i32, i32* @SIMPLE_CONN_SIZE, align 4
  %28 = sext i32 %27 to i64
  %29 = udiv i64 %26, %28
  %30 = trunc i64 %29 to i32
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* @SYNC_MESG_HEADER_LEN, align 4
  %32 = load i32, i32* @SIMPLE_CONN_SIZE, align 4
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* @MAX_CONNS_PER_SYNCBUFF, align 4
  %35 = call i32 @min(i32 %33, i32 %34)
  %36 = mul nsw i32 %32, %35
  %37 = add nsw i32 %31, %36
  store i32 %37, i32* @sync_send_mesg_maxlen, align 4
  %38 = load i32, i32* @sync_send_mesg_maxlen, align 4
  %39 = call i32 @IP_VS_DBG(i32 7, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i32 %38)
  br label %62

40:                                               ; preds = %1
  %41 = load i32, i32* %3, align 4
  %42 = load i32, i32* @IP_VS_STATE_BACKUP, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %61

44:                                               ; preds = %40
  %45 = load i32, i32* @ip_vs_backup_mcast_ifn, align 4
  %46 = call %struct.net_device* @__dev_get_by_name(i32* @init_net, i32 %45)
  store %struct.net_device* %46, %struct.net_device** %4, align 8
  %47 = icmp eq %struct.net_device* %46, null
  br i1 %47, label %48, label %51

48:                                               ; preds = %44
  %49 = load i32, i32* @ENODEV, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %2, align 4
  br label %63

51:                                               ; preds = %44
  %52 = load %struct.net_device*, %struct.net_device** %4, align 8
  %53 = getelementptr inbounds %struct.net_device, %struct.net_device* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = sext i32 %54 to i64
  %56 = sub i64 %55, 4
  %57 = sub i64 %56, 4
  %58 = trunc i64 %57 to i32
  store i32 %58, i32* @sync_recv_mesg_maxlen, align 4
  %59 = load i32, i32* @sync_recv_mesg_maxlen, align 4
  %60 = call i32 @IP_VS_DBG(i32 7, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0), i32 %59)
  br label %61

61:                                               ; preds = %51, %40
  br label %62

62:                                               ; preds = %61, %16
  store i32 0, i32* %2, align 4
  br label %63

63:                                               ; preds = %62, %48, %13
  %64 = load i32, i32* %2, align 4
  ret i32 %64
}

declare dso_local %struct.net_device* @__dev_get_by_name(i32*, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @IP_VS_DBG(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
