; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_ca0132.c_dspio_get_response_data.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_ca0132.c_dspio_get_response_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { %struct.ca0132_spec* }
%struct.ca0132_spec = type { i32, i32, i32, i32, i32 }

@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hda_codec*)* @dspio_get_response_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dspio_get_response_data(%struct.hda_codec* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hda_codec*, align 8
  %4 = alloca %struct.ca0132_spec*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %3, align 8
  %7 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %8 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %7, i32 0, i32 0
  %9 = load %struct.ca0132_spec*, %struct.ca0132_spec** %8, align 8
  store %struct.ca0132_spec* %9, %struct.ca0132_spec** %4, align 8
  store i32 0, i32* %5, align 4
  %10 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %11 = call i64 @dspio_read(%struct.hda_codec* %10, i32* %5)
  %12 = icmp slt i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load i32, i32* @EIO, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %45

16:                                               ; preds = %1
  %17 = load i32, i32* %5, align 4
  %18 = and i32 %17, 16777215
  %19 = load %struct.ca0132_spec*, %struct.ca0132_spec** %4, align 8
  %20 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp eq i32 %18, %21
  br i1 %22, label %23, label %42

23:                                               ; preds = %16
  %24 = load i32, i32* %5, align 4
  %25 = load %struct.ca0132_spec*, %struct.ca0132_spec** %4, align 8
  %26 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 4
  %27 = load i32, i32* %5, align 4
  %28 = lshr i32 %27, 27
  %29 = load %struct.ca0132_spec*, %struct.ca0132_spec** %4, align 8
  %30 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %29, i32 0, i32 2
  store i32 %28, i32* %30, align 4
  %31 = load %struct.ca0132_spec*, %struct.ca0132_spec** %4, align 8
  %32 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %6, align 4
  %34 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %35 = load %struct.ca0132_spec*, %struct.ca0132_spec** %4, align 8
  %36 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.ca0132_spec*, %struct.ca0132_spec** %4, align 8
  %39 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %38, i32 0, i32 2
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @dspio_read_multiple(%struct.hda_codec* %34, i32 %37, i32* %39, i32 %40)
  store i32 0, i32* %2, align 4
  br label %45

42:                                               ; preds = %16
  %43 = load i32, i32* @EIO, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %2, align 4
  br label %45

45:                                               ; preds = %42, %23, %13
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local i64 @dspio_read(%struct.hda_codec*, i32*) #1

declare dso_local i32 @dspio_read_multiple(%struct.hda_codec*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
