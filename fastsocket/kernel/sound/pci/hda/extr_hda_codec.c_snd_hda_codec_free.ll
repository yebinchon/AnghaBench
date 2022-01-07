; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_codec.c_snd_hda_codec_free.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_codec.c_snd_hda_codec_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { i64, %struct.hda_codec*, %struct.hda_codec*, %struct.hda_codec*, %struct.hda_codec*, i32, i32, i32, %struct.TYPE_4__*, i32, %struct.TYPE_3__, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32**, i32 }
%struct.TYPE_3__ = type { i32 (%struct.hda_codec.0*)* }
%struct.hda_codec.0 = type opaque

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hda_codec*)* @snd_hda_codec_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_hda_codec_free(%struct.hda_codec* %0) #0 {
  %2 = alloca %struct.hda_codec*, align 8
  store %struct.hda_codec* %0, %struct.hda_codec** %2, align 8
  %3 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %4 = icmp ne %struct.hda_codec* %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  br label %82

6:                                                ; preds = %1
  %7 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %8 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %7, i32 0, i32 17
  %9 = call i32 @cancel_delayed_work_sync(i32* %8)
  %10 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %11 = call i32 @snd_hda_jack_tbl_clear(%struct.hda_codec* %10)
  %12 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %13 = call i32 @free_init_pincfgs(%struct.hda_codec* %12)
  %14 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %15 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %14, i32 0, i32 15
  %16 = call i32 @list_del(i32* %15)
  %17 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %18 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %17, i32 0, i32 14
  %19 = call i32 @snd_array_free(i32* %18)
  %20 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %21 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %20, i32 0, i32 13
  %22 = call i32 @snd_array_free(i32* %21)
  %23 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %24 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %23, i32 0, i32 12
  %25 = call i32 @snd_array_free(i32* %24)
  %26 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %27 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %26, i32 0, i32 11
  %28 = call i32 @snd_array_free(i32* %27)
  %29 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %30 = call i32 @remove_conn_list(%struct.hda_codec* %29)
  %31 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %32 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %31, i32 0, i32 8
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32**, i32*** %34, align 8
  %36 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %37 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = getelementptr inbounds i32*, i32** %35, i64 %38
  store i32* null, i32** %39, align 8
  %40 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %41 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %40, i32 0, i32 10
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i32 (%struct.hda_codec.0*)*, i32 (%struct.hda_codec.0*)** %42, align 8
  %44 = icmp ne i32 (%struct.hda_codec.0*)* %43, null
  br i1 %44, label %45, label %53

45:                                               ; preds = %6
  %46 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %47 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %46, i32 0, i32 10
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i32 (%struct.hda_codec.0*)*, i32 (%struct.hda_codec.0*)** %48, align 8
  %50 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %51 = bitcast %struct.hda_codec* %50 to %struct.hda_codec.0*
  %52 = call i32 %49(%struct.hda_codec.0* %51)
  br label %53

53:                                               ; preds = %45, %6
  %54 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %55 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %54, i32 0, i32 7
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @module_put(i32 %56)
  %58 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %59 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %58, i32 0, i32 6
  %60 = call i32 @free_hda_cache(i32* %59)
  %61 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %62 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %61, i32 0, i32 5
  %63 = call i32 @free_hda_cache(i32* %62)
  %64 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %65 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %64, i32 0, i32 4
  %66 = load %struct.hda_codec*, %struct.hda_codec** %65, align 8
  %67 = call i32 @kfree(%struct.hda_codec* %66)
  %68 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %69 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %68, i32 0, i32 3
  %70 = load %struct.hda_codec*, %struct.hda_codec** %69, align 8
  %71 = call i32 @kfree(%struct.hda_codec* %70)
  %72 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %73 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %72, i32 0, i32 2
  %74 = load %struct.hda_codec*, %struct.hda_codec** %73, align 8
  %75 = call i32 @kfree(%struct.hda_codec* %74)
  %76 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %77 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %76, i32 0, i32 1
  %78 = load %struct.hda_codec*, %struct.hda_codec** %77, align 8
  %79 = call i32 @kfree(%struct.hda_codec* %78)
  %80 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %81 = call i32 @kfree(%struct.hda_codec* %80)
  br label %82

82:                                               ; preds = %53, %5
  ret void
}

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @snd_hda_jack_tbl_clear(%struct.hda_codec*) #1

declare dso_local i32 @free_init_pincfgs(%struct.hda_codec*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @snd_array_free(i32*) #1

declare dso_local i32 @remove_conn_list(%struct.hda_codec*) #1

declare dso_local i32 @module_put(i32) #1

declare dso_local i32 @free_hda_cache(i32*) #1

declare dso_local i32 @kfree(%struct.hda_codec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
