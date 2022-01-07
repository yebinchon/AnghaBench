; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipvs/extr_ip_vs_sync.c_ip_vs_sync_buff_create.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipvs/extr_ip_vs_sync.c_ip_vs_sync_buff_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_vs_sync_buff = type { i8*, i8*, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i64, i64, i32, i32, i64 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@sync_send_mesg_maxlen = common dso_local global i32 0, align 4
@SYNC_PROTO_VER = common dso_local global i32 0, align 4
@ip_vs_master_syncid = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ip_vs_sync_buff* ()* @ip_vs_sync_buff_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ip_vs_sync_buff* @ip_vs_sync_buff_create() #0 {
  %1 = alloca %struct.ip_vs_sync_buff*, align 8
  %2 = alloca %struct.ip_vs_sync_buff*, align 8
  %3 = load i32, i32* @GFP_ATOMIC, align 4
  %4 = call i8* @kmalloc(i32 32, i32 %3)
  %5 = bitcast i8* %4 to %struct.ip_vs_sync_buff*
  store %struct.ip_vs_sync_buff* %5, %struct.ip_vs_sync_buff** %2, align 8
  %6 = icmp ne %struct.ip_vs_sync_buff* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %0
  store %struct.ip_vs_sync_buff* null, %struct.ip_vs_sync_buff** %1, align 8
  br label %66

8:                                                ; preds = %0
  %9 = load i32, i32* @sync_send_mesg_maxlen, align 4
  %10 = load i32, i32* @GFP_ATOMIC, align 4
  %11 = call i8* @kmalloc(i32 %9, i32 %10)
  %12 = bitcast i8* %11 to %struct.TYPE_2__*
  %13 = load %struct.ip_vs_sync_buff*, %struct.ip_vs_sync_buff** %2, align 8
  %14 = getelementptr inbounds %struct.ip_vs_sync_buff, %struct.ip_vs_sync_buff* %13, i32 0, i32 3
  store %struct.TYPE_2__* %12, %struct.TYPE_2__** %14, align 8
  %15 = icmp ne %struct.TYPE_2__* %12, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %8
  %17 = load %struct.ip_vs_sync_buff*, %struct.ip_vs_sync_buff** %2, align 8
  %18 = call i32 @kfree(%struct.ip_vs_sync_buff* %17)
  store %struct.ip_vs_sync_buff* null, %struct.ip_vs_sync_buff** %1, align 8
  br label %66

19:                                               ; preds = %8
  %20 = load %struct.ip_vs_sync_buff*, %struct.ip_vs_sync_buff** %2, align 8
  %21 = getelementptr inbounds %struct.ip_vs_sync_buff, %struct.ip_vs_sync_buff* %20, i32 0, i32 3
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 5
  store i64 0, i64* %23, align 8
  %24 = load i32, i32* @SYNC_PROTO_VER, align 4
  %25 = load %struct.ip_vs_sync_buff*, %struct.ip_vs_sync_buff** %2, align 8
  %26 = getelementptr inbounds %struct.ip_vs_sync_buff, %struct.ip_vs_sync_buff* %25, i32 0, i32 3
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 4
  store i32 %24, i32* %28, align 4
  %29 = load i32, i32* @ip_vs_master_syncid, align 4
  %30 = load %struct.ip_vs_sync_buff*, %struct.ip_vs_sync_buff** %2, align 8
  %31 = getelementptr inbounds %struct.ip_vs_sync_buff, %struct.ip_vs_sync_buff* %30, i32 0, i32 3
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 3
  store i32 %29, i32* %33, align 8
  %34 = load %struct.ip_vs_sync_buff*, %struct.ip_vs_sync_buff** %2, align 8
  %35 = getelementptr inbounds %struct.ip_vs_sync_buff, %struct.ip_vs_sync_buff* %34, i32 0, i32 3
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  store i32 4, i32* %37, align 8
  %38 = load %struct.ip_vs_sync_buff*, %struct.ip_vs_sync_buff** %2, align 8
  %39 = getelementptr inbounds %struct.ip_vs_sync_buff, %struct.ip_vs_sync_buff* %38, i32 0, i32 3
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 2
  store i64 0, i64* %41, align 8
  %42 = load %struct.ip_vs_sync_buff*, %struct.ip_vs_sync_buff** %2, align 8
  %43 = getelementptr inbounds %struct.ip_vs_sync_buff, %struct.ip_vs_sync_buff* %42, i32 0, i32 3
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  store i64 0, i64* %45, align 8
  %46 = load %struct.ip_vs_sync_buff*, %struct.ip_vs_sync_buff** %2, align 8
  %47 = getelementptr inbounds %struct.ip_vs_sync_buff, %struct.ip_vs_sync_buff* %46, i32 0, i32 3
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = bitcast %struct.TYPE_2__* %48 to i8*
  %50 = getelementptr inbounds i8, i8* %49, i64 4
  %51 = load %struct.ip_vs_sync_buff*, %struct.ip_vs_sync_buff** %2, align 8
  %52 = getelementptr inbounds %struct.ip_vs_sync_buff, %struct.ip_vs_sync_buff* %51, i32 0, i32 0
  store i8* %50, i8** %52, align 8
  %53 = load %struct.ip_vs_sync_buff*, %struct.ip_vs_sync_buff** %2, align 8
  %54 = getelementptr inbounds %struct.ip_vs_sync_buff, %struct.ip_vs_sync_buff* %53, i32 0, i32 3
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = bitcast %struct.TYPE_2__* %55 to i8*
  %57 = load i32, i32* @sync_send_mesg_maxlen, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i8, i8* %56, i64 %58
  %60 = load %struct.ip_vs_sync_buff*, %struct.ip_vs_sync_buff** %2, align 8
  %61 = getelementptr inbounds %struct.ip_vs_sync_buff, %struct.ip_vs_sync_buff* %60, i32 0, i32 1
  store i8* %59, i8** %61, align 8
  %62 = load i32, i32* @jiffies, align 4
  %63 = load %struct.ip_vs_sync_buff*, %struct.ip_vs_sync_buff** %2, align 8
  %64 = getelementptr inbounds %struct.ip_vs_sync_buff, %struct.ip_vs_sync_buff* %63, i32 0, i32 2
  store i32 %62, i32* %64, align 8
  %65 = load %struct.ip_vs_sync_buff*, %struct.ip_vs_sync_buff** %2, align 8
  store %struct.ip_vs_sync_buff* %65, %struct.ip_vs_sync_buff** %1, align 8
  br label %66

66:                                               ; preds = %19, %16, %7
  %67 = load %struct.ip_vs_sync_buff*, %struct.ip_vs_sync_buff** %1, align 8
  ret %struct.ip_vs_sync_buff* %67
}

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @kfree(%struct.ip_vs_sync_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
