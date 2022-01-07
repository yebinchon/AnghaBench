; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_mesh.c_cfg80211_set_mesh_channel.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_mesh.c_cfg80211_set_mesh_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfg80211_registered_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.wireless_dev = type { %struct.cfg80211_chan_def, i64, i32, i32 }
%struct.cfg80211_chan_def = type { i64, i32 }

@NL80211_CHAN_WIDTH_20_NOHT = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@ENETDOWN = common dso_local global i32 0, align 4
@CHAN_MODE_SHARED = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cfg80211_set_mesh_channel(%struct.cfg80211_registered_device* %0, %struct.wireless_dev* %1, %struct.cfg80211_chan_def* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cfg80211_registered_device*, align 8
  %6 = alloca %struct.wireless_dev*, align 8
  %7 = alloca %struct.cfg80211_chan_def*, align 8
  %8 = alloca i32, align 4
  store %struct.cfg80211_registered_device* %0, %struct.cfg80211_registered_device** %5, align 8
  store %struct.wireless_dev* %1, %struct.wireless_dev** %6, align 8
  store %struct.cfg80211_chan_def* %2, %struct.cfg80211_chan_def** %7, align 8
  %9 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %5, align 8
  %10 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %64

15:                                               ; preds = %3
  %16 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %7, align 8
  %17 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @NL80211_CHAN_WIDTH_20_NOHT, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %15
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %78

24:                                               ; preds = %15
  %25 = load %struct.wireless_dev*, %struct.wireless_dev** %6, align 8
  %26 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @netif_running(i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %24
  %31 = load i32, i32* @ENETDOWN, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %4, align 4
  br label %78

33:                                               ; preds = %24
  %34 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %5, align 8
  %35 = load %struct.wireless_dev*, %struct.wireless_dev** %6, align 8
  %36 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %7, align 8
  %37 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @CHAN_MODE_SHARED, align 4
  %40 = call i32 @cfg80211_can_use_chan(%struct.cfg80211_registered_device* %34, %struct.wireless_dev* %35, i32 %38, i32 %39)
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* %8, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %33
  %44 = load i32, i32* %8, align 4
  store i32 %44, i32* %4, align 4
  br label %78

45:                                               ; preds = %33
  %46 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %5, align 8
  %47 = load %struct.wireless_dev*, %struct.wireless_dev** %6, align 8
  %48 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %7, align 8
  %51 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @rdev_libertas_set_mesh_channel(%struct.cfg80211_registered_device* %46, i32 %49, i32 %52)
  store i32 %53, i32* %8, align 4
  %54 = load i32, i32* %8, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %62, label %56

56:                                               ; preds = %45
  %57 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %7, align 8
  %58 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.wireless_dev*, %struct.wireless_dev** %6, align 8
  %61 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %60, i32 0, i32 2
  store i32 %59, i32* %61, align 8
  br label %62

62:                                               ; preds = %56, %45
  %63 = load i32, i32* %8, align 4
  store i32 %63, i32* %4, align 4
  br label %78

64:                                               ; preds = %3
  %65 = load %struct.wireless_dev*, %struct.wireless_dev** %6, align 8
  %66 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %64
  %70 = load i32, i32* @EBUSY, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %4, align 4
  br label %78

72:                                               ; preds = %64
  %73 = load %struct.wireless_dev*, %struct.wireless_dev** %6, align 8
  %74 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %73, i32 0, i32 0
  %75 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %7, align 8
  %76 = bitcast %struct.cfg80211_chan_def* %74 to i8*
  %77 = bitcast %struct.cfg80211_chan_def* %75 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %76, i8* align 8 %77, i64 16, i1 false)
  store i32 0, i32* %4, align 4
  br label %78

78:                                               ; preds = %72, %69, %62, %43, %30, %21
  %79 = load i32, i32* %4, align 4
  ret i32 %79
}

declare dso_local i32 @netif_running(i32) #1

declare dso_local i32 @cfg80211_can_use_chan(%struct.cfg80211_registered_device*, %struct.wireless_dev*, i32, i32) #1

declare dso_local i32 @rdev_libertas_set_mesh_channel(%struct.cfg80211_registered_device*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
