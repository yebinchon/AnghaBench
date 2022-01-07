; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/core/extr_config.c_find_next_descriptor.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/core/extr_config.c_find_next_descriptor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_descriptor_header = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32, i32, i32*)* @find_next_descriptor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_next_descriptor(i8* %0, i32 %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca %struct.usb_descriptor_header*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  store i32 0, i32* %12, align 4
  %14 = load i8*, i8** %6, align 8
  store i8* %14, i8** %13, align 8
  br label %15

15:                                               ; preds = %33, %5
  %16 = load i32, i32* %7, align 4
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %18, label %48

18:                                               ; preds = %15
  %19 = load i8*, i8** %6, align 8
  %20 = bitcast i8* %19 to %struct.usb_descriptor_header*
  store %struct.usb_descriptor_header* %20, %struct.usb_descriptor_header** %11, align 8
  %21 = load %struct.usb_descriptor_header*, %struct.usb_descriptor_header** %11, align 8
  %22 = getelementptr inbounds %struct.usb_descriptor_header, %struct.usb_descriptor_header* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* %8, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %32, label %26

26:                                               ; preds = %18
  %27 = load %struct.usb_descriptor_header*, %struct.usb_descriptor_header** %11, align 8
  %28 = getelementptr inbounds %struct.usb_descriptor_header, %struct.usb_descriptor_header* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* %9, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %26, %18
  br label %48

33:                                               ; preds = %26
  %34 = load %struct.usb_descriptor_header*, %struct.usb_descriptor_header** %11, align 8
  %35 = getelementptr inbounds %struct.usb_descriptor_header, %struct.usb_descriptor_header* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load i8*, i8** %6, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 %36
  store i8* %38, i8** %6, align 8
  %39 = load %struct.usb_descriptor_header*, %struct.usb_descriptor_header** %11, align 8
  %40 = getelementptr inbounds %struct.usb_descriptor_header, %struct.usb_descriptor_header* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load i32, i32* %7, align 4
  %43 = sext i32 %42 to i64
  %44 = sub nsw i64 %43, %41
  %45 = trunc i64 %44 to i32
  store i32 %45, i32* %7, align 4
  %46 = load i32, i32* %12, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %12, align 4
  br label %15

48:                                               ; preds = %32, %15
  %49 = load i32*, i32** %10, align 8
  %50 = icmp ne i32* %49, null
  br i1 %50, label %51, label %54

51:                                               ; preds = %48
  %52 = load i32, i32* %12, align 4
  %53 = load i32*, i32** %10, align 8
  store i32 %52, i32* %53, align 4
  br label %54

54:                                               ; preds = %51, %48
  %55 = load i8*, i8** %6, align 8
  %56 = load i8*, i8** %13, align 8
  %57 = ptrtoint i8* %55 to i64
  %58 = ptrtoint i8* %56 to i64
  %59 = sub i64 %57, %58
  %60 = trunc i64 %59 to i32
  ret i32 %60
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
