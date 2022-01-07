; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/usb/usx2y/extr_usb_stream.c_init_urbs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/usb/usx2y/extr_usb_stream.c_init_urbs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_stream_kernel = type { i8*, i8**, i8**, i32, %struct.usb_stream* }
%struct.usb_stream = type { i32 }
%struct.usb_device = type { i32 }

@USB_STREAM_NURBS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_stream_kernel*, i32, %struct.usb_device*, i32, i32)* @init_urbs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_urbs(%struct.usb_stream_kernel* %0, i32 %1, %struct.usb_device* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.usb_stream_kernel*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.usb_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.usb_stream*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store %struct.usb_stream_kernel* %0, %struct.usb_stream_kernel** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.usb_device* %2, %struct.usb_device** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %14 = load %struct.usb_stream_kernel*, %struct.usb_stream_kernel** %6, align 8
  %15 = getelementptr inbounds %struct.usb_stream_kernel, %struct.usb_stream_kernel* %14, i32 0, i32 4
  %16 = load %struct.usb_stream*, %struct.usb_stream** %15, align 8
  store %struct.usb_stream* %16, %struct.usb_stream** %11, align 8
  %17 = load %struct.usb_stream*, %struct.usb_stream** %11, align 8
  %18 = bitcast %struct.usb_stream* %17 to i8*
  %19 = getelementptr inbounds i8, i8* %18, i64 4
  %20 = load %struct.usb_stream*, %struct.usb_stream** %11, align 8
  %21 = getelementptr inbounds %struct.usb_stream, %struct.usb_stream* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = sext i32 %22 to i64
  %24 = mul i64 4, %23
  %25 = getelementptr inbounds i8, i8* %19, i64 %24
  store i8* %25, i8** %12, align 8
  store i32 0, i32* %13, align 4
  br label %26

26:                                               ; preds = %53, %5
  %27 = load i32, i32* %13, align 4
  %28 = load i32, i32* @USB_STREAM_NURBS, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %56

30:                                               ; preds = %26
  %31 = load %struct.usb_stream_kernel*, %struct.usb_stream_kernel** %6, align 8
  %32 = getelementptr inbounds %struct.usb_stream_kernel, %struct.usb_stream_kernel* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @GFP_KERNEL, align 4
  %35 = call i8* @usb_alloc_urb(i32 %33, i32 %34)
  %36 = load %struct.usb_stream_kernel*, %struct.usb_stream_kernel** %6, align 8
  %37 = getelementptr inbounds %struct.usb_stream_kernel, %struct.usb_stream_kernel* %36, i32 0, i32 2
  %38 = load i8**, i8*** %37, align 8
  %39 = load i32, i32* %13, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i8*, i8** %38, i64 %40
  store i8* %35, i8** %41, align 8
  %42 = load %struct.usb_stream_kernel*, %struct.usb_stream_kernel** %6, align 8
  %43 = getelementptr inbounds %struct.usb_stream_kernel, %struct.usb_stream_kernel* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @GFP_KERNEL, align 4
  %46 = call i8* @usb_alloc_urb(i32 %44, i32 %45)
  %47 = load %struct.usb_stream_kernel*, %struct.usb_stream_kernel** %6, align 8
  %48 = getelementptr inbounds %struct.usb_stream_kernel, %struct.usb_stream_kernel* %47, i32 0, i32 1
  %49 = load i8**, i8*** %48, align 8
  %50 = load i32, i32* %13, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i8*, i8** %49, i64 %51
  store i8* %46, i8** %52, align 8
  br label %53

53:                                               ; preds = %30
  %54 = load i32, i32* %13, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %13, align 4
  br label %26

56:                                               ; preds = %26
  %57 = load %struct.usb_stream_kernel*, %struct.usb_stream_kernel** %6, align 8
  %58 = load i32, i32* %7, align 4
  %59 = load %struct.usb_stream_kernel*, %struct.usb_stream_kernel** %6, align 8
  %60 = getelementptr inbounds %struct.usb_stream_kernel, %struct.usb_stream_kernel* %59, i32 0, i32 2
  %61 = load i8**, i8*** %60, align 8
  %62 = load i8*, i8** %12, align 8
  %63 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %64 = load i32, i32* %9, align 4
  %65 = call i32 @init_pipe_urbs(%struct.usb_stream_kernel* %57, i32 %58, i8** %61, i8* %62, %struct.usb_device* %63, i32 %64)
  %66 = load %struct.usb_stream_kernel*, %struct.usb_stream_kernel** %6, align 8
  %67 = load i32, i32* %7, align 4
  %68 = load %struct.usb_stream_kernel*, %struct.usb_stream_kernel** %6, align 8
  %69 = getelementptr inbounds %struct.usb_stream_kernel, %struct.usb_stream_kernel* %68, i32 0, i32 1
  %70 = load i8**, i8*** %69, align 8
  %71 = load %struct.usb_stream_kernel*, %struct.usb_stream_kernel** %6, align 8
  %72 = getelementptr inbounds %struct.usb_stream_kernel, %struct.usb_stream_kernel* %71, i32 0, i32 0
  %73 = load i8*, i8** %72, align 8
  %74 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %75 = load i32, i32* %10, align 4
  %76 = call i32 @init_pipe_urbs(%struct.usb_stream_kernel* %66, i32 %67, i8** %70, i8* %73, %struct.usb_device* %74, i32 %75)
  ret void
}

declare dso_local i8* @usb_alloc_urb(i32, i32) #1

declare dso_local i32 @init_pipe_urbs(%struct.usb_stream_kernel*, i32, i8**, i8*, %struct.usb_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
