; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/i2c/other/extr_pt2258.c_snd_pt2258_build_controls.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/i2c/other/extr_pt2258.c_snd_pt2258_build_controls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pt2258 = type { i32 }
%struct.snd_kcontrol_new = type { i8*, i32, i32, i32, i32, i32, i32, i8*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"Mic Loopback Playback Volume\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"Line Loopback Playback Volume\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"CD Loopback Playback Volume\00", align 1
@__const.snd_pt2258_build_controls.names = private unnamed_addr constant [3 x i8*] [i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i32 0, i32 0)], align 16
@SNDRV_CTL_ELEM_IFACE_MIXER = common dso_local global i8* null, align 8
@SNDRV_CTL_ELEM_ACCESS_READWRITE = common dso_local global i32 0, align 4
@SNDRV_CTL_ELEM_ACCESS_TLV_READ = common dso_local global i32 0, align 4
@pt2258_stereo_volume_info = common dso_local global i32 0, align 4
@pt2258_stereo_volume_get = common dso_local global i32 0, align 4
@pt2258_stereo_volume_put = common dso_local global i32 0, align 4
@pt2258_db_scale = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [16 x i8] c"Loopback Switch\00", align 1
@pt2258_switch_info = common dso_local global i32 0, align 4
@pt2258_switch_get = common dso_local global i32 0, align 4
@pt2258_switch_put = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_pt2258_build_controls(%struct.snd_pt2258* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_pt2258*, align 8
  %4 = alloca %struct.snd_kcontrol_new, align 8
  %5 = alloca [3 x i8*], align 16
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.snd_pt2258* %0, %struct.snd_pt2258** %3, align 8
  %8 = bitcast [3 x i8*]* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %8, i8* align 16 bitcast ([3 x i8*]* @__const.snd_pt2258_build_controls.names to i8*), i64 24, i1 false)
  store i32 0, i32* %6, align 4
  br label %9

9:                                                ; preds = %49, %1
  %10 = load i32, i32* %6, align 4
  %11 = icmp slt i32 %10, 3
  br i1 %11, label %12, label %52

12:                                               ; preds = %9
  %13 = call i32 @memset(%struct.snd_kcontrol_new* %4, i32 0, i32 48)
  %14 = load i32, i32* %6, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [3 x i8*], [3 x i8*]* %5, i64 0, i64 %15
  %17 = load i8*, i8** %16, align 8
  %18 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %4, i32 0, i32 0
  store i8* %17, i8** %18, align 8
  %19 = load i8*, i8** @SNDRV_CTL_ELEM_IFACE_MIXER, align 8
  %20 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %4, i32 0, i32 7
  store i8* %19, i8** %20, align 8
  %21 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %4, i32 0, i32 1
  store i32 1, i32* %21, align 8
  %22 = load i32, i32* @SNDRV_CTL_ELEM_ACCESS_READWRITE, align 4
  %23 = load i32, i32* @SNDRV_CTL_ELEM_ACCESS_TLV_READ, align 4
  %24 = or i32 %22, %23
  %25 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %4, i32 0, i32 2
  store i32 %24, i32* %25, align 4
  %26 = load i32, i32* %6, align 4
  %27 = mul nsw i32 2, %26
  %28 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %4, i32 0, i32 3
  store i32 %27, i32* %28, align 8
  %29 = load i32, i32* @pt2258_stereo_volume_info, align 4
  %30 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %4, i32 0, i32 6
  store i32 %29, i32* %30, align 4
  %31 = load i32, i32* @pt2258_stereo_volume_get, align 4
  %32 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %4, i32 0, i32 5
  store i32 %31, i32* %32, align 8
  %33 = load i32, i32* @pt2258_stereo_volume_put, align 4
  %34 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %4, i32 0, i32 4
  store i32 %33, i32* %34, align 4
  %35 = load i32, i32* @pt2258_db_scale, align 4
  %36 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %4, i32 0, i32 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  %38 = load %struct.snd_pt2258*, %struct.snd_pt2258** %3, align 8
  %39 = getelementptr inbounds %struct.snd_pt2258, %struct.snd_pt2258* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.snd_pt2258*, %struct.snd_pt2258** %3, align 8
  %42 = call i32 @snd_ctl_new1(%struct.snd_kcontrol_new* %4, %struct.snd_pt2258* %41)
  %43 = call i32 @snd_ctl_add(i32 %40, i32 %42)
  store i32 %43, i32* %7, align 4
  %44 = load i32, i32* %7, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %12
  %47 = load i32, i32* %7, align 4
  store i32 %47, i32* %2, align 4
  br label %75

48:                                               ; preds = %12
  br label %49

49:                                               ; preds = %48
  %50 = load i32, i32* %6, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %6, align 4
  br label %9

52:                                               ; preds = %9
  %53 = call i32 @memset(%struct.snd_kcontrol_new* %4, i32 0, i32 48)
  %54 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %4, i32 0, i32 0
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i8** %54, align 8
  %55 = load i8*, i8** @SNDRV_CTL_ELEM_IFACE_MIXER, align 8
  %56 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %4, i32 0, i32 7
  store i8* %55, i8** %56, align 8
  %57 = load i32, i32* @pt2258_switch_info, align 4
  %58 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %4, i32 0, i32 6
  store i32 %57, i32* %58, align 4
  %59 = load i32, i32* @pt2258_switch_get, align 4
  %60 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %4, i32 0, i32 5
  store i32 %59, i32* %60, align 8
  %61 = load i32, i32* @pt2258_switch_put, align 4
  %62 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %4, i32 0, i32 4
  store i32 %61, i32* %62, align 4
  %63 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %4, i32 0, i32 2
  store i32 0, i32* %63, align 4
  %64 = load %struct.snd_pt2258*, %struct.snd_pt2258** %3, align 8
  %65 = getelementptr inbounds %struct.snd_pt2258, %struct.snd_pt2258* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.snd_pt2258*, %struct.snd_pt2258** %3, align 8
  %68 = call i32 @snd_ctl_new1(%struct.snd_kcontrol_new* %4, %struct.snd_pt2258* %67)
  %69 = call i32 @snd_ctl_add(i32 %66, i32 %68)
  store i32 %69, i32* %7, align 4
  %70 = load i32, i32* %7, align 4
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %52
  %73 = load i32, i32* %7, align 4
  store i32 %73, i32* %2, align 4
  br label %75

74:                                               ; preds = %52
  store i32 0, i32* %2, align 4
  br label %75

75:                                               ; preds = %74, %72, %46
  %76 = load i32, i32* %2, align 4
  ret i32 %76
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @memset(%struct.snd_kcontrol_new*, i32, i32) #2

declare dso_local i32 @snd_ctl_add(i32, i32) #2

declare dso_local i32 @snd_ctl_new1(%struct.snd_kcontrol_new*, %struct.snd_pt2258*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
