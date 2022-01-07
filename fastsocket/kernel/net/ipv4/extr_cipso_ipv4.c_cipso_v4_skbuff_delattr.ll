; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_cipso_ipv4.c_cipso_v4_skbuff_delattr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_cipso_ipv4.c_cipso_v4_skbuff_delattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.iphdr = type { i32 }
%struct.ip_options = type { i64, i32 }
%struct.TYPE_2__ = type { %struct.ip_options }

@IPOPT_NOOP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cipso_v4_skbuff_delattr(%struct.sk_buff* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.iphdr*, align 8
  %6 = alloca %struct.ip_options*, align 8
  %7 = alloca i8*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  %8 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %9 = call %struct.TYPE_2__* @IPCB(%struct.sk_buff* %8)
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  store %struct.ip_options* %10, %struct.ip_options** %6, align 8
  %11 = load %struct.ip_options*, %struct.ip_options** %6, align 8
  %12 = getelementptr inbounds %struct.ip_options, %struct.ip_options* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %46

16:                                               ; preds = %1
  %17 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %18 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %19 = call i32 @skb_headroom(%struct.sk_buff* %18)
  %20 = call i32 @skb_cow(%struct.sk_buff* %17, i32 %19)
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %4, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %16
  %24 = load i32, i32* %4, align 4
  store i32 %24, i32* %2, align 4
  br label %46

25:                                               ; preds = %16
  %26 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %27 = call %struct.iphdr* @ip_hdr(%struct.sk_buff* %26)
  store %struct.iphdr* %27, %struct.iphdr** %5, align 8
  %28 = load %struct.iphdr*, %struct.iphdr** %5, align 8
  %29 = bitcast %struct.iphdr* %28 to i8*
  %30 = load %struct.ip_options*, %struct.ip_options** %6, align 8
  %31 = getelementptr inbounds %struct.ip_options, %struct.ip_options* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = getelementptr inbounds i8, i8* %29, i64 %32
  store i8* %33, i8** %7, align 8
  %34 = load i8*, i8** %7, align 8
  %35 = load i32, i32* @IPOPT_NOOP, align 4
  %36 = load i8*, i8** %7, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 1
  %38 = load i8, i8* %37, align 1
  %39 = call i32 @memset(i8* %34, i32 %35, i8 zeroext %38)
  %40 = load %struct.ip_options*, %struct.ip_options** %6, align 8
  %41 = getelementptr inbounds %struct.ip_options, %struct.ip_options* %40, i32 0, i32 0
  store i64 0, i64* %41, align 8
  %42 = load %struct.ip_options*, %struct.ip_options** %6, align 8
  %43 = getelementptr inbounds %struct.ip_options, %struct.ip_options* %42, i32 0, i32 1
  store i32 1, i32* %43, align 8
  %44 = load %struct.iphdr*, %struct.iphdr** %5, align 8
  %45 = call i32 @ip_send_check(%struct.iphdr* %44)
  store i32 0, i32* %2, align 4
  br label %46

46:                                               ; preds = %25, %23, %15
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local %struct.TYPE_2__* @IPCB(%struct.sk_buff*) #1

declare dso_local i32 @skb_cow(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_headroom(%struct.sk_buff*) #1

declare dso_local %struct.iphdr* @ip_hdr(%struct.sk_buff*) #1

declare dso_local i32 @memset(i8*, i32, i8 zeroext) #1

declare dso_local i32 @ip_send_check(%struct.iphdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
