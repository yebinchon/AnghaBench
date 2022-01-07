; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/decnet/extr_dn_route.c_dn_return_long.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/decnet/extr_dn_route.c_dn_return_long.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i8*, i32 }
%struct.dn_skb_cb = type { i32 }

@ETH_ALEN = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@NET_RX_DROP = common dso_local global i32 0, align 4
@DN_RT_F_PF = common dso_local global i8 0, align 1
@DN_RT_F_RQR = common dso_local global i32 0, align 4
@DN_RT_F_RTS = common dso_local global i32 0, align 4
@PACKET_OUTGOING = common dso_local global i32 0, align 4
@NET_RX_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*)* @dn_return_long to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dn_return_long(%struct.sk_buff* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.dn_skb_cb*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8, align 1
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  %12 = load i32, i32* @ETH_ALEN, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %8, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %9, align 8
  %16 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %17 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %18 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  %20 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %21 = call i32 @skb_network_header(%struct.sk_buff* %20)
  %22 = sext i32 %21 to i64
  %23 = sub i64 0, %22
  %24 = getelementptr inbounds i8, i8* %19, i64 %23
  %25 = call i32 @skb_push(%struct.sk_buff* %16, i8* %24)
  %26 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %27 = load i32, i32* @GFP_ATOMIC, align 4
  %28 = call %struct.sk_buff* @skb_unshare(%struct.sk_buff* %26, i32 %27)
  store %struct.sk_buff* %28, %struct.sk_buff** %3, align 8
  %29 = icmp eq %struct.sk_buff* %28, null
  br i1 %29, label %30, label %32

30:                                               ; preds = %1
  %31 = load i32, i32* @NET_RX_DROP, align 4
  store i32 %31, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %99

32:                                               ; preds = %1
  %33 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %34 = call %struct.dn_skb_cb* @DN_SKB_CB(%struct.sk_buff* %33)
  store %struct.dn_skb_cb* %34, %struct.dn_skb_cb** %4, align 8
  %35 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %36 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %35, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 2
  store i8* %38, i8** %5, align 8
  %39 = load i8*, i8** %5, align 8
  %40 = load i8, i8* %39, align 1
  %41 = zext i8 %40 to i32
  %42 = load i8, i8* @DN_RT_F_PF, align 1
  %43 = zext i8 %42 to i32
  %44 = and i32 %41, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %60

46:                                               ; preds = %32
  %47 = load i8*, i8** %5, align 8
  %48 = load i8, i8* %47, align 1
  %49 = zext i8 %48 to i32
  %50 = load i8, i8* @DN_RT_F_PF, align 1
  %51 = zext i8 %50 to i32
  %52 = xor i32 %51, -1
  %53 = and i32 %49, %52
  %54 = trunc i32 %53 to i8
  store i8 %54, i8* %11, align 1
  %55 = load i8, i8* %11, align 1
  %56 = sext i8 %55 to i32
  %57 = load i8*, i8** %5, align 8
  %58 = sext i32 %56 to i64
  %59 = getelementptr inbounds i8, i8* %57, i64 %58
  store i8* %59, i8** %5, align 8
  br label %60

60:                                               ; preds = %46, %32
  %61 = load %struct.dn_skb_cb*, %struct.dn_skb_cb** %4, align 8
  %62 = getelementptr inbounds %struct.dn_skb_cb, %struct.dn_skb_cb* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @DN_RT_F_RQR, align 4
  %65 = xor i32 %64, -1
  %66 = and i32 %63, %65
  %67 = load i32, i32* @DN_RT_F_RTS, align 4
  %68 = or i32 %66, %67
  %69 = trunc i32 %68 to i8
  %70 = load i8*, i8** %5, align 8
  %71 = getelementptr inbounds i8, i8* %70, i32 1
  store i8* %71, i8** %5, align 8
  store i8 %69, i8* %70, align 1
  %72 = load i8*, i8** %5, align 8
  %73 = getelementptr inbounds i8, i8* %72, i64 2
  store i8* %73, i8** %5, align 8
  %74 = load i8*, i8** %5, align 8
  store i8* %74, i8** %7, align 8
  %75 = load i8*, i8** %5, align 8
  %76 = getelementptr inbounds i8, i8* %75, i64 8
  store i8* %76, i8** %5, align 8
  %77 = load i8*, i8** %5, align 8
  store i8* %77, i8** %6, align 8
  %78 = load i8*, i8** %5, align 8
  %79 = getelementptr inbounds i8, i8* %78, i64 6
  store i8* %79, i8** %5, align 8
  %80 = load i8*, i8** %5, align 8
  store i8 0, i8* %80, align 1
  %81 = load i8*, i8** %6, align 8
  %82 = load i32, i32* @ETH_ALEN, align 4
  %83 = call i32 @memcpy(i8* %15, i8* %81, i32 %82)
  %84 = load i8*, i8** %6, align 8
  %85 = load i8*, i8** %7, align 8
  %86 = load i32, i32* @ETH_ALEN, align 4
  %87 = call i32 @memcpy(i8* %84, i8* %85, i32 %86)
  %88 = load i8*, i8** %7, align 8
  %89 = load i32, i32* @ETH_ALEN, align 4
  %90 = call i32 @memcpy(i8* %88, i8* %15, i32 %89)
  %91 = load i32, i32* @PACKET_OUTGOING, align 4
  %92 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %93 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %92, i32 0, i32 1
  store i32 %91, i32* %93, align 8
  %94 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %95 = load i8*, i8** %7, align 8
  %96 = load i8*, i8** %6, align 8
  %97 = call i32 @dn_rt_finish_output(%struct.sk_buff* %94, i8* %95, i8* %96)
  %98 = load i32, i32* @NET_RX_SUCCESS, align 4
  store i32 %98, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %99

99:                                               ; preds = %60, %30
  %100 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %100)
  %101 = load i32, i32* %2, align 4
  ret i32 %101
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @skb_push(%struct.sk_buff*, i8*) #2

declare dso_local i32 @skb_network_header(%struct.sk_buff*) #2

declare dso_local %struct.sk_buff* @skb_unshare(%struct.sk_buff*, i32) #2

declare dso_local %struct.dn_skb_cb* @DN_SKB_CB(%struct.sk_buff*) #2

declare dso_local i32 @memcpy(i8*, i8*, i32) #2

declare dso_local i32 @dn_rt_finish_output(%struct.sk_buff*, i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
