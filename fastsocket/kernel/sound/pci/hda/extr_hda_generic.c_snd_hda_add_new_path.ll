; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_generic.c_snd_hda_add_new_path.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_generic.c_snd_hda_add_new_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nid_path = type { i32 }
%struct.hda_codec = type { %struct.hda_gen_spec* }
%struct.hda_gen_spec = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.nid_path* @snd_hda_add_new_path(%struct.hda_codec* %0, i64 %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.nid_path*, align 8
  %6 = alloca %struct.hda_codec*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.hda_gen_spec*, align 8
  %11 = alloca %struct.nid_path*, align 8
  store %struct.hda_codec* %0, %struct.hda_codec** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %13 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %12, i32 0, i32 0
  %14 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %13, align 8
  store %struct.hda_gen_spec* %14, %struct.hda_gen_spec** %10, align 8
  %15 = load i64, i64* %7, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %27

17:                                               ; preds = %4
  %18 = load i64, i64* %8, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %17
  %21 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %22 = load i64, i64* %7, align 8
  %23 = load i64, i64* %8, align 8
  %24 = call i32 @is_reachable_path(%struct.hda_codec* %21, i64 %22, i64 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %20
  store %struct.nid_path* null, %struct.nid_path** %5, align 8
  br label %62

27:                                               ; preds = %20, %17, %4
  %28 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %29 = load i64, i64* %7, align 8
  %30 = load i64, i64* %8, align 8
  %31 = load i32, i32* %9, align 4
  %32 = call %struct.nid_path* @get_nid_path(%struct.hda_codec* %28, i64 %29, i64 %30, i32 %31)
  store %struct.nid_path* %32, %struct.nid_path** %11, align 8
  %33 = load %struct.nid_path*, %struct.nid_path** %11, align 8
  %34 = icmp ne %struct.nid_path* %33, null
  br i1 %34, label %35, label %37

35:                                               ; preds = %27
  %36 = load %struct.nid_path*, %struct.nid_path** %11, align 8
  store %struct.nid_path* %36, %struct.nid_path** %5, align 8
  br label %62

37:                                               ; preds = %27
  %38 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %10, align 8
  %39 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %38, i32 0, i32 0
  %40 = call %struct.nid_path* @snd_array_new(%struct.TYPE_2__* %39)
  store %struct.nid_path* %40, %struct.nid_path** %11, align 8
  %41 = load %struct.nid_path*, %struct.nid_path** %11, align 8
  %42 = icmp ne %struct.nid_path* %41, null
  br i1 %42, label %44, label %43

43:                                               ; preds = %37
  store %struct.nid_path* null, %struct.nid_path** %5, align 8
  br label %62

44:                                               ; preds = %37
  %45 = load %struct.nid_path*, %struct.nid_path** %11, align 8
  %46 = call i32 @memset(%struct.nid_path* %45, i32 0, i32 4)
  %47 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %48 = load i64, i64* %7, align 8
  %49 = load i64, i64* %8, align 8
  %50 = load i32, i32* %9, align 4
  %51 = load %struct.nid_path*, %struct.nid_path** %11, align 8
  %52 = call i64 @snd_hda_parse_nid_path(%struct.hda_codec* %47, i64 %48, i64 %49, i32 %50, %struct.nid_path* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %44
  %55 = load %struct.nid_path*, %struct.nid_path** %11, align 8
  store %struct.nid_path* %55, %struct.nid_path** %5, align 8
  br label %62

56:                                               ; preds = %44
  %57 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %10, align 8
  %58 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = add nsw i32 %60, -1
  store i32 %61, i32* %59, align 4
  store %struct.nid_path* null, %struct.nid_path** %5, align 8
  br label %62

62:                                               ; preds = %56, %54, %43, %35, %26
  %63 = load %struct.nid_path*, %struct.nid_path** %5, align 8
  ret %struct.nid_path* %63
}

declare dso_local i32 @is_reachable_path(%struct.hda_codec*, i64, i64) #1

declare dso_local %struct.nid_path* @get_nid_path(%struct.hda_codec*, i64, i64, i32) #1

declare dso_local %struct.nid_path* @snd_array_new(%struct.TYPE_2__*) #1

declare dso_local i32 @memset(%struct.nid_path*, i32, i32) #1

declare dso_local i64 @snd_hda_parse_nid_path(%struct.hda_codec*, i64, i64, i32, %struct.nid_path*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
