; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_stac9766.c_stac9766_ac97_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_stac9766.c_stac9766_ac97_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (i32, i32, i32)* }
%struct.snd_soc_codec = type { i32*, i32 }

@AC97_STAC_PAGE0 = common dso_local global i32 0, align 4
@AC97_INT_PAGING = common dso_local global i32 0, align 4
@soc_ac97_ops = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@stac9766_reg = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_codec*, i32, i32)* @stac9766_ac97_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stac9766_ac97_write(%struct.snd_soc_codec* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_soc_codec*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  store %struct.snd_soc_codec* %0, %struct.snd_soc_codec** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %5, align 8
  %10 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  store i32* %11, i32** %8, align 8
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* @AC97_STAC_PAGE0, align 4
  %14 = icmp ugt i32 %12, %13
  br i1 %14, label %15, label %29

15:                                               ; preds = %3
  %16 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %5, align 8
  %17 = load i32, i32* @AC97_INT_PAGING, align 4
  %18 = call i32 @stac9766_ac97_write(%struct.snd_soc_codec* %16, i32 %17, i32 0)
  %19 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @soc_ac97_ops, i32 0, i32 0), align 8
  %20 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %5, align 8
  %21 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* %7, align 4
  %25 = call i32 %19(i32 %22, i32 %23, i32 %24)
  %26 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %5, align 8
  %27 = load i32, i32* @AC97_INT_PAGING, align 4
  %28 = call i32 @stac9766_ac97_write(%struct.snd_soc_codec* %26, i32 %27, i32 1)
  store i32 0, i32* %4, align 4
  br label %52

29:                                               ; preds = %3
  %30 = load i32, i32* %6, align 4
  %31 = udiv i32 %30, 2
  %32 = load i32, i32* @stac9766_reg, align 4
  %33 = call i32 @ARRAY_SIZE(i32 %32)
  %34 = icmp uge i32 %31, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %29
  %36 = load i32, i32* @EIO, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %4, align 4
  br label %52

38:                                               ; preds = %29
  %39 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @soc_ac97_ops, i32 0, i32 0), align 8
  %40 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %5, align 8
  %41 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* %7, align 4
  %45 = call i32 %39(i32 %42, i32 %43, i32 %44)
  %46 = load i32, i32* %7, align 4
  %47 = load i32*, i32** %8, align 8
  %48 = load i32, i32* %6, align 4
  %49 = udiv i32 %48, 2
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %47, i64 %50
  store i32 %46, i32* %51, align 4
  store i32 0, i32* %4, align 4
  br label %52

52:                                               ; preds = %38, %35, %15
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

declare dso_local i32 @ARRAY_SIZE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
