; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/blackfin/extr_bf5xx-ac97.c_bf5xx_ac97_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/blackfin/extr_bf5xx-ac97.c_bf5xx_ac97_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.snd_soc_dai = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@cmd_count = common dso_local global i32* null, align 8
@ENOMEM = common dso_local global i32 0, align 4
@sport_req = common dso_local global i32* null, align 8
@sport_num = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [10 x i8] c"soc-audio\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"Requesting Peripherals failed\0A\00", align 1
@EFAULT = common dso_local global i32 0, align 4
@sport_params = common dso_local global i32* null, align 8
@sport_handle = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"SPORT is busy!\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@IRFS = common dso_local global i32 0, align 4
@ITFS = common dso_local global i32 0, align 4
@CONFIG_SND_BF5XX_RESET_GPIO_NUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*, %struct.snd_soc_dai*)* @bf5xx_ac97_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bf5xx_ac97_probe(%struct.platform_device* %0, %struct.snd_soc_dai* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.platform_device*, align 8
  %5 = alloca %struct.snd_soc_dai*, align 8
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %4, align 8
  store %struct.snd_soc_dai* %1, %struct.snd_soc_dai** %5, align 8
  store i32 0, i32* %6, align 4
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call i64 @get_zeroed_page(i32 %7)
  %9 = inttoptr i64 %8 to i32*
  store i32* %9, i32** @cmd_count, align 8
  %10 = load i32*, i32** @cmd_count, align 8
  %11 = icmp eq i32* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %80

15:                                               ; preds = %2
  %16 = load i32*, i32** @sport_req, align 8
  %17 = load i64, i64* @sport_num, align 8
  %18 = getelementptr inbounds i32, i32* %16, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = call i64 @peripheral_request_list(i32 %19, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %15
  %23 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %24 = load i32, i32* @EFAULT, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %6, align 4
  br label %75

26:                                               ; preds = %15
  %27 = load i32*, i32** @sport_params, align 8
  %28 = load i64, i64* @sport_num, align 8
  %29 = getelementptr inbounds i32, i32* %27, i64 %28
  %30 = call i32 @sport_init(i32* %29, i32 2, i32 4, i32* null)
  store i32 %30, i32* @sport_handle, align 4
  %31 = load i32, i32* @sport_handle, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %26
  %34 = load i32, i32* @ENODEV, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %6, align 4
  br label %69

36:                                               ; preds = %26
  %37 = load i32, i32* @sport_handle, align 4
  %38 = call i32 @sport_set_multichannel(i32 %37, i32 16, i32 31, i32 1)
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* %6, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %36
  %42 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %43 = load i32, i32* @EBUSY, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %6, align 4
  br label %66

45:                                               ; preds = %36
  %46 = load i32, i32* @sport_handle, align 4
  %47 = load i32, i32* @IRFS, align 4
  %48 = call i32 @sport_config_rx(i32 %46, i32 %47, i32 15, i32 0, i32 255)
  store i32 %48, i32* %6, align 4
  %49 = load i32, i32* %6, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %45
  %52 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %53 = load i32, i32* @EBUSY, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %6, align 4
  br label %66

55:                                               ; preds = %45
  %56 = load i32, i32* @sport_handle, align 4
  %57 = load i32, i32* @ITFS, align 4
  %58 = call i32 @sport_config_tx(i32 %56, i32 %57, i32 15, i32 0, i32 255)
  store i32 %58, i32* %6, align 4
  %59 = load i32, i32* %6, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %55
  %62 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %63 = load i32, i32* @EBUSY, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %6, align 4
  br label %66

65:                                               ; preds = %55
  store i32 0, i32* %3, align 4
  br label %80

66:                                               ; preds = %61, %51, %41
  %67 = load i32, i32* @sport_handle, align 4
  %68 = call i32 @kfree(i32 %67)
  br label %69

69:                                               ; preds = %66, %33
  %70 = load i32*, i32** @sport_req, align 8
  %71 = load i64, i64* @sport_num, align 8
  %72 = getelementptr inbounds i32, i32* %70, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @peripheral_free_list(i32 %73)
  br label %75

75:                                               ; preds = %69, %22
  %76 = load i32*, i32** @cmd_count, align 8
  %77 = ptrtoint i32* %76 to i64
  %78 = call i32 @free_page(i64 %77)
  store i32* null, i32** @cmd_count, align 8
  %79 = load i32, i32* %6, align 4
  store i32 %79, i32* %3, align 4
  br label %80

80:                                               ; preds = %75, %65, %12
  %81 = load i32, i32* %3, align 4
  ret i32 %81
}

declare dso_local i64 @get_zeroed_page(i32) #1

declare dso_local i64 @peripheral_request_list(i32, i8*) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i32 @sport_init(i32*, i32, i32, i32*) #1

declare dso_local i32 @sport_set_multichannel(i32, i32, i32, i32) #1

declare dso_local i32 @sport_config_rx(i32, i32, i32, i32, i32) #1

declare dso_local i32 @sport_config_tx(i32, i32, i32, i32, i32) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @peripheral_free_list(i32) #1

declare dso_local i32 @free_page(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
