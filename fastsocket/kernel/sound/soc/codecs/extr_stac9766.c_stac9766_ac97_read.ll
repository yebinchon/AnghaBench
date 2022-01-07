; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_stac9766.c_stac9766_ac97_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_stac9766.c_stac9766_ac97_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (i32, i32)* }
%struct.snd_soc_codec = type { i32*, i32 }

@AC97_STAC_PAGE0 = common dso_local global i32 0, align 4
@AC97_INT_PAGING = common dso_local global i32 0, align 4
@soc_ac97_ops = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@stac9766_reg = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@AC97_RESET = common dso_local global i32 0, align 4
@AC97_GPIO_STATUS = common dso_local global i32 0, align 4
@AC97_VENDOR_ID1 = common dso_local global i32 0, align 4
@AC97_VENDOR_ID2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_codec*, i32)* @stac9766_ac97_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stac9766_ac97_read(%struct.snd_soc_codec* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_soc_codec*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store %struct.snd_soc_codec* %0, %struct.snd_soc_codec** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %8 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %4, align 8
  %9 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  store i32* %10, i32** %7, align 8
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @AC97_STAC_PAGE0, align 4
  %13 = icmp ugt i32 %11, %12
  br i1 %13, label %14, label %30

14:                                               ; preds = %2
  %15 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %4, align 8
  %16 = load i32, i32* @AC97_INT_PAGING, align 4
  %17 = call i32 @stac9766_ac97_write(%struct.snd_soc_codec* %15, i32 %16, i32 0)
  %18 = load i32 (i32, i32)*, i32 (i32, i32)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @soc_ac97_ops, i32 0, i32 0), align 8
  %19 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %4, align 8
  %20 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @AC97_STAC_PAGE0, align 4
  %24 = sub i32 %22, %23
  %25 = call i32 %18(i32 %21, i32 %24)
  store i32 %25, i32* %6, align 4
  %26 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %4, align 8
  %27 = load i32, i32* @AC97_INT_PAGING, align 4
  %28 = call i32 @stac9766_ac97_write(%struct.snd_soc_codec* %26, i32 %27, i32 1)
  %29 = load i32, i32* %6, align 4
  store i32 %29, i32* %3, align 4
  br label %74

30:                                               ; preds = %2
  %31 = load i32, i32* %5, align 4
  %32 = udiv i32 %31, 2
  %33 = load i32, i32* @stac9766_reg, align 4
  %34 = call i32 @ARRAY_SIZE(i32 %33)
  %35 = icmp uge i32 %32, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %30
  %37 = load i32, i32* @EIO, align 4
  %38 = sub i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %74

39:                                               ; preds = %30
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* @AC97_RESET, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %59, label %43

43:                                               ; preds = %39
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* @AC97_GPIO_STATUS, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %59, label %47

47:                                               ; preds = %43
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* @AC97_INT_PAGING, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %59, label %51

51:                                               ; preds = %47
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* @AC97_VENDOR_ID1, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %59, label %55

55:                                               ; preds = %51
  %56 = load i32, i32* %5, align 4
  %57 = load i32, i32* @AC97_VENDOR_ID2, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %67

59:                                               ; preds = %55, %51, %47, %43, %39
  %60 = load i32 (i32, i32)*, i32 (i32, i32)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @soc_ac97_ops, i32 0, i32 0), align 8
  %61 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %4, align 8
  %62 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* %5, align 4
  %65 = call i32 %60(i32 %63, i32 %64)
  store i32 %65, i32* %6, align 4
  %66 = load i32, i32* %6, align 4
  store i32 %66, i32* %3, align 4
  br label %74

67:                                               ; preds = %55
  %68 = load i32*, i32** %7, align 8
  %69 = load i32, i32* %5, align 4
  %70 = udiv i32 %69, 2
  %71 = zext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %68, i64 %71
  %73 = load i32, i32* %72, align 4
  store i32 %73, i32* %3, align 4
  br label %74

74:                                               ; preds = %67, %59, %36, %14
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

declare dso_local i32 @stac9766_ac97_write(%struct.snd_soc_codec*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
