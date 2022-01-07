; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_realtek.c_alc269_fill_coef.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_realtek.c_alc269_fill_coef.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { %struct.alc_spec* }
%struct.alc_spec = type { i64 }

@ALC269_TYPE_ALC269VB = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hda_codec*)* @alc269_fill_coef to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @alc269_fill_coef(%struct.hda_codec* %0) #0 {
  %2 = alloca %struct.hda_codec*, align 8
  %3 = alloca %struct.alc_spec*, align 8
  %4 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %2, align 8
  %5 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %6 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %5, i32 0, i32 0
  %7 = load %struct.alc_spec*, %struct.alc_spec** %6, align 8
  store %struct.alc_spec* %7, %struct.alc_spec** %3, align 8
  %8 = load %struct.alc_spec*, %struct.alc_spec** %3, align 8
  %9 = getelementptr inbounds %struct.alc_spec, %struct.alc_spec* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @ALC269_TYPE_ALC269VB, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  br label %89

14:                                               ; preds = %1
  %15 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %16 = call i32 @alc_get_coef0(%struct.hda_codec* %15)
  %17 = and i32 %16, 255
  %18 = icmp slt i32 %17, 21
  br i1 %18, label %19, label %24

19:                                               ; preds = %14
  %20 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %21 = call i32 @alc_write_coef_idx(%struct.hda_codec* %20, i32 15, i32 38411)
  %22 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %23 = call i32 @alc_write_coef_idx(%struct.hda_codec* %22, i32 14, i32 34839)
  br label %24

24:                                               ; preds = %19, %14
  %25 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %26 = call i32 @alc_get_coef0(%struct.hda_codec* %25)
  %27 = and i32 %26, 255
  %28 = icmp eq i32 %27, 22
  br i1 %28, label %29, label %34

29:                                               ; preds = %24
  %30 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %31 = call i32 @alc_write_coef_idx(%struct.hda_codec* %30, i32 15, i32 38411)
  %32 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %33 = call i32 @alc_write_coef_idx(%struct.hda_codec* %32, i32 14, i32 34836)
  br label %34

34:                                               ; preds = %29, %24
  %35 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %36 = call i32 @alc_get_coef0(%struct.hda_codec* %35)
  %37 = and i32 %36, 255
  %38 = icmp eq i32 %37, 23
  br i1 %38, label %39, label %46

39:                                               ; preds = %34
  %40 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %41 = call i32 @alc_read_coef_idx(%struct.hda_codec* %40, i32 4)
  store i32 %41, i32* %4, align 4
  %42 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %43 = load i32, i32* %4, align 4
  %44 = or i32 %43, 2048
  %45 = call i32 @alc_write_coef_idx(%struct.hda_codec* %42, i32 4, i32 %44)
  br label %46

46:                                               ; preds = %39, %34
  %47 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %48 = call i32 @alc_get_coef0(%struct.hda_codec* %47)
  %49 = and i32 %48, 255
  %50 = icmp eq i32 %49, 24
  br i1 %50, label %51, label %76

51:                                               ; preds = %46
  %52 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %53 = call i32 @alc_read_coef_idx(%struct.hda_codec* %52, i32 13)
  store i32 %53, i32* %4, align 4
  %54 = load i32, i32* %4, align 4
  %55 = and i32 %54, 3072
  %56 = ashr i32 %55, 10
  %57 = icmp ne i32 %56, 1
  br i1 %57, label %58, label %63

58:                                               ; preds = %51
  %59 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %60 = load i32, i32* %4, align 4
  %61 = or i32 %60, 1024
  %62 = call i32 @alc_write_coef_idx(%struct.hda_codec* %59, i32 13, i32 %61)
  br label %63

63:                                               ; preds = %58, %51
  %64 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %65 = call i32 @alc_read_coef_idx(%struct.hda_codec* %64, i32 23)
  store i32 %65, i32* %4, align 4
  %66 = load i32, i32* %4, align 4
  %67 = and i32 %66, 448
  %68 = ashr i32 %67, 6
  %69 = icmp ne i32 %68, 4
  br i1 %69, label %70, label %75

70:                                               ; preds = %63
  %71 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %72 = load i32, i32* %4, align 4
  %73 = or i32 %72, 128
  %74 = call i32 @alc_write_coef_idx(%struct.hda_codec* %71, i32 23, i32 %73)
  br label %75

75:                                               ; preds = %70, %63
  br label %76

76:                                               ; preds = %75, %46
  %77 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %78 = call i32 @alc_read_coef_idx(%struct.hda_codec* %77, i32 13)
  store i32 %78, i32* %4, align 4
  %79 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %80 = load i32, i32* %4, align 4
  %81 = or i32 %80, 16384
  %82 = call i32 @alc_write_coef_idx(%struct.hda_codec* %79, i32 13, i32 %81)
  %83 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %84 = call i32 @alc_read_coef_idx(%struct.hda_codec* %83, i32 4)
  store i32 %84, i32* %4, align 4
  %85 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %86 = load i32, i32* %4, align 4
  %87 = or i32 %86, 2048
  %88 = call i32 @alc_write_coef_idx(%struct.hda_codec* %85, i32 4, i32 %87)
  br label %89

89:                                               ; preds = %76, %13
  ret void
}

declare dso_local i32 @alc_get_coef0(%struct.hda_codec*) #1

declare dso_local i32 @alc_write_coef_idx(%struct.hda_codec*, i32, i32) #1

declare dso_local i32 @alc_read_coef_idx(%struct.hda_codec*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
