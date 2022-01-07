; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_r8a66597-hcd.c_prepare_packet_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_r8a66597-hcd.c_prepare_packet_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r8a66597 = type { i32 }
%struct.r8a66597_td = type { i32, %struct.TYPE_5__*, %struct.urb* }
%struct.TYPE_5__ = type { i32, i64 }
%struct.urb = type { i64, i32 }

@R8A66597_DIR = common dso_local global i32 0, align 4
@DCPCFG = common dso_local global i32 0, align 4
@ISEL = common dso_local global i32 0, align 4
@CURPIPE = common dso_local global i32 0, align 4
@CFIFOSEL = common dso_local global i32 0, align 4
@BCLR = common dso_local global i32 0, align 4
@CFIFOCTR = common dso_local global i32 0, align 4
@TRENB = common dso_local global i32 0, align 4
@BRDYSTS = common dso_local global i32 0, align 4
@FRDY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.r8a66597*, %struct.r8a66597_td*)* @prepare_packet_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @prepare_packet_write(%struct.r8a66597* %0, %struct.r8a66597_td* %1) #0 {
  %3 = alloca %struct.r8a66597*, align 8
  %4 = alloca %struct.r8a66597_td*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.urb*, align 8
  store %struct.r8a66597* %0, %struct.r8a66597** %3, align 8
  store %struct.r8a66597_td* %1, %struct.r8a66597_td** %4, align 8
  %7 = load %struct.r8a66597_td*, %struct.r8a66597_td** %4, align 8
  %8 = getelementptr inbounds %struct.r8a66597_td, %struct.r8a66597_td* %7, i32 0, i32 2
  %9 = load %struct.urb*, %struct.urb** %8, align 8
  store %struct.urb* %9, %struct.urb** %6, align 8
  %10 = load %struct.urb*, %struct.urb** %6, align 8
  %11 = getelementptr inbounds %struct.urb, %struct.urb* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = call i64 @usb_pipecontrol(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %51

15:                                               ; preds = %2
  %16 = load %struct.r8a66597*, %struct.r8a66597** %3, align 8
  %17 = load %struct.r8a66597_td*, %struct.r8a66597_td** %4, align 8
  %18 = getelementptr inbounds %struct.r8a66597_td, %struct.r8a66597_td* %17, i32 0, i32 1
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %20 = call i32 @pipe_stop(%struct.r8a66597* %16, %struct.TYPE_5__* %19)
  %21 = load %struct.r8a66597*, %struct.r8a66597** %3, align 8
  %22 = load i32, i32* @R8A66597_DIR, align 4
  %23 = load i32, i32* @DCPCFG, align 4
  %24 = call i32 @r8a66597_bset(%struct.r8a66597* %21, i32 %22, i32 %23)
  %25 = load %struct.r8a66597*, %struct.r8a66597** %3, align 8
  %26 = load i32, i32* @ISEL, align 4
  %27 = load i32, i32* @ISEL, align 4
  %28 = load i32, i32* @CURPIPE, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @CFIFOSEL, align 4
  %31 = call i32 @r8a66597_mdfy(%struct.r8a66597* %25, i32 %26, i32 %29, i32 %30)
  %32 = load %struct.r8a66597*, %struct.r8a66597** %3, align 8
  %33 = load i32, i32* @CFIFOSEL, align 4
  %34 = load i32, i32* @CURPIPE, align 4
  %35 = call i32 @r8a66597_reg_wait(%struct.r8a66597* %32, i32 %33, i32 %34, i32 0)
  %36 = load %struct.urb*, %struct.urb** %6, align 8
  %37 = getelementptr inbounds %struct.urb, %struct.urb* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %50

40:                                               ; preds = %15
  %41 = load %struct.r8a66597*, %struct.r8a66597** %3, align 8
  %42 = load %struct.r8a66597_td*, %struct.r8a66597_td** %4, align 8
  %43 = getelementptr inbounds %struct.r8a66597_td, %struct.r8a66597_td* %42, i32 0, i32 1
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %43, align 8
  %45 = call i32 @r8a66597_pipe_toggle(%struct.r8a66597* %41, %struct.TYPE_5__* %44, i32 1)
  %46 = load %struct.r8a66597*, %struct.r8a66597** %3, align 8
  %47 = load i32, i32* @BCLR, align 4
  %48 = load i32, i32* @CFIFOCTR, align 4
  %49 = call i32 @r8a66597_write(%struct.r8a66597* %46, i32 %47, i32 %48)
  br label %50

50:                                               ; preds = %40, %15
  br label %77

51:                                               ; preds = %2
  %52 = load %struct.urb*, %struct.urb** %6, align 8
  %53 = getelementptr inbounds %struct.urb, %struct.urb* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %51
  %57 = load %struct.r8a66597*, %struct.r8a66597** %3, align 8
  %58 = load %struct.r8a66597_td*, %struct.r8a66597_td** %4, align 8
  %59 = call i32 @pipe_setting(%struct.r8a66597* %57, %struct.r8a66597_td* %58)
  br label %60

60:                                               ; preds = %56, %51
  %61 = load %struct.r8a66597_td*, %struct.r8a66597_td** %4, align 8
  %62 = getelementptr inbounds %struct.r8a66597_td, %struct.r8a66597_td* %61, i32 0, i32 1
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %76

67:                                               ; preds = %60
  %68 = load %struct.r8a66597*, %struct.r8a66597** %3, align 8
  %69 = load i32, i32* @TRENB, align 4
  %70 = load %struct.r8a66597_td*, %struct.r8a66597_td** %4, align 8
  %71 = getelementptr inbounds %struct.r8a66597_td, %struct.r8a66597_td* %70, i32 0, i32 1
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = call i32 @r8a66597_bclr(%struct.r8a66597* %68, i32 %69, i64 %74)
  br label %76

76:                                               ; preds = %67, %60
  br label %77

77:                                               ; preds = %76, %50
  %78 = load %struct.r8a66597*, %struct.r8a66597** %3, align 8
  %79 = load %struct.r8a66597_td*, %struct.r8a66597_td** %4, align 8
  %80 = getelementptr inbounds %struct.r8a66597_td, %struct.r8a66597_td* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = shl i32 1, %81
  %83 = xor i32 %82, -1
  %84 = load i32, i32* @BRDYSTS, align 4
  %85 = call i32 @r8a66597_write(%struct.r8a66597* %78, i32 %83, i32 %84)
  %86 = load %struct.r8a66597*, %struct.r8a66597** %3, align 8
  %87 = load %struct.r8a66597_td*, %struct.r8a66597_td** %4, align 8
  %88 = getelementptr inbounds %struct.r8a66597_td, %struct.r8a66597_td* %87, i32 0, i32 1
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %88, align 8
  %90 = call i32 @fifo_change_from_pipe(%struct.r8a66597* %86, %struct.TYPE_5__* %89)
  %91 = load %struct.r8a66597*, %struct.r8a66597** %3, align 8
  %92 = load %struct.r8a66597_td*, %struct.r8a66597_td** %4, align 8
  %93 = getelementptr inbounds %struct.r8a66597_td, %struct.r8a66597_td* %92, i32 0, i32 1
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @r8a66597_read(%struct.r8a66597* %91, i32 %96)
  store i32 %97, i32* %5, align 4
  %98 = load i32, i32* %5, align 4
  %99 = load i32, i32* @FRDY, align 4
  %100 = and i32 %98, %99
  %101 = icmp eq i32 %100, 0
  %102 = zext i1 %101 to i32
  %103 = call i64 @unlikely(i32 %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %112

105:                                              ; preds = %77
  %106 = load %struct.r8a66597*, %struct.r8a66597** %3, align 8
  %107 = load %struct.urb*, %struct.urb** %6, align 8
  %108 = load %struct.r8a66597_td*, %struct.r8a66597_td** %4, align 8
  %109 = getelementptr inbounds %struct.r8a66597_td, %struct.r8a66597_td* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = call i32 @pipe_irq_enable(%struct.r8a66597* %106, %struct.urb* %107, i32 %110)
  br label %118

112:                                              ; preds = %77
  %113 = load %struct.r8a66597*, %struct.r8a66597** %3, align 8
  %114 = load %struct.r8a66597_td*, %struct.r8a66597_td** %4, align 8
  %115 = getelementptr inbounds %struct.r8a66597_td, %struct.r8a66597_td* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = call i32 @packet_write(%struct.r8a66597* %113, i32 %116)
  br label %118

118:                                              ; preds = %112, %105
  %119 = load %struct.r8a66597*, %struct.r8a66597** %3, align 8
  %120 = load %struct.r8a66597_td*, %struct.r8a66597_td** %4, align 8
  %121 = getelementptr inbounds %struct.r8a66597_td, %struct.r8a66597_td* %120, i32 0, i32 1
  %122 = load %struct.TYPE_5__*, %struct.TYPE_5__** %121, align 8
  %123 = call i32 @pipe_start(%struct.r8a66597* %119, %struct.TYPE_5__* %122)
  ret void
}

declare dso_local i64 @usb_pipecontrol(i32) #1

declare dso_local i32 @pipe_stop(%struct.r8a66597*, %struct.TYPE_5__*) #1

declare dso_local i32 @r8a66597_bset(%struct.r8a66597*, i32, i32) #1

declare dso_local i32 @r8a66597_mdfy(%struct.r8a66597*, i32, i32, i32) #1

declare dso_local i32 @r8a66597_reg_wait(%struct.r8a66597*, i32, i32, i32) #1

declare dso_local i32 @r8a66597_pipe_toggle(%struct.r8a66597*, %struct.TYPE_5__*, i32) #1

declare dso_local i32 @r8a66597_write(%struct.r8a66597*, i32, i32) #1

declare dso_local i32 @pipe_setting(%struct.r8a66597*, %struct.r8a66597_td*) #1

declare dso_local i32 @r8a66597_bclr(%struct.r8a66597*, i32, i64) #1

declare dso_local i32 @fifo_change_from_pipe(%struct.r8a66597*, %struct.TYPE_5__*) #1

declare dso_local i32 @r8a66597_read(%struct.r8a66597*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @pipe_irq_enable(%struct.r8a66597*, %struct.urb*, i32) #1

declare dso_local i32 @packet_write(%struct.r8a66597*, i32) #1

declare dso_local i32 @pipe_start(%struct.r8a66597*, %struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
