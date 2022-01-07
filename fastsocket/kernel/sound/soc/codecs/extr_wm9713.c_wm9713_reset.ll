; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_wm9713.c_wm9713_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_wm9713.c_wm9713_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (i32)*, i32 (i32)* }
%struct.snd_soc_codec = type { i32 }

@soc_ac97_ops = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@wm9713_reg = common dso_local global i64* null, align 8
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wm9713_reset(%struct.snd_soc_codec* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_soc_codec*, align 8
  %5 = alloca i32, align 4
  store %struct.snd_soc_codec* %0, %struct.snd_soc_codec** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %25

8:                                                ; preds = %2
  %9 = load i32 (i32)*, i32 (i32)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @soc_ac97_ops, i32 0, i32 0), align 8
  %10 = icmp ne i32 (i32)* %9, null
  br i1 %10, label %11, label %25

11:                                               ; preds = %8
  %12 = load i32 (i32)*, i32 (i32)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @soc_ac97_ops, i32 0, i32 0), align 8
  %13 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %4, align 8
  %14 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 %12(i32 %15)
  %17 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %4, align 8
  %18 = call i64 @ac97_read(%struct.snd_soc_codec* %17, i32 0)
  %19 = load i64*, i64** @wm9713_reg, align 8
  %20 = getelementptr inbounds i64, i64* %19, i64 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp eq i64 %18, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %11
  store i32 1, i32* %3, align 4
  br label %50

24:                                               ; preds = %11
  br label %25

25:                                               ; preds = %24, %8, %2
  %26 = load i32 (i32)*, i32 (i32)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @soc_ac97_ops, i32 0, i32 1), align 8
  %27 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %4, align 8
  %28 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 %26(i32 %29)
  %31 = load i32 (i32)*, i32 (i32)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @soc_ac97_ops, i32 0, i32 0), align 8
  %32 = icmp ne i32 (i32)* %31, null
  br i1 %32, label %33, label %39

33:                                               ; preds = %25
  %34 = load i32 (i32)*, i32 (i32)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @soc_ac97_ops, i32 0, i32 0), align 8
  %35 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %4, align 8
  %36 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 %34(i32 %37)
  br label %39

39:                                               ; preds = %33, %25
  %40 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %4, align 8
  %41 = call i64 @ac97_read(%struct.snd_soc_codec* %40, i32 0)
  %42 = load i64*, i64** @wm9713_reg, align 8
  %43 = getelementptr inbounds i64, i64* %42, i64 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %41, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %39
  %47 = load i32, i32* @EIO, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %3, align 4
  br label %50

49:                                               ; preds = %39
  store i32 0, i32* %3, align 4
  br label %50

50:                                               ; preds = %49, %46, %23
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local i64 @ac97_read(%struct.snd_soc_codec*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
