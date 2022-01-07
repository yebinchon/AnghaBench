; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/802/extr_fddi.c_fddi_header.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/802/extr_fddi.c_fddi_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.net_device = type { i8*, i32 }
%struct.fddihdr = type { i32, i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32*, i32, i32, i8*, i8* }

@FDDI_K_SNAP_HLEN = common dso_local global i32 0, align 4
@ETH_P_IP = common dso_local global i16 0, align 2
@ETH_P_IPV6 = common dso_local global i16 0, align 2
@ETH_P_ARP = common dso_local global i16 0, align 2
@FDDI_K_8022_HLEN = common dso_local global i32 0, align 4
@FDDI_FC_K_ASYNC_LLC_DEF = common dso_local global i32 0, align 4
@FDDI_EXTENDED_SAP = common dso_local global i8* null, align 8
@FDDI_UI_CMD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*, i16, i8*, i8*, i32)* @fddi_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fddi_header(%struct.sk_buff* %0, %struct.net_device* %1, i16 zeroext %2, i8* %3, i8* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.net_device*, align 8
  %10 = alloca i16, align 2
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.fddihdr*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %8, align 8
  store %struct.net_device* %1, %struct.net_device** %9, align 8
  store i16 %2, i16* %10, align 2
  store i8* %3, i8** %11, align 8
  store i8* %4, i8** %12, align 8
  store i32 %5, i32* %13, align 4
  %16 = load i32, i32* @FDDI_K_SNAP_HLEN, align 4
  store i32 %16, i32* %14, align 4
  %17 = load i16, i16* %10, align 2
  %18 = zext i16 %17 to i32
  %19 = load i16, i16* @ETH_P_IP, align 2
  %20 = zext i16 %19 to i32
  %21 = icmp ne i32 %18, %20
  br i1 %21, label %22, label %37

22:                                               ; preds = %6
  %23 = load i16, i16* %10, align 2
  %24 = zext i16 %23 to i32
  %25 = load i16, i16* @ETH_P_IPV6, align 2
  %26 = zext i16 %25 to i32
  %27 = icmp ne i32 %24, %26
  br i1 %27, label %28, label %37

28:                                               ; preds = %22
  %29 = load i16, i16* %10, align 2
  %30 = zext i16 %29 to i32
  %31 = load i16, i16* @ETH_P_ARP, align 2
  %32 = zext i16 %31 to i32
  %33 = icmp ne i32 %30, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %28
  %35 = load i32, i32* @FDDI_K_8022_HLEN, align 4
  %36 = sub nsw i32 %35, 3
  store i32 %36, i32* %14, align 4
  br label %37

37:                                               ; preds = %34, %28, %22, %6
  %38 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %39 = load i32, i32* %14, align 4
  %40 = call i64 @skb_push(%struct.sk_buff* %38, i32 %39)
  %41 = inttoptr i64 %40 to %struct.fddihdr*
  store %struct.fddihdr* %41, %struct.fddihdr** %15, align 8
  %42 = load i32, i32* @FDDI_FC_K_ASYNC_LLC_DEF, align 4
  %43 = load %struct.fddihdr*, %struct.fddihdr** %15, align 8
  %44 = getelementptr inbounds %struct.fddihdr, %struct.fddihdr* %43, i32 0, i32 3
  store i32 %42, i32* %44, align 8
  %45 = load i16, i16* %10, align 2
  %46 = zext i16 %45 to i32
  %47 = load i16, i16* @ETH_P_IP, align 2
  %48 = zext i16 %47 to i32
  %49 = icmp eq i32 %46, %48
  br i1 %49, label %62, label %50

50:                                               ; preds = %37
  %51 = load i16, i16* %10, align 2
  %52 = zext i16 %51 to i32
  %53 = load i16, i16* @ETH_P_IPV6, align 2
  %54 = zext i16 %53 to i32
  %55 = icmp eq i32 %52, %54
  br i1 %55, label %62, label %56

56:                                               ; preds = %50
  %57 = load i16, i16* %10, align 2
  %58 = zext i16 %57 to i32
  %59 = load i16, i16* @ETH_P_ARP, align 2
  %60 = zext i16 %59 to i32
  %61 = icmp eq i32 %58, %60
  br i1 %61, label %62, label %102

62:                                               ; preds = %56, %50, %37
  %63 = load i8*, i8** @FDDI_EXTENDED_SAP, align 8
  %64 = load %struct.fddihdr*, %struct.fddihdr** %15, align 8
  %65 = getelementptr inbounds %struct.fddihdr, %struct.fddihdr* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 4
  store i8* %63, i8** %67, align 8
  %68 = load i8*, i8** @FDDI_EXTENDED_SAP, align 8
  %69 = load %struct.fddihdr*, %struct.fddihdr** %15, align 8
  %70 = getelementptr inbounds %struct.fddihdr, %struct.fddihdr* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 3
  store i8* %68, i8** %72, align 8
  %73 = load i32, i32* @FDDI_UI_CMD, align 4
  %74 = load %struct.fddihdr*, %struct.fddihdr** %15, align 8
  %75 = getelementptr inbounds %struct.fddihdr, %struct.fddihdr* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 2
  store i32 %73, i32* %77, align 4
  %78 = load %struct.fddihdr*, %struct.fddihdr** %15, align 8
  %79 = getelementptr inbounds %struct.fddihdr, %struct.fddihdr* %78, i32 0, i32 2
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 0
  %82 = load i32*, i32** %81, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 0
  store i32 0, i32* %83, align 4
  %84 = load %struct.fddihdr*, %struct.fddihdr** %15, align 8
  %85 = getelementptr inbounds %struct.fddihdr, %struct.fddihdr* %84, i32 0, i32 2
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 0
  %88 = load i32*, i32** %87, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 1
  store i32 0, i32* %89, align 4
  %90 = load %struct.fddihdr*, %struct.fddihdr** %15, align 8
  %91 = getelementptr inbounds %struct.fddihdr, %struct.fddihdr* %90, i32 0, i32 2
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 0
  %94 = load i32*, i32** %93, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 2
  store i32 0, i32* %95, align 4
  %96 = load i16, i16* %10, align 2
  %97 = call i32 @htons(i16 zeroext %96)
  %98 = load %struct.fddihdr*, %struct.fddihdr** %15, align 8
  %99 = getelementptr inbounds %struct.fddihdr, %struct.fddihdr* %98, i32 0, i32 2
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 1
  store i32 %97, i32* %101, align 8
  br label %102

102:                                              ; preds = %62, %56
  %103 = load i8*, i8** %12, align 8
  %104 = icmp ne i8* %103, null
  br i1 %104, label %105, label %114

105:                                              ; preds = %102
  %106 = load %struct.fddihdr*, %struct.fddihdr** %15, align 8
  %107 = getelementptr inbounds %struct.fddihdr, %struct.fddihdr* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = load i8*, i8** %12, align 8
  %110 = load %struct.net_device*, %struct.net_device** %9, align 8
  %111 = getelementptr inbounds %struct.net_device, %struct.net_device* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 8
  %113 = call i32 @memcpy(i32 %108, i8* %109, i32 %112)
  br label %125

114:                                              ; preds = %102
  %115 = load %struct.fddihdr*, %struct.fddihdr** %15, align 8
  %116 = getelementptr inbounds %struct.fddihdr, %struct.fddihdr* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.net_device*, %struct.net_device** %9, align 8
  %119 = getelementptr inbounds %struct.net_device, %struct.net_device* %118, i32 0, i32 0
  %120 = load i8*, i8** %119, align 8
  %121 = load %struct.net_device*, %struct.net_device** %9, align 8
  %122 = getelementptr inbounds %struct.net_device, %struct.net_device* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 8
  %124 = call i32 @memcpy(i32 %117, i8* %120, i32 %123)
  br label %125

125:                                              ; preds = %114, %105
  %126 = load i8*, i8** %11, align 8
  %127 = icmp ne i8* %126, null
  br i1 %127, label %128, label %138

128:                                              ; preds = %125
  %129 = load %struct.fddihdr*, %struct.fddihdr** %15, align 8
  %130 = getelementptr inbounds %struct.fddihdr, %struct.fddihdr* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = load i8*, i8** %11, align 8
  %133 = load %struct.net_device*, %struct.net_device** %9, align 8
  %134 = getelementptr inbounds %struct.net_device, %struct.net_device* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 8
  %136 = call i32 @memcpy(i32 %131, i8* %132, i32 %135)
  %137 = load i32, i32* %14, align 4
  store i32 %137, i32* %7, align 4
  br label %141

138:                                              ; preds = %125
  %139 = load i32, i32* %14, align 4
  %140 = sub nsw i32 0, %139
  store i32 %140, i32* %7, align 4
  br label %141

141:                                              ; preds = %138, %128
  %142 = load i32, i32* %7, align 4
  ret i32 %142
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
