; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_r8a66597-hcd.c_init_pipe_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_r8a66597-hcd.c_init_pipe_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r8a66597 = type { i32 }
%struct.urb = type { i32 }
%struct.usb_host_endpoint = type { i32 }
%struct.usb_endpoint_descriptor = type { i32, i32 }
%struct.r8a66597_pipe_info = type { i64, i32, i64, i64, i32, i32, i32, i32, i32, i32 }

@R8A66597_BULK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.r8a66597*, %struct.urb*, %struct.usb_host_endpoint*, %struct.usb_endpoint_descriptor*)* @init_pipe_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_pipe_info(%struct.r8a66597* %0, %struct.urb* %1, %struct.usb_host_endpoint* %2, %struct.usb_endpoint_descriptor* %3) #0 {
  %5 = alloca %struct.r8a66597*, align 8
  %6 = alloca %struct.urb*, align 8
  %7 = alloca %struct.usb_host_endpoint*, align 8
  %8 = alloca %struct.usb_endpoint_descriptor*, align 8
  %9 = alloca %struct.r8a66597_pipe_info, align 8
  store %struct.r8a66597* %0, %struct.r8a66597** %5, align 8
  store %struct.urb* %1, %struct.urb** %6, align 8
  store %struct.usb_host_endpoint* %2, %struct.usb_host_endpoint** %7, align 8
  store %struct.usb_endpoint_descriptor* %3, %struct.usb_endpoint_descriptor** %8, align 8
  %10 = load %struct.r8a66597*, %struct.r8a66597** %5, align 8
  %11 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %8, align 8
  %12 = call i32 @get_empty_pipenum(%struct.r8a66597* %10, %struct.usb_endpoint_descriptor* %11)
  %13 = getelementptr inbounds %struct.r8a66597_pipe_info, %struct.r8a66597_pipe_info* %9, i32 0, i32 4
  store i32 %12, i32* %13, align 8
  %14 = load %struct.r8a66597*, %struct.r8a66597** %5, align 8
  %15 = load %struct.urb*, %struct.urb** %6, align 8
  %16 = call i32 @get_urb_to_r8a66597_addr(%struct.r8a66597* %14, %struct.urb* %15)
  %17 = getelementptr inbounds %struct.r8a66597_pipe_info, %struct.r8a66597_pipe_info* %9, i32 0, i32 9
  store i32 %16, i32* %17, align 4
  %18 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %8, align 8
  %19 = call i32 @usb_endpoint_num(%struct.usb_endpoint_descriptor* %18)
  %20 = getelementptr inbounds %struct.r8a66597_pipe_info, %struct.r8a66597_pipe_info* %9, i32 0, i32 8
  store i32 %19, i32* %20, align 8
  %21 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %8, align 8
  %22 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @le16_to_cpu(i32 %23)
  %25 = getelementptr inbounds %struct.r8a66597_pipe_info, %struct.r8a66597_pipe_info* %9, i32 0, i32 7
  store i32 %24, i32* %25, align 4
  %26 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %8, align 8
  %27 = call i32 @usb_endpoint_type(%struct.usb_endpoint_descriptor* %26)
  %28 = call i64 @get_r8a66597_type(i32 %27)
  %29 = getelementptr inbounds %struct.r8a66597_pipe_info, %struct.r8a66597_pipe_info* %9, i32 0, i32 0
  store i64 %28, i64* %29, align 8
  %30 = getelementptr inbounds %struct.r8a66597_pipe_info, %struct.r8a66597_pipe_info* %9, i32 0, i32 4
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @get_bufnum(i32 %31)
  %33 = getelementptr inbounds %struct.r8a66597_pipe_info, %struct.r8a66597_pipe_info* %9, i32 0, i32 6
  store i32 %32, i32* %33, align 8
  %34 = getelementptr inbounds %struct.r8a66597_pipe_info, %struct.r8a66597_pipe_info* %9, i32 0, i32 4
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @get_buf_bsize(i32 %35)
  %37 = getelementptr inbounds %struct.r8a66597_pipe_info, %struct.r8a66597_pipe_info* %9, i32 0, i32 5
  store i32 %36, i32* %37, align 4
  %38 = getelementptr inbounds %struct.r8a66597_pipe_info, %struct.r8a66597_pipe_info* %9, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @R8A66597_BULK, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %4
  %43 = getelementptr inbounds %struct.r8a66597_pipe_info, %struct.r8a66597_pipe_info* %9, i32 0, i32 3
  store i64 0, i64* %43, align 8
  %44 = getelementptr inbounds %struct.r8a66597_pipe_info, %struct.r8a66597_pipe_info* %9, i32 0, i32 2
  store i64 0, i64* %44, align 8
  br label %58

45:                                               ; preds = %4
  %46 = load %struct.urb*, %struct.urb** %6, align 8
  %47 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %8, align 8
  %48 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i64 @get_interval(%struct.urb* %46, i32 %49)
  %51 = getelementptr inbounds %struct.r8a66597_pipe_info, %struct.r8a66597_pipe_info* %9, i32 0, i32 3
  store i64 %50, i64* %51, align 8
  %52 = load %struct.urb*, %struct.urb** %6, align 8
  %53 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %8, align 8
  %54 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i64 @get_timer_interval(%struct.urb* %52, i32 %55)
  %57 = getelementptr inbounds %struct.r8a66597_pipe_info, %struct.r8a66597_pipe_info* %9, i32 0, i32 2
  store i64 %56, i64* %57, align 8
  br label %58

58:                                               ; preds = %45, %42
  %59 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %8, align 8
  %60 = call i64 @usb_endpoint_dir_in(%struct.usb_endpoint_descriptor* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %58
  %63 = getelementptr inbounds %struct.r8a66597_pipe_info, %struct.r8a66597_pipe_info* %9, i32 0, i32 1
  store i32 1, i32* %63, align 8
  br label %66

64:                                               ; preds = %58
  %65 = getelementptr inbounds %struct.r8a66597_pipe_info, %struct.r8a66597_pipe_info* %9, i32 0, i32 1
  store i32 0, i32* %65, align 8
  br label %66

66:                                               ; preds = %64, %62
  %67 = load %struct.r8a66597*, %struct.r8a66597** %5, align 8
  %68 = load %struct.urb*, %struct.urb** %6, align 8
  %69 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %7, align 8
  %70 = call i32 @enable_r8a66597_pipe(%struct.r8a66597* %67, %struct.urb* %68, %struct.usb_host_endpoint* %69, %struct.r8a66597_pipe_info* %9)
  ret void
}

declare dso_local i32 @get_empty_pipenum(%struct.r8a66597*, %struct.usb_endpoint_descriptor*) #1

declare dso_local i32 @get_urb_to_r8a66597_addr(%struct.r8a66597*, %struct.urb*) #1

declare dso_local i32 @usb_endpoint_num(%struct.usb_endpoint_descriptor*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i64 @get_r8a66597_type(i32) #1

declare dso_local i32 @usb_endpoint_type(%struct.usb_endpoint_descriptor*) #1

declare dso_local i32 @get_bufnum(i32) #1

declare dso_local i32 @get_buf_bsize(i32) #1

declare dso_local i64 @get_interval(%struct.urb*, i32) #1

declare dso_local i64 @get_timer_interval(%struct.urb*, i32) #1

declare dso_local i64 @usb_endpoint_dir_in(%struct.usb_endpoint_descriptor*) #1

declare dso_local i32 @enable_r8a66597_pipe(%struct.r8a66597*, %struct.urb*, %struct.usb_host_endpoint*, %struct.r8a66597_pipe_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
