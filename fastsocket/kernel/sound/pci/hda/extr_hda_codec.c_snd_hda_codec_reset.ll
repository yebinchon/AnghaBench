; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_codec.c_snd_hda_codec_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_codec.c_snd_hda_codec_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { i32, i32*, i64, i32*, i32*, %struct.TYPE_3__*, i32, i32, i32, i32, i32, i32, i32*, i32*, %struct.TYPE_4__, i32, i64, i64, i32, i32, %struct.hda_bus* }
%struct.TYPE_3__ = type { i32, i64 }
%struct.TYPE_4__ = type { i32 (%struct.hda_codec.0*)* }
%struct.hda_codec.0 = type opaque
%struct.hda_bus = type { i32, i32, %struct.snd_card* }
%struct.snd_card = type { i32 }

@EBUSY = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_hda_codec_reset(%struct.hda_codec* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hda_codec*, align 8
  %4 = alloca %struct.hda_bus*, align 8
  %5 = alloca %struct.snd_card*, align 8
  %6 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %3, align 8
  %7 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %8 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %7, i32 0, i32 20
  %9 = load %struct.hda_bus*, %struct.hda_bus** %8, align 8
  store %struct.hda_bus* %9, %struct.hda_bus** %4, align 8
  %10 = load %struct.hda_bus*, %struct.hda_bus** %4, align 8
  %11 = getelementptr inbounds %struct.hda_bus, %struct.hda_bus* %10, i32 0, i32 2
  %12 = load %struct.snd_card*, %struct.snd_card** %11, align 8
  store %struct.snd_card* %12, %struct.snd_card** %5, align 8
  %13 = load %struct.hda_bus*, %struct.hda_bus** %4, align 8
  %14 = call i64 @snd_hda_lock_devices(%struct.hda_bus* %13)
  %15 = icmp slt i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = load i32, i32* @EBUSY, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %134

19:                                               ; preds = %1
  %20 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %21 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %20, i32 0, i32 19
  %22 = call i32 @cancel_delayed_work_sync(i32* %21)
  %23 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %24 = call i32 @snd_hda_ctls_clear(%struct.hda_codec* %23)
  store i32 0, i32* %6, align 4
  br label %25

25:                                               ; preds = %65, %19
  %26 = load i32, i32* %6, align 4
  %27 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %28 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp slt i32 %26, %29
  br i1 %30, label %31, label %68

31:                                               ; preds = %25
  %32 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %33 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %32, i32 0, i32 5
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = load i32, i32* %6, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %64

41:                                               ; preds = %31
  %42 = load %struct.snd_card*, %struct.snd_card** %5, align 8
  %43 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %44 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %43, i32 0, i32 5
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %44, align 8
  %46 = load i32, i32* %6, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = call i32 @snd_device_free(%struct.snd_card* %42, i64 %50)
  %52 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %53 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %52, i32 0, i32 5
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %53, align 8
  %55 = load i32, i32* %6, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.hda_bus*, %struct.hda_bus** %4, align 8
  %61 = getelementptr inbounds %struct.hda_bus, %struct.hda_bus* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @clear_bit(i32 %59, i32 %62)
  br label %64

64:                                               ; preds = %41, %31
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* %6, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %6, align 4
  br label %25

68:                                               ; preds = %25
  %69 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %70 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %69, i32 0, i32 14
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = load i32 (%struct.hda_codec.0*)*, i32 (%struct.hda_codec.0*)** %71, align 8
  %73 = icmp ne i32 (%struct.hda_codec.0*)* %72, null
  br i1 %73, label %74, label %82

74:                                               ; preds = %68
  %75 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %76 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %75, i32 0, i32 14
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = load i32 (%struct.hda_codec.0*)*, i32 (%struct.hda_codec.0*)** %77, align 8
  %79 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %80 = bitcast %struct.hda_codec* %79 to %struct.hda_codec.0*
  %81 = call i32 %78(%struct.hda_codec.0* %80)
  br label %82

82:                                               ; preds = %74, %68
  %83 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %84 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %83, i32 0, i32 14
  %85 = call i32 @memset(%struct.TYPE_4__* %84, i32 0, i32 8)
  %86 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %87 = call i32 @snd_hda_jack_tbl_clear(%struct.hda_codec* %86)
  %88 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %89 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %88, i32 0, i32 13
  store i32* null, i32** %89, align 8
  %90 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %91 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %90, i32 0, i32 12
  store i32* null, i32** %91, align 8
  %92 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %93 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %92, i32 0, i32 11
  %94 = call i32 @free_hda_cache(i32* %93)
  %95 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %96 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %95, i32 0, i32 10
  %97 = call i32 @free_hda_cache(i32* %96)
  %98 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %99 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %98, i32 0, i32 11
  %100 = call i32 @init_hda_cache(i32* %99, i32 4)
  %101 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %102 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %101, i32 0, i32 10
  %103 = call i32 @init_hda_cache(i32* %102, i32 4)
  %104 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %105 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %104, i32 0, i32 9
  %106 = call i32 @snd_array_free(i32* %105)
  %107 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %108 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %107, i32 0, i32 8
  %109 = call i32 @snd_array_free(i32* %108)
  %110 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %111 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %110, i32 0, i32 7
  %112 = call i32 @snd_array_free(i32* %111)
  %113 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %114 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %113, i32 0, i32 6
  %115 = call i32 @snd_array_free(i32* %114)
  %116 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %117 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %116, i32 0, i32 0
  store i32 0, i32* %117, align 8
  %118 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %119 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %118, i32 0, i32 5
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %119, align 8
  %120 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %121 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %120, i32 0, i32 4
  store i32* null, i32** %121, align 8
  %122 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %123 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %122, i32 0, i32 3
  store i32* null, i32** %123, align 8
  %124 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %125 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %124, i32 0, i32 2
  store i64 0, i64* %125, align 8
  %126 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %127 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %126, i32 0, i32 1
  %128 = load i32*, i32** %127, align 8
  %129 = call i32 @module_put(i32* %128)
  %130 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %131 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %130, i32 0, i32 1
  store i32* null, i32** %131, align 8
  %132 = load %struct.hda_bus*, %struct.hda_bus** %4, align 8
  %133 = call i32 @snd_hda_unlock_devices(%struct.hda_bus* %132)
  store i32 0, i32* %2, align 4
  br label %134

134:                                              ; preds = %82, %16
  %135 = load i32, i32* %2, align 4
  ret i32 %135
}

declare dso_local i64 @snd_hda_lock_devices(%struct.hda_bus*) #1

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @snd_hda_ctls_clear(%struct.hda_codec*) #1

declare dso_local i32 @snd_device_free(%struct.snd_card*, i64) #1

declare dso_local i32 @clear_bit(i32, i32) #1

declare dso_local i32 @memset(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @snd_hda_jack_tbl_clear(%struct.hda_codec*) #1

declare dso_local i32 @free_hda_cache(i32*) #1

declare dso_local i32 @init_hda_cache(i32*, i32) #1

declare dso_local i32 @snd_array_free(i32*) #1

declare dso_local i32 @module_put(i32*) #1

declare dso_local i32 @snd_hda_unlock_devices(%struct.hda_bus*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
