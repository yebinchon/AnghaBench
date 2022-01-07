; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_config.c_usb_descriptor_fillbuf.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_config.c_usb_descriptor_fillbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_descriptor_header = type { i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @usb_descriptor_fillbuf(i8* %0, i32 %1, %struct.usb_descriptor_header** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.usb_descriptor_header**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.usb_descriptor_header** %2, %struct.usb_descriptor_header*** %7, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to i32*
  store i32* %11, i32** %8, align 8
  %12 = load %struct.usb_descriptor_header**, %struct.usb_descriptor_header*** %7, align 8
  %13 = icmp ne %struct.usb_descriptor_header** %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %3
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %4, align 4
  br label %58

17:                                               ; preds = %3
  br label %18

18:                                               ; preds = %46, %17
  %19 = load %struct.usb_descriptor_header**, %struct.usb_descriptor_header*** %7, align 8
  %20 = load %struct.usb_descriptor_header*, %struct.usb_descriptor_header** %19, align 8
  %21 = icmp ne %struct.usb_descriptor_header* null, %20
  br i1 %21, label %22, label %49

22:                                               ; preds = %18
  %23 = load %struct.usb_descriptor_header**, %struct.usb_descriptor_header*** %7, align 8
  %24 = load %struct.usb_descriptor_header*, %struct.usb_descriptor_header** %23, align 8
  %25 = getelementptr inbounds %struct.usb_descriptor_header, %struct.usb_descriptor_header* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp ugt i32 %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %22
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %4, align 4
  br label %58

33:                                               ; preds = %22
  %34 = load i32*, i32** %8, align 8
  %35 = load %struct.usb_descriptor_header**, %struct.usb_descriptor_header*** %7, align 8
  %36 = load %struct.usb_descriptor_header*, %struct.usb_descriptor_header** %35, align 8
  %37 = load i32, i32* %9, align 4
  %38 = call i32 @memcpy(i32* %34, %struct.usb_descriptor_header* %36, i32 %37)
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* %6, align 4
  %41 = sub i32 %40, %39
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* %9, align 4
  %43 = load i32*, i32** %8, align 8
  %44 = zext i32 %42 to i64
  %45 = getelementptr inbounds i32, i32* %43, i64 %44
  store i32* %45, i32** %8, align 8
  br label %46

46:                                               ; preds = %33
  %47 = load %struct.usb_descriptor_header**, %struct.usb_descriptor_header*** %7, align 8
  %48 = getelementptr inbounds %struct.usb_descriptor_header*, %struct.usb_descriptor_header** %47, i32 1
  store %struct.usb_descriptor_header** %48, %struct.usb_descriptor_header*** %7, align 8
  br label %18

49:                                               ; preds = %18
  %50 = load i32*, i32** %8, align 8
  %51 = load i8*, i8** %5, align 8
  %52 = bitcast i8* %51 to i32*
  %53 = ptrtoint i32* %50 to i64
  %54 = ptrtoint i32* %52 to i64
  %55 = sub i64 %53, %54
  %56 = sdiv exact i64 %55, 4
  %57 = trunc i64 %56 to i32
  store i32 %57, i32* %4, align 4
  br label %58

58:                                               ; preds = %49, %30, %14
  %59 = load i32, i32* %4, align 4
  ret i32 %59
}

declare dso_local i32 @memcpy(i32*, %struct.usb_descriptor_header*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
