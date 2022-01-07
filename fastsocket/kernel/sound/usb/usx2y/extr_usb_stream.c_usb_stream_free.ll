; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/usb/usx2y/extr_usb_stream.c_usb_stream_free.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/usb/usx2y/extr_usb_stream.c_usb_stream_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_stream_kernel = type { %struct.usb_stream*, i32*, i32**, i32** }
%struct.usb_stream = type { i32, i32 }

@USB_STREAM_NURBS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @usb_stream_free(%struct.usb_stream_kernel* %0) #0 {
  %2 = alloca %struct.usb_stream_kernel*, align 8
  %3 = alloca %struct.usb_stream*, align 8
  %4 = alloca i32, align 4
  store %struct.usb_stream_kernel* %0, %struct.usb_stream_kernel** %2, align 8
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %38, %1
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @USB_STREAM_NURBS, align 4
  %8 = icmp ult i32 %6, %7
  br i1 %8, label %9, label %41

9:                                                ; preds = %5
  %10 = load %struct.usb_stream_kernel*, %struct.usb_stream_kernel** %2, align 8
  %11 = getelementptr inbounds %struct.usb_stream_kernel, %struct.usb_stream_kernel* %10, i32 0, i32 3
  %12 = load i32**, i32*** %11, align 8
  %13 = load i32, i32* %4, align 4
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds i32*, i32** %12, i64 %14
  %16 = load i32*, i32** %15, align 8
  %17 = call i32 @usb_free_urb(i32* %16)
  %18 = load %struct.usb_stream_kernel*, %struct.usb_stream_kernel** %2, align 8
  %19 = getelementptr inbounds %struct.usb_stream_kernel, %struct.usb_stream_kernel* %18, i32 0, i32 3
  %20 = load i32**, i32*** %19, align 8
  %21 = load i32, i32* %4, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds i32*, i32** %20, i64 %22
  store i32* null, i32** %23, align 8
  %24 = load %struct.usb_stream_kernel*, %struct.usb_stream_kernel** %2, align 8
  %25 = getelementptr inbounds %struct.usb_stream_kernel, %struct.usb_stream_kernel* %24, i32 0, i32 2
  %26 = load i32**, i32*** %25, align 8
  %27 = load i32, i32* %4, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds i32*, i32** %26, i64 %28
  %30 = load i32*, i32** %29, align 8
  %31 = call i32 @usb_free_urb(i32* %30)
  %32 = load %struct.usb_stream_kernel*, %struct.usb_stream_kernel** %2, align 8
  %33 = getelementptr inbounds %struct.usb_stream_kernel, %struct.usb_stream_kernel* %32, i32 0, i32 2
  %34 = load i32**, i32*** %33, align 8
  %35 = load i32, i32* %4, align 4
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds i32*, i32** %34, i64 %36
  store i32* null, i32** %37, align 8
  br label %38

38:                                               ; preds = %9
  %39 = load i32, i32* %4, align 4
  %40 = add i32 %39, 1
  store i32 %40, i32* %4, align 4
  br label %5

41:                                               ; preds = %5
  %42 = load %struct.usb_stream_kernel*, %struct.usb_stream_kernel** %2, align 8
  %43 = getelementptr inbounds %struct.usb_stream_kernel, %struct.usb_stream_kernel* %42, i32 0, i32 0
  %44 = load %struct.usb_stream*, %struct.usb_stream** %43, align 8
  store %struct.usb_stream* %44, %struct.usb_stream** %3, align 8
  %45 = load %struct.usb_stream*, %struct.usb_stream** %3, align 8
  %46 = icmp ne %struct.usb_stream* %45, null
  br i1 %46, label %48, label %47

47:                                               ; preds = %41
  br label %69

48:                                               ; preds = %41
  %49 = load %struct.usb_stream_kernel*, %struct.usb_stream_kernel** %2, align 8
  %50 = getelementptr inbounds %struct.usb_stream_kernel, %struct.usb_stream_kernel* %49, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  %52 = ptrtoint i32* %51 to i64
  %53 = load %struct.usb_stream*, %struct.usb_stream** %3, align 8
  %54 = getelementptr inbounds %struct.usb_stream, %struct.usb_stream* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @get_order(i32 %55)
  %57 = call i32 @free_pages(i64 %52, i32 %56)
  %58 = load %struct.usb_stream_kernel*, %struct.usb_stream_kernel** %2, align 8
  %59 = getelementptr inbounds %struct.usb_stream_kernel, %struct.usb_stream_kernel* %58, i32 0, i32 1
  store i32* null, i32** %59, align 8
  %60 = load %struct.usb_stream*, %struct.usb_stream** %3, align 8
  %61 = ptrtoint %struct.usb_stream* %60 to i64
  %62 = load %struct.usb_stream*, %struct.usb_stream** %3, align 8
  %63 = getelementptr inbounds %struct.usb_stream, %struct.usb_stream* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @get_order(i32 %64)
  %66 = call i32 @free_pages(i64 %61, i32 %65)
  %67 = load %struct.usb_stream_kernel*, %struct.usb_stream_kernel** %2, align 8
  %68 = getelementptr inbounds %struct.usb_stream_kernel, %struct.usb_stream_kernel* %67, i32 0, i32 0
  store %struct.usb_stream* null, %struct.usb_stream** %68, align 8
  br label %69

69:                                               ; preds = %48, %47
  ret void
}

declare dso_local i32 @usb_free_urb(i32*) #1

declare dso_local i32 @free_pages(i64, i32) #1

declare dso_local i32 @get_order(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
