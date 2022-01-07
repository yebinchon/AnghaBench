; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/virtio/extr_virtio_pci.c_vp_find_vqs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/virtio/extr_virtio_pci.c_vp_find_vqs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.virtio_device = type { i32 }
%struct.virtqueue = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.virtio_device*, i32, %struct.virtqueue**, i32**, i8**)* @vp_find_vqs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vp_find_vqs(%struct.virtio_device* %0, i32 %1, %struct.virtqueue** %2, i32** %3, i8** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.virtio_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.virtqueue**, align 8
  %10 = alloca i32**, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i32, align 4
  store %struct.virtio_device* %0, %struct.virtio_device** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.virtqueue** %2, %struct.virtqueue*** %9, align 8
  store i32** %3, i32*** %10, align 8
  store i8** %4, i8*** %11, align 8
  %13 = load %struct.virtio_device*, %struct.virtio_device** %7, align 8
  %14 = load i32, i32* %8, align 4
  %15 = load %struct.virtqueue**, %struct.virtqueue*** %9, align 8
  %16 = load i32**, i32*** %10, align 8
  %17 = load i8**, i8*** %11, align 8
  %18 = call i32 @vp_try_to_find_vqs(%struct.virtio_device* %13, i32 %14, %struct.virtqueue** %15, i32** %16, i8** %17, i32 1, i32 1)
  store i32 %18, i32* %12, align 4
  %19 = load i32, i32* %12, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %39

22:                                               ; preds = %5
  %23 = load %struct.virtio_device*, %struct.virtio_device** %7, align 8
  %24 = load i32, i32* %8, align 4
  %25 = load %struct.virtqueue**, %struct.virtqueue*** %9, align 8
  %26 = load i32**, i32*** %10, align 8
  %27 = load i8**, i8*** %11, align 8
  %28 = call i32 @vp_try_to_find_vqs(%struct.virtio_device* %23, i32 %24, %struct.virtqueue** %25, i32** %26, i8** %27, i32 1, i32 0)
  store i32 %28, i32* %12, align 4
  %29 = load i32, i32* %12, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %22
  store i32 0, i32* %6, align 4
  br label %39

32:                                               ; preds = %22
  %33 = load %struct.virtio_device*, %struct.virtio_device** %7, align 8
  %34 = load i32, i32* %8, align 4
  %35 = load %struct.virtqueue**, %struct.virtqueue*** %9, align 8
  %36 = load i32**, i32*** %10, align 8
  %37 = load i8**, i8*** %11, align 8
  %38 = call i32 @vp_try_to_find_vqs(%struct.virtio_device* %33, i32 %34, %struct.virtqueue** %35, i32** %36, i8** %37, i32 0, i32 0)
  store i32 %38, i32* %6, align 4
  br label %39

39:                                               ; preds = %32, %31, %21
  %40 = load i32, i32* %6, align 4
  ret i32 %40
}

declare dso_local i32 @vp_try_to_find_vqs(%struct.virtio_device*, i32, %struct.virtqueue**, i32**, i8**, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
