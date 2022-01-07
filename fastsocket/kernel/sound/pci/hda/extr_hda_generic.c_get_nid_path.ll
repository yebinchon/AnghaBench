; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_generic.c_get_nid_path.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_generic.c_get_nid_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nid_path = type { i32, i64* }
%struct.hda_codec = type { %struct.hda_gen_spec* }
%struct.hda_gen_spec = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.nid_path* (%struct.hda_codec*, i64, i64, i32)* @get_nid_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.nid_path* @get_nid_path(%struct.hda_codec* %0, i64 %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.nid_path*, align 8
  %6 = alloca %struct.hda_codec*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.hda_gen_spec*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.nid_path*, align 8
  store %struct.hda_codec* %0, %struct.hda_codec** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %14 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %13, i32 0, i32 0
  %15 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %14, align 8
  store %struct.hda_gen_spec* %15, %struct.hda_gen_spec** %10, align 8
  store i32 0, i32* %11, align 4
  br label %16

16:                                               ; preds = %83, %4
  %17 = load i32, i32* %11, align 4
  %18 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %10, align 8
  %19 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp slt i32 %17, %21
  br i1 %22, label %23, label %86

23:                                               ; preds = %16
  %24 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %10, align 8
  %25 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %24, i32 0, i32 0
  %26 = load i32, i32* %11, align 4
  %27 = call %struct.nid_path* @snd_array_elem(%struct.TYPE_2__* %25, i32 %26)
  store %struct.nid_path* %27, %struct.nid_path** %12, align 8
  %28 = load %struct.nid_path*, %struct.nid_path** %12, align 8
  %29 = getelementptr inbounds %struct.nid_path, %struct.nid_path* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp sle i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %23
  br label %83

33:                                               ; preds = %23
  %34 = load i64, i64* %7, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %44

36:                                               ; preds = %33
  %37 = load %struct.nid_path*, %struct.nid_path** %12, align 8
  %38 = getelementptr inbounds %struct.nid_path, %struct.nid_path* %37, i32 0, i32 1
  %39 = load i64*, i64** %38, align 8
  %40 = getelementptr inbounds i64, i64* %39, i64 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* %7, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %82

44:                                               ; preds = %36, %33
  %45 = load i64, i64* %8, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %60

47:                                               ; preds = %44
  %48 = load %struct.nid_path*, %struct.nid_path** %12, align 8
  %49 = getelementptr inbounds %struct.nid_path, %struct.nid_path* %48, i32 0, i32 1
  %50 = load i64*, i64** %49, align 8
  %51 = load %struct.nid_path*, %struct.nid_path** %12, align 8
  %52 = getelementptr inbounds %struct.nid_path, %struct.nid_path* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = sub nsw i32 %53, 1
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i64, i64* %50, i64 %55
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* %8, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %82

60:                                               ; preds = %47, %44
  %61 = load i32, i32* %9, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %79

63:                                               ; preds = %60
  %64 = load i32, i32* %9, align 4
  %65 = icmp sgt i32 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %63
  %67 = load %struct.nid_path*, %struct.nid_path** %12, align 8
  %68 = load i32, i32* %9, align 4
  %69 = call i64 @is_nid_contained(%struct.nid_path* %67, i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %79, label %71

71:                                               ; preds = %66, %63
  %72 = load i32, i32* %9, align 4
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %81

74:                                               ; preds = %71
  %75 = load %struct.nid_path*, %struct.nid_path** %12, align 8
  %76 = load i32, i32* %9, align 4
  %77 = call i64 @is_nid_contained(%struct.nid_path* %75, i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %81, label %79

79:                                               ; preds = %74, %66, %60
  %80 = load %struct.nid_path*, %struct.nid_path** %12, align 8
  store %struct.nid_path* %80, %struct.nid_path** %5, align 8
  br label %87

81:                                               ; preds = %74, %71
  br label %82

82:                                               ; preds = %81, %47, %36
  br label %83

83:                                               ; preds = %82, %32
  %84 = load i32, i32* %11, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %11, align 4
  br label %16

86:                                               ; preds = %16
  store %struct.nid_path* null, %struct.nid_path** %5, align 8
  br label %87

87:                                               ; preds = %86, %79
  %88 = load %struct.nid_path*, %struct.nid_path** %5, align 8
  ret %struct.nid_path* %88
}

declare dso_local %struct.nid_path* @snd_array_elem(%struct.TYPE_2__*, i32) #1

declare dso_local i64 @is_nid_contained(%struct.nid_path*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
