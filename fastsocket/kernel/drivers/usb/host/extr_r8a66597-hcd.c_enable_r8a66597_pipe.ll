; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_r8a66597-hcd.c_enable_r8a66597_pipe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_r8a66597-hcd.c_enable_r8a66597_pipe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r8a66597 = type { i32* }
%struct.urb = type { i32 }
%struct.usb_host_endpoint = type { %struct.r8a66597_pipe* }
%struct.r8a66597_pipe = type { %struct.r8a66597_pipe_info }
%struct.r8a66597_pipe_info = type { i64 }
%struct.r8a66597_device = type { i32* }

@.str = private unnamed_addr constant [13 x i8] c"enable_pipe:\00", align 1
@R8A66597_PIPE_NO_DMA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.r8a66597*, %struct.urb*, %struct.usb_host_endpoint*, %struct.r8a66597_pipe_info*)* @enable_r8a66597_pipe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @enable_r8a66597_pipe(%struct.r8a66597* %0, %struct.urb* %1, %struct.usb_host_endpoint* %2, %struct.r8a66597_pipe_info* %3) #0 {
  %5 = alloca %struct.r8a66597*, align 8
  %6 = alloca %struct.urb*, align 8
  %7 = alloca %struct.usb_host_endpoint*, align 8
  %8 = alloca %struct.r8a66597_pipe_info*, align 8
  %9 = alloca %struct.r8a66597_device*, align 8
  %10 = alloca %struct.r8a66597_pipe*, align 8
  store %struct.r8a66597* %0, %struct.r8a66597** %5, align 8
  store %struct.urb* %1, %struct.urb** %6, align 8
  store %struct.usb_host_endpoint* %2, %struct.usb_host_endpoint** %7, align 8
  store %struct.r8a66597_pipe_info* %3, %struct.r8a66597_pipe_info** %8, align 8
  %11 = load %struct.r8a66597*, %struct.r8a66597** %5, align 8
  %12 = load %struct.urb*, %struct.urb** %6, align 8
  %13 = call %struct.r8a66597_device* @get_urb_to_r8a66597_dev(%struct.r8a66597* %11, %struct.urb* %12)
  store %struct.r8a66597_device* %13, %struct.r8a66597_device** %9, align 8
  %14 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %7, align 8
  %15 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %14, i32 0, i32 0
  %16 = load %struct.r8a66597_pipe*, %struct.r8a66597_pipe** %15, align 8
  store %struct.r8a66597_pipe* %16, %struct.r8a66597_pipe** %10, align 8
  %17 = call i32 @dbg(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %18 = load %struct.r8a66597_pipe*, %struct.r8a66597_pipe** %10, align 8
  %19 = getelementptr inbounds %struct.r8a66597_pipe, %struct.r8a66597_pipe* %18, i32 0, i32 0
  %20 = load %struct.r8a66597_pipe_info*, %struct.r8a66597_pipe_info** %8, align 8
  %21 = bitcast %struct.r8a66597_pipe_info* %19 to i8*
  %22 = bitcast %struct.r8a66597_pipe_info* %20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %21, i8* align 8 %22, i64 8, i1 false)
  %23 = load %struct.r8a66597_pipe*, %struct.r8a66597_pipe** %10, align 8
  %24 = load i32, i32* @R8A66597_PIPE_NO_DMA, align 4
  %25 = call i32 @set_pipe_reg_addr(%struct.r8a66597_pipe* %23, i32 %24)
  %26 = load %struct.r8a66597*, %struct.r8a66597** %5, align 8
  %27 = getelementptr inbounds %struct.r8a66597, %struct.r8a66597* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = load %struct.r8a66597_pipe*, %struct.r8a66597_pipe** %10, align 8
  %30 = getelementptr inbounds %struct.r8a66597_pipe, %struct.r8a66597_pipe* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.r8a66597_pipe_info, %struct.r8a66597_pipe_info* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = getelementptr inbounds i32, i32* %28, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %33, align 4
  %36 = load %struct.r8a66597_device*, %struct.r8a66597_device** %9, align 8
  %37 = getelementptr inbounds %struct.r8a66597_device, %struct.r8a66597_device* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = load %struct.r8a66597_pipe*, %struct.r8a66597_pipe** %10, align 8
  %40 = getelementptr inbounds %struct.r8a66597_pipe, %struct.r8a66597_pipe* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.r8a66597_pipe_info, %struct.r8a66597_pipe_info* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = getelementptr inbounds i32, i32* %38, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %43, align 4
  %46 = load %struct.r8a66597*, %struct.r8a66597** %5, align 8
  %47 = load %struct.r8a66597_device*, %struct.r8a66597_device** %9, align 8
  %48 = load %struct.r8a66597_pipe*, %struct.r8a66597_pipe** %10, align 8
  %49 = load %struct.urb*, %struct.urb** %6, align 8
  %50 = call i32 @enable_r8a66597_pipe_dma(%struct.r8a66597* %46, %struct.r8a66597_device* %47, %struct.r8a66597_pipe* %48, %struct.urb* %49)
  ret void
}

declare dso_local %struct.r8a66597_device* @get_urb_to_r8a66597_dev(%struct.r8a66597*, %struct.urb*) #1

declare dso_local i32 @dbg(i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @set_pipe_reg_addr(%struct.r8a66597_pipe*, i32) #1

declare dso_local i32 @enable_r8a66597_pipe_dma(%struct.r8a66597*, %struct.r8a66597_device*, %struct.r8a66597_pipe*, %struct.urb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
