; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/via/extr_hw.c_viafb_load_crtc_timing.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/via/extr_hw.c_viafb_load_crtc_timing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_48__ = type { %struct.TYPE_35__, %struct.TYPE_34__, %struct.TYPE_33__, %struct.TYPE_32__, %struct.TYPE_31__, %struct.TYPE_30__, %struct.TYPE_29__, %struct.TYPE_56__, %struct.TYPE_55__, %struct.TYPE_54__, %struct.TYPE_53__, %struct.TYPE_52__ }
%struct.TYPE_35__ = type { i32, %struct.io_register* }
%struct.io_register = type { i32 }
%struct.TYPE_34__ = type { i32, %struct.io_register* }
%struct.TYPE_33__ = type { i32, %struct.io_register* }
%struct.TYPE_32__ = type { i32, %struct.io_register* }
%struct.TYPE_31__ = type { i32, %struct.io_register* }
%struct.TYPE_30__ = type { i32, %struct.io_register* }
%struct.TYPE_29__ = type { i32, %struct.io_register* }
%struct.TYPE_56__ = type { i32, %struct.io_register* }
%struct.TYPE_55__ = type { i32, %struct.io_register* }
%struct.TYPE_54__ = type { i32, %struct.io_register* }
%struct.TYPE_53__ = type { i32, %struct.io_register* }
%struct.TYPE_52__ = type { i32, %struct.io_register* }
%struct.TYPE_47__ = type { %struct.TYPE_51__, %struct.TYPE_50__, %struct.TYPE_49__, %struct.TYPE_39__, %struct.TYPE_45__, %struct.TYPE_44__, %struct.TYPE_43__, %struct.TYPE_42__, %struct.TYPE_40__, %struct.TYPE_38__, %struct.TYPE_37__, %struct.TYPE_36__ }
%struct.TYPE_51__ = type { i32, %struct.io_register* }
%struct.TYPE_50__ = type { i32, %struct.io_register* }
%struct.TYPE_49__ = type { i32, %struct.io_register* }
%struct.TYPE_39__ = type { i32, %struct.io_register* }
%struct.TYPE_45__ = type { i32, %struct.io_register* }
%struct.TYPE_44__ = type { i32, %struct.io_register* }
%struct.TYPE_43__ = type { i32, %struct.io_register* }
%struct.TYPE_42__ = type { i32, %struct.io_register* }
%struct.TYPE_40__ = type { i32, %struct.io_register* }
%struct.TYPE_38__ = type { i32, %struct.io_register* }
%struct.TYPE_37__ = type { i32, %struct.io_register* }
%struct.TYPE_36__ = type { i32, %struct.io_register* }
%struct.TYPE_46__ = type { %struct.TYPE_41__* }
%struct.TYPE_41__ = type { i32 }
%struct.display_timing = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@IGA1 = common dso_local global i32 0, align 4
@iga1_crtc_reg = common dso_local global %struct.TYPE_48__ zeroinitializer, align 8
@IGA2 = common dso_local global i32 0, align 4
@iga2_crtc_reg = common dso_local global %struct.TYPE_47__ zeroinitializer, align 8
@UNICHROME_CN700 = common dso_local global i32 0, align 4
@viaparinfo = common dso_local global %struct.TYPE_46__* null, align 8
@VIACR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @viafb_load_crtc_timing(%struct.display_timing* byval(%struct.display_timing) align 8 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.io_register*, align 8
  store i32 %1, i32* %3, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store %struct.io_register* null, %struct.io_register** %7, align 8
  %8 = call i32 (...) @viafb_unlock_crt()
  store i32 0, i32* %4, align 4
  br label %9

9:                                                ; preds = %202, %2
  %10 = load i32, i32* %4, align 4
  %11 = icmp slt i32 %10, 12
  br i1 %11, label %12, label %205

12:                                               ; preds = %9
  %13 = load i32, i32* %3, align 4
  %14 = load i32, i32* @IGA1, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %99

16:                                               ; preds = %12
  %17 = load i32, i32* %4, align 4
  switch i32 %17, label %98 [
    i32 134, label %18
    i32 139, label %24
    i32 137, label %30
    i32 138, label %36
    i32 135, label %44
    i32 136, label %50
    i32 128, label %58
    i32 133, label %64
    i32 131, label %70
    i32 132, label %76
    i32 129, label %84
    i32 130, label %90
  ]

18:                                               ; preds = %16
  %19 = getelementptr inbounds %struct.display_timing, %struct.display_timing* %0, i32 0, i32 11
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @IGA1_HOR_TOTAL_FORMULA(i32 %20)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* getelementptr inbounds (%struct.TYPE_48__, %struct.TYPE_48__* @iga1_crtc_reg, i32 0, i32 11, i32 0), align 8
  store i32 %22, i32* %5, align 4
  %23 = load %struct.io_register*, %struct.io_register** getelementptr inbounds (%struct.TYPE_48__, %struct.TYPE_48__* @iga1_crtc_reg, i32 0, i32 11, i32 1), align 8
  store %struct.io_register* %23, %struct.io_register** %7, align 8
  br label %98

24:                                               ; preds = %16
  %25 = getelementptr inbounds %struct.display_timing, %struct.display_timing* %0, i32 0, i32 10
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @IGA1_HOR_ADDR_FORMULA(i32 %26)
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* getelementptr inbounds (%struct.TYPE_48__, %struct.TYPE_48__* @iga1_crtc_reg, i32 0, i32 10, i32 0), align 8
  store i32 %28, i32* %5, align 4
  %29 = load %struct.io_register*, %struct.io_register** getelementptr inbounds (%struct.TYPE_48__, %struct.TYPE_48__* @iga1_crtc_reg, i32 0, i32 10, i32 1), align 8
  store %struct.io_register* %29, %struct.io_register** %7, align 8
  br label %98

30:                                               ; preds = %16
  %31 = getelementptr inbounds %struct.display_timing, %struct.display_timing* %0, i32 0, i32 9
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @IGA1_HOR_BLANK_START_FORMULA(i32 %32)
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* getelementptr inbounds (%struct.TYPE_48__, %struct.TYPE_48__* @iga1_crtc_reg, i32 0, i32 9, i32 0), align 8
  store i32 %34, i32* %5, align 4
  %35 = load %struct.io_register*, %struct.io_register** getelementptr inbounds (%struct.TYPE_48__, %struct.TYPE_48__* @iga1_crtc_reg, i32 0, i32 9, i32 1), align 8
  store %struct.io_register* %35, %struct.io_register** %7, align 8
  br label %98

36:                                               ; preds = %16
  %37 = getelementptr inbounds %struct.display_timing, %struct.display_timing* %0, i32 0, i32 9
  %38 = load i32, i32* %37, align 4
  %39 = getelementptr inbounds %struct.display_timing, %struct.display_timing* %0, i32 0, i32 8
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @IGA1_HOR_BLANK_END_FORMULA(i32 %38, i32 %40)
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* getelementptr inbounds (%struct.TYPE_48__, %struct.TYPE_48__* @iga1_crtc_reg, i32 0, i32 8, i32 0), align 8
  store i32 %42, i32* %5, align 4
  %43 = load %struct.io_register*, %struct.io_register** getelementptr inbounds (%struct.TYPE_48__, %struct.TYPE_48__* @iga1_crtc_reg, i32 0, i32 8, i32 1), align 8
  store %struct.io_register* %43, %struct.io_register** %7, align 8
  br label %98

44:                                               ; preds = %16
  %45 = getelementptr inbounds %struct.display_timing, %struct.display_timing* %0, i32 0, i32 7
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @IGA1_HOR_SYNC_START_FORMULA(i32 %46)
  store i32 %47, i32* %6, align 4
  %48 = load i32, i32* getelementptr inbounds (%struct.TYPE_48__, %struct.TYPE_48__* @iga1_crtc_reg, i32 0, i32 7, i32 0), align 8
  store i32 %48, i32* %5, align 4
  %49 = load %struct.io_register*, %struct.io_register** getelementptr inbounds (%struct.TYPE_48__, %struct.TYPE_48__* @iga1_crtc_reg, i32 0, i32 7, i32 1), align 8
  store %struct.io_register* %49, %struct.io_register** %7, align 8
  br label %98

50:                                               ; preds = %16
  %51 = getelementptr inbounds %struct.display_timing, %struct.display_timing* %0, i32 0, i32 7
  %52 = load i32, i32* %51, align 4
  %53 = getelementptr inbounds %struct.display_timing, %struct.display_timing* %0, i32 0, i32 6
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @IGA1_HOR_SYNC_END_FORMULA(i32 %52, i32 %54)
  store i32 %55, i32* %6, align 4
  %56 = load i32, i32* getelementptr inbounds (%struct.TYPE_48__, %struct.TYPE_48__* @iga1_crtc_reg, i32 0, i32 6, i32 0), align 8
  store i32 %56, i32* %5, align 4
  %57 = load %struct.io_register*, %struct.io_register** getelementptr inbounds (%struct.TYPE_48__, %struct.TYPE_48__* @iga1_crtc_reg, i32 0, i32 6, i32 1), align 8
  store %struct.io_register* %57, %struct.io_register** %7, align 8
  br label %98

58:                                               ; preds = %16
  %59 = getelementptr inbounds %struct.display_timing, %struct.display_timing* %0, i32 0, i32 5
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @IGA1_VER_TOTAL_FORMULA(i32 %60)
  store i32 %61, i32* %6, align 4
  %62 = load i32, i32* getelementptr inbounds (%struct.TYPE_48__, %struct.TYPE_48__* @iga1_crtc_reg, i32 0, i32 5, i32 0), align 8
  store i32 %62, i32* %5, align 4
  %63 = load %struct.io_register*, %struct.io_register** getelementptr inbounds (%struct.TYPE_48__, %struct.TYPE_48__* @iga1_crtc_reg, i32 0, i32 5, i32 1), align 8
  store %struct.io_register* %63, %struct.io_register** %7, align 8
  br label %98

64:                                               ; preds = %16
  %65 = getelementptr inbounds %struct.display_timing, %struct.display_timing* %0, i32 0, i32 4
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @IGA1_VER_ADDR_FORMULA(i32 %66)
  store i32 %67, i32* %6, align 4
  %68 = load i32, i32* getelementptr inbounds (%struct.TYPE_48__, %struct.TYPE_48__* @iga1_crtc_reg, i32 0, i32 4, i32 0), align 8
  store i32 %68, i32* %5, align 4
  %69 = load %struct.io_register*, %struct.io_register** getelementptr inbounds (%struct.TYPE_48__, %struct.TYPE_48__* @iga1_crtc_reg, i32 0, i32 4, i32 1), align 8
  store %struct.io_register* %69, %struct.io_register** %7, align 8
  br label %98

70:                                               ; preds = %16
  %71 = getelementptr inbounds %struct.display_timing, %struct.display_timing* %0, i32 0, i32 3
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @IGA1_VER_BLANK_START_FORMULA(i32 %72)
  store i32 %73, i32* %6, align 4
  %74 = load i32, i32* getelementptr inbounds (%struct.TYPE_48__, %struct.TYPE_48__* @iga1_crtc_reg, i32 0, i32 3, i32 0), align 8
  store i32 %74, i32* %5, align 4
  %75 = load %struct.io_register*, %struct.io_register** getelementptr inbounds (%struct.TYPE_48__, %struct.TYPE_48__* @iga1_crtc_reg, i32 0, i32 3, i32 1), align 8
  store %struct.io_register* %75, %struct.io_register** %7, align 8
  br label %98

76:                                               ; preds = %16
  %77 = getelementptr inbounds %struct.display_timing, %struct.display_timing* %0, i32 0, i32 3
  %78 = load i32, i32* %77, align 4
  %79 = getelementptr inbounds %struct.display_timing, %struct.display_timing* %0, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @IGA1_VER_BLANK_END_FORMULA(i32 %78, i32 %80)
  store i32 %81, i32* %6, align 4
  %82 = load i32, i32* getelementptr inbounds (%struct.TYPE_48__, %struct.TYPE_48__* @iga1_crtc_reg, i32 0, i32 2, i32 0), align 8
  store i32 %82, i32* %5, align 4
  %83 = load %struct.io_register*, %struct.io_register** getelementptr inbounds (%struct.TYPE_48__, %struct.TYPE_48__* @iga1_crtc_reg, i32 0, i32 2, i32 1), align 8
  store %struct.io_register* %83, %struct.io_register** %7, align 8
  br label %98

84:                                               ; preds = %16
  %85 = getelementptr inbounds %struct.display_timing, %struct.display_timing* %0, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @IGA1_VER_SYNC_START_FORMULA(i32 %86)
  store i32 %87, i32* %6, align 4
  %88 = load i32, i32* getelementptr inbounds (%struct.TYPE_48__, %struct.TYPE_48__* @iga1_crtc_reg, i32 0, i32 1, i32 0), align 8
  store i32 %88, i32* %5, align 4
  %89 = load %struct.io_register*, %struct.io_register** getelementptr inbounds (%struct.TYPE_48__, %struct.TYPE_48__* @iga1_crtc_reg, i32 0, i32 1, i32 1), align 8
  store %struct.io_register* %89, %struct.io_register** %7, align 8
  br label %98

90:                                               ; preds = %16
  %91 = getelementptr inbounds %struct.display_timing, %struct.display_timing* %0, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = getelementptr inbounds %struct.display_timing, %struct.display_timing* %0, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @IGA1_VER_SYNC_END_FORMULA(i32 %92, i32 %94)
  store i32 %95, i32* %6, align 4
  %96 = load i32, i32* getelementptr inbounds (%struct.TYPE_48__, %struct.TYPE_48__* @iga1_crtc_reg, i32 0, i32 0, i32 0), align 8
  store i32 %96, i32* %5, align 4
  %97 = load %struct.io_register*, %struct.io_register** getelementptr inbounds (%struct.TYPE_48__, %struct.TYPE_48__* @iga1_crtc_reg, i32 0, i32 0, i32 1), align 8
  store %struct.io_register* %97, %struct.io_register** %7, align 8
  br label %98

98:                                               ; preds = %16, %90, %84, %76, %70, %64, %58, %50, %44, %36, %30, %24, %18
  br label %99

99:                                               ; preds = %98, %12
  %100 = load i32, i32* %3, align 4
  %101 = load i32, i32* @IGA2, align 4
  %102 = icmp eq i32 %100, %101
  br i1 %102, label %103, label %196

103:                                              ; preds = %99
  %104 = load i32, i32* %4, align 4
  switch i32 %104, label %195 [
    i32 134, label %105
    i32 139, label %111
    i32 137, label %117
    i32 138, label %123
    i32 135, label %131
    i32 136, label %147
    i32 128, label %155
    i32 133, label %161
    i32 131, label %167
    i32 132, label %173
    i32 129, label %181
    i32 130, label %187
  ]

105:                                              ; preds = %103
  %106 = getelementptr inbounds %struct.display_timing, %struct.display_timing* %0, i32 0, i32 11
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @IGA2_HOR_TOTAL_FORMULA(i32 %107)
  store i32 %108, i32* %6, align 4
  %109 = load i32, i32* getelementptr inbounds (%struct.TYPE_47__, %struct.TYPE_47__* @iga2_crtc_reg, i32 0, i32 11, i32 0), align 8
  store i32 %109, i32* %5, align 4
  %110 = load %struct.io_register*, %struct.io_register** getelementptr inbounds (%struct.TYPE_47__, %struct.TYPE_47__* @iga2_crtc_reg, i32 0, i32 11, i32 1), align 8
  store %struct.io_register* %110, %struct.io_register** %7, align 8
  br label %195

111:                                              ; preds = %103
  %112 = getelementptr inbounds %struct.display_timing, %struct.display_timing* %0, i32 0, i32 10
  %113 = load i32, i32* %112, align 8
  %114 = call i32 @IGA2_HOR_ADDR_FORMULA(i32 %113)
  store i32 %114, i32* %6, align 4
  %115 = load i32, i32* getelementptr inbounds (%struct.TYPE_47__, %struct.TYPE_47__* @iga2_crtc_reg, i32 0, i32 10, i32 0), align 8
  store i32 %115, i32* %5, align 4
  %116 = load %struct.io_register*, %struct.io_register** getelementptr inbounds (%struct.TYPE_47__, %struct.TYPE_47__* @iga2_crtc_reg, i32 0, i32 10, i32 1), align 8
  store %struct.io_register* %116, %struct.io_register** %7, align 8
  br label %195

117:                                              ; preds = %103
  %118 = getelementptr inbounds %struct.display_timing, %struct.display_timing* %0, i32 0, i32 9
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @IGA2_HOR_BLANK_START_FORMULA(i32 %119)
  store i32 %120, i32* %6, align 4
  %121 = load i32, i32* getelementptr inbounds (%struct.TYPE_47__, %struct.TYPE_47__* @iga2_crtc_reg, i32 0, i32 9, i32 0), align 8
  store i32 %121, i32* %5, align 4
  %122 = load %struct.io_register*, %struct.io_register** getelementptr inbounds (%struct.TYPE_47__, %struct.TYPE_47__* @iga2_crtc_reg, i32 0, i32 9, i32 1), align 8
  store %struct.io_register* %122, %struct.io_register** %7, align 8
  br label %195

123:                                              ; preds = %103
  %124 = getelementptr inbounds %struct.display_timing, %struct.display_timing* %0, i32 0, i32 9
  %125 = load i32, i32* %124, align 4
  %126 = getelementptr inbounds %struct.display_timing, %struct.display_timing* %0, i32 0, i32 8
  %127 = load i32, i32* %126, align 8
  %128 = call i32 @IGA2_HOR_BLANK_END_FORMULA(i32 %125, i32 %127)
  store i32 %128, i32* %6, align 4
  %129 = load i32, i32* getelementptr inbounds (%struct.TYPE_47__, %struct.TYPE_47__* @iga2_crtc_reg, i32 0, i32 8, i32 0), align 8
  store i32 %129, i32* %5, align 4
  %130 = load %struct.io_register*, %struct.io_register** getelementptr inbounds (%struct.TYPE_47__, %struct.TYPE_47__* @iga2_crtc_reg, i32 0, i32 8, i32 1), align 8
  store %struct.io_register* %130, %struct.io_register** %7, align 8
  br label %195

131:                                              ; preds = %103
  %132 = getelementptr inbounds %struct.display_timing, %struct.display_timing* %0, i32 0, i32 7
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @IGA2_HOR_SYNC_START_FORMULA(i32 %133)
  store i32 %134, i32* %6, align 4
  %135 = load i32, i32* @UNICHROME_CN700, align 4
  %136 = load %struct.TYPE_46__*, %struct.TYPE_46__** @viaparinfo, align 8
  %137 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %136, i32 0, i32 0
  %138 = load %struct.TYPE_41__*, %struct.TYPE_41__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = icmp sle i32 %135, %140
  br i1 %141, label %142, label %144

142:                                              ; preds = %131
  %143 = load i32, i32* getelementptr inbounds (%struct.TYPE_47__, %struct.TYPE_47__* @iga2_crtc_reg, i32 0, i32 7, i32 0), align 8
  store i32 %143, i32* %5, align 4
  br label %145

144:                                              ; preds = %131
  store i32 3, i32* %5, align 4
  br label %145

145:                                              ; preds = %144, %142
  %146 = load %struct.io_register*, %struct.io_register** getelementptr inbounds (%struct.TYPE_47__, %struct.TYPE_47__* @iga2_crtc_reg, i32 0, i32 7, i32 1), align 8
  store %struct.io_register* %146, %struct.io_register** %7, align 8
  br label %195

147:                                              ; preds = %103
  %148 = getelementptr inbounds %struct.display_timing, %struct.display_timing* %0, i32 0, i32 7
  %149 = load i32, i32* %148, align 4
  %150 = getelementptr inbounds %struct.display_timing, %struct.display_timing* %0, i32 0, i32 6
  %151 = load i32, i32* %150, align 8
  %152 = call i32 @IGA2_HOR_SYNC_END_FORMULA(i32 %149, i32 %151)
  store i32 %152, i32* %6, align 4
  %153 = load i32, i32* getelementptr inbounds (%struct.TYPE_47__, %struct.TYPE_47__* @iga2_crtc_reg, i32 0, i32 6, i32 0), align 8
  store i32 %153, i32* %5, align 4
  %154 = load %struct.io_register*, %struct.io_register** getelementptr inbounds (%struct.TYPE_47__, %struct.TYPE_47__* @iga2_crtc_reg, i32 0, i32 6, i32 1), align 8
  store %struct.io_register* %154, %struct.io_register** %7, align 8
  br label %195

155:                                              ; preds = %103
  %156 = getelementptr inbounds %struct.display_timing, %struct.display_timing* %0, i32 0, i32 5
  %157 = load i32, i32* %156, align 4
  %158 = call i32 @IGA2_VER_TOTAL_FORMULA(i32 %157)
  store i32 %158, i32* %6, align 4
  %159 = load i32, i32* getelementptr inbounds (%struct.TYPE_47__, %struct.TYPE_47__* @iga2_crtc_reg, i32 0, i32 5, i32 0), align 8
  store i32 %159, i32* %5, align 4
  %160 = load %struct.io_register*, %struct.io_register** getelementptr inbounds (%struct.TYPE_47__, %struct.TYPE_47__* @iga2_crtc_reg, i32 0, i32 5, i32 1), align 8
  store %struct.io_register* %160, %struct.io_register** %7, align 8
  br label %195

161:                                              ; preds = %103
  %162 = getelementptr inbounds %struct.display_timing, %struct.display_timing* %0, i32 0, i32 4
  %163 = load i32, i32* %162, align 8
  %164 = call i32 @IGA2_VER_ADDR_FORMULA(i32 %163)
  store i32 %164, i32* %6, align 4
  %165 = load i32, i32* getelementptr inbounds (%struct.TYPE_47__, %struct.TYPE_47__* @iga2_crtc_reg, i32 0, i32 4, i32 0), align 8
  store i32 %165, i32* %5, align 4
  %166 = load %struct.io_register*, %struct.io_register** getelementptr inbounds (%struct.TYPE_47__, %struct.TYPE_47__* @iga2_crtc_reg, i32 0, i32 4, i32 1), align 8
  store %struct.io_register* %166, %struct.io_register** %7, align 8
  br label %195

167:                                              ; preds = %103
  %168 = getelementptr inbounds %struct.display_timing, %struct.display_timing* %0, i32 0, i32 3
  %169 = load i32, i32* %168, align 4
  %170 = call i32 @IGA2_VER_BLANK_START_FORMULA(i32 %169)
  store i32 %170, i32* %6, align 4
  %171 = load i32, i32* getelementptr inbounds (%struct.TYPE_47__, %struct.TYPE_47__* @iga2_crtc_reg, i32 0, i32 3, i32 0), align 8
  store i32 %171, i32* %5, align 4
  %172 = load %struct.io_register*, %struct.io_register** getelementptr inbounds (%struct.TYPE_47__, %struct.TYPE_47__* @iga2_crtc_reg, i32 0, i32 3, i32 1), align 8
  store %struct.io_register* %172, %struct.io_register** %7, align 8
  br label %195

173:                                              ; preds = %103
  %174 = getelementptr inbounds %struct.display_timing, %struct.display_timing* %0, i32 0, i32 3
  %175 = load i32, i32* %174, align 4
  %176 = getelementptr inbounds %struct.display_timing, %struct.display_timing* %0, i32 0, i32 2
  %177 = load i32, i32* %176, align 8
  %178 = call i32 @IGA2_VER_BLANK_END_FORMULA(i32 %175, i32 %177)
  store i32 %178, i32* %6, align 4
  %179 = load i32, i32* getelementptr inbounds (%struct.TYPE_47__, %struct.TYPE_47__* @iga2_crtc_reg, i32 0, i32 2, i32 0), align 8
  store i32 %179, i32* %5, align 4
  %180 = load %struct.io_register*, %struct.io_register** getelementptr inbounds (%struct.TYPE_47__, %struct.TYPE_47__* @iga2_crtc_reg, i32 0, i32 2, i32 1), align 8
  store %struct.io_register* %180, %struct.io_register** %7, align 8
  br label %195

181:                                              ; preds = %103
  %182 = getelementptr inbounds %struct.display_timing, %struct.display_timing* %0, i32 0, i32 1
  %183 = load i32, i32* %182, align 4
  %184 = call i32 @IGA2_VER_SYNC_START_FORMULA(i32 %183)
  store i32 %184, i32* %6, align 4
  %185 = load i32, i32* getelementptr inbounds (%struct.TYPE_47__, %struct.TYPE_47__* @iga2_crtc_reg, i32 0, i32 1, i32 0), align 8
  store i32 %185, i32* %5, align 4
  %186 = load %struct.io_register*, %struct.io_register** getelementptr inbounds (%struct.TYPE_47__, %struct.TYPE_47__* @iga2_crtc_reg, i32 0, i32 1, i32 1), align 8
  store %struct.io_register* %186, %struct.io_register** %7, align 8
  br label %195

187:                                              ; preds = %103
  %188 = getelementptr inbounds %struct.display_timing, %struct.display_timing* %0, i32 0, i32 1
  %189 = load i32, i32* %188, align 4
  %190 = getelementptr inbounds %struct.display_timing, %struct.display_timing* %0, i32 0, i32 0
  %191 = load i32, i32* %190, align 8
  %192 = call i32 @IGA2_VER_SYNC_END_FORMULA(i32 %189, i32 %191)
  store i32 %192, i32* %6, align 4
  %193 = load i32, i32* getelementptr inbounds (%struct.TYPE_47__, %struct.TYPE_47__* @iga2_crtc_reg, i32 0, i32 0, i32 0), align 8
  store i32 %193, i32* %5, align 4
  %194 = load %struct.io_register*, %struct.io_register** getelementptr inbounds (%struct.TYPE_47__, %struct.TYPE_47__* @iga2_crtc_reg, i32 0, i32 0, i32 1), align 8
  store %struct.io_register* %194, %struct.io_register** %7, align 8
  br label %195

195:                                              ; preds = %103, %187, %181, %173, %167, %161, %155, %147, %145, %123, %117, %111, %105
  br label %196

196:                                              ; preds = %195, %99
  %197 = load i32, i32* %6, align 4
  %198 = load i32, i32* %5, align 4
  %199 = load %struct.io_register*, %struct.io_register** %7, align 8
  %200 = load i32, i32* @VIACR, align 4
  %201 = call i32 @viafb_load_reg(i32 %197, i32 %198, %struct.io_register* %199, i32 %200)
  br label %202

202:                                              ; preds = %196
  %203 = load i32, i32* %4, align 4
  %204 = add nsw i32 %203, 1
  store i32 %204, i32* %4, align 4
  br label %9

205:                                              ; preds = %9
  %206 = call i32 (...) @viafb_lock_crt()
  ret void
}

declare dso_local i32 @viafb_unlock_crt(...) #1

declare dso_local i32 @IGA1_HOR_TOTAL_FORMULA(i32) #1

declare dso_local i32 @IGA1_HOR_ADDR_FORMULA(i32) #1

declare dso_local i32 @IGA1_HOR_BLANK_START_FORMULA(i32) #1

declare dso_local i32 @IGA1_HOR_BLANK_END_FORMULA(i32, i32) #1

declare dso_local i32 @IGA1_HOR_SYNC_START_FORMULA(i32) #1

declare dso_local i32 @IGA1_HOR_SYNC_END_FORMULA(i32, i32) #1

declare dso_local i32 @IGA1_VER_TOTAL_FORMULA(i32) #1

declare dso_local i32 @IGA1_VER_ADDR_FORMULA(i32) #1

declare dso_local i32 @IGA1_VER_BLANK_START_FORMULA(i32) #1

declare dso_local i32 @IGA1_VER_BLANK_END_FORMULA(i32, i32) #1

declare dso_local i32 @IGA1_VER_SYNC_START_FORMULA(i32) #1

declare dso_local i32 @IGA1_VER_SYNC_END_FORMULA(i32, i32) #1

declare dso_local i32 @IGA2_HOR_TOTAL_FORMULA(i32) #1

declare dso_local i32 @IGA2_HOR_ADDR_FORMULA(i32) #1

declare dso_local i32 @IGA2_HOR_BLANK_START_FORMULA(i32) #1

declare dso_local i32 @IGA2_HOR_BLANK_END_FORMULA(i32, i32) #1

declare dso_local i32 @IGA2_HOR_SYNC_START_FORMULA(i32) #1

declare dso_local i32 @IGA2_HOR_SYNC_END_FORMULA(i32, i32) #1

declare dso_local i32 @IGA2_VER_TOTAL_FORMULA(i32) #1

declare dso_local i32 @IGA2_VER_ADDR_FORMULA(i32) #1

declare dso_local i32 @IGA2_VER_BLANK_START_FORMULA(i32) #1

declare dso_local i32 @IGA2_VER_BLANK_END_FORMULA(i32, i32) #1

declare dso_local i32 @IGA2_VER_SYNC_START_FORMULA(i32) #1

declare dso_local i32 @IGA2_VER_SYNC_END_FORMULA(i32, i32) #1

declare dso_local i32 @viafb_load_reg(i32, i32, %struct.io_register*, i32) #1

declare dso_local i32 @viafb_lock_crt(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
