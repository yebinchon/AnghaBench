; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/rfcomm/extr_core.c_rfcomm_send_pn.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/rfcomm/extr_core.c_rfcomm_send_pn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rfcomm_session = type { i64, i32 }
%struct.rfcomm_dlc = type { i64, i32, i32 }
%struct.rfcomm_hdr = type { i8*, i32, i32 }
%struct.rfcomm_mcc = type { i8*, i32 }
%struct.rfcomm_pn = type { i32, i8*, i64, i64, i64, i32, i32 }

@.str = private unnamed_addr constant [24 x i8] c"%p cr %d dlci %d mtu %d\00", align 1
@RFCOMM_UIH = common dso_local global i32 0, align 4
@RFCOMM_PN = common dso_local global i32 0, align 4
@RFCOMM_DEFAULT_CREDITS = common dso_local global i64 0, align 8
@channel_mtu = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rfcomm_session*, i32, %struct.rfcomm_dlc*)* @rfcomm_send_pn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rfcomm_send_pn(%struct.rfcomm_session* %0, i32 %1, %struct.rfcomm_dlc* %2) #0 {
  %4 = alloca %struct.rfcomm_session*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.rfcomm_dlc*, align 8
  %7 = alloca %struct.rfcomm_hdr*, align 8
  %8 = alloca %struct.rfcomm_mcc*, align 8
  %9 = alloca %struct.rfcomm_pn*, align 8
  %10 = alloca [16 x i32], align 16
  %11 = alloca i32*, align 8
  store %struct.rfcomm_session* %0, %struct.rfcomm_session** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.rfcomm_dlc* %2, %struct.rfcomm_dlc** %6, align 8
  %12 = getelementptr inbounds [16 x i32], [16 x i32]* %10, i64 0, i64 0
  store i32* %12, i32** %11, align 8
  %13 = load %struct.rfcomm_session*, %struct.rfcomm_session** %4, align 8
  %14 = load i32, i32* %5, align 4
  %15 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %6, align 8
  %16 = getelementptr inbounds %struct.rfcomm_dlc, %struct.rfcomm_dlc* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %6, align 8
  %19 = getelementptr inbounds %struct.rfcomm_dlc, %struct.rfcomm_dlc* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = call i32 @BT_DBG(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), %struct.rfcomm_session* %13, i32 %14, i32 %17, i64 %20)
  %22 = load i32*, i32** %11, align 8
  %23 = bitcast i32* %22 to i8*
  %24 = bitcast i8* %23 to %struct.rfcomm_hdr*
  store %struct.rfcomm_hdr* %24, %struct.rfcomm_hdr** %7, align 8
  %25 = load i32*, i32** %11, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 16
  store i32* %26, i32** %11, align 8
  %27 = load %struct.rfcomm_session*, %struct.rfcomm_session** %4, align 8
  %28 = getelementptr inbounds %struct.rfcomm_session, %struct.rfcomm_session* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @__addr(i32 %29, i32 0)
  %31 = load %struct.rfcomm_hdr*, %struct.rfcomm_hdr** %7, align 8
  %32 = getelementptr inbounds %struct.rfcomm_hdr, %struct.rfcomm_hdr* %31, i32 0, i32 2
  store i32 %30, i32* %32, align 4
  %33 = load i32, i32* @RFCOMM_UIH, align 4
  %34 = call i32 @__ctrl(i32 %33, i32 0)
  %35 = load %struct.rfcomm_hdr*, %struct.rfcomm_hdr** %7, align 8
  %36 = getelementptr inbounds %struct.rfcomm_hdr, %struct.rfcomm_hdr* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 8
  %37 = call i8* @__len8(i32 64)
  %38 = load %struct.rfcomm_hdr*, %struct.rfcomm_hdr** %7, align 8
  %39 = getelementptr inbounds %struct.rfcomm_hdr, %struct.rfcomm_hdr* %38, i32 0, i32 0
  store i8* %37, i8** %39, align 8
  %40 = load i32*, i32** %11, align 8
  %41 = bitcast i32* %40 to i8*
  %42 = bitcast i8* %41 to %struct.rfcomm_mcc*
  store %struct.rfcomm_mcc* %42, %struct.rfcomm_mcc** %8, align 8
  %43 = load i32*, i32** %11, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 16
  store i32* %44, i32** %11, align 8
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* @RFCOMM_PN, align 4
  %47 = call i32 @__mcc_type(i32 %45, i32 %46)
  %48 = load %struct.rfcomm_mcc*, %struct.rfcomm_mcc** %8, align 8
  %49 = getelementptr inbounds %struct.rfcomm_mcc, %struct.rfcomm_mcc* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 8
  %50 = call i8* @__len8(i32 48)
  %51 = load %struct.rfcomm_mcc*, %struct.rfcomm_mcc** %8, align 8
  %52 = getelementptr inbounds %struct.rfcomm_mcc, %struct.rfcomm_mcc* %51, i32 0, i32 0
  store i8* %50, i8** %52, align 8
  %53 = load i32*, i32** %11, align 8
  %54 = bitcast i32* %53 to i8*
  %55 = bitcast i8* %54 to %struct.rfcomm_pn*
  store %struct.rfcomm_pn* %55, %struct.rfcomm_pn** %9, align 8
  %56 = load i32*, i32** %11, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 48
  store i32* %57, i32** %11, align 8
  %58 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %6, align 8
  %59 = getelementptr inbounds %struct.rfcomm_dlc, %struct.rfcomm_dlc* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.rfcomm_pn*, %struct.rfcomm_pn** %9, align 8
  %62 = getelementptr inbounds %struct.rfcomm_pn, %struct.rfcomm_pn* %61, i32 0, i32 6
  store i32 %60, i32* %62, align 4
  %63 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %6, align 8
  %64 = getelementptr inbounds %struct.rfcomm_dlc, %struct.rfcomm_dlc* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.rfcomm_pn*, %struct.rfcomm_pn** %9, align 8
  %67 = getelementptr inbounds %struct.rfcomm_pn, %struct.rfcomm_pn* %66, i32 0, i32 5
  store i32 %65, i32* %67, align 8
  %68 = load %struct.rfcomm_pn*, %struct.rfcomm_pn** %9, align 8
  %69 = getelementptr inbounds %struct.rfcomm_pn, %struct.rfcomm_pn* %68, i32 0, i32 4
  store i64 0, i64* %69, align 8
  %70 = load %struct.rfcomm_pn*, %struct.rfcomm_pn** %9, align 8
  %71 = getelementptr inbounds %struct.rfcomm_pn, %struct.rfcomm_pn* %70, i32 0, i32 3
  store i64 0, i64* %71, align 8
  %72 = load %struct.rfcomm_session*, %struct.rfcomm_session** %4, align 8
  %73 = getelementptr inbounds %struct.rfcomm_session, %struct.rfcomm_session* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %86

76:                                               ; preds = %3
  %77 = load i32, i32* %5, align 4
  %78 = icmp ne i32 %77, 0
  %79 = zext i1 %78 to i64
  %80 = select i1 %78, i32 240, i32 224
  %81 = load %struct.rfcomm_pn*, %struct.rfcomm_pn** %9, align 8
  %82 = getelementptr inbounds %struct.rfcomm_pn, %struct.rfcomm_pn* %81, i32 0, i32 0
  store i32 %80, i32* %82, align 8
  %83 = load i64, i64* @RFCOMM_DEFAULT_CREDITS, align 8
  %84 = load %struct.rfcomm_pn*, %struct.rfcomm_pn** %9, align 8
  %85 = getelementptr inbounds %struct.rfcomm_pn, %struct.rfcomm_pn* %84, i32 0, i32 2
  store i64 %83, i64* %85, align 8
  br label %91

86:                                               ; preds = %3
  %87 = load %struct.rfcomm_pn*, %struct.rfcomm_pn** %9, align 8
  %88 = getelementptr inbounds %struct.rfcomm_pn, %struct.rfcomm_pn* %87, i32 0, i32 0
  store i32 0, i32* %88, align 8
  %89 = load %struct.rfcomm_pn*, %struct.rfcomm_pn** %9, align 8
  %90 = getelementptr inbounds %struct.rfcomm_pn, %struct.rfcomm_pn* %89, i32 0, i32 2
  store i64 0, i64* %90, align 8
  br label %91

91:                                               ; preds = %86, %76
  %92 = load i32, i32* %5, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %102

94:                                               ; preds = %91
  %95 = load i64, i64* @channel_mtu, align 8
  %96 = icmp sge i64 %95, 0
  br i1 %96, label %97, label %102

97:                                               ; preds = %94
  %98 = load i64, i64* @channel_mtu, align 8
  %99 = call i8* @cpu_to_le16(i64 %98)
  %100 = load %struct.rfcomm_pn*, %struct.rfcomm_pn** %9, align 8
  %101 = getelementptr inbounds %struct.rfcomm_pn, %struct.rfcomm_pn* %100, i32 0, i32 1
  store i8* %99, i8** %101, align 8
  br label %109

102:                                              ; preds = %94, %91
  %103 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %6, align 8
  %104 = getelementptr inbounds %struct.rfcomm_dlc, %struct.rfcomm_dlc* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = call i8* @cpu_to_le16(i64 %105)
  %107 = load %struct.rfcomm_pn*, %struct.rfcomm_pn** %9, align 8
  %108 = getelementptr inbounds %struct.rfcomm_pn, %struct.rfcomm_pn* %107, i32 0, i32 1
  store i8* %106, i8** %108, align 8
  br label %109

109:                                              ; preds = %102, %97
  %110 = getelementptr inbounds [16 x i32], [16 x i32]* %10, i64 0, i64 0
  %111 = call i32 @__fcs(i32* %110)
  %112 = load i32*, i32** %11, align 8
  store i32 %111, i32* %112, align 4
  %113 = load i32*, i32** %11, align 8
  %114 = getelementptr inbounds i32, i32* %113, i32 1
  store i32* %114, i32** %11, align 8
  %115 = load %struct.rfcomm_session*, %struct.rfcomm_session** %4, align 8
  %116 = getelementptr inbounds [16 x i32], [16 x i32]* %10, i64 0, i64 0
  %117 = load i32*, i32** %11, align 8
  %118 = getelementptr inbounds [16 x i32], [16 x i32]* %10, i64 0, i64 0
  %119 = ptrtoint i32* %117 to i64
  %120 = ptrtoint i32* %118 to i64
  %121 = sub i64 %119, %120
  %122 = sdiv exact i64 %121, 4
  %123 = trunc i64 %122 to i32
  %124 = call i32 @rfcomm_send_frame(%struct.rfcomm_session* %115, i32* %116, i32 %123)
  ret i32 %124
}

declare dso_local i32 @BT_DBG(i8*, %struct.rfcomm_session*, i32, i32, i64) #1

declare dso_local i32 @__addr(i32, i32) #1

declare dso_local i32 @__ctrl(i32, i32) #1

declare dso_local i8* @__len8(i32) #1

declare dso_local i32 @__mcc_type(i32, i32) #1

declare dso_local i8* @cpu_to_le16(i64) #1

declare dso_local i32 @__fcs(i32*) #1

declare dso_local i32 @rfcomm_send_frame(%struct.rfcomm_session*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
