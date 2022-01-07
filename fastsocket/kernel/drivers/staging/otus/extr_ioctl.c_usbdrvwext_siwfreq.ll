; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/extr_ioctl.c_usbdrvwext_siwfreq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/extr_ioctl.c_usbdrvwext_siwfreq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.usbdrv_private* }
%struct.usbdrv_private = type { i32 }
%struct.iw_request_info = type { i32 }
%struct.iw_freq = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @usbdrvwext_siwfreq(%struct.net_device* %0, %struct.iw_request_info* %1, %struct.iw_freq* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.iw_request_info*, align 8
  %8 = alloca %struct.iw_freq*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.usbdrv_private*, align 8
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %7, align 8
  store %struct.iw_freq* %2, %struct.iw_freq** %8, align 8
  store i8* %3, i8** %9, align 8
  %12 = load %struct.net_device*, %struct.net_device** %6, align 8
  %13 = getelementptr inbounds %struct.net_device, %struct.net_device* %12, i32 0, i32 0
  %14 = load %struct.usbdrv_private*, %struct.usbdrv_private** %13, align 8
  store %struct.usbdrv_private* %14, %struct.usbdrv_private** %11, align 8
  %15 = load %struct.net_device*, %struct.net_device** %6, align 8
  %16 = call i32 @netif_running(%struct.net_device* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %4
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %5, align 4
  br label %110

21:                                               ; preds = %4
  %22 = load %struct.iw_freq*, %struct.iw_freq** %8, align 8
  %23 = getelementptr inbounds %struct.iw_freq, %struct.iw_freq* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp sgt i32 %24, 1
  br i1 %25, label %26, label %29

26:                                               ; preds = %21
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %5, align 4
  br label %110

29:                                               ; preds = %21
  %30 = load %struct.iw_freq*, %struct.iw_freq** %8, align 8
  %31 = getelementptr inbounds %struct.iw_freq, %struct.iw_freq* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp eq i32 %32, 1
  br i1 %33, label %34, label %84

34:                                               ; preds = %29
  %35 = load %struct.iw_freq*, %struct.iw_freq** %8, align 8
  %36 = getelementptr inbounds %struct.iw_freq, %struct.iw_freq* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = sdiv i32 %37, 100000
  store i32 %38, i32* %10, align 4
  %39 = load i32, i32* %10, align 4
  %40 = icmp sgt i32 %39, 4000000
  br i1 %40, label %41, label %67

41:                                               ; preds = %34
  %42 = load i32, i32* %10, align 4
  %43 = icmp sgt i32 %42, 5825000
  br i1 %43, label %44, label %45

44:                                               ; preds = %41
  store i32 5825000, i32* %10, align 4
  br label %66

45:                                               ; preds = %41
  %46 = load i32, i32* %10, align 4
  %47 = icmp slt i32 %46, 4920000
  br i1 %47, label %48, label %49

48:                                               ; preds = %45
  store i32 4920000, i32* %10, align 4
  br label %65

49:                                               ; preds = %45
  %50 = load i32, i32* %10, align 4
  %51 = icmp slt i32 %50, 5000000
  br i1 %51, label %52, label %58

52:                                               ; preds = %49
  %53 = load i32, i32* %10, align 4
  %54 = sub nsw i32 %53, 4000000
  %55 = sdiv i32 %54, 5000
  %56 = mul nsw i32 %55, 5000
  %57 = add nsw i32 %56, 4000000
  store i32 %57, i32* %10, align 4
  br label %64

58:                                               ; preds = %49
  %59 = load i32, i32* %10, align 4
  %60 = sub nsw i32 %59, 5000000
  %61 = sdiv i32 %60, 5000
  %62 = mul nsw i32 %61, 5000
  %63 = add nsw i32 %62, 5000000
  store i32 %63, i32* %10, align 4
  br label %64

64:                                               ; preds = %58, %52
  br label %65

65:                                               ; preds = %64, %48
  br label %66

66:                                               ; preds = %65, %44
  br label %83

67:                                               ; preds = %34
  %68 = load i32, i32* %10, align 4
  %69 = icmp sgt i32 %68, 2484000
  br i1 %69, label %70, label %71

70:                                               ; preds = %67
  store i32 2484000, i32* %10, align 4
  br label %82

71:                                               ; preds = %67
  %72 = load i32, i32* %10, align 4
  %73 = icmp slt i32 %72, 2412000
  br i1 %73, label %74, label %75

74:                                               ; preds = %71
  store i32 2412000, i32* %10, align 4
  br label %81

75:                                               ; preds = %71
  %76 = load i32, i32* %10, align 4
  %77 = sub nsw i32 %76, 2412000
  %78 = sdiv i32 %77, 5000
  %79 = mul nsw i32 %78, 5000
  %80 = add nsw i32 %79, 2412000
  store i32 %80, i32* %10, align 4
  br label %81

81:                                               ; preds = %75, %74
  br label %82

82:                                               ; preds = %81, %70
  br label %83

83:                                               ; preds = %82, %66
  br label %96

84:                                               ; preds = %29
  %85 = load %struct.iw_freq*, %struct.iw_freq** %8, align 8
  %86 = getelementptr inbounds %struct.iw_freq, %struct.iw_freq* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @usbdrv_chan2freq(i32 %87)
  store i32 %88, i32* %10, align 4
  %89 = load i32, i32* %10, align 4
  %90 = icmp ne i32 %89, -1
  br i1 %90, label %91, label %94

91:                                               ; preds = %84
  %92 = load i32, i32* %10, align 4
  %93 = mul nsw i32 %92, 1000
  store i32 %93, i32* %10, align 4
  br label %95

94:                                               ; preds = %84
  store i32 2412000, i32* %10, align 4
  br label %95

95:                                               ; preds = %94, %91
  br label %96

96:                                               ; preds = %95, %83
  %97 = load %struct.usbdrv_private*, %struct.usbdrv_private** %11, align 8
  %98 = getelementptr inbounds %struct.usbdrv_private, %struct.usbdrv_private* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = icmp eq i32 %99, 1
  br i1 %100, label %101, label %109

101:                                              ; preds = %96
  %102 = load %struct.net_device*, %struct.net_device** %6, align 8
  %103 = load i32, i32* %10, align 4
  %104 = call i32 @zfiWlanSetFrequency(%struct.net_device* %102, i32 %103, i32 0)
  %105 = load %struct.net_device*, %struct.net_device** %6, align 8
  %106 = call i32 @zfiWlanDisable(%struct.net_device* %105, i32 0)
  %107 = load %struct.net_device*, %struct.net_device** %6, align 8
  %108 = call i32 @zfiWlanEnable(%struct.net_device* %107)
  br label %109

109:                                              ; preds = %101, %96
  store i32 0, i32* %5, align 4
  br label %110

110:                                              ; preds = %109, %26, %18
  %111 = load i32, i32* %5, align 4
  ret i32 %111
}

declare dso_local i32 @netif_running(%struct.net_device*) #1

declare dso_local i32 @usbdrv_chan2freq(i32) #1

declare dso_local i32 @zfiWlanSetFrequency(%struct.net_device*, i32, i32) #1

declare dso_local i32 @zfiWlanDisable(%struct.net_device*, i32) #1

declare dso_local i32 @zfiWlanEnable(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
