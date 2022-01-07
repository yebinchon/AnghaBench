; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/extr_soc-core.c_snd_soc_new_ac97_codec.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/extr_soc-core.c_snd_soc_new_ac97_codec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_codec = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.snd_ac97_bus_ops* }
%struct.snd_ac97_bus_ops = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_soc_new_ac97_codec(%struct.snd_soc_codec* %0, %struct.snd_ac97_bus_ops* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_soc_codec*, align 8
  %6 = alloca %struct.snd_ac97_bus_ops*, align 8
  %7 = alloca i32, align 4
  store %struct.snd_soc_codec* %0, %struct.snd_soc_codec** %5, align 8
  store %struct.snd_ac97_bus_ops* %1, %struct.snd_ac97_bus_ops** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %5, align 8
  %9 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %8, i32 0, i32 0
  %10 = call i32 @mutex_lock(i32* %9)
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call i8* @kzalloc(i32 4, i32 %11)
  %13 = bitcast i8* %12 to %struct.TYPE_4__*
  %14 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %5, align 8
  %15 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %14, i32 0, i32 1
  store %struct.TYPE_4__* %13, %struct.TYPE_4__** %15, align 8
  %16 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %5, align 8
  %17 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %16, i32 0, i32 1
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = icmp eq %struct.TYPE_4__* %18, null
  br i1 %19, label %20, label %26

20:                                               ; preds = %3
  %21 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %5, align 8
  %22 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %21, i32 0, i32 0
  %23 = call i32 @mutex_unlock(i32* %22)
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %68

26:                                               ; preds = %3
  %27 = load i32, i32* @GFP_KERNEL, align 4
  %28 = call i8* @kzalloc(i32 4, i32 %27)
  %29 = bitcast i8* %28 to %struct.TYPE_3__*
  %30 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %5, align 8
  %31 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %30, i32 0, i32 1
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 1
  store %struct.TYPE_3__* %29, %struct.TYPE_3__** %33, align 8
  %34 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %5, align 8
  %35 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %34, i32 0, i32 1
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %37, align 8
  %39 = icmp eq %struct.TYPE_3__* %38, null
  br i1 %39, label %40, label %52

40:                                               ; preds = %26
  %41 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %5, align 8
  %42 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %41, i32 0, i32 1
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = call i32 @kfree(%struct.TYPE_4__* %43)
  %45 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %5, align 8
  %46 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %45, i32 0, i32 1
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %46, align 8
  %47 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %5, align 8
  %48 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %47, i32 0, i32 0
  %49 = call i32 @mutex_unlock(i32* %48)
  %50 = load i32, i32* @ENOMEM, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %4, align 4
  br label %68

52:                                               ; preds = %26
  %53 = load %struct.snd_ac97_bus_ops*, %struct.snd_ac97_bus_ops** %6, align 8
  %54 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %5, align 8
  %55 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %54, i32 0, i32 1
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 1
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  store %struct.snd_ac97_bus_ops* %53, %struct.snd_ac97_bus_ops** %59, align 8
  %60 = load i32, i32* %7, align 4
  %61 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %5, align 8
  %62 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %61, i32 0, i32 1
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  store i32 %60, i32* %64, align 8
  %65 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %5, align 8
  %66 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %65, i32 0, i32 0
  %67 = call i32 @mutex_unlock(i32* %66)
  store i32 0, i32* %4, align 4
  br label %68

68:                                               ; preds = %52, %40, %20
  %69 = load i32, i32* %4, align 4
  ret i32 %69
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @kfree(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
