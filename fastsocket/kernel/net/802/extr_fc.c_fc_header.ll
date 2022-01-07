; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/802/extr_fc.c_fc_header.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/802/extr_fc.c_fc_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.net_device = type { i8*, i32 }
%struct.fch_hdr = type { i32, i32 }
%struct.fcllc = type { i32*, i32, i32, i32, i32 }

@ETH_P_IP = common dso_local global i16 0, align 2
@ETH_P_ARP = common dso_local global i16 0, align 2
@EXTENDED_SAP = common dso_local global i32 0, align 4
@UI_CMD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*, i16, i8*, i8*, i32)* @fc_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fc_header(%struct.sk_buff* %0, %struct.net_device* %1, i16 zeroext %2, i8* %3, i8* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.net_device*, align 8
  %10 = alloca i16, align 2
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.fch_hdr*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.fcllc*, align 8
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
  br i1 %21, label %28, label %22

22:                                               ; preds = %6
  %23 = load i16, i16* %10, align 2
  %24 = zext i16 %23 to i32
  %25 = load i16, i16* @ETH_P_ARP, align 2
  %26 = zext i16 %25 to i32
  %27 = icmp eq i32 %24, %26
  br i1 %27, label %28, label %60

28:                                               ; preds = %22, %6
  store i32 32, i32* %15, align 4
  %29 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %30 = load i32, i32* %15, align 4
  %31 = call i64 @skb_push(%struct.sk_buff* %29, i32 %30)
  %32 = inttoptr i64 %31 to %struct.fch_hdr*
  store %struct.fch_hdr* %32, %struct.fch_hdr** %14, align 8
  %33 = load %struct.fch_hdr*, %struct.fch_hdr** %14, align 8
  %34 = getelementptr inbounds %struct.fch_hdr, %struct.fch_hdr* %33, i64 1
  %35 = bitcast %struct.fch_hdr* %34 to %struct.fcllc*
  store %struct.fcllc* %35, %struct.fcllc** %16, align 8
  %36 = load i32, i32* @EXTENDED_SAP, align 4
  %37 = load %struct.fcllc*, %struct.fcllc** %16, align 8
  %38 = getelementptr inbounds %struct.fcllc, %struct.fcllc* %37, i32 0, i32 3
  store i32 %36, i32* %38, align 8
  %39 = load %struct.fcllc*, %struct.fcllc** %16, align 8
  %40 = getelementptr inbounds %struct.fcllc, %struct.fcllc* %39, i32 0, i32 4
  store i32 %36, i32* %40, align 4
  %41 = load i32, i32* @UI_CMD, align 4
  %42 = load %struct.fcllc*, %struct.fcllc** %16, align 8
  %43 = getelementptr inbounds %struct.fcllc, %struct.fcllc* %42, i32 0, i32 2
  store i32 %41, i32* %43, align 4
  %44 = load %struct.fcllc*, %struct.fcllc** %16, align 8
  %45 = getelementptr inbounds %struct.fcllc, %struct.fcllc* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 2
  store i32 0, i32* %47, align 4
  %48 = load %struct.fcllc*, %struct.fcllc** %16, align 8
  %49 = getelementptr inbounds %struct.fcllc, %struct.fcllc* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 1
  store i32 0, i32* %51, align 4
  %52 = load %struct.fcllc*, %struct.fcllc** %16, align 8
  %53 = getelementptr inbounds %struct.fcllc, %struct.fcllc* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 0
  store i32 0, i32* %55, align 4
  %56 = load i16, i16* %10, align 2
  %57 = call i32 @htons(i16 zeroext %56)
  %58 = load %struct.fcllc*, %struct.fcllc** %16, align 8
  %59 = getelementptr inbounds %struct.fcllc, %struct.fcllc* %58, i32 0, i32 1
  store i32 %57, i32* %59, align 8
  br label %65

60:                                               ; preds = %22
  store i32 8, i32* %15, align 4
  %61 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %62 = load i32, i32* %15, align 4
  %63 = call i64 @skb_push(%struct.sk_buff* %61, i32 %62)
  %64 = inttoptr i64 %63 to %struct.fch_hdr*
  store %struct.fch_hdr* %64, %struct.fch_hdr** %14, align 8
  br label %65

65:                                               ; preds = %60, %28
  %66 = load i8*, i8** %12, align 8
  %67 = icmp ne i8* %66, null
  br i1 %67, label %68, label %77

68:                                               ; preds = %65
  %69 = load %struct.fch_hdr*, %struct.fch_hdr** %14, align 8
  %70 = getelementptr inbounds %struct.fch_hdr, %struct.fch_hdr* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load i8*, i8** %12, align 8
  %73 = load %struct.net_device*, %struct.net_device** %9, align 8
  %74 = getelementptr inbounds %struct.net_device, %struct.net_device* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @memcpy(i32 %71, i8* %72, i32 %75)
  br label %88

77:                                               ; preds = %65
  %78 = load %struct.fch_hdr*, %struct.fch_hdr** %14, align 8
  %79 = getelementptr inbounds %struct.fch_hdr, %struct.fch_hdr* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.net_device*, %struct.net_device** %9, align 8
  %82 = getelementptr inbounds %struct.net_device, %struct.net_device* %81, i32 0, i32 0
  %83 = load i8*, i8** %82, align 8
  %84 = load %struct.net_device*, %struct.net_device** %9, align 8
  %85 = getelementptr inbounds %struct.net_device, %struct.net_device* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @memcpy(i32 %80, i8* %83, i32 %86)
  br label %88

88:                                               ; preds = %77, %68
  %89 = load i8*, i8** %11, align 8
  %90 = icmp ne i8* %89, null
  br i1 %90, label %91, label %101

91:                                               ; preds = %88
  %92 = load %struct.fch_hdr*, %struct.fch_hdr** %14, align 8
  %93 = getelementptr inbounds %struct.fch_hdr, %struct.fch_hdr* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load i8*, i8** %11, align 8
  %96 = load %struct.net_device*, %struct.net_device** %9, align 8
  %97 = getelementptr inbounds %struct.net_device, %struct.net_device* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @memcpy(i32 %94, i8* %95, i32 %98)
  %100 = load i32, i32* %15, align 4
  store i32 %100, i32* %7, align 4
  br label %104

101:                                              ; preds = %88
  %102 = load i32, i32* %15, align 4
  %103 = sub nsw i32 0, %102
  store i32 %103, i32* %7, align 4
  br label %104

104:                                              ; preds = %101, %91
  %105 = load i32, i32* %7, align 4
  ret i32 %105
}

declare dso_local i64 @skb_push(%struct.sk_buff*, i32) #1

declare dso_local i32 @htons(i16 zeroext) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
