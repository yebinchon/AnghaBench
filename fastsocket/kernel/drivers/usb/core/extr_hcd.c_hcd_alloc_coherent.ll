; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/core/extr_hcd.c_hcd_alloc_coherent.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/core/extr_hcd.c_hcd_alloc_coherent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_bus = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_bus*, i32, i32*, i8**, i64, i32)* @hcd_alloc_coherent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hcd_alloc_coherent(%struct.usb_bus* %0, i32 %1, i32* %2, i8** %3, i64 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.usb_bus*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  store %struct.usb_bus* %0, %struct.usb_bus** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32* %2, i32** %10, align 8
  store i8** %3, i8*** %11, align 8
  store i64 %4, i64* %12, align 8
  store i32 %5, i32* %13, align 4
  %15 = load %struct.usb_bus*, %struct.usb_bus** %8, align 8
  %16 = load i64, i64* %12, align 8
  %17 = add i64 %16, 8
  %18 = load i32, i32* %9, align 4
  %19 = load i32*, i32** %10, align 8
  %20 = call i8* @hcd_buffer_alloc(%struct.usb_bus* %15, i64 %17, i32 %18, i32* %19)
  store i8* %20, i8** %14, align 8
  %21 = load i8*, i8** %14, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %6
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %7, align 4
  br label %47

26:                                               ; preds = %6
  %27 = load i8**, i8*** %11, align 8
  %28 = load i8*, i8** %27, align 8
  %29 = ptrtoint i8* %28 to i64
  %30 = load i8*, i8** %14, align 8
  %31 = load i64, i64* %12, align 8
  %32 = getelementptr inbounds i8, i8* %30, i64 %31
  %33 = bitcast i8* %32 to i64*
  %34 = call i32 @put_unaligned(i64 %29, i64* %33)
  %35 = load i32, i32* %13, align 4
  %36 = load i32, i32* @DMA_TO_DEVICE, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %44

38:                                               ; preds = %26
  %39 = load i8*, i8** %14, align 8
  %40 = load i8**, i8*** %11, align 8
  %41 = load i8*, i8** %40, align 8
  %42 = load i64, i64* %12, align 8
  %43 = call i32 @memcpy(i8* %39, i8* %41, i64 %42)
  br label %44

44:                                               ; preds = %38, %26
  %45 = load i8*, i8** %14, align 8
  %46 = load i8**, i8*** %11, align 8
  store i8* %45, i8** %46, align 8
  store i32 0, i32* %7, align 4
  br label %47

47:                                               ; preds = %44, %23
  %48 = load i32, i32* %7, align 4
  ret i32 %48
}

declare dso_local i8* @hcd_buffer_alloc(%struct.usb_bus*, i64, i32, i32*) #1

declare dso_local i32 @put_unaligned(i64, i64*) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
