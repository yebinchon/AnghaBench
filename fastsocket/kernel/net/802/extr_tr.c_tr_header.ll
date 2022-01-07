; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/802/extr_tr.c_tr_header.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/802/extr_tr.c_tr_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.net_device = type { i8*, i32 }
%struct.trh_hdr = type { i32, i32, i32, i32 }
%struct.trllc = type { i32*, i32, i32, i32, i32 }

@ETH_P_IP = common dso_local global i16 0, align 2
@ETH_P_IPV6 = common dso_local global i16 0, align 2
@ETH_P_ARP = common dso_local global i16 0, align 2
@EXTENDED_SAP = common dso_local global i32 0, align 4
@UI_CMD = common dso_local global i32 0, align 4
@AC = common dso_local global i32 0, align 4
@LLC_FRAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*, i16, i8*, i8*, i32)* @tr_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tr_header(%struct.sk_buff* %0, %struct.net_device* %1, i16 zeroext %2, i8* %3, i8* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.net_device*, align 8
  %10 = alloca i16, align 2
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.trh_hdr*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.trllc*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %8, align 8
  store %struct.net_device* %1, %struct.net_device** %9, align 8
  store i16 %2, i16* %10, align 2
  store i8* %3, i8** %11, align 8
  store i8* %4, i8** %12, align 8
  store i32 %5, i32* %13, align 4
  %17 = load i16, i16* %10, align 2
  %18 = zext i16 %17 to i32
  %19 = load i16, i16* @ETH_P_IP, align 2
  %20 = zext i16 %19 to i32
  %21 = icmp eq i32 %18, %20
  br i1 %21, label %34, label %22

22:                                               ; preds = %6
  %23 = load i16, i16* %10, align 2
  %24 = zext i16 %23 to i32
  %25 = load i16, i16* @ETH_P_IPV6, align 2
  %26 = zext i16 %25 to i32
  %27 = icmp eq i32 %24, %26
  br i1 %27, label %34, label %28

28:                                               ; preds = %22
  %29 = load i16, i16* %10, align 2
  %30 = zext i16 %29 to i32
  %31 = load i16, i16* @ETH_P_ARP, align 2
  %32 = zext i16 %31 to i32
  %33 = icmp eq i32 %30, %32
  br i1 %33, label %34, label %66

34:                                               ; preds = %28, %22, %6
  store i32 40, i32* %15, align 4
  %35 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %36 = load i32, i32* %15, align 4
  %37 = call i64 @skb_push(%struct.sk_buff* %35, i32 %36)
  %38 = inttoptr i64 %37 to %struct.trh_hdr*
  store %struct.trh_hdr* %38, %struct.trh_hdr** %14, align 8
  %39 = load %struct.trh_hdr*, %struct.trh_hdr** %14, align 8
  %40 = getelementptr inbounds %struct.trh_hdr, %struct.trh_hdr* %39, i64 1
  %41 = bitcast %struct.trh_hdr* %40 to %struct.trllc*
  store %struct.trllc* %41, %struct.trllc** %16, align 8
  %42 = load i32, i32* @EXTENDED_SAP, align 4
  %43 = load %struct.trllc*, %struct.trllc** %16, align 8
  %44 = getelementptr inbounds %struct.trllc, %struct.trllc* %43, i32 0, i32 3
  store i32 %42, i32* %44, align 8
  %45 = load %struct.trllc*, %struct.trllc** %16, align 8
  %46 = getelementptr inbounds %struct.trllc, %struct.trllc* %45, i32 0, i32 4
  store i32 %42, i32* %46, align 4
  %47 = load i32, i32* @UI_CMD, align 4
  %48 = load %struct.trllc*, %struct.trllc** %16, align 8
  %49 = getelementptr inbounds %struct.trllc, %struct.trllc* %48, i32 0, i32 2
  store i32 %47, i32* %49, align 4
  %50 = load %struct.trllc*, %struct.trllc** %16, align 8
  %51 = getelementptr inbounds %struct.trllc, %struct.trllc* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 2
  store i32 0, i32* %53, align 4
  %54 = load %struct.trllc*, %struct.trllc** %16, align 8
  %55 = getelementptr inbounds %struct.trllc, %struct.trllc* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 1
  store i32 0, i32* %57, align 4
  %58 = load %struct.trllc*, %struct.trllc** %16, align 8
  %59 = getelementptr inbounds %struct.trllc, %struct.trllc* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 0
  store i32 0, i32* %61, align 4
  %62 = load i16, i16* %10, align 2
  %63 = call i32 @htons(i16 zeroext %62)
  %64 = load %struct.trllc*, %struct.trllc** %16, align 8
  %65 = getelementptr inbounds %struct.trllc, %struct.trllc* %64, i32 0, i32 1
  store i32 %63, i32* %65, align 8
  br label %71

66:                                               ; preds = %28
  store i32 16, i32* %15, align 4
  %67 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %68 = load i32, i32* %15, align 4
  %69 = call i64 @skb_push(%struct.sk_buff* %67, i32 %68)
  %70 = inttoptr i64 %69 to %struct.trh_hdr*
  store %struct.trh_hdr* %70, %struct.trh_hdr** %14, align 8
  br label %71

71:                                               ; preds = %66, %34
  %72 = load i32, i32* @AC, align 4
  %73 = load %struct.trh_hdr*, %struct.trh_hdr** %14, align 8
  %74 = getelementptr inbounds %struct.trh_hdr, %struct.trh_hdr* %73, i32 0, i32 3
  store i32 %72, i32* %74, align 4
  %75 = load i32, i32* @LLC_FRAME, align 4
  %76 = load %struct.trh_hdr*, %struct.trh_hdr** %14, align 8
  %77 = getelementptr inbounds %struct.trh_hdr, %struct.trh_hdr* %76, i32 0, i32 2
  store i32 %75, i32* %77, align 4
  %78 = load i8*, i8** %12, align 8
  %79 = icmp ne i8* %78, null
  br i1 %79, label %80, label %89

80:                                               ; preds = %71
  %81 = load %struct.trh_hdr*, %struct.trh_hdr** %14, align 8
  %82 = getelementptr inbounds %struct.trh_hdr, %struct.trh_hdr* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load i8*, i8** %12, align 8
  %85 = load %struct.net_device*, %struct.net_device** %9, align 8
  %86 = getelementptr inbounds %struct.net_device, %struct.net_device* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @memcpy(i32 %83, i8* %84, i32 %87)
  br label %100

89:                                               ; preds = %71
  %90 = load %struct.trh_hdr*, %struct.trh_hdr** %14, align 8
  %91 = getelementptr inbounds %struct.trh_hdr, %struct.trh_hdr* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.net_device*, %struct.net_device** %9, align 8
  %94 = getelementptr inbounds %struct.net_device, %struct.net_device* %93, i32 0, i32 0
  %95 = load i8*, i8** %94, align 8
  %96 = load %struct.net_device*, %struct.net_device** %9, align 8
  %97 = getelementptr inbounds %struct.net_device, %struct.net_device* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @memcpy(i32 %92, i8* %95, i32 %98)
  br label %100

100:                                              ; preds = %89, %80
  %101 = load i8*, i8** %11, align 8
  %102 = icmp ne i8* %101, null
  br i1 %102, label %103, label %117

103:                                              ; preds = %100
  %104 = load %struct.trh_hdr*, %struct.trh_hdr** %14, align 8
  %105 = getelementptr inbounds %struct.trh_hdr, %struct.trh_hdr* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load i8*, i8** %11, align 8
  %108 = load %struct.net_device*, %struct.net_device** %9, align 8
  %109 = getelementptr inbounds %struct.net_device, %struct.net_device* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 8
  %111 = call i32 @memcpy(i32 %106, i8* %107, i32 %110)
  %112 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %113 = load %struct.trh_hdr*, %struct.trh_hdr** %14, align 8
  %114 = load %struct.net_device*, %struct.net_device** %9, align 8
  %115 = call i32 @tr_source_route(%struct.sk_buff* %112, %struct.trh_hdr* %113, %struct.net_device* %114)
  %116 = load i32, i32* %15, align 4
  store i32 %116, i32* %7, align 4
  br label %120

117:                                              ; preds = %100
  %118 = load i32, i32* %15, align 4
  %119 = sub nsw i32 0, %118
  store i32 %119, i32* %7, align 4
  br label %120

120:                                              ; preds = %117, %103
  %121 = load i32, i32* %7, align 4
  ret i32 %121
}

declare dso_local i64 @skb_push(%struct.sk_buff*, i32) #1

declare dso_local i32 @htons(i16 zeroext) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @tr_source_route(%struct.sk_buff*, %struct.trh_hdr*, %struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
