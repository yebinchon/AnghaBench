; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_generic.c_is_active_nid.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_generic.c_is_active_nid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { %struct.hda_gen_spec* }
%struct.hda_gen_spec = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.nid_path = type { i32, i64*, i32*, i32 }

@HDA_OUTPUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hda_codec*, i64, i32, i32)* @is_active_nid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_active_nid(%struct.hda_codec* %0, i64 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.hda_codec*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.hda_gen_spec*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.nid_path*, align 8
  store %struct.hda_codec* %0, %struct.hda_codec** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %15 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %14, i32 0, i32 0
  %16 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %15, align 8
  store %struct.hda_gen_spec* %16, %struct.hda_gen_spec** %10, align 8
  store i32 0, i32* %12, align 4
  br label %17

17:                                               ; preds = %72, %4
  %18 = load i32, i32* %12, align 4
  %19 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %10, align 8
  %20 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp slt i32 %18, %22
  br i1 %23, label %24, label %75

24:                                               ; preds = %17
  %25 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %10, align 8
  %26 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %25, i32 0, i32 0
  %27 = load i32, i32* %12, align 4
  %28 = call %struct.nid_path* @snd_array_elem(%struct.TYPE_2__* %26, i32 %27)
  store %struct.nid_path* %28, %struct.nid_path** %13, align 8
  %29 = load %struct.nid_path*, %struct.nid_path** %13, align 8
  %30 = getelementptr inbounds %struct.nid_path, %struct.nid_path* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 8
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %24
  br label %72

34:                                               ; preds = %24
  store i32 0, i32* %11, align 4
  br label %35

35:                                               ; preds = %68, %34
  %36 = load i32, i32* %11, align 4
  %37 = load %struct.nid_path*, %struct.nid_path** %13, align 8
  %38 = getelementptr inbounds %struct.nid_path, %struct.nid_path* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp slt i32 %36, %39
  br i1 %40, label %41, label %71

41:                                               ; preds = %35
  %42 = load %struct.nid_path*, %struct.nid_path** %13, align 8
  %43 = getelementptr inbounds %struct.nid_path, %struct.nid_path* %42, i32 0, i32 1
  %44 = load i64*, i64** %43, align 8
  %45 = load i32, i32* %11, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i64, i64* %44, i64 %46
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* %7, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %67

51:                                               ; preds = %41
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* @HDA_OUTPUT, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %65, label %55

55:                                               ; preds = %51
  %56 = load %struct.nid_path*, %struct.nid_path** %13, align 8
  %57 = getelementptr inbounds %struct.nid_path, %struct.nid_path* %56, i32 0, i32 2
  %58 = load i32*, i32** %57, align 8
  %59 = load i32, i32* %11, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %9, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %55, %51
  store i32 1, i32* %5, align 4
  br label %76

66:                                               ; preds = %55
  br label %71

67:                                               ; preds = %41
  br label %68

68:                                               ; preds = %67
  %69 = load i32, i32* %11, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %11, align 4
  br label %35

71:                                               ; preds = %66, %35
  br label %72

72:                                               ; preds = %71, %33
  %73 = load i32, i32* %12, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %12, align 4
  br label %17

75:                                               ; preds = %17
  store i32 0, i32* %5, align 4
  br label %76

76:                                               ; preds = %75, %65
  %77 = load i32, i32* %5, align 4
  ret i32 %77
}

declare dso_local %struct.nid_path* @snd_array_elem(%struct.TYPE_2__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
