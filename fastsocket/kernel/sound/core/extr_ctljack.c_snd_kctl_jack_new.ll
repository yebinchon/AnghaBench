; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/core/extr_ctljack.c_snd_kctl_jack_new.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/core/extr_ctljack.c_snd_kctl_jack_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@jack_detect_kctl = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"%s Jack\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.snd_kcontrol* @snd_kctl_jack_new(i8* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.snd_kcontrol*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.snd_kcontrol*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %9 = load i8*, i8** %7, align 8
  %10 = call %struct.snd_kcontrol* @snd_ctl_new1(i32* @jack_detect_kctl, i8* %9)
  store %struct.snd_kcontrol* %10, %struct.snd_kcontrol** %8, align 8
  %11 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %8, align 8
  %12 = icmp ne %struct.snd_kcontrol* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  store %struct.snd_kcontrol* null, %struct.snd_kcontrol** %4, align 8
  br label %28

14:                                               ; preds = %3
  %15 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %8, align 8
  %16 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load i8*, i8** %5, align 8
  %20 = call i32 @snprintf(i32 %18, i32 4, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* %19)
  %21 = load i32, i32* %6, align 4
  %22 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %8, align 8
  %23 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  store i32 %21, i32* %24, align 8
  %25 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %8, align 8
  %26 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %25, i32 0, i32 0
  store i64 0, i64* %26, align 8
  %27 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %8, align 8
  store %struct.snd_kcontrol* %27, %struct.snd_kcontrol** %4, align 8
  br label %28

28:                                               ; preds = %14, %13
  %29 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  ret %struct.snd_kcontrol* %29
}

declare dso_local %struct.snd_kcontrol* @snd_ctl_new1(i32*, i8*) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
