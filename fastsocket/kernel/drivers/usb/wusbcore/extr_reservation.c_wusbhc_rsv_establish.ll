; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/wusbcore/extr_reservation.c_wusbhc_rsv_establish.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/wusbcore/extr_reservation.c_wusbhc_rsv_establish.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wusbhc = type { %struct.uwb_rsv*, i64, %struct.uwb_rc* }
%struct.uwb_rsv = type { i32, i32, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.uwb_dev_addr, i32 }
%struct.uwb_dev_addr = type { i64* }
%struct.uwb_rc = type { i32 }

@wusbhc_rsv_complete_cb = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@UWB_RSV_TARGET_DEVADDR = common dso_local global i32 0, align 4
@UWB_DRP_TYPE_PRIVATE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wusbhc_rsv_establish(%struct.wusbhc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.wusbhc*, align 8
  %4 = alloca %struct.uwb_rc*, align 8
  %5 = alloca %struct.uwb_rsv*, align 8
  %6 = alloca %struct.uwb_dev_addr, align 8
  %7 = alloca i32, align 4
  store %struct.wusbhc* %0, %struct.wusbhc** %3, align 8
  %8 = load %struct.wusbhc*, %struct.wusbhc** %3, align 8
  %9 = getelementptr inbounds %struct.wusbhc, %struct.wusbhc* %8, i32 0, i32 2
  %10 = load %struct.uwb_rc*, %struct.uwb_rc** %9, align 8
  store %struct.uwb_rc* %10, %struct.uwb_rc** %4, align 8
  %11 = load %struct.uwb_rc*, %struct.uwb_rc** %4, align 8
  %12 = load i32, i32* @wusbhc_rsv_complete_cb, align 4
  %13 = load %struct.wusbhc*, %struct.wusbhc** %3, align 8
  %14 = call %struct.uwb_rsv* @uwb_rsv_create(%struct.uwb_rc* %11, i32 %12, %struct.wusbhc* %13)
  store %struct.uwb_rsv* %14, %struct.uwb_rsv** %5, align 8
  %15 = load %struct.uwb_rsv*, %struct.uwb_rsv** %5, align 8
  %16 = icmp eq %struct.uwb_rsv* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %1
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %63

20:                                               ; preds = %1
  %21 = load %struct.wusbhc*, %struct.wusbhc** %3, align 8
  %22 = getelementptr inbounds %struct.wusbhc, %struct.wusbhc* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = getelementptr inbounds %struct.uwb_dev_addr, %struct.uwb_dev_addr* %6, i32 0, i32 0
  %25 = load i64*, i64** %24, align 8
  %26 = getelementptr inbounds i64, i64* %25, i64 0
  store i64 %23, i64* %26, align 8
  %27 = getelementptr inbounds %struct.uwb_dev_addr, %struct.uwb_dev_addr* %6, i32 0, i32 0
  %28 = load i64*, i64** %27, align 8
  %29 = getelementptr inbounds i64, i64* %28, i64 1
  store i64 0, i64* %29, align 8
  %30 = load i32, i32* @UWB_RSV_TARGET_DEVADDR, align 4
  %31 = load %struct.uwb_rsv*, %struct.uwb_rsv** %5, align 8
  %32 = getelementptr inbounds %struct.uwb_rsv, %struct.uwb_rsv* %31, i32 0, i32 5
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  store i32 %30, i32* %33, align 8
  %34 = load %struct.uwb_rsv*, %struct.uwb_rsv** %5, align 8
  %35 = getelementptr inbounds %struct.uwb_rsv, %struct.uwb_rsv* %34, i32 0, i32 5
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = bitcast %struct.uwb_dev_addr* %36 to i8*
  %38 = bitcast %struct.uwb_dev_addr* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %37, i8* align 8 %38, i64 8, i1 false)
  %39 = load i32, i32* @UWB_DRP_TYPE_PRIVATE, align 4
  %40 = load %struct.uwb_rsv*, %struct.uwb_rsv** %5, align 8
  %41 = getelementptr inbounds %struct.uwb_rsv, %struct.uwb_rsv* %40, i32 0, i32 4
  store i32 %39, i32* %41, align 8
  %42 = load %struct.uwb_rsv*, %struct.uwb_rsv** %5, align 8
  %43 = getelementptr inbounds %struct.uwb_rsv, %struct.uwb_rsv* %42, i32 0, i32 0
  store i32 256, i32* %43, align 8
  %44 = load %struct.uwb_rsv*, %struct.uwb_rsv** %5, align 8
  %45 = getelementptr inbounds %struct.uwb_rsv, %struct.uwb_rsv* %44, i32 0, i32 1
  store i32 15, i32* %45, align 4
  %46 = load %struct.uwb_rsv*, %struct.uwb_rsv** %5, align 8
  %47 = getelementptr inbounds %struct.uwb_rsv, %struct.uwb_rsv* %46, i32 0, i32 2
  store i32 1, i32* %47, align 8
  %48 = load %struct.uwb_rsv*, %struct.uwb_rsv** %5, align 8
  %49 = getelementptr inbounds %struct.uwb_rsv, %struct.uwb_rsv* %48, i32 0, i32 3
  store i32 1, i32* %49, align 4
  %50 = load %struct.uwb_rsv*, %struct.uwb_rsv** %5, align 8
  %51 = call i32 @uwb_rsv_establish(%struct.uwb_rsv* %50)
  store i32 %51, i32* %7, align 4
  %52 = load i32, i32* %7, align 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %20
  %55 = load %struct.uwb_rsv*, %struct.uwb_rsv** %5, align 8
  %56 = load %struct.wusbhc*, %struct.wusbhc** %3, align 8
  %57 = getelementptr inbounds %struct.wusbhc, %struct.wusbhc* %56, i32 0, i32 0
  store %struct.uwb_rsv* %55, %struct.uwb_rsv** %57, align 8
  br label %61

58:                                               ; preds = %20
  %59 = load %struct.uwb_rsv*, %struct.uwb_rsv** %5, align 8
  %60 = call i32 @uwb_rsv_destroy(%struct.uwb_rsv* %59)
  br label %61

61:                                               ; preds = %58, %54
  %62 = load i32, i32* %7, align 4
  store i32 %62, i32* %2, align 4
  br label %63

63:                                               ; preds = %61, %17
  %64 = load i32, i32* %2, align 4
  ret i32 %64
}

declare dso_local %struct.uwb_rsv* @uwb_rsv_create(%struct.uwb_rc*, i32, %struct.wusbhc*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @uwb_rsv_establish(%struct.uwb_rsv*) #1

declare dso_local i32 @uwb_rsv_destroy(%struct.uwb_rsv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
