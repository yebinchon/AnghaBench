; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/rfcomm/extr_core.c_rfcomm_send_fcon.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/rfcomm/extr_core.c_rfcomm_send_fcon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rfcomm_session = type { i32 }
%struct.rfcomm_hdr = type { i8*, i32, i32 }
%struct.rfcomm_mcc = type { i8*, i32 }

@.str = private unnamed_addr constant [9 x i8] c"%p cr %d\00", align 1
@RFCOMM_UIH = common dso_local global i32 0, align 4
@RFCOMM_FCON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rfcomm_session*, i32)* @rfcomm_send_fcon to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rfcomm_send_fcon(%struct.rfcomm_session* %0, i32 %1) #0 {
  %3 = alloca %struct.rfcomm_session*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.rfcomm_hdr*, align 8
  %6 = alloca %struct.rfcomm_mcc*, align 8
  %7 = alloca [16 x i32], align 16
  %8 = alloca i32*, align 8
  store %struct.rfcomm_session* %0, %struct.rfcomm_session** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = getelementptr inbounds [16 x i32], [16 x i32]* %7, i64 0, i64 0
  store i32* %9, i32** %8, align 8
  %10 = load %struct.rfcomm_session*, %struct.rfcomm_session** %3, align 8
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @BT_DBG(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), %struct.rfcomm_session* %10, i32 %11)
  %13 = load i32*, i32** %8, align 8
  %14 = bitcast i32* %13 to i8*
  %15 = bitcast i8* %14 to %struct.rfcomm_hdr*
  store %struct.rfcomm_hdr* %15, %struct.rfcomm_hdr** %5, align 8
  %16 = load i32*, i32** %8, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 16
  store i32* %17, i32** %8, align 8
  %18 = load %struct.rfcomm_session*, %struct.rfcomm_session** %3, align 8
  %19 = getelementptr inbounds %struct.rfcomm_session, %struct.rfcomm_session* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @__addr(i32 %20, i32 0)
  %22 = load %struct.rfcomm_hdr*, %struct.rfcomm_hdr** %5, align 8
  %23 = getelementptr inbounds %struct.rfcomm_hdr, %struct.rfcomm_hdr* %22, i32 0, i32 2
  store i32 %21, i32* %23, align 4
  %24 = load i32, i32* @RFCOMM_UIH, align 4
  %25 = call i32 @__ctrl(i32 %24, i32 0)
  %26 = load %struct.rfcomm_hdr*, %struct.rfcomm_hdr** %5, align 8
  %27 = getelementptr inbounds %struct.rfcomm_hdr, %struct.rfcomm_hdr* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 8
  %28 = call i8* @__len8(i32 16)
  %29 = load %struct.rfcomm_hdr*, %struct.rfcomm_hdr** %5, align 8
  %30 = getelementptr inbounds %struct.rfcomm_hdr, %struct.rfcomm_hdr* %29, i32 0, i32 0
  store i8* %28, i8** %30, align 8
  %31 = load i32*, i32** %8, align 8
  %32 = bitcast i32* %31 to i8*
  %33 = bitcast i8* %32 to %struct.rfcomm_mcc*
  store %struct.rfcomm_mcc* %33, %struct.rfcomm_mcc** %6, align 8
  %34 = load i32*, i32** %8, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 16
  store i32* %35, i32** %8, align 8
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* @RFCOMM_FCON, align 4
  %38 = call i32 @__mcc_type(i32 %36, i32 %37)
  %39 = load %struct.rfcomm_mcc*, %struct.rfcomm_mcc** %6, align 8
  %40 = getelementptr inbounds %struct.rfcomm_mcc, %struct.rfcomm_mcc* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 8
  %41 = call i8* @__len8(i32 0)
  %42 = load %struct.rfcomm_mcc*, %struct.rfcomm_mcc** %6, align 8
  %43 = getelementptr inbounds %struct.rfcomm_mcc, %struct.rfcomm_mcc* %42, i32 0, i32 0
  store i8* %41, i8** %43, align 8
  %44 = getelementptr inbounds [16 x i32], [16 x i32]* %7, i64 0, i64 0
  %45 = call i32 @__fcs(i32* %44)
  %46 = load i32*, i32** %8, align 8
  store i32 %45, i32* %46, align 4
  %47 = load i32*, i32** %8, align 8
  %48 = getelementptr inbounds i32, i32* %47, i32 1
  store i32* %48, i32** %8, align 8
  %49 = load %struct.rfcomm_session*, %struct.rfcomm_session** %3, align 8
  %50 = getelementptr inbounds [16 x i32], [16 x i32]* %7, i64 0, i64 0
  %51 = load i32*, i32** %8, align 8
  %52 = getelementptr inbounds [16 x i32], [16 x i32]* %7, i64 0, i64 0
  %53 = ptrtoint i32* %51 to i64
  %54 = ptrtoint i32* %52 to i64
  %55 = sub i64 %53, %54
  %56 = sdiv exact i64 %55, 4
  %57 = trunc i64 %56 to i32
  %58 = call i32 @rfcomm_send_frame(%struct.rfcomm_session* %49, i32* %50, i32 %57)
  ret i32 %58
}

declare dso_local i32 @BT_DBG(i8*, %struct.rfcomm_session*, i32) #1

declare dso_local i32 @__addr(i32, i32) #1

declare dso_local i32 @__ctrl(i32, i32) #1

declare dso_local i8* @__len8(i32) #1

declare dso_local i32 @__mcc_type(i32, i32) #1

declare dso_local i32 @__fcs(i32*) #1

declare dso_local i32 @rfcomm_send_frame(%struct.rfcomm_session*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
