; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_generic.c_snd_hda_gen_update_outputs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_generic.c_snd_hda_gen_update_outputs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { %struct.hda_gen_spec* }
%struct.hda_gen_spec = type { i32, i32, i32, i32, i32, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i64*, i64*, i64* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @snd_hda_gen_update_outputs(%struct.hda_codec* %0) #0 {
  %2 = alloca %struct.hda_codec*, align 8
  %3 = alloca %struct.hda_gen_spec*, align 8
  %4 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %2, align 8
  %5 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %6 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %5, i32 0, i32 0
  %7 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %6, align 8
  store %struct.hda_gen_spec* %7, %struct.hda_gen_spec** %3, align 8
  %8 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %9 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %3, align 8
  %10 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %9, i32 0, i32 5
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i64*, i64** %11, align 8
  %13 = call i32 @ARRAY_SIZE(i64* %12)
  %14 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %3, align 8
  %15 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %14, i32 0, i32 5
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i64*, i64** %16, align 8
  %18 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %3, align 8
  %19 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @do_automute(%struct.hda_codec* %8, i32 %13, i64* %17, i32 %20)
  %22 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %3, align 8
  %23 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %22, i32 0, i32 7
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %35

27:                                               ; preds = %1
  %28 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %3, align 8
  %29 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %3, align 8
  %32 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = or i32 %30, %33
  store i32 %34, i32* %4, align 4
  br label %35

35:                                               ; preds = %27, %26
  %36 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %3, align 8
  %37 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* %4, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %4, align 4
  %41 = load i32, i32* %4, align 4
  %42 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %3, align 8
  %43 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %42, i32 0, i32 3
  store i32 %41, i32* %43, align 4
  %44 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %45 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %3, align 8
  %46 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %45, i32 0, i32 5
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 1
  %48 = load i64*, i64** %47, align 8
  %49 = call i32 @ARRAY_SIZE(i64* %48)
  %50 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %3, align 8
  %51 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %50, i32 0, i32 5
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 1
  %53 = load i64*, i64** %52, align 8
  %54 = load i32, i32* %4, align 4
  %55 = call i32 @do_automute(%struct.hda_codec* %44, i32 %49, i64* %53, i32 %54)
  %56 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %3, align 8
  %57 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %56, i32 0, i32 5
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 2
  %59 = load i64*, i64** %58, align 8
  %60 = getelementptr inbounds i64, i64* %59, i64 0
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %3, align 8
  %63 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %62, i32 0, i32 5
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i64*, i64** %64, align 8
  %66 = getelementptr inbounds i64, i64* %65, i64 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp eq i64 %61, %67
  br i1 %68, label %83, label %69

69:                                               ; preds = %35
  %70 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %3, align 8
  %71 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %70, i32 0, i32 5
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 2
  %73 = load i64*, i64** %72, align 8
  %74 = getelementptr inbounds i64, i64* %73, i64 0
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %3, align 8
  %77 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %76, i32 0, i32 5
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 1
  %79 = load i64*, i64** %78, align 8
  %80 = getelementptr inbounds i64, i64* %79, i64 0
  %81 = load i64, i64* %80, align 8
  %82 = icmp eq i64 %75, %81
  br i1 %82, label %83, label %84

83:                                               ; preds = %69, %35
  br label %115

84:                                               ; preds = %69
  %85 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %3, align 8
  %86 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %85, i32 0, i32 6
  %87 = load i32, i32* %86, align 8
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %90, label %89

89:                                               ; preds = %84
  store i32 0, i32* %4, align 4
  br label %94

90:                                               ; preds = %84
  %91 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %3, align 8
  %92 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  store i32 %93, i32* %4, align 4
  br label %94

94:                                               ; preds = %90, %89
  %95 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %3, align 8
  %96 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* %4, align 4
  %99 = or i32 %98, %97
  store i32 %99, i32* %4, align 4
  %100 = load i32, i32* %4, align 4
  %101 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %3, align 8
  %102 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %101, i32 0, i32 4
  store i32 %100, i32* %102, align 8
  %103 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %104 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %3, align 8
  %105 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %104, i32 0, i32 5
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 2
  %107 = load i64*, i64** %106, align 8
  %108 = call i32 @ARRAY_SIZE(i64* %107)
  %109 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %3, align 8
  %110 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %109, i32 0, i32 5
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 2
  %112 = load i64*, i64** %111, align 8
  %113 = load i32, i32* %4, align 4
  %114 = call i32 @do_automute(%struct.hda_codec* %103, i32 %108, i64* %112, i32 %113)
  br label %115

115:                                              ; preds = %94, %83
  ret void
}

declare dso_local i32 @do_automute(%struct.hda_codec*, i32, i64*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
