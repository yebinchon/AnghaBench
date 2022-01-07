; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/usb/usx2y/extr_usb_stream.c_init_pipe_urbs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/usb/usx2y/extr_usb_stream.c_init_pipe_urbs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_stream_kernel = type { i32 }
%struct.urb = type { i8*, i32, i32, i32, i32, %struct.usb_iso_packet_descriptor*, %struct.usb_stream_kernel*, %struct.usb_device*, i32 }
%struct.usb_iso_packet_descriptor = type { i32, i64 }
%struct.usb_device = type { i32 }

@USB_STREAM_NURBS = common dso_local global i32 0, align 4
@URB_ISO_ASAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_stream_kernel*, i32, %struct.urb**, i8*, %struct.usb_device*, i32)* @init_pipe_urbs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_pipe_urbs(%struct.usb_stream_kernel* %0, i32 %1, %struct.urb** %2, i8* %3, %struct.usb_device* %4, i32 %5) #0 {
  %7 = alloca %struct.usb_stream_kernel*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.urb**, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.usb_device*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.urb*, align 8
  %18 = alloca %struct.usb_iso_packet_descriptor*, align 8
  store %struct.usb_stream_kernel* %0, %struct.usb_stream_kernel** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.urb** %2, %struct.urb*** %9, align 8
  store i8* %3, i8** %10, align 8
  store %struct.usb_device* %4, %struct.usb_device** %11, align 8
  store i32 %5, i32* %12, align 4
  %19 = load i32, i32* %8, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %6
  %22 = load i32, i32* %8, align 4
  br label %29

23:                                               ; preds = %6
  %24 = load %struct.usb_device*, %struct.usb_device** %11, align 8
  %25 = load i32, i32* %12, align 4
  %26 = load i32, i32* %12, align 4
  %27 = call i64 @usb_pipeout(i32 %26)
  %28 = call i32 @usb_maxpacket(%struct.usb_device* %24, i32 %25, i64 %27)
  br label %29

29:                                               ; preds = %23, %21
  %30 = phi i32 [ %22, %21 ], [ %28, %23 ]
  store i32 %30, i32* %15, align 4
  %31 = load i32, i32* %15, align 4
  %32 = load %struct.usb_stream_kernel*, %struct.usb_stream_kernel** %7, align 8
  %33 = getelementptr inbounds %struct.usb_stream_kernel, %struct.usb_stream_kernel* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = mul nsw i32 %31, %34
  store i32 %35, i32* %16, align 4
  store i32 0, i32* %13, align 4
  br label %36

36:                                               ; preds = %116, %29
  %37 = load i32, i32* %13, align 4
  %38 = load i32, i32* @USB_STREAM_NURBS, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %123

40:                                               ; preds = %36
  %41 = load %struct.urb**, %struct.urb*** %9, align 8
  %42 = load i32, i32* %13, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.urb*, %struct.urb** %41, i64 %43
  %45 = load %struct.urb*, %struct.urb** %44, align 8
  store %struct.urb* %45, %struct.urb** %17, align 8
  %46 = load i32, i32* @URB_ISO_ASAP, align 4
  %47 = load %struct.urb*, %struct.urb** %17, align 8
  %48 = getelementptr inbounds %struct.urb, %struct.urb* %47, i32 0, i32 8
  store i32 %46, i32* %48, align 8
  %49 = load i8*, i8** %10, align 8
  %50 = load %struct.urb*, %struct.urb** %17, align 8
  %51 = getelementptr inbounds %struct.urb, %struct.urb* %50, i32 0, i32 0
  store i8* %49, i8** %51, align 8
  %52 = load %struct.usb_device*, %struct.usb_device** %11, align 8
  %53 = load %struct.urb*, %struct.urb** %17, align 8
  %54 = getelementptr inbounds %struct.urb, %struct.urb* %53, i32 0, i32 7
  store %struct.usb_device* %52, %struct.usb_device** %54, align 8
  %55 = load i32, i32* %12, align 4
  %56 = load %struct.urb*, %struct.urb** %17, align 8
  %57 = getelementptr inbounds %struct.urb, %struct.urb* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 8
  %58 = load %struct.usb_stream_kernel*, %struct.usb_stream_kernel** %7, align 8
  %59 = getelementptr inbounds %struct.usb_stream_kernel, %struct.usb_stream_kernel* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.urb*, %struct.urb** %17, align 8
  %62 = getelementptr inbounds %struct.urb, %struct.urb* %61, i32 0, i32 2
  store i32 %60, i32* %62, align 4
  %63 = load %struct.usb_stream_kernel*, %struct.usb_stream_kernel** %7, align 8
  %64 = load %struct.urb*, %struct.urb** %17, align 8
  %65 = getelementptr inbounds %struct.urb, %struct.urb* %64, i32 0, i32 6
  store %struct.usb_stream_kernel* %63, %struct.usb_stream_kernel** %65, align 8
  %66 = load %struct.urb*, %struct.urb** %17, align 8
  %67 = getelementptr inbounds %struct.urb, %struct.urb* %66, i32 0, i32 3
  store i32 1, i32* %67, align 8
  %68 = load i32, i32* %12, align 4
  %69 = call i64 @usb_pipeout(i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %40
  br label %116

72:                                               ; preds = %40
  %73 = load i32, i32* %16, align 4
  %74 = load %struct.urb*, %struct.urb** %17, align 8
  %75 = getelementptr inbounds %struct.urb, %struct.urb* %74, i32 0, i32 4
  store i32 %73, i32* %75, align 4
  %76 = load %struct.urb*, %struct.urb** %17, align 8
  %77 = getelementptr inbounds %struct.urb, %struct.urb* %76, i32 0, i32 5
  %78 = load %struct.usb_iso_packet_descriptor*, %struct.usb_iso_packet_descriptor** %77, align 8
  store %struct.usb_iso_packet_descriptor* %78, %struct.usb_iso_packet_descriptor** %18, align 8
  %79 = load %struct.usb_iso_packet_descriptor*, %struct.usb_iso_packet_descriptor** %18, align 8
  %80 = getelementptr inbounds %struct.usb_iso_packet_descriptor, %struct.usb_iso_packet_descriptor* %79, i32 0, i32 1
  store i64 0, i64* %80, align 8
  %81 = load i32, i32* %15, align 4
  %82 = load %struct.usb_iso_packet_descriptor*, %struct.usb_iso_packet_descriptor** %18, align 8
  %83 = getelementptr inbounds %struct.usb_iso_packet_descriptor, %struct.usb_iso_packet_descriptor* %82, i32 0, i32 0
  store i32 %81, i32* %83, align 8
  store i32 1, i32* %14, align 4
  br label %84

84:                                               ; preds = %112, %72
  %85 = load i32, i32* %14, align 4
  %86 = load %struct.usb_stream_kernel*, %struct.usb_stream_kernel** %7, align 8
  %87 = getelementptr inbounds %struct.usb_stream_kernel, %struct.usb_stream_kernel* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = icmp slt i32 %85, %88
  br i1 %89, label %90, label %115

90:                                               ; preds = %84
  %91 = load %struct.usb_iso_packet_descriptor*, %struct.usb_iso_packet_descriptor** %18, align 8
  %92 = load i32, i32* %14, align 4
  %93 = sub nsw i32 %92, 1
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.usb_iso_packet_descriptor, %struct.usb_iso_packet_descriptor* %91, i64 %94
  %96 = getelementptr inbounds %struct.usb_iso_packet_descriptor, %struct.usb_iso_packet_descriptor* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = load i32, i32* %15, align 4
  %99 = sext i32 %98 to i64
  %100 = add nsw i64 %97, %99
  %101 = load %struct.usb_iso_packet_descriptor*, %struct.usb_iso_packet_descriptor** %18, align 8
  %102 = load i32, i32* %14, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.usb_iso_packet_descriptor, %struct.usb_iso_packet_descriptor* %101, i64 %103
  %105 = getelementptr inbounds %struct.usb_iso_packet_descriptor, %struct.usb_iso_packet_descriptor* %104, i32 0, i32 1
  store i64 %100, i64* %105, align 8
  %106 = load i32, i32* %15, align 4
  %107 = load %struct.usb_iso_packet_descriptor*, %struct.usb_iso_packet_descriptor** %18, align 8
  %108 = load i32, i32* %14, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.usb_iso_packet_descriptor, %struct.usb_iso_packet_descriptor* %107, i64 %109
  %111 = getelementptr inbounds %struct.usb_iso_packet_descriptor, %struct.usb_iso_packet_descriptor* %110, i32 0, i32 0
  store i32 %106, i32* %111, align 8
  br label %112

112:                                              ; preds = %90
  %113 = load i32, i32* %14, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %14, align 4
  br label %84

115:                                              ; preds = %84
  br label %116

116:                                              ; preds = %115, %71
  %117 = load i32, i32* %13, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %13, align 4
  %119 = load i32, i32* %16, align 4
  %120 = load i8*, i8** %10, align 8
  %121 = sext i32 %119 to i64
  %122 = getelementptr inbounds i8, i8* %120, i64 %121
  store i8* %122, i8** %10, align 8
  br label %36

123:                                              ; preds = %36
  ret void
}

declare dso_local i32 @usb_maxpacket(%struct.usb_device*, i32, i64) #1

declare dso_local i64 @usb_pipeout(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
