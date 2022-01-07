; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/via/extr_viafbdev.c_viafb_set_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/via/extr_viafbdev.c_viafb_set_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i8*, i8* }
%struct.device_t = type { i64, i64, i32, i32, i64, i64, i64, i64, i64, i32, i64, i64, i64, i64 }

@None_Device = common dso_local global i32 0, align 4
@CRT_Device = common dso_local global i32 0, align 4
@DVI_Device = common dso_local global i32 0, align 4
@LCD_Device = common dso_local global i32 0, align 4
@viafb_LCD_ON = common dso_local global i64 0, align 8
@LCD_CENTERING = common dso_local global i8* null, align 8
@viafb_lcd_dsp_method = common dso_local global i8* null, align 8
@viaparinfo = common dso_local global %struct.TYPE_4__* null, align 8
@LCD_EXPANDSION = common dso_local global i8* null, align 8
@LCD_SPWG = common dso_local global i64 0, align 8
@viafb_lcd_mode = common dso_local global i8* null, align 8
@LCD_OPENLDI = common dso_local global i8* null, align 8
@LCD_PANEL_ID_MAXIMUM = common dso_local global i64 0, align 8
@viafb_lcd_panel_id = common dso_local global i64 0, align 8
@viafb_second_xres = common dso_local global i32 0, align 4
@viafb_second_yres = common dso_local global i32 0, align 4
@viafb_bpp = common dso_local global i64 0, align 8
@viafb_bpp1 = common dso_local global i64 0, align 8
@viafb_refresh = common dso_local global i64 0, align 8
@viafb_refresh1 = common dso_local global i64 0, align 8
@STATE_OFF = common dso_local global i64 0, align 8
@STATE_ON = common dso_local global i64 0, align 8
@viafb_SAMM_ON = common dso_local global i64 0, align 8
@viafb_primary_dev = common dso_local global i32 0, align 4
@viafb_second_offset = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device_t*)* @viafb_set_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @viafb_set_device(%struct.device_t* byval(%struct.device_t) align 8 %0) #0 {
  %2 = alloca i32, align 4
  %3 = load i32, i32* @None_Device, align 4
  store i32 %3, i32* %2, align 4
  %4 = getelementptr inbounds %struct.device_t, %struct.device_t* %0, i32 0, i32 13
  %5 = load i64, i64* %4, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %11

7:                                                ; preds = %1
  %8 = load i32, i32* @CRT_Device, align 4
  %9 = load i32, i32* %2, align 4
  %10 = or i32 %9, %8
  store i32 %10, i32* %2, align 4
  br label %11

11:                                               ; preds = %7, %1
  %12 = getelementptr inbounds %struct.device_t, %struct.device_t* %0, i32 0, i32 12
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %11
  %16 = load i32, i32* @DVI_Device, align 4
  %17 = load i32, i32* %2, align 4
  %18 = or i32 %17, %16
  store i32 %18, i32* %2, align 4
  br label %19

19:                                               ; preds = %15, %11
  %20 = getelementptr inbounds %struct.device_t, %struct.device_t* %0, i32 0, i32 11
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %19
  %24 = load i32, i32* @LCD_Device, align 4
  %25 = load i32, i32* %2, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %2, align 4
  br label %27

27:                                               ; preds = %23, %19
  %28 = load i32, i32* %2, align 4
  %29 = call i32 @check_available_device_to_enable(i32 %28)
  %30 = load i64, i64* @viafb_LCD_ON, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %76

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.device_t, %struct.device_t* %0, i32 0, i32 10
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %32
  %37 = load i8*, i8** @LCD_CENTERING, align 8
  store i8* %37, i8** @viafb_lcd_dsp_method, align 8
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** @viaparinfo, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 1
  store i8* %37, i8** %41, align 8
  br label %48

42:                                               ; preds = %32
  %43 = load i8*, i8** @LCD_EXPANDSION, align 8
  store i8* %43, i8** @viafb_lcd_dsp_method, align 8
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** @viaparinfo, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 1
  store i8* %43, i8** %47, align 8
  br label %48

48:                                               ; preds = %42, %36
  %49 = getelementptr inbounds %struct.device_t, %struct.device_t* %0, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @LCD_SPWG, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %60

53:                                               ; preds = %48
  %54 = load i64, i64* @LCD_SPWG, align 8
  %55 = inttoptr i64 %54 to i8*
  store i8* %55, i8** @viafb_lcd_mode, align 8
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** @viaparinfo, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  store i8* %55, i8** %59, align 8
  br label %66

60:                                               ; preds = %48
  %61 = load i8*, i8** @LCD_OPENLDI, align 8
  store i8* %61, i8** @viafb_lcd_mode, align 8
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** @viaparinfo, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  store i8* %61, i8** %65, align 8
  br label %66

66:                                               ; preds = %60, %53
  %67 = getelementptr inbounds %struct.device_t, %struct.device_t* %0, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @LCD_PANEL_ID_MAXIMUM, align 8
  %70 = icmp sle i64 %68, %69
  br i1 %70, label %71, label %75

71:                                               ; preds = %66
  %72 = getelementptr inbounds %struct.device_t, %struct.device_t* %0, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  store i64 %73, i64* @viafb_lcd_panel_id, align 8
  %74 = call i32 (...) @viafb_init_lcd_size()
  br label %75

75:                                               ; preds = %71, %66
  br label %76

76:                                               ; preds = %75, %27
  %77 = getelementptr inbounds %struct.device_t, %struct.device_t* %0, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %81, label %80

80:                                               ; preds = %76
  store i32 640, i32* @viafb_second_xres, align 4
  br label %84

81:                                               ; preds = %76
  %82 = getelementptr inbounds %struct.device_t, %struct.device_t* %0, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  store i32 %83, i32* @viafb_second_xres, align 4
  br label %84

84:                                               ; preds = %81, %80
  %85 = getelementptr inbounds %struct.device_t, %struct.device_t* %0, i32 0, i32 3
  %86 = load i32, i32* %85, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %89, label %88

88:                                               ; preds = %84
  store i32 480, i32* @viafb_second_yres, align 4
  br label %92

89:                                               ; preds = %84
  %90 = getelementptr inbounds %struct.device_t, %struct.device_t* %0, i32 0, i32 3
  %91 = load i32, i32* %90, align 4
  store i32 %91, i32* @viafb_second_yres, align 4
  br label %92

92:                                               ; preds = %89, %88
  %93 = getelementptr inbounds %struct.device_t, %struct.device_t* %0, i32 0, i32 4
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %92
  %97 = getelementptr inbounds %struct.device_t, %struct.device_t* %0, i32 0, i32 4
  %98 = load i64, i64* %97, align 8
  store i64 %98, i64* @viafb_bpp, align 8
  br label %99

99:                                               ; preds = %96, %92
  %100 = getelementptr inbounds %struct.device_t, %struct.device_t* %0, i32 0, i32 5
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %99
  %104 = getelementptr inbounds %struct.device_t, %struct.device_t* %0, i32 0, i32 5
  %105 = load i64, i64* %104, align 8
  store i64 %105, i64* @viafb_bpp1, align 8
  br label %106

106:                                              ; preds = %103, %99
  %107 = getelementptr inbounds %struct.device_t, %struct.device_t* %0, i32 0, i32 6
  %108 = load i64, i64* %107, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %113

110:                                              ; preds = %106
  %111 = getelementptr inbounds %struct.device_t, %struct.device_t* %0, i32 0, i32 6
  %112 = load i64, i64* %111, align 8
  store i64 %112, i64* @viafb_refresh, align 8
  br label %113

113:                                              ; preds = %110, %106
  %114 = getelementptr inbounds %struct.device_t, %struct.device_t* %0, i32 0, i32 7
  %115 = load i64, i64* %114, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %120

117:                                              ; preds = %113
  %118 = getelementptr inbounds %struct.device_t, %struct.device_t* %0, i32 0, i32 7
  %119 = load i64, i64* %118, align 8
  store i64 %119, i64* @viafb_refresh1, align 8
  br label %120

120:                                              ; preds = %117, %113
  %121 = getelementptr inbounds %struct.device_t, %struct.device_t* %0, i32 0, i32 8
  %122 = load i64, i64* %121, align 8
  %123 = load i64, i64* @STATE_OFF, align 8
  %124 = icmp eq i64 %122, %123
  br i1 %124, label %130, label %125

125:                                              ; preds = %120
  %126 = getelementptr inbounds %struct.device_t, %struct.device_t* %0, i32 0, i32 8
  %127 = load i64, i64* %126, align 8
  %128 = load i64, i64* @STATE_ON, align 8
  %129 = icmp eq i64 %127, %128
  br i1 %129, label %130, label %133

130:                                              ; preds = %125, %120
  %131 = getelementptr inbounds %struct.device_t, %struct.device_t* %0, i32 0, i32 8
  %132 = load i64, i64* %131, align 8
  store i64 %132, i64* @viafb_SAMM_ON, align 8
  br label %133

133:                                              ; preds = %130, %125
  %134 = getelementptr inbounds %struct.device_t, %struct.device_t* %0, i32 0, i32 9
  %135 = load i32, i32* %134, align 8
  store i32 %135, i32* @viafb_primary_dev, align 4
  %136 = call i32 @viafb_set_primary_address(i32 0)
  %137 = load i64, i64* @viafb_SAMM_ON, align 8
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %141

139:                                              ; preds = %133
  %140 = load i32, i32* @viafb_second_offset, align 4
  br label %142

141:                                              ; preds = %133
  br label %142

142:                                              ; preds = %141, %139
  %143 = phi i32 [ %140, %139 ], [ 0, %141 ]
  %144 = call i32 @viafb_set_secondary_address(i32 %143)
  %145 = call i32 (...) @viafb_set_iga_path()
  ret void
}

declare dso_local i32 @check_available_device_to_enable(i32) #1

declare dso_local i32 @viafb_init_lcd_size(...) #1

declare dso_local i32 @viafb_set_primary_address(i32) #1

declare dso_local i32 @viafb_set_secondary_address(i32) #1

declare dso_local i32 @viafb_set_iga_path(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
