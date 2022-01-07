; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_cx20442.c_cx20442_register.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_cx20442.c_cx20442_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.snd_soc_codec = type { i8*, i32, i32, i32, i32, i32, i32, i32*, %struct.TYPE_3__*, %struct.cx20442_priv*, i32, i32, i32, i32 }
%struct.cx20442_priv = type { i32, %struct.snd_soc_codec }

@.str = private unnamed_addr constant [8 x i8] c"CX20442\00", align 1
@THIS_MODULE = common dso_local global i32 0, align 4
@cx20442_dai = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@cx20442_read_reg_cache = common dso_local global i32 0, align 4
@cx20442_write = common dso_local global i32 0, align 4
@SND_SOC_BIAS_OFF = common dso_local global i32 0, align 4
@cx20442_codec = common dso_local global %struct.snd_soc_codec* null, align 8
@.str.1 = private unnamed_addr constant [30 x i8] c"Failed to register codec: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"Failed to register DAI: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cx20442_priv*)* @cx20442_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cx20442_register(%struct.cx20442_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cx20442_priv*, align 8
  %4 = alloca %struct.snd_soc_codec*, align 8
  %5 = alloca i32, align 4
  store %struct.cx20442_priv* %0, %struct.cx20442_priv** %3, align 8
  %6 = load %struct.cx20442_priv*, %struct.cx20442_priv** %3, align 8
  %7 = getelementptr inbounds %struct.cx20442_priv, %struct.cx20442_priv* %6, i32 0, i32 1
  store %struct.snd_soc_codec* %7, %struct.snd_soc_codec** %4, align 8
  %8 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %4, align 8
  %9 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %8, i32 0, i32 13
  %10 = call i32 @mutex_init(i32* %9)
  %11 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %4, align 8
  %12 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %11, i32 0, i32 12
  %13 = call i32 @INIT_LIST_HEAD(i32* %12)
  %14 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %4, align 8
  %15 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %14, i32 0, i32 11
  %16 = call i32 @INIT_LIST_HEAD(i32* %15)
  %17 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %4, align 8
  %18 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %17, i32 0, i32 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %18, align 8
  %19 = load i32, i32* @THIS_MODULE, align 4
  %20 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %4, align 8
  %21 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %20, i32 0, i32 10
  store i32 %19, i32* %21, align 8
  %22 = load %struct.cx20442_priv*, %struct.cx20442_priv** %3, align 8
  %23 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %4, align 8
  %24 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %23, i32 0, i32 9
  store %struct.cx20442_priv* %22, %struct.cx20442_priv** %24, align 8
  %25 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %4, align 8
  %26 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %25, i32 0, i32 8
  store %struct.TYPE_3__* @cx20442_dai, %struct.TYPE_3__** %26, align 8
  %27 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %4, align 8
  %28 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %27, i32 0, i32 1
  store i32 1, i32* %28, align 8
  %29 = load %struct.cx20442_priv*, %struct.cx20442_priv** %3, align 8
  %30 = getelementptr inbounds %struct.cx20442_priv, %struct.cx20442_priv* %29, i32 0, i32 0
  %31 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %4, align 8
  %32 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %31, i32 0, i32 7
  store i32* %30, i32** %32, align 8
  %33 = load %struct.cx20442_priv*, %struct.cx20442_priv** %3, align 8
  %34 = getelementptr inbounds %struct.cx20442_priv, %struct.cx20442_priv* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @ARRAY_SIZE(i32 %35)
  %37 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %4, align 8
  %38 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %37, i32 0, i32 6
  store i32 %36, i32* %38, align 4
  %39 = load i32, i32* @cx20442_read_reg_cache, align 4
  %40 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %4, align 8
  %41 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %40, i32 0, i32 5
  store i32 %39, i32* %41, align 8
  %42 = load i32, i32* @cx20442_write, align 4
  %43 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %4, align 8
  %44 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %43, i32 0, i32 4
  store i32 %42, i32* %44, align 4
  %45 = load i32, i32* @SND_SOC_BIAS_OFF, align 4
  %46 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %4, align 8
  %47 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %46, i32 0, i32 3
  store i32 %45, i32* %47, align 8
  %48 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %4, align 8
  %49 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @cx20442_dai, i32 0, i32 0), align 4
  %51 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %4, align 8
  store %struct.snd_soc_codec* %51, %struct.snd_soc_codec** @cx20442_codec, align 8
  %52 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %4, align 8
  %53 = call i32 @snd_soc_register_codec(%struct.snd_soc_codec* %52)
  store i32 %53, i32* %5, align 4
  %54 = load i32, i32* %5, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %1
  %57 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %4, align 8
  %58 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %5, align 4
  %61 = call i32 @dev_err(i32 %59, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %60)
  br label %76

62:                                               ; preds = %1
  %63 = call i32 @snd_soc_register_dai(%struct.TYPE_3__* @cx20442_dai)
  store i32 %63, i32* %5, align 4
  %64 = load i32, i32* %5, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %62
  %67 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %4, align 8
  %68 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* %5, align 4
  %71 = call i32 @dev_err(i32 %69, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %70)
  br label %73

72:                                               ; preds = %62
  store i32 0, i32* %2, align 4
  br label %80

73:                                               ; preds = %66
  %74 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %4, align 8
  %75 = call i32 @snd_soc_unregister_codec(%struct.snd_soc_codec* %74)
  br label %76

76:                                               ; preds = %73, %56
  store %struct.snd_soc_codec* null, %struct.snd_soc_codec** @cx20442_codec, align 8
  %77 = load %struct.cx20442_priv*, %struct.cx20442_priv** %3, align 8
  %78 = call i32 @kfree(%struct.cx20442_priv* %77)
  %79 = load i32, i32* %5, align 4
  store i32 %79, i32* %2, align 4
  br label %80

80:                                               ; preds = %76, %72
  %81 = load i32, i32* %2, align 4
  ret i32 %81
}

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @snd_soc_register_codec(%struct.snd_soc_codec*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @snd_soc_register_dai(%struct.TYPE_3__*) #1

declare dso_local i32 @snd_soc_unregister_codec(%struct.snd_soc_codec*) #1

declare dso_local i32 @kfree(%struct.cx20442_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
