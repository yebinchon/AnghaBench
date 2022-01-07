; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/wusbcore/extr_mmc.c_wusbhc_chid_set.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/wusbcore/extr_mmc.c_wusbhc_chid_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wusbhc = type { i32, i32, %struct.wusb_ckhdid, i64 }
%struct.wusb_ckhdid = type { i32 }

@wusb_ckhdid_zero = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wusbhc_chid_set(%struct.wusbhc* %0, %struct.wusb_ckhdid* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wusbhc*, align 8
  %5 = alloca %struct.wusb_ckhdid*, align 8
  %6 = alloca i32, align 4
  store %struct.wusbhc* %0, %struct.wusbhc** %4, align 8
  store %struct.wusb_ckhdid* %1, %struct.wusb_ckhdid** %5, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.wusb_ckhdid*, %struct.wusb_ckhdid** %5, align 8
  %8 = call i64 @memcmp(%struct.wusb_ckhdid* %7, i32* @wusb_ckhdid_zero, i32 8)
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  store %struct.wusb_ckhdid* null, %struct.wusb_ckhdid** %5, align 8
  br label %11

11:                                               ; preds = %10, %2
  %12 = load %struct.wusbhc*, %struct.wusbhc** %4, align 8
  %13 = getelementptr inbounds %struct.wusbhc, %struct.wusbhc* %12, i32 0, i32 1
  %14 = call i32 @mutex_lock(i32* %13)
  %15 = load %struct.wusb_ckhdid*, %struct.wusb_ckhdid** %5, align 8
  %16 = icmp ne %struct.wusb_ckhdid* %15, null
  br i1 %16, label %17, label %34

17:                                               ; preds = %11
  %18 = load %struct.wusbhc*, %struct.wusbhc** %4, align 8
  %19 = getelementptr inbounds %struct.wusbhc, %struct.wusbhc* %18, i32 0, i32 3
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %17
  %23 = load %struct.wusbhc*, %struct.wusbhc** %4, align 8
  %24 = getelementptr inbounds %struct.wusbhc, %struct.wusbhc* %23, i32 0, i32 1
  %25 = call i32 @mutex_unlock(i32* %24)
  %26 = load i32, i32* @EBUSY, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %50

28:                                               ; preds = %17
  %29 = load %struct.wusbhc*, %struct.wusbhc** %4, align 8
  %30 = getelementptr inbounds %struct.wusbhc, %struct.wusbhc* %29, i32 0, i32 2
  %31 = load %struct.wusb_ckhdid*, %struct.wusb_ckhdid** %5, align 8
  %32 = bitcast %struct.wusb_ckhdid* %30 to i8*
  %33 = bitcast %struct.wusb_ckhdid* %31 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %32, i8* align 4 %33, i64 4, i1 false)
  br label %34

34:                                               ; preds = %28, %11
  %35 = load %struct.wusbhc*, %struct.wusbhc** %4, align 8
  %36 = getelementptr inbounds %struct.wusbhc, %struct.wusbhc* %35, i32 0, i32 1
  %37 = call i32 @mutex_unlock(i32* %36)
  %38 = load %struct.wusb_ckhdid*, %struct.wusb_ckhdid** %5, align 8
  %39 = icmp ne %struct.wusb_ckhdid* %38, null
  br i1 %39, label %40, label %44

40:                                               ; preds = %34
  %41 = load %struct.wusbhc*, %struct.wusbhc** %4, align 8
  %42 = getelementptr inbounds %struct.wusbhc, %struct.wusbhc* %41, i32 0, i32 0
  %43 = call i32 @uwb_radio_start(i32* %42)
  store i32 %43, i32* %6, align 4
  br label %48

44:                                               ; preds = %34
  %45 = load %struct.wusbhc*, %struct.wusbhc** %4, align 8
  %46 = getelementptr inbounds %struct.wusbhc, %struct.wusbhc* %45, i32 0, i32 0
  %47 = call i32 @uwb_radio_stop(i32* %46)
  br label %48

48:                                               ; preds = %44, %40
  %49 = load i32, i32* %6, align 4
  store i32 %49, i32* %3, align 4
  br label %50

50:                                               ; preds = %48, %22
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local i64 @memcmp(%struct.wusb_ckhdid*, i32*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @uwb_radio_start(i32*) #1

declare dso_local i32 @uwb_radio_stop(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
