; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_r8a66597-hcd.c_enable_r8a66597_pipe_dma.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_r8a66597-hcd.c_enable_r8a66597_pipe_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r8a66597 = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }
%struct.r8a66597_device = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.r8a66597_pipe = type { i32, %struct.r8a66597_pipe_info, i32 }
%struct.r8a66597_pipe_info = type { i16, i64, i64, i64 }
%struct.urb = type { i32 }

@R8A66597_INT = common dso_local global i64 0, align 8
@R8A66597_MAX_DMA_CHANNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"address %d, EndpointAddress 0x%02x use DMA FIFO\0A\00", align 1
@USB_ENDPOINT_DIR_MASK = common dso_local global i64 0, align 8
@CURPIPE = common dso_local global i16 0, align 2
@BCLR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.r8a66597*, %struct.r8a66597_device*, %struct.r8a66597_pipe*, %struct.urb*)* @enable_r8a66597_pipe_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @enable_r8a66597_pipe_dma(%struct.r8a66597* %0, %struct.r8a66597_device* %1, %struct.r8a66597_pipe* %2, %struct.urb* %3) #0 {
  %5 = alloca %struct.r8a66597*, align 8
  %6 = alloca %struct.r8a66597_device*, align 8
  %7 = alloca %struct.r8a66597_pipe*, align 8
  %8 = alloca %struct.urb*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.r8a66597_pipe_info*, align 8
  %11 = alloca i16, align 2
  store %struct.r8a66597* %0, %struct.r8a66597** %5, align 8
  store %struct.r8a66597_device* %1, %struct.r8a66597_device** %6, align 8
  store %struct.r8a66597_pipe* %2, %struct.r8a66597_pipe** %7, align 8
  store %struct.urb* %3, %struct.urb** %8, align 8
  %12 = load %struct.r8a66597_pipe*, %struct.r8a66597_pipe** %7, align 8
  %13 = getelementptr inbounds %struct.r8a66597_pipe, %struct.r8a66597_pipe* %12, i32 0, i32 1
  store %struct.r8a66597_pipe_info* %13, %struct.r8a66597_pipe_info** %10, align 8
  %14 = load %struct.r8a66597*, %struct.r8a66597** %5, align 8
  %15 = call zeroext i16 @mbw_value(%struct.r8a66597* %14)
  store i16 %15, i16* %11, align 2
  %16 = load %struct.r8a66597*, %struct.r8a66597** %5, align 8
  %17 = getelementptr inbounds %struct.r8a66597, %struct.r8a66597* %16, i32 0, i32 1
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %4
  br label %133

23:                                               ; preds = %4
  %24 = load %struct.r8a66597_pipe*, %struct.r8a66597_pipe** %7, align 8
  %25 = getelementptr inbounds %struct.r8a66597_pipe, %struct.r8a66597_pipe* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.r8a66597_pipe_info, %struct.r8a66597_pipe_info* %25, i32 0, i32 0
  %27 = load i16, i16* %26, align 8
  %28 = zext i16 %27 to i32
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %133

30:                                               ; preds = %23
  %31 = load %struct.r8a66597_pipe_info*, %struct.r8a66597_pipe_info** %10, align 8
  %32 = getelementptr inbounds %struct.r8a66597_pipe_info, %struct.r8a66597_pipe_info* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @R8A66597_INT, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %133

36:                                               ; preds = %30
  store i32 0, i32* %9, align 4
  br label %37

37:                                               ; preds = %129, %36
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* @R8A66597_MAX_DMA_CHANNEL, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %132

41:                                               ; preds = %37
  %42 = load %struct.r8a66597*, %struct.r8a66597** %5, align 8
  %43 = getelementptr inbounds %struct.r8a66597, %struct.r8a66597* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* %9, align 4
  %46 = shl i32 1, %45
  %47 = and i32 %44, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %41
  br label %129

50:                                               ; preds = %41
  %51 = load %struct.r8a66597_device*, %struct.r8a66597_device** %6, align 8
  %52 = getelementptr inbounds %struct.r8a66597_device, %struct.r8a66597_device* %51, i32 0, i32 1
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load %struct.urb*, %struct.urb** %8, align 8
  %56 = getelementptr inbounds %struct.urb, %struct.urb* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @usb_pipedevice(i32 %57)
  %59 = load %struct.r8a66597_pipe_info*, %struct.r8a66597_pipe_info** %10, align 8
  %60 = getelementptr inbounds %struct.r8a66597_pipe_info, %struct.r8a66597_pipe_info* %59, i32 0, i32 3
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %50
  %64 = load i64, i64* @USB_ENDPOINT_DIR_MASK, align 8
  %65 = load %struct.r8a66597_pipe_info*, %struct.r8a66597_pipe_info** %10, align 8
  %66 = getelementptr inbounds %struct.r8a66597_pipe_info, %struct.r8a66597_pipe_info* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = add nsw i64 %64, %67
  br label %73

69:                                               ; preds = %50
  %70 = load %struct.r8a66597_pipe_info*, %struct.r8a66597_pipe_info** %10, align 8
  %71 = getelementptr inbounds %struct.r8a66597_pipe_info, %struct.r8a66597_pipe_info* %70, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  br label %73

73:                                               ; preds = %69, %63
  %74 = phi i64 [ %68, %63 ], [ %72, %69 ]
  %75 = call i32 @dev_info(i32* %54, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %58, i64 %74)
  %76 = load i32, i32* %9, align 4
  %77 = shl i32 1, %76
  %78 = load %struct.r8a66597*, %struct.r8a66597** %5, align 8
  %79 = getelementptr inbounds %struct.r8a66597, %struct.r8a66597* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = or i32 %80, %77
  store i32 %81, i32* %79, align 8
  %82 = load i32, i32* %9, align 4
  %83 = shl i32 1, %82
  %84 = load %struct.r8a66597_device*, %struct.r8a66597_device** %6, align 8
  %85 = getelementptr inbounds %struct.r8a66597_device, %struct.r8a66597_device* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = or i32 %86, %83
  store i32 %87, i32* %85, align 8
  %88 = load %struct.r8a66597_pipe*, %struct.r8a66597_pipe** %7, align 8
  %89 = load i32, i32* %9, align 4
  %90 = call i32 @set_pipe_reg_addr(%struct.r8a66597_pipe* %88, i32 %89)
  %91 = load %struct.r8a66597*, %struct.r8a66597** %5, align 8
  %92 = call i32 @cfifo_change(%struct.r8a66597* %91, i32 0)
  %93 = load %struct.r8a66597*, %struct.r8a66597** %5, align 8
  %94 = load i16, i16* %11, align 2
  %95 = zext i16 %94 to i32
  %96 = load %struct.r8a66597_pipe*, %struct.r8a66597_pipe** %7, align 8
  %97 = getelementptr inbounds %struct.r8a66597_pipe, %struct.r8a66597_pipe* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.r8a66597_pipe_info, %struct.r8a66597_pipe_info* %97, i32 0, i32 0
  %99 = load i16, i16* %98, align 8
  %100 = zext i16 %99 to i32
  %101 = or i32 %95, %100
  %102 = trunc i32 %101 to i16
  %103 = load i16, i16* %11, align 2
  %104 = zext i16 %103 to i32
  %105 = load i16, i16* @CURPIPE, align 2
  %106 = zext i16 %105 to i32
  %107 = or i32 %104, %106
  %108 = trunc i32 %107 to i16
  %109 = load %struct.r8a66597_pipe*, %struct.r8a66597_pipe** %7, align 8
  %110 = getelementptr inbounds %struct.r8a66597_pipe, %struct.r8a66597_pipe* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 8
  %112 = call i32 @r8a66597_mdfy(%struct.r8a66597* %93, i16 zeroext %102, i16 zeroext %108, i32 %111)
  %113 = load %struct.r8a66597*, %struct.r8a66597** %5, align 8
  %114 = load %struct.r8a66597_pipe*, %struct.r8a66597_pipe** %7, align 8
  %115 = getelementptr inbounds %struct.r8a66597_pipe, %struct.r8a66597_pipe* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 8
  %117 = load i16, i16* @CURPIPE, align 2
  %118 = load %struct.r8a66597_pipe*, %struct.r8a66597_pipe** %7, align 8
  %119 = getelementptr inbounds %struct.r8a66597_pipe, %struct.r8a66597_pipe* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.r8a66597_pipe_info, %struct.r8a66597_pipe_info* %119, i32 0, i32 0
  %121 = load i16, i16* %120, align 8
  %122 = call i32 @r8a66597_reg_wait(%struct.r8a66597* %113, i32 %116, i16 zeroext %117, i16 zeroext %121)
  %123 = load %struct.r8a66597*, %struct.r8a66597** %5, align 8
  %124 = load i32, i32* @BCLR, align 4
  %125 = load %struct.r8a66597_pipe*, %struct.r8a66597_pipe** %7, align 8
  %126 = getelementptr inbounds %struct.r8a66597_pipe, %struct.r8a66597_pipe* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = call i32 @r8a66597_bset(%struct.r8a66597* %123, i32 %124, i32 %127)
  br label %132

129:                                              ; preds = %49
  %130 = load i32, i32* %9, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %9, align 4
  br label %37

132:                                              ; preds = %73, %37
  br label %133

133:                                              ; preds = %22, %132, %30, %23
  ret void
}

declare dso_local zeroext i16 @mbw_value(%struct.r8a66597*) #1

declare dso_local i32 @dev_info(i32*, i8*, i32, i64) #1

declare dso_local i32 @usb_pipedevice(i32) #1

declare dso_local i32 @set_pipe_reg_addr(%struct.r8a66597_pipe*, i32) #1

declare dso_local i32 @cfifo_change(%struct.r8a66597*, i32) #1

declare dso_local i32 @r8a66597_mdfy(%struct.r8a66597*, i16 zeroext, i16 zeroext, i32) #1

declare dso_local i32 @r8a66597_reg_wait(%struct.r8a66597*, i32, i16 zeroext, i16 zeroext) #1

declare dso_local i32 @r8a66597_bset(%struct.r8a66597*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
