; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_sb_mixer.c_sb_mixer_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_sb_mixer.c_sb_mixer_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i64, i32*, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }

@.str = private unnamed_addr constant [6 x i8] c"SB_%d\00", align 1
@smg_default_levels = common dso_local global i32 0, align 4
@sb_default_levels = common dso_local global i32 0, align 4
@SOUND_MIXER_NRDEVICES = common dso_local global i32 0, align 4
@MDL_ESS = common dso_local global i64 0, align 8
@SOUND_MASK_MIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*)* @sb_mixer_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sb_mixer_reset(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca [32 x i8], align 16
  %4 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  %5 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0
  %6 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = call i32 @sprintf(i8* %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %8)
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 3
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %1
  %16 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0
  %17 = load i32, i32* @smg_default_levels, align 4
  %18 = call i8* @load_mixer_volumes(i8* %16, i32 %17, i32 1)
  %19 = bitcast i8* %18 to i32*
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 2
  store i32* %19, i32** %21, align 8
  br label %29

22:                                               ; preds = %1
  %23 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0
  %24 = load i32, i32* @sb_default_levels, align 4
  %25 = call i8* @load_mixer_volumes(i8* %23, i32 %24, i32 1)
  %26 = bitcast i8* %25 to i32*
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 2
  store i32* %26, i32** %28, align 8
  br label %29

29:                                               ; preds = %22, %15
  store i32 0, i32* %4, align 4
  br label %30

30:                                               ; preds = %45, %29
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* @SOUND_MIXER_NRDEVICES, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %48

34:                                               ; preds = %30
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %36 = load i32, i32* %4, align 4
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 2
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* %4, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @sb_mixer_set(%struct.TYPE_8__* %35, i32 %36, i32 %43)
  br label %45

45:                                               ; preds = %34
  %46 = load i32, i32* %4, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %4, align 4
  br label %30

48:                                               ; preds = %30
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @MDL_ESS, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %58, label %54

54:                                               ; preds = %48
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %56 = call i32 @ess_mixer_reset(%struct.TYPE_8__* %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %62, label %58

58:                                               ; preds = %54, %48
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %60 = load i32, i32* @SOUND_MASK_MIC, align 4
  %61 = call i32 @set_recmask(%struct.TYPE_8__* %59, i32 %60)
  br label %62

62:                                               ; preds = %58, %54
  ret void
}

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i8* @load_mixer_volumes(i8*, i32, i32) #1

declare dso_local i32 @sb_mixer_set(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @ess_mixer_reset(%struct.TYPE_8__*) #1

declare dso_local i32 @set_recmask(%struct.TYPE_8__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
