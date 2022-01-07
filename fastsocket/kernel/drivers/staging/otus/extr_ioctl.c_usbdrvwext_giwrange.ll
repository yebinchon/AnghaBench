; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/extr_ioctl.c_usbdrvwext_giwrange.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/extr_ioctl.c_usbdrvwext_giwrange.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.iw_request_info = type { i32 }
%struct.iw_point = type { i32 }
%struct.iw_range = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32, i64, i64, %struct.TYPE_4__, %struct.TYPE_3__*, i64, i8*, i8*, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@IW_TXPOW_DBM = common dso_local global i32 0, align 4
@WIRELESS_EXT = common dso_local global i32 0, align 4
@IW_RETRY_LIMIT = common dso_local global i8* null, align 8
@IW_MAX_FREQUENCIES = common dso_local global i32 0, align 4
@channel_frequency_11A = common dso_local global i32* null, align 8
@num_band_a = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @usbdrvwext_giwrange(%struct.net_device* %0, %struct.iw_request_info* %1, %struct.iw_point* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.iw_request_info*, align 8
  %8 = alloca %struct.iw_point*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.iw_range*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [60 x i32], align 16
  %14 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %7, align 8
  store %struct.iw_point* %2, %struct.iw_point** %8, align 8
  store i8* %3, i8** %9, align 8
  %15 = load i8*, i8** %9, align 8
  %16 = bitcast i8* %15 to %struct.iw_range*
  store %struct.iw_range* %16, %struct.iw_range** %10, align 8
  %17 = load %struct.net_device*, %struct.net_device** %6, align 8
  %18 = call i32 @netif_running(%struct.net_device* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %4
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %5, align 4
  br label %133

23:                                               ; preds = %4
  %24 = load i32, i32* @IW_TXPOW_DBM, align 4
  %25 = load %struct.iw_range*, %struct.iw_range** %10, align 8
  %26 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %25, i32 0, i32 20
  store i32 %24, i32* %26, align 4
  %27 = load i32, i32* @WIRELESS_EXT, align 4
  %28 = load %struct.iw_range*, %struct.iw_range** %10, align 8
  %29 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %28, i32 0, i32 19
  store i32 %27, i32* %29, align 8
  %30 = load %struct.iw_range*, %struct.iw_range** %10, align 8
  %31 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %30, i32 0, i32 0
  store i32 13, i32* %31, align 8
  %32 = load i8*, i8** @IW_RETRY_LIMIT, align 8
  %33 = load %struct.iw_range*, %struct.iw_range** %10, align 8
  %34 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %33, i32 0, i32 18
  store i8* %32, i8** %34, align 8
  %35 = load i8*, i8** @IW_RETRY_LIMIT, align 8
  %36 = load %struct.iw_range*, %struct.iw_range** %10, align 8
  %37 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %36, i32 0, i32 17
  store i8* %35, i8** %37, align 8
  %38 = load %struct.iw_range*, %struct.iw_range** %10, align 8
  %39 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %38, i32 0, i32 16
  store i64 0, i64* %39, align 8
  %40 = load %struct.iw_range*, %struct.iw_range** %10, align 8
  %41 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %40, i32 0, i32 1
  store i32 255, i32* %41, align 4
  %42 = load %struct.net_device*, %struct.net_device** %6, align 8
  %43 = getelementptr inbounds [60 x i32], [60 x i32]* %13, i64 0, i64 0
  %44 = call i32 @zfiWlanQueryAllowChannels(%struct.net_device* %42, i32* %43)
  store i32 %44, i32* %14, align 4
  %45 = load i32, i32* %14, align 4
  %46 = load i32, i32* @IW_MAX_FREQUENCIES, align 4
  %47 = icmp sgt i32 %45, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %23
  %49 = load i32, i32* @IW_MAX_FREQUENCIES, align 4
  store i32 %49, i32* %14, align 4
  br label %50

50:                                               ; preds = %48, %23
  store i32 0, i32* %12, align 4
  store i32 0, i32* %11, align 4
  br label %51

51:                                               ; preds = %88, %50
  %52 = load i32, i32* %11, align 4
  %53 = load i32, i32* %14, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %55, label %91

55:                                               ; preds = %51
  %56 = load i32, i32* %11, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds [60 x i32], [60 x i32]* %13, i64 0, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @usbdrv_freq2chan(i32 %59)
  %61 = load %struct.iw_range*, %struct.iw_range** %10, align 8
  %62 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %61, i32 0, i32 15
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %62, align 8
  %64 = load i32, i32* %12, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 0
  store i32 %60, i32* %67, align 4
  %68 = load i32, i32* %11, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds [60 x i32], [60 x i32]* %13, i64 0, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.iw_range*, %struct.iw_range** %10, align 8
  %73 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %72, i32 0, i32 15
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %73, align 8
  %75 = load i32, i32* %12, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 1
  store i32 %71, i32* %78, align 4
  %79 = load %struct.iw_range*, %struct.iw_range** %10, align 8
  %80 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %79, i32 0, i32 15
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %80, align 8
  %82 = load i32, i32* %12, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 2
  store i32 6, i32* %85, align 4
  %86 = load i32, i32* %12, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %12, align 4
  br label %88

88:                                               ; preds = %55
  %89 = load i32, i32* %11, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %11, align 4
  br label %51

91:                                               ; preds = %51
  %92 = load i32, i32* %14, align 4
  %93 = load %struct.iw_range*, %struct.iw_range** %10, align 8
  %94 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %93, i32 0, i32 2
  store i32 %92, i32* %94, align 8
  %95 = load i32, i32* %14, align 4
  %96 = load %struct.iw_range*, %struct.iw_range** %10, align 8
  %97 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %96, i32 0, i32 3
  store i32 %95, i32* %97, align 4
  %98 = load %struct.iw_range*, %struct.iw_range** %10, align 8
  %99 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %98, i32 0, i32 14
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 0
  store i32 100, i32* %100, align 8
  %101 = load %struct.iw_range*, %struct.iw_range** %10, align 8
  %102 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %101, i32 0, i32 14
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 1
  store i32 154, i32* %103, align 4
  %104 = load %struct.iw_range*, %struct.iw_range** %10, align 8
  %105 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %104, i32 0, i32 14
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 2
  store i32 154, i32* %106, align 8
  %107 = load %struct.iw_range*, %struct.iw_range** %10, align 8
  %108 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %107, i32 0, i32 4
  store i32 3, i32* %108, align 8
  %109 = load %struct.iw_range*, %struct.iw_range** %10, align 8
  %110 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %109, i32 0, i32 13
  store i64 0, i64* %110, align 8
  %111 = load %struct.iw_range*, %struct.iw_range** %10, align 8
  %112 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %111, i32 0, i32 5
  store i32 2347, i32* %112, align 4
  %113 = load %struct.iw_range*, %struct.iw_range** %10, align 8
  %114 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %113, i32 0, i32 6
  store i32 256, i32* %114, align 8
  %115 = load %struct.iw_range*, %struct.iw_range** %10, align 8
  %116 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %115, i32 0, i32 7
  store i32 2346, i32* %116, align 4
  %117 = load %struct.iw_range*, %struct.iw_range** %10, align 8
  %118 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %117, i32 0, i32 8
  store i32 4, i32* %118, align 8
  %119 = load %struct.iw_range*, %struct.iw_range** %10, align 8
  %120 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %119, i32 0, i32 9
  store i32 2, i32* %120, align 4
  %121 = load %struct.iw_range*, %struct.iw_range** %10, align 8
  %122 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %121, i32 0, i32 10
  %123 = load i32*, i32** %122, align 8
  %124 = getelementptr inbounds i32, i32* %123, i64 0
  store i32 5, i32* %124, align 4
  %125 = load %struct.iw_range*, %struct.iw_range** %10, align 8
  %126 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %125, i32 0, i32 10
  %127 = load i32*, i32** %126, align 8
  %128 = getelementptr inbounds i32, i32* %127, i64 1
  store i32 13, i32* %128, align 4
  %129 = load %struct.iw_range*, %struct.iw_range** %10, align 8
  %130 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %129, i32 0, i32 12
  store i64 0, i64* %130, align 8
  %131 = load %struct.iw_range*, %struct.iw_range** %10, align 8
  %132 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %131, i32 0, i32 11
  store i32 300000000, i32* %132, align 8
  store i32 0, i32* %5, align 4
  br label %133

133:                                              ; preds = %91, %20
  %134 = load i32, i32* %5, align 4
  ret i32 %134
}

declare dso_local i32 @netif_running(%struct.net_device*) #1

declare dso_local i32 @zfiWlanQueryAllowChannels(%struct.net_device*, i32*) #1

declare dso_local i32 @usbdrv_freq2chan(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
