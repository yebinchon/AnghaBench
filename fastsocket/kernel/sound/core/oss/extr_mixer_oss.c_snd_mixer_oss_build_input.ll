; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/core/oss/extr_mixer_oss.c_snd_mixer_oss_build_input.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/core/oss/extr_mixer_oss.c_snd_mixer_oss_build_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_mixer_oss = type { i32, %struct.snd_mixer_oss_slot*, %struct.TYPE_6__* }
%struct.snd_mixer_oss_slot = type { i32, i32, %struct.slot*, i32, i32, i32, i64 }
%struct.slot = type { i32, i32, i32, i32, %struct.snd_mixer_oss_assign_table*, i32, %struct.slot* }
%struct.TYPE_6__ = type { i32 }
%struct.snd_mixer_oss_assign_table = type { i64, i64, i8* }
%struct.snd_kcontrol = type { i64 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_info*)* }
%struct.snd_ctl_elem_info = type opaque
%struct.snd_ctl_elem_info.0 = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i8*, i64, i64 }

@.str = private unnamed_addr constant [15 x i8] c"Capture Source\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"Master\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"Mix\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"Master Mono\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"Mix Mono\00", align 1
@SNDRV_MIXER_OSS_PRESENT_CAPTURE = common dso_local global i32 0, align 4
@SNDRV_MIXER_OSS_SIGNATURE = common dso_local global i32 0, align 4
@snd_mixer_oss_get_volume1 = common dso_local global i64 0, align 8
@snd_mixer_oss_put_volume1 = common dso_local global i32 0, align 4
@SNDRV_MIXER_OSS_PRESENT_CSWITCH = common dso_local global i32 0, align 4
@snd_mixer_oss_get_recsrc1_sw = common dso_local global i32 0, align 4
@snd_mixer_oss_put_recsrc1_sw = common dso_local global i32 0, align 4
@SNDRV_MIXER_OSS_PRESENT_CROUTE = common dso_local global i32 0, align 4
@snd_mixer_oss_get_recsrc1_route = common dso_local global i32 0, align 4
@snd_mixer_oss_put_recsrc1_route = common dso_local global i32 0, align 4
@snd_mixer_oss_slot_free = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_mixer_oss*, %struct.snd_mixer_oss_assign_table*, i32, i32)* @snd_mixer_oss_build_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_mixer_oss_build_input(%struct.snd_mixer_oss* %0, %struct.snd_mixer_oss_assign_table* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_mixer_oss*, align 8
  %7 = alloca %struct.snd_mixer_oss_assign_table*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.slot, align 8
  %11 = alloca %struct.slot*, align 8
  %12 = alloca %struct.snd_kcontrol*, align 8
  %13 = alloca %struct.snd_mixer_oss_slot*, align 8
  %14 = alloca [64 x i8], align 16
  %15 = alloca %struct.snd_ctl_elem_info.0*, align 8
  store %struct.snd_mixer_oss* %0, %struct.snd_mixer_oss** %6, align 8
  store %struct.snd_mixer_oss_assign_table* %1, %struct.snd_mixer_oss_assign_table** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %16 = load %struct.snd_mixer_oss*, %struct.snd_mixer_oss** %6, align 8
  %17 = getelementptr inbounds %struct.snd_mixer_oss, %struct.snd_mixer_oss* %16, i32 0, i32 1
  %18 = load %struct.snd_mixer_oss_slot*, %struct.snd_mixer_oss_slot** %17, align 8
  %19 = load %struct.snd_mixer_oss_assign_table*, %struct.snd_mixer_oss_assign_table** %7, align 8
  %20 = getelementptr inbounds %struct.snd_mixer_oss_assign_table, %struct.snd_mixer_oss_assign_table* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = getelementptr inbounds %struct.snd_mixer_oss_slot, %struct.snd_mixer_oss_slot* %18, i64 %21
  %23 = getelementptr inbounds %struct.snd_mixer_oss_slot, %struct.snd_mixer_oss_slot* %22, i32 0, i32 6
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %4
  %27 = load i32, i32* %9, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %26
  store i32 0, i32* %5, align 4
  br label %276

30:                                               ; preds = %26, %4
  %31 = call i32 @memset(%struct.slot* %10, i32 0, i32 40)
  %32 = getelementptr inbounds %struct.slot, %struct.slot* %10, i32 0, i32 6
  %33 = load %struct.slot*, %struct.slot** %32, align 8
  %34 = call i32 @memset(%struct.slot* %33, i32 255, i32 8)
  %35 = load %struct.snd_mixer_oss*, %struct.snd_mixer_oss** %6, align 8
  %36 = load %struct.snd_mixer_oss_assign_table*, %struct.snd_mixer_oss_assign_table** %7, align 8
  %37 = call i64 @snd_mixer_oss_build_test_all(%struct.snd_mixer_oss* %35, %struct.snd_mixer_oss_assign_table* %36, %struct.slot* %10)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %30
  store i32 0, i32* %5, align 4
  br label %276

40:                                               ; preds = %30
  %41 = load %struct.snd_mixer_oss*, %struct.snd_mixer_oss** %6, align 8
  %42 = getelementptr inbounds %struct.snd_mixer_oss, %struct.snd_mixer_oss* %41, i32 0, i32 2
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = call i32 @down_read(i32* %44)
  %46 = load %struct.snd_mixer_oss_assign_table*, %struct.snd_mixer_oss_assign_table** %7, align 8
  %47 = getelementptr inbounds %struct.snd_mixer_oss_assign_table, %struct.snd_mixer_oss_assign_table* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %173

50:                                               ; preds = %40
  %51 = load %struct.snd_mixer_oss*, %struct.snd_mixer_oss** %6, align 8
  %52 = call %struct.snd_kcontrol* @snd_mixer_oss_test_id(%struct.snd_mixer_oss* %51, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 0)
  store %struct.snd_kcontrol* %52, %struct.snd_kcontrol** %12, align 8
  %53 = icmp ne %struct.snd_kcontrol* %52, null
  br i1 %53, label %54, label %173

54:                                               ; preds = %50
  %55 = load i32, i32* @GFP_KERNEL, align 4
  %56 = call %struct.snd_ctl_elem_info.0* @kzalloc(i32 24, i32 %55)
  store %struct.snd_ctl_elem_info.0* %56, %struct.snd_ctl_elem_info.0** %15, align 8
  %57 = load %struct.snd_ctl_elem_info.0*, %struct.snd_ctl_elem_info.0** %15, align 8
  %58 = icmp ne %struct.snd_ctl_elem_info.0* %57, null
  br i1 %58, label %67, label %59

59:                                               ; preds = %54
  %60 = load %struct.snd_mixer_oss*, %struct.snd_mixer_oss** %6, align 8
  %61 = getelementptr inbounds %struct.snd_mixer_oss, %struct.snd_mixer_oss* %60, i32 0, i32 2
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = call i32 @up_read(i32* %63)
  %65 = load i32, i32* @ENOMEM, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %5, align 4
  br label %276

67:                                               ; preds = %54
  %68 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %12, align 8
  %69 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %68, i32 0, i32 0
  %70 = load i64 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_info*)*, i64 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_info*)** %69, align 8
  %71 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %12, align 8
  %72 = load %struct.snd_ctl_elem_info.0*, %struct.snd_ctl_elem_info.0** %15, align 8
  %73 = bitcast %struct.snd_ctl_elem_info.0* %72 to %struct.snd_ctl_elem_info*
  %74 = call i64 %70(%struct.snd_kcontrol* %71, %struct.snd_ctl_elem_info* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %82

76:                                               ; preds = %67
  %77 = load %struct.snd_mixer_oss*, %struct.snd_mixer_oss** %6, align 8
  %78 = getelementptr inbounds %struct.snd_mixer_oss, %struct.snd_mixer_oss* %77, i32 0, i32 2
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 0
  %81 = call i32 @up_read(i32* %80)
  store i32 0, i32* %5, align 4
  br label %276

82:                                               ; preds = %67
  %83 = getelementptr inbounds [64 x i8], [64 x i8]* %14, i64 0, i64 0
  %84 = load %struct.snd_mixer_oss_assign_table*, %struct.snd_mixer_oss_assign_table** %7, align 8
  %85 = getelementptr inbounds %struct.snd_mixer_oss_assign_table, %struct.snd_mixer_oss_assign_table* %84, i32 0, i32 2
  %86 = load i8*, i8** %85, align 8
  %87 = call i32 @strcpy(i8* %83, i8* %86)
  %88 = getelementptr inbounds [64 x i8], [64 x i8]* %14, i64 0, i64 0
  %89 = call i32 @strcmp(i8* %88, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %94, label %91

91:                                               ; preds = %82
  %92 = getelementptr inbounds [64 x i8], [64 x i8]* %14, i64 0, i64 0
  %93 = call i32 @strcpy(i8* %92, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  br label %94

94:                                               ; preds = %91, %82
  %95 = getelementptr inbounds [64 x i8], [64 x i8]* %14, i64 0, i64 0
  %96 = call i32 @strcmp(i8* %95, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %101, label %98

98:                                               ; preds = %94
  %99 = getelementptr inbounds [64 x i8], [64 x i8]* %14, i64 0, i64 0
  %100 = call i32 @strcpy(i8* %99, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  br label %101

101:                                              ; preds = %98, %94
  %102 = getelementptr inbounds %struct.slot, %struct.slot* %10, i32 0, i32 0
  store i32 0, i32* %102, align 8
  %103 = load %struct.snd_ctl_elem_info.0*, %struct.snd_ctl_elem_info.0** %15, align 8
  %104 = getelementptr inbounds %struct.snd_ctl_elem_info.0, %struct.snd_ctl_elem_info.0* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 0
  %107 = load i8*, i8** %106, align 8
  %108 = getelementptr inbounds [64 x i8], [64 x i8]* %14, i64 0, i64 0
  %109 = call i32 @strcmp(i8* %107, i8* %108)
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %116, label %111

111:                                              ; preds = %101
  %112 = load i32, i32* @SNDRV_MIXER_OSS_PRESENT_CAPTURE, align 4
  %113 = getelementptr inbounds %struct.slot, %struct.slot* %10, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = or i32 %114, %112
  store i32 %115, i32* %113, align 4
  br label %170

116:                                              ; preds = %101
  %117 = getelementptr inbounds %struct.slot, %struct.slot* %10, i32 0, i32 0
  store i32 1, i32* %117, align 8
  br label %118

118:                                              ; preds = %165, %116
  %119 = getelementptr inbounds %struct.slot, %struct.slot* %10, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = sext i32 %120 to i64
  %122 = load %struct.snd_ctl_elem_info.0*, %struct.snd_ctl_elem_info.0** %15, align 8
  %123 = getelementptr inbounds %struct.snd_ctl_elem_info.0, %struct.snd_ctl_elem_info.0* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 1
  %126 = load i64, i64* %125, align 8
  %127 = icmp slt i64 %121, %126
  br i1 %127, label %128, label %169

128:                                              ; preds = %118
  %129 = getelementptr inbounds %struct.slot, %struct.slot* %10, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = sext i32 %130 to i64
  %132 = load %struct.snd_ctl_elem_info.0*, %struct.snd_ctl_elem_info.0** %15, align 8
  %133 = getelementptr inbounds %struct.snd_ctl_elem_info.0, %struct.snd_ctl_elem_info.0* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i32 0, i32 2
  store i64 %131, i64* %135, align 8
  %136 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %12, align 8
  %137 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %136, i32 0, i32 0
  %138 = load i64 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_info*)*, i64 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_info*)** %137, align 8
  %139 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %12, align 8
  %140 = load %struct.snd_ctl_elem_info.0*, %struct.snd_ctl_elem_info.0** %15, align 8
  %141 = bitcast %struct.snd_ctl_elem_info.0* %140 to %struct.snd_ctl_elem_info*
  %142 = call i64 %138(%struct.snd_kcontrol* %139, %struct.snd_ctl_elem_info* %141)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %150

144:                                              ; preds = %128
  %145 = load %struct.snd_mixer_oss*, %struct.snd_mixer_oss** %6, align 8
  %146 = getelementptr inbounds %struct.snd_mixer_oss, %struct.snd_mixer_oss* %145, i32 0, i32 2
  %147 = load %struct.TYPE_6__*, %struct.TYPE_6__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %147, i32 0, i32 0
  %149 = call i32 @up_read(i32* %148)
  store i32 0, i32* %5, align 4
  br label %276

150:                                              ; preds = %128
  %151 = load %struct.snd_ctl_elem_info.0*, %struct.snd_ctl_elem_info.0** %15, align 8
  %152 = getelementptr inbounds %struct.snd_ctl_elem_info.0, %struct.snd_ctl_elem_info.0* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %153, i32 0, i32 0
  %155 = load i8*, i8** %154, align 8
  %156 = getelementptr inbounds [64 x i8], [64 x i8]* %14, i64 0, i64 0
  %157 = call i32 @strcmp(i8* %155, i8* %156)
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %164, label %159

159:                                              ; preds = %150
  %160 = load i32, i32* @SNDRV_MIXER_OSS_PRESENT_CAPTURE, align 4
  %161 = getelementptr inbounds %struct.slot, %struct.slot* %10, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = or i32 %162, %160
  store i32 %163, i32* %161, align 4
  br label %169

164:                                              ; preds = %150
  br label %165

165:                                              ; preds = %164
  %166 = getelementptr inbounds %struct.slot, %struct.slot* %10, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %166, align 8
  br label %118

169:                                              ; preds = %159, %118
  br label %170

170:                                              ; preds = %169, %111
  %171 = load %struct.snd_ctl_elem_info.0*, %struct.snd_ctl_elem_info.0** %15, align 8
  %172 = call i32 @kfree(%struct.snd_ctl_elem_info.0* %171)
  br label %173

173:                                              ; preds = %170, %50, %40
  %174 = load %struct.snd_mixer_oss*, %struct.snd_mixer_oss** %6, align 8
  %175 = getelementptr inbounds %struct.snd_mixer_oss, %struct.snd_mixer_oss* %174, i32 0, i32 2
  %176 = load %struct.TYPE_6__*, %struct.TYPE_6__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %176, i32 0, i32 0
  %178 = call i32 @up_read(i32* %177)
  %179 = getelementptr inbounds %struct.slot, %struct.slot* %10, i32 0, i32 1
  %180 = load i32, i32* %179, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %275

182:                                              ; preds = %173
  %183 = load i32, i32* @GFP_KERNEL, align 4
  %184 = call %struct.slot* @kmalloc(i32 40, i32 %183)
  store %struct.slot* %184, %struct.slot** %11, align 8
  %185 = load %struct.slot*, %struct.slot** %11, align 8
  %186 = icmp ne %struct.slot* %185, null
  br i1 %186, label %190, label %187

187:                                              ; preds = %182
  %188 = load i32, i32* @ENOMEM, align 4
  %189 = sub nsw i32 0, %188
  store i32 %189, i32* %5, align 4
  br label %276

190:                                              ; preds = %182
  %191 = load %struct.slot*, %struct.slot** %11, align 8
  %192 = bitcast %struct.slot* %191 to i8*
  %193 = bitcast %struct.slot* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %192, i8* align 8 %193, i64 40, i1 false)
  %194 = load i32, i32* @SNDRV_MIXER_OSS_SIGNATURE, align 4
  %195 = load %struct.slot*, %struct.slot** %11, align 8
  %196 = getelementptr inbounds %struct.slot, %struct.slot* %195, i32 0, i32 5
  store i32 %194, i32* %196, align 8
  %197 = load %struct.snd_mixer_oss_assign_table*, %struct.snd_mixer_oss_assign_table** %7, align 8
  %198 = load %struct.slot*, %struct.slot** %11, align 8
  %199 = getelementptr inbounds %struct.slot, %struct.slot* %198, i32 0, i32 4
  store %struct.snd_mixer_oss_assign_table* %197, %struct.snd_mixer_oss_assign_table** %199, align 8
  %200 = load i32, i32* %8, align 4
  %201 = load %struct.slot*, %struct.slot** %11, align 8
  %202 = getelementptr inbounds %struct.slot, %struct.slot* %201, i32 0, i32 2
  store i32 %200, i32* %202, align 8
  %203 = load %struct.snd_mixer_oss*, %struct.snd_mixer_oss** %6, align 8
  %204 = getelementptr inbounds %struct.snd_mixer_oss, %struct.snd_mixer_oss* %203, i32 0, i32 1
  %205 = load %struct.snd_mixer_oss_slot*, %struct.snd_mixer_oss_slot** %204, align 8
  %206 = load %struct.snd_mixer_oss_assign_table*, %struct.snd_mixer_oss_assign_table** %7, align 8
  %207 = getelementptr inbounds %struct.snd_mixer_oss_assign_table, %struct.snd_mixer_oss_assign_table* %206, i32 0, i32 0
  %208 = load i64, i64* %207, align 8
  %209 = getelementptr inbounds %struct.snd_mixer_oss_slot, %struct.snd_mixer_oss_slot* %205, i64 %208
  store %struct.snd_mixer_oss_slot* %209, %struct.snd_mixer_oss_slot** %13, align 8
  %210 = load %struct.snd_mixer_oss_slot*, %struct.snd_mixer_oss_slot** %13, align 8
  %211 = call i32 @mixer_slot_clear(%struct.snd_mixer_oss_slot* %210)
  %212 = getelementptr inbounds %struct.slot, %struct.slot* %10, i32 0, i32 3
  %213 = load i32, i32* %212, align 4
  %214 = icmp sgt i32 %213, 1
  %215 = zext i1 %214 to i64
  %216 = select i1 %214, i32 1, i32 0
  %217 = load %struct.snd_mixer_oss_slot*, %struct.snd_mixer_oss_slot** %13, align 8
  %218 = getelementptr inbounds %struct.snd_mixer_oss_slot, %struct.snd_mixer_oss_slot* %217, i32 0, i32 0
  store i32 %216, i32* %218, align 8
  %219 = load i64, i64* @snd_mixer_oss_get_volume1, align 8
  %220 = load %struct.snd_mixer_oss_slot*, %struct.snd_mixer_oss_slot** %13, align 8
  %221 = getelementptr inbounds %struct.snd_mixer_oss_slot, %struct.snd_mixer_oss_slot* %220, i32 0, i32 6
  store i64 %219, i64* %221, align 8
  %222 = load i32, i32* @snd_mixer_oss_put_volume1, align 4
  %223 = load %struct.snd_mixer_oss_slot*, %struct.snd_mixer_oss_slot** %13, align 8
  %224 = getelementptr inbounds %struct.snd_mixer_oss_slot, %struct.snd_mixer_oss_slot* %223, i32 0, i32 5
  store i32 %222, i32* %224, align 8
  %225 = getelementptr inbounds %struct.slot, %struct.slot* %10, i32 0, i32 1
  %226 = load i32, i32* %225, align 4
  %227 = load i32, i32* @SNDRV_MIXER_OSS_PRESENT_CSWITCH, align 4
  %228 = and i32 %226, %227
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %230, label %237

230:                                              ; preds = %190
  %231 = load i32, i32* @snd_mixer_oss_get_recsrc1_sw, align 4
  %232 = load %struct.snd_mixer_oss_slot*, %struct.snd_mixer_oss_slot** %13, align 8
  %233 = getelementptr inbounds %struct.snd_mixer_oss_slot, %struct.snd_mixer_oss_slot* %232, i32 0, i32 4
  store i32 %231, i32* %233, align 4
  %234 = load i32, i32* @snd_mixer_oss_put_recsrc1_sw, align 4
  %235 = load %struct.snd_mixer_oss_slot*, %struct.snd_mixer_oss_slot** %13, align 8
  %236 = getelementptr inbounds %struct.snd_mixer_oss_slot, %struct.snd_mixer_oss_slot* %235, i32 0, i32 3
  store i32 %234, i32* %236, align 8
  br label %268

237:                                              ; preds = %190
  %238 = getelementptr inbounds %struct.slot, %struct.slot* %10, i32 0, i32 1
  %239 = load i32, i32* %238, align 4
  %240 = load i32, i32* @SNDRV_MIXER_OSS_PRESENT_CROUTE, align 4
  %241 = and i32 %239, %240
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %243, label %250

243:                                              ; preds = %237
  %244 = load i32, i32* @snd_mixer_oss_get_recsrc1_route, align 4
  %245 = load %struct.snd_mixer_oss_slot*, %struct.snd_mixer_oss_slot** %13, align 8
  %246 = getelementptr inbounds %struct.snd_mixer_oss_slot, %struct.snd_mixer_oss_slot* %245, i32 0, i32 4
  store i32 %244, i32* %246, align 4
  %247 = load i32, i32* @snd_mixer_oss_put_recsrc1_route, align 4
  %248 = load %struct.snd_mixer_oss_slot*, %struct.snd_mixer_oss_slot** %13, align 8
  %249 = getelementptr inbounds %struct.snd_mixer_oss_slot, %struct.snd_mixer_oss_slot* %248, i32 0, i32 3
  store i32 %247, i32* %249, align 8
  br label %267

250:                                              ; preds = %237
  %251 = getelementptr inbounds %struct.slot, %struct.slot* %10, i32 0, i32 1
  %252 = load i32, i32* %251, align 4
  %253 = load i32, i32* @SNDRV_MIXER_OSS_PRESENT_CAPTURE, align 4
  %254 = and i32 %252, %253
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %256, label %266

256:                                              ; preds = %250
  %257 = load %struct.snd_mixer_oss_assign_table*, %struct.snd_mixer_oss_assign_table** %7, align 8
  %258 = getelementptr inbounds %struct.snd_mixer_oss_assign_table, %struct.snd_mixer_oss_assign_table* %257, i32 0, i32 0
  %259 = load i64, i64* %258, align 8
  %260 = trunc i64 %259 to i32
  %261 = shl i32 1, %260
  %262 = load %struct.snd_mixer_oss*, %struct.snd_mixer_oss** %6, align 8
  %263 = getelementptr inbounds %struct.snd_mixer_oss, %struct.snd_mixer_oss* %262, i32 0, i32 0
  %264 = load i32, i32* %263, align 8
  %265 = or i32 %264, %261
  store i32 %265, i32* %263, align 8
  br label %266

266:                                              ; preds = %256, %250
  br label %267

267:                                              ; preds = %266, %243
  br label %268

268:                                              ; preds = %267, %230
  %269 = load %struct.slot*, %struct.slot** %11, align 8
  %270 = load %struct.snd_mixer_oss_slot*, %struct.snd_mixer_oss_slot** %13, align 8
  %271 = getelementptr inbounds %struct.snd_mixer_oss_slot, %struct.snd_mixer_oss_slot* %270, i32 0, i32 2
  store %struct.slot* %269, %struct.slot** %271, align 8
  %272 = load i32, i32* @snd_mixer_oss_slot_free, align 4
  %273 = load %struct.snd_mixer_oss_slot*, %struct.snd_mixer_oss_slot** %13, align 8
  %274 = getelementptr inbounds %struct.snd_mixer_oss_slot, %struct.snd_mixer_oss_slot* %273, i32 0, i32 1
  store i32 %272, i32* %274, align 4
  store i32 1, i32* %5, align 4
  br label %276

275:                                              ; preds = %173
  store i32 0, i32* %5, align 4
  br label %276

276:                                              ; preds = %275, %268, %187, %144, %76, %59, %39, %29
  %277 = load i32, i32* %5, align 4
  ret i32 %277
}

declare dso_local i32 @memset(%struct.slot*, i32, i32) #1

declare dso_local i64 @snd_mixer_oss_build_test_all(%struct.snd_mixer_oss*, %struct.snd_mixer_oss_assign_table*, %struct.slot*) #1

declare dso_local i32 @down_read(i32*) #1

declare dso_local %struct.snd_kcontrol* @snd_mixer_oss_test_id(%struct.snd_mixer_oss*, i8*, i32) #1

declare dso_local %struct.snd_ctl_elem_info.0* @kzalloc(i32, i32) #1

declare dso_local i32 @up_read(i32*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @kfree(%struct.snd_ctl_elem_info.0*) #1

declare dso_local %struct.slot* @kmalloc(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @mixer_slot_clear(%struct.snd_mixer_oss_slot*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
