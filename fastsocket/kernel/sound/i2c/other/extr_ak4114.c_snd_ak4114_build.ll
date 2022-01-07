; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/i2c/other/extr_ak4114.c_snd_ak4114_build.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/i2c/other/extr_ak4114.c_snd_ak4114_build.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ak4114 = type { i32, %struct.snd_kcontrol**, i32, %struct.snd_pcm_substream*, %struct.snd_pcm_substream* }
%struct.snd_kcontrol = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.snd_pcm_substream = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@AK4114_CONTROLS = common dso_local global i32 0, align 4
@snd_ak4114_iec958_controls = common dso_local global i32* null, align 8
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"Playback\00", align 1
@HZ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_ak4114_build(%struct.ak4114* %0, %struct.snd_pcm_substream* %1, %struct.snd_pcm_substream* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ak4114*, align 8
  %6 = alloca %struct.snd_pcm_substream*, align 8
  %7 = alloca %struct.snd_pcm_substream*, align 8
  %8 = alloca %struct.snd_kcontrol*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ak4114* %0, %struct.ak4114** %5, align 8
  store %struct.snd_pcm_substream* %1, %struct.snd_pcm_substream** %6, align 8
  store %struct.snd_pcm_substream* %2, %struct.snd_pcm_substream** %7, align 8
  %11 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %7, align 8
  %12 = icmp ne %struct.snd_pcm_substream* %11, null
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  %15 = call i64 @snd_BUG_ON(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %121

20:                                               ; preds = %3
  %21 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %6, align 8
  %22 = load %struct.ak4114*, %struct.ak4114** %5, align 8
  %23 = getelementptr inbounds %struct.ak4114, %struct.ak4114* %22, i32 0, i32 4
  store %struct.snd_pcm_substream* %21, %struct.snd_pcm_substream** %23, align 8
  %24 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %7, align 8
  %25 = load %struct.ak4114*, %struct.ak4114** %5, align 8
  %26 = getelementptr inbounds %struct.ak4114, %struct.ak4114* %25, i32 0, i32 3
  store %struct.snd_pcm_substream* %24, %struct.snd_pcm_substream** %26, align 8
  store i32 0, i32* %9, align 4
  br label %27

27:                                               ; preds = %110, %20
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* @AK4114_CONTROLS, align 4
  %30 = icmp ult i32 %28, %29
  br i1 %30, label %31, label %113

31:                                               ; preds = %27
  %32 = load i32*, i32** @snd_ak4114_iec958_controls, align 8
  %33 = load i32, i32* %9, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load %struct.ak4114*, %struct.ak4114** %5, align 8
  %37 = call %struct.snd_kcontrol* @snd_ctl_new1(i32* %35, %struct.ak4114* %36)
  store %struct.snd_kcontrol* %37, %struct.snd_kcontrol** %8, align 8
  %38 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %8, align 8
  %39 = icmp eq %struct.snd_kcontrol* %38, null
  br i1 %39, label %40, label %43

40:                                               ; preds = %31
  %41 = load i32, i32* @ENOMEM, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %4, align 4
  br label %121

43:                                               ; preds = %31
  %44 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %8, align 8
  %45 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = call i64 @strstr(i32 %47, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %77

50:                                               ; preds = %43
  %51 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %6, align 8
  %52 = icmp eq %struct.snd_pcm_substream* %51, null
  br i1 %52, label %53, label %62

53:                                               ; preds = %50
  %54 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %8, align 8
  %55 = call i32 @snd_ctl_free_one(%struct.snd_kcontrol* %54)
  %56 = load %struct.ak4114*, %struct.ak4114** %5, align 8
  %57 = getelementptr inbounds %struct.ak4114, %struct.ak4114* %56, i32 0, i32 1
  %58 = load %struct.snd_kcontrol**, %struct.snd_kcontrol*** %57, align 8
  %59 = load i32, i32* %9, align 4
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds %struct.snd_kcontrol*, %struct.snd_kcontrol** %58, i64 %60
  store %struct.snd_kcontrol* null, %struct.snd_kcontrol** %61, align 8
  br label %110

62:                                               ; preds = %50
  %63 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %6, align 8
  %64 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %63, i32 0, i32 1
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %8, align 8
  %69 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 1
  store i32 %67, i32* %70, align 4
  %71 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %6, align 8
  %72 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %8, align 8
  %75 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  store i32 %73, i32* %76, align 4
  br label %92

77:                                               ; preds = %43
  %78 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %7, align 8
  %79 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %78, i32 0, i32 1
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %8, align 8
  %84 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 1
  store i32 %82, i32* %85, align 4
  %86 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %7, align 8
  %87 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %8, align 8
  %90 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 0
  store i32 %88, i32* %91, align 4
  br label %92

92:                                               ; preds = %77, %62
  %93 = load %struct.ak4114*, %struct.ak4114** %5, align 8
  %94 = getelementptr inbounds %struct.ak4114, %struct.ak4114* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %8, align 8
  %97 = call i32 @snd_ctl_add(i32 %95, %struct.snd_kcontrol* %96)
  store i32 %97, i32* %10, align 4
  %98 = load i32, i32* %10, align 4
  %99 = icmp slt i32 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %92
  %101 = load i32, i32* %10, align 4
  store i32 %101, i32* %4, align 4
  br label %121

102:                                              ; preds = %92
  %103 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %8, align 8
  %104 = load %struct.ak4114*, %struct.ak4114** %5, align 8
  %105 = getelementptr inbounds %struct.ak4114, %struct.ak4114* %104, i32 0, i32 1
  %106 = load %struct.snd_kcontrol**, %struct.snd_kcontrol*** %105, align 8
  %107 = load i32, i32* %9, align 4
  %108 = zext i32 %107 to i64
  %109 = getelementptr inbounds %struct.snd_kcontrol*, %struct.snd_kcontrol** %106, i64 %108
  store %struct.snd_kcontrol* %103, %struct.snd_kcontrol** %109, align 8
  br label %110

110:                                              ; preds = %102, %53
  %111 = load i32, i32* %9, align 4
  %112 = add i32 %111, 1
  store i32 %112, i32* %9, align 4
  br label %27

113:                                              ; preds = %27
  %114 = load %struct.ak4114*, %struct.ak4114** %5, align 8
  %115 = call i32 @snd_ak4114_proc_init(%struct.ak4114* %114)
  %116 = load %struct.ak4114*, %struct.ak4114** %5, align 8
  %117 = getelementptr inbounds %struct.ak4114, %struct.ak4114* %116, i32 0, i32 0
  %118 = load i32, i32* @HZ, align 4
  %119 = sdiv i32 %118, 10
  %120 = call i32 @schedule_delayed_work(i32* %117, i32 %119)
  store i32 0, i32* %4, align 4
  br label %121

121:                                              ; preds = %113, %100, %40, %17
  %122 = load i32, i32* %4, align 4
  ret i32 %122
}

declare dso_local i64 @snd_BUG_ON(i32) #1

declare dso_local %struct.snd_kcontrol* @snd_ctl_new1(i32*, %struct.ak4114*) #1

declare dso_local i64 @strstr(i32, i8*) #1

declare dso_local i32 @snd_ctl_free_one(%struct.snd_kcontrol*) #1

declare dso_local i32 @snd_ctl_add(i32, %struct.snd_kcontrol*) #1

declare dso_local i32 @snd_ak4114_proc_init(%struct.ak4114*) #1

declare dso_local i32 @schedule_delayed_work(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
