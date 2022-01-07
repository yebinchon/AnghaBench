; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_mx3fb.c_init_fb_chan.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_mx3fb.c_init_fb_chan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_videomode = type { i32 }
%struct.mx3fb_data = type { %struct.device*, %struct.fb_info* }
%struct.device = type { %struct.mx3fb_platform_data* }
%struct.mx3fb_platform_data = type { i8*, i32, %struct.fb_videomode* }
%struct.fb_info = type { i32, %struct.mx3fb_info*, %struct.TYPE_4__, i32 }
%struct.mx3fb_info = type { i64, i32, i32, %struct.mx3fb_data*, %struct.idmac_channel* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.idmac_channel = type { i32, %struct.TYPE_3__, %struct.mx3fb_data* }
%struct.TYPE_3__ = type { i64 }

@IDMAC_SDC_0 = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@mx3fb_ops = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@fb_mode = common dso_local global i8* null, align 8
@mx3fb_modedb = common dso_local global %struct.fb_videomode* null, align 8
@default_bpp = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@DI_HSP_CLK_PER = common dso_local global i32 0, align 4
@FB_BLANK_NORMAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"disabling irq %d\0A\00", align 1
@FB_BLANK_UNBLANK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"registered, using mode %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mx3fb_data*, %struct.idmac_channel*)* @init_fb_chan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_fb_chan(%struct.mx3fb_data* %0, %struct.idmac_channel* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mx3fb_data*, align 8
  %5 = alloca %struct.idmac_channel*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.mx3fb_platform_data*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.fb_info*, align 8
  %11 = alloca %struct.mx3fb_info*, align 8
  %12 = alloca %struct.fb_videomode*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.mx3fb_data* %0, %struct.mx3fb_data** %4, align 8
  store %struct.idmac_channel* %1, %struct.idmac_channel** %5, align 8
  %15 = load %struct.mx3fb_data*, %struct.mx3fb_data** %4, align 8
  %16 = getelementptr inbounds %struct.mx3fb_data, %struct.mx3fb_data* %15, i32 0, i32 0
  %17 = load %struct.device*, %struct.device** %16, align 8
  store %struct.device* %17, %struct.device** %6, align 8
  %18 = load %struct.device*, %struct.device** %6, align 8
  %19 = getelementptr inbounds %struct.device, %struct.device* %18, i32 0, i32 0
  %20 = load %struct.mx3fb_platform_data*, %struct.mx3fb_platform_data** %19, align 8
  store %struct.mx3fb_platform_data* %20, %struct.mx3fb_platform_data** %7, align 8
  %21 = load %struct.mx3fb_platform_data*, %struct.mx3fb_platform_data** %7, align 8
  %22 = getelementptr inbounds %struct.mx3fb_platform_data, %struct.mx3fb_platform_data* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  store i8* %23, i8** %8, align 8
  %24 = load %struct.mx3fb_data*, %struct.mx3fb_data** %4, align 8
  %25 = load %struct.idmac_channel*, %struct.idmac_channel** %5, align 8
  %26 = getelementptr inbounds %struct.idmac_channel, %struct.idmac_channel* %25, i32 0, i32 2
  store %struct.mx3fb_data* %24, %struct.mx3fb_data** %26, align 8
  %27 = load %struct.idmac_channel*, %struct.idmac_channel** %5, align 8
  %28 = getelementptr inbounds %struct.idmac_channel, %struct.idmac_channel* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  store i32 %29, i32* %9, align 4
  %30 = load %struct.idmac_channel*, %struct.idmac_channel** %5, align 8
  %31 = getelementptr inbounds %struct.idmac_channel, %struct.idmac_channel* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @IDMAC_SDC_0, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %2
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %178

39:                                               ; preds = %2
  %40 = load %struct.device*, %struct.device** %6, align 8
  %41 = call %struct.fb_info* @mx3fb_init_fbinfo(%struct.device* %40, i32* @mx3fb_ops)
  store %struct.fb_info* %41, %struct.fb_info** %10, align 8
  %42 = load %struct.fb_info*, %struct.fb_info** %10, align 8
  %43 = icmp ne %struct.fb_info* %42, null
  br i1 %43, label %47, label %44

44:                                               ; preds = %39
  %45 = load i32, i32* @ENOMEM, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %3, align 4
  br label %178

47:                                               ; preds = %39
  %48 = load i8*, i8** @fb_mode, align 8
  %49 = icmp ne i8* %48, null
  br i1 %49, label %52, label %50

50:                                               ; preds = %47
  %51 = load i8*, i8** %8, align 8
  store i8* %51, i8** @fb_mode, align 8
  br label %52

52:                                               ; preds = %50, %47
  %53 = load i8*, i8** @fb_mode, align 8
  %54 = icmp ne i8* %53, null
  br i1 %54, label %58, label %55

55:                                               ; preds = %52
  %56 = load i32, i32* @EINVAL, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %13, align 4
  br label %171

58:                                               ; preds = %52
  %59 = load %struct.mx3fb_platform_data*, %struct.mx3fb_platform_data** %7, align 8
  %60 = getelementptr inbounds %struct.mx3fb_platform_data, %struct.mx3fb_platform_data* %59, i32 0, i32 2
  %61 = load %struct.fb_videomode*, %struct.fb_videomode** %60, align 8
  %62 = icmp ne %struct.fb_videomode* %61, null
  br i1 %62, label %63, label %75

63:                                               ; preds = %58
  %64 = load %struct.mx3fb_platform_data*, %struct.mx3fb_platform_data** %7, align 8
  %65 = getelementptr inbounds %struct.mx3fb_platform_data, %struct.mx3fb_platform_data* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %75

68:                                               ; preds = %63
  %69 = load %struct.mx3fb_platform_data*, %struct.mx3fb_platform_data** %7, align 8
  %70 = getelementptr inbounds %struct.mx3fb_platform_data, %struct.mx3fb_platform_data* %69, i32 0, i32 2
  %71 = load %struct.fb_videomode*, %struct.fb_videomode** %70, align 8
  store %struct.fb_videomode* %71, %struct.fb_videomode** %12, align 8
  %72 = load %struct.mx3fb_platform_data*, %struct.mx3fb_platform_data** %7, align 8
  %73 = getelementptr inbounds %struct.mx3fb_platform_data, %struct.mx3fb_platform_data* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  store i32 %74, i32* %14, align 4
  br label %79

75:                                               ; preds = %63, %58
  %76 = load %struct.fb_videomode*, %struct.fb_videomode** @mx3fb_modedb, align 8
  store %struct.fb_videomode* %76, %struct.fb_videomode** %12, align 8
  %77 = load %struct.fb_videomode*, %struct.fb_videomode** @mx3fb_modedb, align 8
  %78 = call i32 @ARRAY_SIZE(%struct.fb_videomode* %77)
  store i32 %78, i32* %14, align 4
  br label %79

79:                                               ; preds = %75, %68
  %80 = load %struct.fb_info*, %struct.fb_info** %10, align 8
  %81 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %80, i32 0, i32 2
  %82 = load %struct.fb_info*, %struct.fb_info** %10, align 8
  %83 = load i8*, i8** @fb_mode, align 8
  %84 = load %struct.fb_videomode*, %struct.fb_videomode** %12, align 8
  %85 = load i32, i32* %14, align 4
  %86 = load i32, i32* @default_bpp, align 4
  %87 = call i32 @fb_find_mode(%struct.TYPE_4__* %81, %struct.fb_info* %82, i8* %83, %struct.fb_videomode* %84, i32 %85, i32* null, i32 %86)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %92, label %89

89:                                               ; preds = %79
  %90 = load i32, i32* @EBUSY, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %13, align 4
  br label %171

92:                                               ; preds = %79
  %93 = load %struct.fb_videomode*, %struct.fb_videomode** %12, align 8
  %94 = load i32, i32* %14, align 4
  %95 = load %struct.fb_info*, %struct.fb_info** %10, align 8
  %96 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %95, i32 0, i32 3
  %97 = call i32 @fb_videomode_to_modelist(%struct.fb_videomode* %93, i32 %94, i32* %96)
  %98 = load %struct.fb_info*, %struct.fb_info** %10, align 8
  %99 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %98, i32 0, i32 2
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = mul nsw i32 %101, 2
  %103 = load %struct.fb_info*, %struct.fb_info** %10, align 8
  %104 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %103, i32 0, i32 2
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 0
  store i32 %102, i32* %105, align 8
  %106 = load %struct.fb_info*, %struct.fb_info** %10, align 8
  %107 = load %struct.mx3fb_data*, %struct.mx3fb_data** %4, align 8
  %108 = getelementptr inbounds %struct.mx3fb_data, %struct.mx3fb_data* %107, i32 0, i32 1
  store %struct.fb_info* %106, %struct.fb_info** %108, align 8
  %109 = load %struct.mx3fb_data*, %struct.mx3fb_data** %4, align 8
  %110 = load i32, i32* @DI_HSP_CLK_PER, align 4
  %111 = call i32 @mx3fb_write_reg(%struct.mx3fb_data* %109, i32 1048592, i32 %110)
  %112 = load %struct.mx3fb_data*, %struct.mx3fb_data** %4, align 8
  %113 = call i32 @sdc_set_brightness(%struct.mx3fb_data* %112, i32 255)
  %114 = load %struct.mx3fb_data*, %struct.mx3fb_data** %4, align 8
  %115 = call i32 @sdc_set_global_alpha(%struct.mx3fb_data* %114, i32 1, i32 255)
  %116 = load %struct.mx3fb_data*, %struct.mx3fb_data** %4, align 8
  %117 = load i64, i64* @IDMAC_SDC_0, align 8
  %118 = call i32 @sdc_set_color_key(%struct.mx3fb_data* %116, i64 %117, i32 0, i32 0)
  %119 = load %struct.fb_info*, %struct.fb_info** %10, align 8
  %120 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %119, i32 0, i32 1
  %121 = load %struct.mx3fb_info*, %struct.mx3fb_info** %120, align 8
  store %struct.mx3fb_info* %121, %struct.mx3fb_info** %11, align 8
  %122 = load %struct.idmac_channel*, %struct.idmac_channel** %5, align 8
  %123 = load %struct.mx3fb_info*, %struct.mx3fb_info** %11, align 8
  %124 = getelementptr inbounds %struct.mx3fb_info, %struct.mx3fb_info* %123, i32 0, i32 4
  store %struct.idmac_channel* %122, %struct.idmac_channel** %124, align 8
  %125 = load %struct.idmac_channel*, %struct.idmac_channel** %5, align 8
  %126 = getelementptr inbounds %struct.idmac_channel, %struct.idmac_channel* %125, i32 0, i32 1
  %127 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = load %struct.mx3fb_info*, %struct.mx3fb_info** %11, align 8
  %130 = getelementptr inbounds %struct.mx3fb_info, %struct.mx3fb_info* %129, i32 0, i32 0
  store i64 %128, i64* %130, align 8
  %131 = load %struct.mx3fb_data*, %struct.mx3fb_data** %4, align 8
  %132 = load %struct.mx3fb_info*, %struct.mx3fb_info** %11, align 8
  %133 = getelementptr inbounds %struct.mx3fb_info, %struct.mx3fb_info* %132, i32 0, i32 3
  store %struct.mx3fb_data* %131, %struct.mx3fb_data** %133, align 8
  %134 = load i32, i32* @FB_BLANK_NORMAL, align 4
  %135 = load %struct.mx3fb_info*, %struct.mx3fb_info** %11, align 8
  %136 = getelementptr inbounds %struct.mx3fb_info, %struct.mx3fb_info* %135, i32 0, i32 2
  store i32 %134, i32* %136, align 4
  %137 = load %struct.mx3fb_info*, %struct.mx3fb_info** %11, align 8
  %138 = getelementptr inbounds %struct.mx3fb_info, %struct.mx3fb_info* %137, i32 0, i32 1
  %139 = call i32 @init_completion(i32* %138)
  %140 = load %struct.idmac_channel*, %struct.idmac_channel** %5, align 8
  %141 = getelementptr inbounds %struct.idmac_channel, %struct.idmac_channel* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = call i32 @disable_irq(i32 %142)
  %144 = load %struct.mx3fb_data*, %struct.mx3fb_data** %4, align 8
  %145 = getelementptr inbounds %struct.mx3fb_data, %struct.mx3fb_data* %144, i32 0, i32 0
  %146 = load %struct.device*, %struct.device** %145, align 8
  %147 = load %struct.idmac_channel*, %struct.idmac_channel** %5, align 8
  %148 = getelementptr inbounds %struct.idmac_channel, %struct.idmac_channel* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = call i32 @dev_dbg(%struct.device* %146, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %149)
  %151 = load %struct.fb_info*, %struct.fb_info** %10, align 8
  %152 = call i32 @__set_par(%struct.fb_info* %151, i32 0)
  store i32 %152, i32* %13, align 4
  %153 = load i32, i32* %13, align 4
  %154 = icmp slt i32 %153, 0
  br i1 %154, label %155, label %156

155:                                              ; preds = %92
  br label %170

156:                                              ; preds = %92
  %157 = load i32, i32* @FB_BLANK_UNBLANK, align 4
  %158 = load %struct.fb_info*, %struct.fb_info** %10, align 8
  %159 = call i32 @__blank(i32 %157, %struct.fb_info* %158)
  %160 = load %struct.device*, %struct.device** %6, align 8
  %161 = load i8*, i8** @fb_mode, align 8
  %162 = call i32 @dev_info(%struct.device* %160, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i8* %161)
  %163 = load %struct.fb_info*, %struct.fb_info** %10, align 8
  %164 = call i32 @register_framebuffer(%struct.fb_info* %163)
  store i32 %164, i32* %13, align 4
  %165 = load i32, i32* %13, align 4
  %166 = icmp slt i32 %165, 0
  br i1 %166, label %167, label %168

167:                                              ; preds = %156
  br label %169

168:                                              ; preds = %156
  store i32 0, i32* %3, align 4
  br label %178

169:                                              ; preds = %167
  br label %170

170:                                              ; preds = %169, %155
  br label %171

171:                                              ; preds = %170, %89, %55
  %172 = load %struct.fb_info*, %struct.fb_info** %10, align 8
  %173 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %172, i32 0, i32 0
  %174 = call i32 @fb_dealloc_cmap(i32* %173)
  %175 = load %struct.fb_info*, %struct.fb_info** %10, align 8
  %176 = call i32 @framebuffer_release(%struct.fb_info* %175)
  %177 = load i32, i32* %13, align 4
  store i32 %177, i32* %3, align 4
  br label %178

178:                                              ; preds = %171, %168, %44, %36
  %179 = load i32, i32* %3, align 4
  ret i32 %179
}

declare dso_local %struct.fb_info* @mx3fb_init_fbinfo(%struct.device*, i32*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.fb_videomode*) #1

declare dso_local i32 @fb_find_mode(%struct.TYPE_4__*, %struct.fb_info*, i8*, %struct.fb_videomode*, i32, i32*, i32) #1

declare dso_local i32 @fb_videomode_to_modelist(%struct.fb_videomode*, i32, i32*) #1

declare dso_local i32 @mx3fb_write_reg(%struct.mx3fb_data*, i32, i32) #1

declare dso_local i32 @sdc_set_brightness(%struct.mx3fb_data*, i32) #1

declare dso_local i32 @sdc_set_global_alpha(%struct.mx3fb_data*, i32, i32) #1

declare dso_local i32 @sdc_set_color_key(%struct.mx3fb_data*, i64, i32, i32) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @disable_irq(i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32) #1

declare dso_local i32 @__set_par(%struct.fb_info*, i32) #1

declare dso_local i32 @__blank(i32, %struct.fb_info*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, i8*) #1

declare dso_local i32 @register_framebuffer(%struct.fb_info*) #1

declare dso_local i32 @fb_dealloc_cmap(i32*) #1

declare dso_local i32 @framebuffer_release(%struct.fb_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
