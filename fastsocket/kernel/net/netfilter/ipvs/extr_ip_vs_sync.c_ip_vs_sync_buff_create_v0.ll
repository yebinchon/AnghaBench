; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipvs/extr_ip_vs_sync.c_ip_vs_sync_buff_create_v0.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipvs/extr_ip_vs_sync.c_ip_vs_sync_buff_create_v0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_vs_sync_buff = type { i8*, i8*, i32, i8* }
%struct.ip_vs_sync_mesg_v0 = type { i32, i32, i64 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@sync_send_mesg_maxlen = common dso_local global i32 0, align 4
@ip_vs_master_syncid = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ip_vs_sync_buff* ()* @ip_vs_sync_buff_create_v0 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ip_vs_sync_buff* @ip_vs_sync_buff_create_v0() #0 {
  %1 = alloca %struct.ip_vs_sync_buff*, align 8
  %2 = alloca %struct.ip_vs_sync_buff*, align 8
  %3 = alloca %struct.ip_vs_sync_mesg_v0*, align 8
  %4 = load i32, i32* @GFP_ATOMIC, align 4
  %5 = call i8* @kmalloc(i32 32, i32 %4)
  %6 = bitcast i8* %5 to %struct.ip_vs_sync_buff*
  store %struct.ip_vs_sync_buff* %6, %struct.ip_vs_sync_buff** %2, align 8
  %7 = icmp ne %struct.ip_vs_sync_buff* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %0
  store %struct.ip_vs_sync_buff* null, %struct.ip_vs_sync_buff** %1, align 8
  br label %47

9:                                                ; preds = %0
  %10 = load i32, i32* @sync_send_mesg_maxlen, align 4
  %11 = load i32, i32* @GFP_ATOMIC, align 4
  %12 = call i8* @kmalloc(i32 %10, i32 %11)
  %13 = load %struct.ip_vs_sync_buff*, %struct.ip_vs_sync_buff** %2, align 8
  %14 = getelementptr inbounds %struct.ip_vs_sync_buff, %struct.ip_vs_sync_buff* %13, i32 0, i32 3
  store i8* %12, i8** %14, align 8
  %15 = icmp ne i8* %12, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %9
  %17 = load %struct.ip_vs_sync_buff*, %struct.ip_vs_sync_buff** %2, align 8
  %18 = call i32 @kfree(%struct.ip_vs_sync_buff* %17)
  store %struct.ip_vs_sync_buff* null, %struct.ip_vs_sync_buff** %1, align 8
  br label %47

19:                                               ; preds = %9
  %20 = load %struct.ip_vs_sync_buff*, %struct.ip_vs_sync_buff** %2, align 8
  %21 = getelementptr inbounds %struct.ip_vs_sync_buff, %struct.ip_vs_sync_buff* %20, i32 0, i32 3
  %22 = load i8*, i8** %21, align 8
  %23 = bitcast i8* %22 to %struct.ip_vs_sync_mesg_v0*
  store %struct.ip_vs_sync_mesg_v0* %23, %struct.ip_vs_sync_mesg_v0** %3, align 8
  %24 = load %struct.ip_vs_sync_mesg_v0*, %struct.ip_vs_sync_mesg_v0** %3, align 8
  %25 = getelementptr inbounds %struct.ip_vs_sync_mesg_v0, %struct.ip_vs_sync_mesg_v0* %24, i32 0, i32 2
  store i64 0, i64* %25, align 8
  %26 = load i32, i32* @ip_vs_master_syncid, align 4
  %27 = load %struct.ip_vs_sync_mesg_v0*, %struct.ip_vs_sync_mesg_v0** %3, align 8
  %28 = getelementptr inbounds %struct.ip_vs_sync_mesg_v0, %struct.ip_vs_sync_mesg_v0* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 4
  %29 = load %struct.ip_vs_sync_mesg_v0*, %struct.ip_vs_sync_mesg_v0** %3, align 8
  %30 = getelementptr inbounds %struct.ip_vs_sync_mesg_v0, %struct.ip_vs_sync_mesg_v0* %29, i32 0, i32 0
  store i32 4, i32* %30, align 8
  %31 = load %struct.ip_vs_sync_mesg_v0*, %struct.ip_vs_sync_mesg_v0** %3, align 8
  %32 = bitcast %struct.ip_vs_sync_mesg_v0* %31 to i8*
  %33 = getelementptr inbounds i8, i8* %32, i64 4
  %34 = load %struct.ip_vs_sync_buff*, %struct.ip_vs_sync_buff** %2, align 8
  %35 = getelementptr inbounds %struct.ip_vs_sync_buff, %struct.ip_vs_sync_buff* %34, i32 0, i32 0
  store i8* %33, i8** %35, align 8
  %36 = load %struct.ip_vs_sync_mesg_v0*, %struct.ip_vs_sync_mesg_v0** %3, align 8
  %37 = bitcast %struct.ip_vs_sync_mesg_v0* %36 to i8*
  %38 = load i32, i32* @sync_send_mesg_maxlen, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8, i8* %37, i64 %39
  %41 = load %struct.ip_vs_sync_buff*, %struct.ip_vs_sync_buff** %2, align 8
  %42 = getelementptr inbounds %struct.ip_vs_sync_buff, %struct.ip_vs_sync_buff* %41, i32 0, i32 1
  store i8* %40, i8** %42, align 8
  %43 = load i32, i32* @jiffies, align 4
  %44 = load %struct.ip_vs_sync_buff*, %struct.ip_vs_sync_buff** %2, align 8
  %45 = getelementptr inbounds %struct.ip_vs_sync_buff, %struct.ip_vs_sync_buff* %44, i32 0, i32 2
  store i32 %43, i32* %45, align 8
  %46 = load %struct.ip_vs_sync_buff*, %struct.ip_vs_sync_buff** %2, align 8
  store %struct.ip_vs_sync_buff* %46, %struct.ip_vs_sync_buff** %1, align 8
  br label %47

47:                                               ; preds = %19, %16, %8
  %48 = load %struct.ip_vs_sync_buff*, %struct.ip_vs_sync_buff** %1, align 8
  ret %struct.ip_vs_sync_buff* %48
}

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @kfree(%struct.ip_vs_sync_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
