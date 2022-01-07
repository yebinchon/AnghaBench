; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/via/extr_lcd.c_load_crtc_shadow_timing.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/via/extr_lcd.c_load_crtc_shadow_timing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_13__ = type { %struct.TYPE_22__, %struct.TYPE_21__, %struct.TYPE_20__, %struct.TYPE_19__, %struct.TYPE_18__, %struct.TYPE_17__, %struct.TYPE_16__, %struct.TYPE_15__ }
%struct.TYPE_22__ = type { i32, %struct.io_register* }
%struct.io_register = type { i32 }
%struct.TYPE_21__ = type { i32, %struct.io_register* }
%struct.TYPE_20__ = type { i32, %struct.io_register* }
%struct.TYPE_19__ = type { i32, %struct.io_register* }
%struct.TYPE_18__ = type { i32, %struct.io_register* }
%struct.TYPE_17__ = type { i32, %struct.io_register* }
%struct.TYPE_16__ = type { i32, %struct.io_register* }
%struct.TYPE_15__ = type { i32, %struct.io_register* }
%struct.display_timing = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@viaparinfo = common dso_local global %struct.TYPE_12__* null, align 8
@LCD_EXPANDSION = common dso_local global i64 0, align 8
@iga2_shadow_crtc_reg = common dso_local global %struct.TYPE_13__ zeroinitializer, align 8
@VIACR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.display_timing*, %struct.display_timing*)* @load_crtc_shadow_timing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @load_crtc_shadow_timing(%struct.display_timing* byval(%struct.display_timing) align 8 %0, %struct.display_timing* byval(%struct.display_timing) align 8 %1) #0 {
  %3 = alloca %struct.io_register*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.io_register* null, %struct.io_register** %3, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %7 = load %struct.TYPE_12__*, %struct.TYPE_12__** @viaparinfo, align 8
  %8 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 0
  %9 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @LCD_EXPANDSION, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %84

14:                                               ; preds = %2
  store i32 12, i32* %4, align 4
  br label %15

15:                                               ; preds = %80, %14
  %16 = load i32, i32* %4, align 4
  %17 = icmp slt i32 %16, 20
  br i1 %17, label %18, label %83

18:                                               ; preds = %15
  %19 = load i32, i32* %4, align 4
  switch i32 %19, label %74 [
    i32 134, label %20
    i32 135, label %26
    i32 128, label %34
    i32 133, label %40
    i32 131, label %46
    i32 132, label %52
    i32 129, label %60
    i32 130, label %66
  ]

20:                                               ; preds = %18
  %21 = getelementptr inbounds %struct.display_timing, %struct.display_timing* %1, i32 0, i32 8
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @IGA2_HOR_TOTAL_SHADOW_FORMULA(i32 %22)
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @iga2_shadow_crtc_reg, i32 0, i32 7, i32 0), align 8
  store i32 %24, i32* %5, align 4
  %25 = load %struct.io_register*, %struct.io_register** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @iga2_shadow_crtc_reg, i32 0, i32 7, i32 1), align 8
  store %struct.io_register* %25, %struct.io_register** %3, align 8
  br label %74

26:                                               ; preds = %18
  %27 = getelementptr inbounds %struct.display_timing, %struct.display_timing* %1, i32 0, i32 7
  %28 = load i32, i32* %27, align 4
  %29 = getelementptr inbounds %struct.display_timing, %struct.display_timing* %1, i32 0, i32 6
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @IGA2_HOR_BLANK_END_SHADOW_FORMULA(i32 %28, i32 %30)
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @iga2_shadow_crtc_reg, i32 0, i32 6, i32 0), align 8
  store i32 %32, i32* %5, align 4
  %33 = load %struct.io_register*, %struct.io_register** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @iga2_shadow_crtc_reg, i32 0, i32 6, i32 1), align 8
  store %struct.io_register* %33, %struct.io_register** %3, align 8
  br label %74

34:                                               ; preds = %18
  %35 = getelementptr inbounds %struct.display_timing, %struct.display_timing* %1, i32 0, i32 5
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @IGA2_VER_TOTAL_SHADOW_FORMULA(i32 %36)
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @iga2_shadow_crtc_reg, i32 0, i32 5, i32 0), align 8
  store i32 %38, i32* %5, align 4
  %39 = load %struct.io_register*, %struct.io_register** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @iga2_shadow_crtc_reg, i32 0, i32 5, i32 1), align 8
  store %struct.io_register* %39, %struct.io_register** %3, align 8
  br label %74

40:                                               ; preds = %18
  %41 = getelementptr inbounds %struct.display_timing, %struct.display_timing* %1, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @IGA2_VER_ADDR_SHADOW_FORMULA(i32 %42)
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @iga2_shadow_crtc_reg, i32 0, i32 4, i32 0), align 8
  store i32 %44, i32* %5, align 4
  %45 = load %struct.io_register*, %struct.io_register** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @iga2_shadow_crtc_reg, i32 0, i32 4, i32 1), align 8
  store %struct.io_register* %45, %struct.io_register** %3, align 8
  br label %74

46:                                               ; preds = %18
  %47 = getelementptr inbounds %struct.display_timing, %struct.display_timing* %1, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @IGA2_VER_BLANK_START_SHADOW_FORMULA(i32 %48)
  store i32 %49, i32* %6, align 4
  %50 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @iga2_shadow_crtc_reg, i32 0, i32 3, i32 0), align 8
  store i32 %50, i32* %5, align 4
  %51 = load %struct.io_register*, %struct.io_register** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @iga2_shadow_crtc_reg, i32 0, i32 3, i32 1), align 8
  store %struct.io_register* %51, %struct.io_register** %3, align 8
  br label %74

52:                                               ; preds = %18
  %53 = getelementptr inbounds %struct.display_timing, %struct.display_timing* %1, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = getelementptr inbounds %struct.display_timing, %struct.display_timing* %1, i32 0, i32 4
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @IGA2_VER_BLANK_END_SHADOW_FORMULA(i32 %54, i32 %56)
  store i32 %57, i32* %6, align 4
  %58 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @iga2_shadow_crtc_reg, i32 0, i32 2, i32 0), align 8
  store i32 %58, i32* %5, align 4
  %59 = load %struct.io_register*, %struct.io_register** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @iga2_shadow_crtc_reg, i32 0, i32 2, i32 1), align 8
  store %struct.io_register* %59, %struct.io_register** %3, align 8
  br label %74

60:                                               ; preds = %18
  %61 = getelementptr inbounds %struct.display_timing, %struct.display_timing* %1, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @IGA2_VER_SYNC_START_SHADOW_FORMULA(i32 %62)
  store i32 %63, i32* %6, align 4
  %64 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @iga2_shadow_crtc_reg, i32 0, i32 1, i32 0), align 8
  store i32 %64, i32* %5, align 4
  %65 = load %struct.io_register*, %struct.io_register** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @iga2_shadow_crtc_reg, i32 0, i32 1, i32 1), align 8
  store %struct.io_register* %65, %struct.io_register** %3, align 8
  br label %74

66:                                               ; preds = %18
  %67 = getelementptr inbounds %struct.display_timing, %struct.display_timing* %1, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = getelementptr inbounds %struct.display_timing, %struct.display_timing* %1, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @IGA2_VER_SYNC_END_SHADOW_FORMULA(i32 %68, i32 %70)
  store i32 %71, i32* %6, align 4
  %72 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @iga2_shadow_crtc_reg, i32 0, i32 0, i32 0), align 8
  store i32 %72, i32* %5, align 4
  %73 = load %struct.io_register*, %struct.io_register** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @iga2_shadow_crtc_reg, i32 0, i32 0, i32 1), align 8
  store %struct.io_register* %73, %struct.io_register** %3, align 8
  br label %74

74:                                               ; preds = %18, %66, %60, %52, %46, %40, %34, %26, %20
  %75 = load i32, i32* %6, align 4
  %76 = load i32, i32* %5, align 4
  %77 = load %struct.io_register*, %struct.io_register** %3, align 8
  %78 = load i32, i32* @VIACR, align 4
  %79 = call i32 @viafb_load_reg(i32 %75, i32 %76, %struct.io_register* %77, i32 %78)
  br label %80

80:                                               ; preds = %74
  %81 = load i32, i32* %4, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %4, align 4
  br label %15

83:                                               ; preds = %15
  br label %180

84:                                               ; preds = %2
  store i32 12, i32* %4, align 4
  br label %85

85:                                               ; preds = %176, %84
  %86 = load i32, i32* %4, align 4
  %87 = icmp slt i32 %86, 20
  br i1 %87, label %88, label %179

88:                                               ; preds = %85
  %89 = load i32, i32* %4, align 4
  switch i32 %89, label %170 [
    i32 134, label %90
    i32 135, label %96
    i32 128, label %104
    i32 133, label %110
    i32 131, label %116
    i32 132, label %122
    i32 129, label %130
    i32 130, label %149
  ]

90:                                               ; preds = %88
  %91 = getelementptr inbounds %struct.display_timing, %struct.display_timing* %1, i32 0, i32 8
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @IGA2_HOR_TOTAL_SHADOW_FORMULA(i32 %92)
  store i32 %93, i32* %6, align 4
  %94 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @iga2_shadow_crtc_reg, i32 0, i32 7, i32 0), align 8
  store i32 %94, i32* %5, align 4
  %95 = load %struct.io_register*, %struct.io_register** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @iga2_shadow_crtc_reg, i32 0, i32 7, i32 1), align 8
  store %struct.io_register* %95, %struct.io_register** %3, align 8
  br label %170

96:                                               ; preds = %88
  %97 = getelementptr inbounds %struct.display_timing, %struct.display_timing* %1, i32 0, i32 7
  %98 = load i32, i32* %97, align 4
  %99 = getelementptr inbounds %struct.display_timing, %struct.display_timing* %1, i32 0, i32 6
  %100 = load i32, i32* %99, align 8
  %101 = call i32 @IGA2_HOR_BLANK_END_SHADOW_FORMULA(i32 %98, i32 %100)
  store i32 %101, i32* %6, align 4
  %102 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @iga2_shadow_crtc_reg, i32 0, i32 6, i32 0), align 8
  store i32 %102, i32* %5, align 4
  %103 = load %struct.io_register*, %struct.io_register** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @iga2_shadow_crtc_reg, i32 0, i32 6, i32 1), align 8
  store %struct.io_register* %103, %struct.io_register** %3, align 8
  br label %170

104:                                              ; preds = %88
  %105 = getelementptr inbounds %struct.display_timing, %struct.display_timing* %1, i32 0, i32 5
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @IGA2_VER_TOTAL_SHADOW_FORMULA(i32 %106)
  store i32 %107, i32* %6, align 4
  %108 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @iga2_shadow_crtc_reg, i32 0, i32 5, i32 0), align 8
  store i32 %108, i32* %5, align 4
  %109 = load %struct.io_register*, %struct.io_register** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @iga2_shadow_crtc_reg, i32 0, i32 5, i32 1), align 8
  store %struct.io_register* %109, %struct.io_register** %3, align 8
  br label %170

110:                                              ; preds = %88
  %111 = getelementptr inbounds %struct.display_timing, %struct.display_timing* %0, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = call i32 @IGA2_VER_ADDR_SHADOW_FORMULA(i32 %112)
  store i32 %113, i32* %6, align 4
  %114 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @iga2_shadow_crtc_reg, i32 0, i32 4, i32 0), align 8
  store i32 %114, i32* %5, align 4
  %115 = load %struct.io_register*, %struct.io_register** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @iga2_shadow_crtc_reg, i32 0, i32 4, i32 1), align 8
  store %struct.io_register* %115, %struct.io_register** %3, align 8
  br label %170

116:                                              ; preds = %88
  %117 = getelementptr inbounds %struct.display_timing, %struct.display_timing* %0, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @IGA2_VER_BLANK_START_SHADOW_FORMULA(i32 %118)
  store i32 %119, i32* %6, align 4
  %120 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @iga2_shadow_crtc_reg, i32 0, i32 3, i32 0), align 8
  store i32 %120, i32* %5, align 4
  %121 = load %struct.io_register*, %struct.io_register** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @iga2_shadow_crtc_reg, i32 0, i32 3, i32 1), align 8
  store %struct.io_register* %121, %struct.io_register** %3, align 8
  br label %170

122:                                              ; preds = %88
  %123 = getelementptr inbounds %struct.display_timing, %struct.display_timing* %1, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = getelementptr inbounds %struct.display_timing, %struct.display_timing* %1, i32 0, i32 4
  %126 = load i32, i32* %125, align 8
  %127 = call i32 @IGA2_VER_BLANK_END_SHADOW_FORMULA(i32 %124, i32 %126)
  store i32 %127, i32* %6, align 4
  %128 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @iga2_shadow_crtc_reg, i32 0, i32 2, i32 0), align 8
  store i32 %128, i32* %5, align 4
  %129 = load %struct.io_register*, %struct.io_register** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @iga2_shadow_crtc_reg, i32 0, i32 2, i32 1), align 8
  store %struct.io_register* %129, %struct.io_register** %3, align 8
  br label %170

130:                                              ; preds = %88
  %131 = getelementptr inbounds %struct.display_timing, %struct.display_timing* %1, i32 0, i32 2
  %132 = load i32, i32* %131, align 8
  %133 = getelementptr inbounds %struct.display_timing, %struct.display_timing* %1, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = sub nsw i32 %132, %134
  %136 = getelementptr inbounds %struct.display_timing, %struct.display_timing* %1, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = getelementptr inbounds %struct.display_timing, %struct.display_timing* %0, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = sub nsw i32 %137, %139
  %141 = sdiv i32 %140, 2
  %142 = add nsw i32 %135, %141
  %143 = getelementptr inbounds %struct.display_timing, %struct.display_timing* %0, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = add nsw i32 %142, %144
  %146 = call i32 @IGA2_VER_SYNC_START_SHADOW_FORMULA(i32 %145)
  store i32 %146, i32* %6, align 4
  %147 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @iga2_shadow_crtc_reg, i32 0, i32 1, i32 0), align 8
  store i32 %147, i32* %5, align 4
  %148 = load %struct.io_register*, %struct.io_register** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @iga2_shadow_crtc_reg, i32 0, i32 1, i32 1), align 8
  store %struct.io_register* %148, %struct.io_register** %3, align 8
  br label %170

149:                                              ; preds = %88
  %150 = getelementptr inbounds %struct.display_timing, %struct.display_timing* %1, i32 0, i32 2
  %151 = load i32, i32* %150, align 8
  %152 = getelementptr inbounds %struct.display_timing, %struct.display_timing* %1, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = sub nsw i32 %151, %153
  %155 = getelementptr inbounds %struct.display_timing, %struct.display_timing* %1, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = getelementptr inbounds %struct.display_timing, %struct.display_timing* %0, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = sub nsw i32 %156, %158
  %160 = sdiv i32 %159, 2
  %161 = add nsw i32 %154, %160
  %162 = getelementptr inbounds %struct.display_timing, %struct.display_timing* %0, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = add nsw i32 %161, %163
  %165 = getelementptr inbounds %struct.display_timing, %struct.display_timing* %1, i32 0, i32 3
  %166 = load i32, i32* %165, align 4
  %167 = call i32 @IGA2_VER_SYNC_END_SHADOW_FORMULA(i32 %164, i32 %166)
  store i32 %167, i32* %6, align 4
  %168 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @iga2_shadow_crtc_reg, i32 0, i32 0, i32 0), align 8
  store i32 %168, i32* %5, align 4
  %169 = load %struct.io_register*, %struct.io_register** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @iga2_shadow_crtc_reg, i32 0, i32 0, i32 1), align 8
  store %struct.io_register* %169, %struct.io_register** %3, align 8
  br label %170

170:                                              ; preds = %88, %149, %130, %122, %116, %110, %104, %96, %90
  %171 = load i32, i32* %6, align 4
  %172 = load i32, i32* %5, align 4
  %173 = load %struct.io_register*, %struct.io_register** %3, align 8
  %174 = load i32, i32* @VIACR, align 4
  %175 = call i32 @viafb_load_reg(i32 %171, i32 %172, %struct.io_register* %173, i32 %174)
  br label %176

176:                                              ; preds = %170
  %177 = load i32, i32* %4, align 4
  %178 = add nsw i32 %177, 1
  store i32 %178, i32* %4, align 4
  br label %85

179:                                              ; preds = %85
  br label %180

180:                                              ; preds = %179, %83
  ret void
}

declare dso_local i32 @IGA2_HOR_TOTAL_SHADOW_FORMULA(i32) #1

declare dso_local i32 @IGA2_HOR_BLANK_END_SHADOW_FORMULA(i32, i32) #1

declare dso_local i32 @IGA2_VER_TOTAL_SHADOW_FORMULA(i32) #1

declare dso_local i32 @IGA2_VER_ADDR_SHADOW_FORMULA(i32) #1

declare dso_local i32 @IGA2_VER_BLANK_START_SHADOW_FORMULA(i32) #1

declare dso_local i32 @IGA2_VER_BLANK_END_SHADOW_FORMULA(i32, i32) #1

declare dso_local i32 @IGA2_VER_SYNC_START_SHADOW_FORMULA(i32) #1

declare dso_local i32 @IGA2_VER_SYNC_END_SHADOW_FORMULA(i32, i32) #1

declare dso_local i32 @viafb_load_reg(i32, i32, %struct.io_register*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
