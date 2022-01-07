; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_auto_parser.c_get_hp_label_index.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_auto_parser.c_get_hp_label_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hda_codec*, i32, i32*, i32)* @get_hp_label_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_hp_label_index(%struct.hda_codec* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.hda_codec*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  store %struct.hda_codec* %0, %struct.hda_codec** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %12, align 4
  %14 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %15 = load i32, i32* %7, align 4
  %16 = call i8* @check_output_pfx(%struct.hda_codec* %14, i32 %15)
  store i8* %16, i8** %13, align 8
  %17 = load i32, i32* %7, align 4
  %18 = load i32*, i32** %8, align 8
  %19 = load i32, i32* %9, align 4
  %20 = call i32 @find_idx_in_nid_list(i32 %17, i32* %18, i32 %19)
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* %10, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %48

24:                                               ; preds = %4
  store i32 0, i32* %11, align 4
  br label %25

25:                                               ; preds = %43, %24
  %26 = load i32, i32* %11, align 4
  %27 = load i32, i32* %10, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %46

29:                                               ; preds = %25
  %30 = load i8*, i8** %13, align 8
  %31 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %32 = load i32*, i32** %8, align 8
  %33 = load i32, i32* %11, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = call i8* @check_output_pfx(%struct.hda_codec* %31, i32 %36)
  %38 = icmp eq i8* %30, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %29
  %40 = load i32, i32* %12, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %12, align 4
  br label %42

42:                                               ; preds = %39, %29
  br label %43

43:                                               ; preds = %42
  %44 = load i32, i32* %11, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %11, align 4
  br label %25

46:                                               ; preds = %25
  %47 = load i32, i32* %12, align 4
  store i32 %47, i32* %5, align 4
  br label %48

48:                                               ; preds = %46, %23
  %49 = load i32, i32* %5, align 4
  ret i32 %49
}

declare dso_local i8* @check_output_pfx(%struct.hda_codec*, i32) #1

declare dso_local i32 @find_idx_in_nid_list(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
