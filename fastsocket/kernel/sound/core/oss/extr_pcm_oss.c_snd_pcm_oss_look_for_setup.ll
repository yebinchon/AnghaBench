; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/core/oss/extr_pcm_oss.c_snd_pcm_oss_look_for_setup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/core/oss/extr_pcm_oss.c_snd_pcm_oss_look_for_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm = type { i32 }
%struct.snd_pcm_oss_setup = type { i32, %struct.snd_pcm_oss_setup* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, %struct.snd_pcm_oss_setup* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_pcm*, i32, i8*, %struct.snd_pcm_oss_setup*)* @snd_pcm_oss_look_for_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_pcm_oss_look_for_setup(%struct.snd_pcm* %0, i32 %1, i8* %2, %struct.snd_pcm_oss_setup* %3) #0 {
  %5 = alloca %struct.snd_pcm*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.snd_pcm_oss_setup*, align 8
  %9 = alloca %struct.snd_pcm_oss_setup*, align 8
  store %struct.snd_pcm* %0, %struct.snd_pcm** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store %struct.snd_pcm_oss_setup* %3, %struct.snd_pcm_oss_setup** %8, align 8
  %10 = load %struct.snd_pcm*, %struct.snd_pcm** %5, align 8
  %11 = call %struct.TYPE_4__* @oss_pcm(%struct.snd_pcm* %10)
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = load i32, i32* %6, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i64 %15
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = call i32 @mutex_lock(i32* %17)
  br label %19

19:                                               ; preds = %46, %4
  %20 = load %struct.snd_pcm*, %struct.snd_pcm** %5, align 8
  %21 = call %struct.TYPE_4__* @oss_pcm(%struct.snd_pcm* %20)
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = load i32, i32* %6, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 1
  %28 = load %struct.snd_pcm_oss_setup*, %struct.snd_pcm_oss_setup** %27, align 8
  store %struct.snd_pcm_oss_setup* %28, %struct.snd_pcm_oss_setup** %9, align 8
  br label %29

29:                                               ; preds = %41, %19
  %30 = load %struct.snd_pcm_oss_setup*, %struct.snd_pcm_oss_setup** %9, align 8
  %31 = icmp ne %struct.snd_pcm_oss_setup* %30, null
  br i1 %31, label %32, label %45

32:                                               ; preds = %29
  %33 = load %struct.snd_pcm_oss_setup*, %struct.snd_pcm_oss_setup** %9, align 8
  %34 = getelementptr inbounds %struct.snd_pcm_oss_setup, %struct.snd_pcm_oss_setup* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i8*, i8** %7, align 8
  %37 = call i32 @strcmp(i32 %35, i8* %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %32
  br label %51

40:                                               ; preds = %32
  br label %41

41:                                               ; preds = %40
  %42 = load %struct.snd_pcm_oss_setup*, %struct.snd_pcm_oss_setup** %9, align 8
  %43 = getelementptr inbounds %struct.snd_pcm_oss_setup, %struct.snd_pcm_oss_setup* %42, i32 0, i32 1
  %44 = load %struct.snd_pcm_oss_setup*, %struct.snd_pcm_oss_setup** %43, align 8
  store %struct.snd_pcm_oss_setup* %44, %struct.snd_pcm_oss_setup** %9, align 8
  br label %29

45:                                               ; preds = %29
  br label %46

46:                                               ; preds = %45
  %47 = load i8*, i8** %7, align 8
  %48 = call i8* @strip_task_path(i8* %47)
  store i8* %48, i8** %7, align 8
  %49 = icmp ne i8* %48, null
  br i1 %49, label %19, label %50

50:                                               ; preds = %46
  br label %51

51:                                               ; preds = %50, %39
  %52 = load %struct.snd_pcm_oss_setup*, %struct.snd_pcm_oss_setup** %9, align 8
  %53 = icmp ne %struct.snd_pcm_oss_setup* %52, null
  br i1 %53, label %54, label %59

54:                                               ; preds = %51
  %55 = load %struct.snd_pcm_oss_setup*, %struct.snd_pcm_oss_setup** %8, align 8
  %56 = load %struct.snd_pcm_oss_setup*, %struct.snd_pcm_oss_setup** %9, align 8
  %57 = bitcast %struct.snd_pcm_oss_setup* %55 to i8*
  %58 = bitcast %struct.snd_pcm_oss_setup* %56 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %57, i8* align 8 %58, i64 16, i1 false)
  br label %59

59:                                               ; preds = %54, %51
  %60 = load %struct.snd_pcm*, %struct.snd_pcm** %5, align 8
  %61 = call %struct.TYPE_4__* @oss_pcm(%struct.snd_pcm* %60)
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %62, align 8
  %64 = load i32, i32* %6, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 0
  %68 = call i32 @mutex_unlock(i32* %67)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.TYPE_4__* @oss_pcm(%struct.snd_pcm*) #1

declare dso_local i32 @strcmp(i32, i8*) #1

declare dso_local i8* @strip_task_path(i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
