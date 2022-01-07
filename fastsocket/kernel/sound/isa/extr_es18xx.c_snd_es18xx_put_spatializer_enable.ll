; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/isa/extr_es18xx.c_snd_es18xx_put_spatializer_enable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/isa/extr_es18xx.c_snd_es18xx_put_spatializer_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64* }
%struct.snd_es18xx = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @snd_es18xx_put_spatializer_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_es18xx_put_spatializer_enable(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca %struct.snd_kcontrol*, align 8
  %4 = alloca %struct.snd_ctl_elem_value*, align 8
  %5 = alloca %struct.snd_es18xx*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %3, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %4, align 8
  %9 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %10 = call %struct.snd_es18xx* @snd_kcontrol_chip(%struct.snd_kcontrol* %9)
  store %struct.snd_es18xx* %10, %struct.snd_es18xx** %5, align 8
  %11 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %12 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i64*, i64** %14, align 8
  %16 = getelementptr inbounds i64, i64* %15, i64 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  %19 = zext i1 %18 to i64
  %20 = select i1 %18, i32 12, i32 4
  %21 = trunc i32 %20 to i8
  store i8 %21, i8* %7, align 1
  %22 = load %struct.snd_es18xx*, %struct.snd_es18xx** %5, align 8
  %23 = call i32 @snd_es18xx_mixer_read(%struct.snd_es18xx* %22, i32 80)
  %24 = and i32 %23, 12
  %25 = trunc i32 %24 to i8
  store i8 %25, i8* %6, align 1
  %26 = load i8, i8* %7, align 1
  %27 = zext i8 %26 to i32
  %28 = load i8, i8* %6, align 1
  %29 = zext i8 %28 to i32
  %30 = icmp ne i32 %27, %29
  %31 = zext i1 %30 to i32
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %8, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %44

34:                                               ; preds = %2
  %35 = load %struct.snd_es18xx*, %struct.snd_es18xx** %5, align 8
  %36 = load i8, i8* %7, align 1
  %37 = zext i8 %36 to i32
  %38 = and i32 %37, -5
  %39 = trunc i32 %38 to i8
  %40 = call i32 @snd_es18xx_mixer_write(%struct.snd_es18xx* %35, i32 80, i8 zeroext %39)
  %41 = load %struct.snd_es18xx*, %struct.snd_es18xx** %5, align 8
  %42 = load i8, i8* %7, align 1
  %43 = call i32 @snd_es18xx_mixer_write(%struct.snd_es18xx* %41, i32 80, i8 zeroext %42)
  br label %44

44:                                               ; preds = %34, %2
  %45 = load i32, i32* %8, align 4
  ret i32 %45
}

declare dso_local %struct.snd_es18xx* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local i32 @snd_es18xx_mixer_read(%struct.snd_es18xx*, i32) #1

declare dso_local i32 @snd_es18xx_mixer_write(%struct.snd_es18xx*, i32, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
