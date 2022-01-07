; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_r8a66597-hcd.c_prepare_packet_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_r8a66597-hcd.c_prepare_packet_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r8a66597 = type { i32 }
%struct.r8a66597_td = type { i32, %struct.TYPE_4__*, i32, %struct.urb* }
%struct.TYPE_4__ = type { i64, i64 }
%struct.urb = type { i64, i32, i32 }

@R8A66597_DIR = common dso_local global i32 0, align 4
@DCPCFG = common dso_local global i32 0, align 4
@ISEL = common dso_local global i32 0, align 4
@CURPIPE = common dso_local global i32 0, align 4
@CFIFOSEL = common dso_local global i32 0, align 4
@BCLR = common dso_local global i32 0, align 4
@CFIFOCTR = common dso_local global i64 0, align 8
@BRDYSTS = common dso_local global i64 0, align 8
@TRCLR = common dso_local global i32 0, align 4
@TRENB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.r8a66597*, %struct.r8a66597_td*)* @prepare_packet_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @prepare_packet_read(%struct.r8a66597* %0, %struct.r8a66597_td* %1) #0 {
  %3 = alloca %struct.r8a66597*, align 8
  %4 = alloca %struct.r8a66597_td*, align 8
  %5 = alloca %struct.urb*, align 8
  store %struct.r8a66597* %0, %struct.r8a66597** %3, align 8
  store %struct.r8a66597_td* %1, %struct.r8a66597_td** %4, align 8
  %6 = load %struct.r8a66597_td*, %struct.r8a66597_td** %4, align 8
  %7 = getelementptr inbounds %struct.r8a66597_td, %struct.r8a66597_td* %6, i32 0, i32 3
  %8 = load %struct.urb*, %struct.urb** %7, align 8
  store %struct.urb* %8, %struct.urb** %5, align 8
  %9 = load %struct.urb*, %struct.urb** %5, align 8
  %10 = getelementptr inbounds %struct.urb, %struct.urb* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = call i64 @usb_pipecontrol(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %60

14:                                               ; preds = %2
  %15 = load %struct.r8a66597*, %struct.r8a66597** %3, align 8
  %16 = load i32, i32* @R8A66597_DIR, align 4
  %17 = load i32, i32* @DCPCFG, align 4
  %18 = call i32 @r8a66597_bclr(%struct.r8a66597* %15, i32 %16, i32 %17)
  %19 = load %struct.r8a66597*, %struct.r8a66597** %3, align 8
  %20 = load i32, i32* @ISEL, align 4
  %21 = load i32, i32* @CURPIPE, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @CFIFOSEL, align 4
  %24 = call i32 @r8a66597_mdfy(%struct.r8a66597* %19, i32 0, i32 %22, i32 %23)
  %25 = load %struct.r8a66597*, %struct.r8a66597** %3, align 8
  %26 = load i32, i32* @CFIFOSEL, align 4
  %27 = load i32, i32* @CURPIPE, align 4
  %28 = call i32 @r8a66597_reg_wait(%struct.r8a66597* %25, i32 %26, i32 %27, i32 0)
  %29 = load %struct.urb*, %struct.urb** %5, align 8
  %30 = getelementptr inbounds %struct.urb, %struct.urb* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %43

33:                                               ; preds = %14
  %34 = load %struct.r8a66597*, %struct.r8a66597** %3, align 8
  %35 = load %struct.r8a66597_td*, %struct.r8a66597_td** %4, align 8
  %36 = getelementptr inbounds %struct.r8a66597_td, %struct.r8a66597_td* %35, i32 0, i32 1
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = call i32 @r8a66597_pipe_toggle(%struct.r8a66597* %34, %struct.TYPE_4__* %37, i32 1)
  %39 = load %struct.r8a66597*, %struct.r8a66597** %3, align 8
  %40 = load i32, i32* @BCLR, align 4
  %41 = load i64, i64* @CFIFOCTR, align 8
  %42 = call i32 @r8a66597_write(%struct.r8a66597* %39, i32 %40, i64 %41)
  br label %43

43:                                               ; preds = %33, %14
  %44 = load %struct.r8a66597*, %struct.r8a66597** %3, align 8
  %45 = load %struct.r8a66597_td*, %struct.r8a66597_td** %4, align 8
  %46 = getelementptr inbounds %struct.r8a66597_td, %struct.r8a66597_td* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @pipe_irq_disable(%struct.r8a66597* %44, i32 %47)
  %49 = load %struct.r8a66597*, %struct.r8a66597** %3, align 8
  %50 = load %struct.r8a66597_td*, %struct.r8a66597_td** %4, align 8
  %51 = getelementptr inbounds %struct.r8a66597_td, %struct.r8a66597_td* %50, i32 0, i32 1
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = call i32 @pipe_start(%struct.r8a66597* %49, %struct.TYPE_4__* %52)
  %54 = load %struct.r8a66597*, %struct.r8a66597** %3, align 8
  %55 = load %struct.urb*, %struct.urb** %5, align 8
  %56 = load %struct.r8a66597_td*, %struct.r8a66597_td** %4, align 8
  %57 = getelementptr inbounds %struct.r8a66597_td, %struct.r8a66597_td* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @pipe_irq_enable(%struct.r8a66597* %54, %struct.urb* %55, i32 %58)
  br label %137

60:                                               ; preds = %2
  %61 = load %struct.urb*, %struct.urb** %5, align 8
  %62 = getelementptr inbounds %struct.urb, %struct.urb* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp eq i64 %63, 0
  br i1 %64, label %65, label %136

65:                                               ; preds = %60
  %66 = load %struct.r8a66597*, %struct.r8a66597** %3, align 8
  %67 = load %struct.r8a66597_td*, %struct.r8a66597_td** %4, align 8
  %68 = getelementptr inbounds %struct.r8a66597_td, %struct.r8a66597_td* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @pipe_irq_disable(%struct.r8a66597* %66, i32 %69)
  %71 = load %struct.r8a66597*, %struct.r8a66597** %3, align 8
  %72 = load %struct.r8a66597_td*, %struct.r8a66597_td** %4, align 8
  %73 = call i32 @pipe_setting(%struct.r8a66597* %71, %struct.r8a66597_td* %72)
  %74 = load %struct.r8a66597*, %struct.r8a66597** %3, align 8
  %75 = load %struct.r8a66597_td*, %struct.r8a66597_td** %4, align 8
  %76 = getelementptr inbounds %struct.r8a66597_td, %struct.r8a66597_td* %75, i32 0, i32 1
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %76, align 8
  %78 = call i32 @pipe_stop(%struct.r8a66597* %74, %struct.TYPE_4__* %77)
  %79 = load %struct.r8a66597*, %struct.r8a66597** %3, align 8
  %80 = load %struct.r8a66597_td*, %struct.r8a66597_td** %4, align 8
  %81 = getelementptr inbounds %struct.r8a66597_td, %struct.r8a66597_td* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = shl i32 1, %82
  %84 = xor i32 %83, -1
  %85 = load i64, i64* @BRDYSTS, align 8
  %86 = call i32 @r8a66597_write(%struct.r8a66597* %79, i32 %84, i64 %85)
  %87 = load %struct.r8a66597_td*, %struct.r8a66597_td** %4, align 8
  %88 = getelementptr inbounds %struct.r8a66597_td, %struct.r8a66597_td* %87, i32 0, i32 1
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %124

93:                                               ; preds = %65
  %94 = load %struct.r8a66597*, %struct.r8a66597** %3, align 8
  %95 = load i32, i32* @TRCLR, align 4
  %96 = load %struct.r8a66597_td*, %struct.r8a66597_td** %4, align 8
  %97 = getelementptr inbounds %struct.r8a66597_td, %struct.r8a66597_td* %96, i32 0, i32 1
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = call i32 @r8a66597_write(%struct.r8a66597* %94, i32 %95, i64 %100)
  %102 = load %struct.r8a66597*, %struct.r8a66597** %3, align 8
  %103 = load %struct.urb*, %struct.urb** %5, align 8
  %104 = getelementptr inbounds %struct.urb, %struct.urb* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 8
  %106 = load %struct.r8a66597_td*, %struct.r8a66597_td** %4, align 8
  %107 = getelementptr inbounds %struct.r8a66597_td, %struct.r8a66597_td* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 8
  %109 = call i32 @DIV_ROUND_UP(i32 %105, i32 %108)
  %110 = load %struct.r8a66597_td*, %struct.r8a66597_td** %4, align 8
  %111 = getelementptr inbounds %struct.r8a66597_td, %struct.r8a66597_td* %110, i32 0, i32 1
  %112 = load %struct.TYPE_4__*, %struct.TYPE_4__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = call i32 @r8a66597_write(%struct.r8a66597* %102, i32 %109, i64 %114)
  %116 = load %struct.r8a66597*, %struct.r8a66597** %3, align 8
  %117 = load i32, i32* @TRENB, align 4
  %118 = load %struct.r8a66597_td*, %struct.r8a66597_td** %4, align 8
  %119 = getelementptr inbounds %struct.r8a66597_td, %struct.r8a66597_td* %118, i32 0, i32 1
  %120 = load %struct.TYPE_4__*, %struct.TYPE_4__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = call i32 @r8a66597_bset(%struct.r8a66597* %116, i32 %117, i64 %122)
  br label %124

124:                                              ; preds = %93, %65
  %125 = load %struct.r8a66597*, %struct.r8a66597** %3, align 8
  %126 = load %struct.r8a66597_td*, %struct.r8a66597_td** %4, align 8
  %127 = getelementptr inbounds %struct.r8a66597_td, %struct.r8a66597_td* %126, i32 0, i32 1
  %128 = load %struct.TYPE_4__*, %struct.TYPE_4__** %127, align 8
  %129 = call i32 @pipe_start(%struct.r8a66597* %125, %struct.TYPE_4__* %128)
  %130 = load %struct.r8a66597*, %struct.r8a66597** %3, align 8
  %131 = load %struct.urb*, %struct.urb** %5, align 8
  %132 = load %struct.r8a66597_td*, %struct.r8a66597_td** %4, align 8
  %133 = getelementptr inbounds %struct.r8a66597_td, %struct.r8a66597_td* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = call i32 @pipe_irq_enable(%struct.r8a66597* %130, %struct.urb* %131, i32 %134)
  br label %136

136:                                              ; preds = %124, %60
  br label %137

137:                                              ; preds = %136, %43
  ret void
}

declare dso_local i64 @usb_pipecontrol(i32) #1

declare dso_local i32 @r8a66597_bclr(%struct.r8a66597*, i32, i32) #1

declare dso_local i32 @r8a66597_mdfy(%struct.r8a66597*, i32, i32, i32) #1

declare dso_local i32 @r8a66597_reg_wait(%struct.r8a66597*, i32, i32, i32) #1

declare dso_local i32 @r8a66597_pipe_toggle(%struct.r8a66597*, %struct.TYPE_4__*, i32) #1

declare dso_local i32 @r8a66597_write(%struct.r8a66597*, i32, i64) #1

declare dso_local i32 @pipe_irq_disable(%struct.r8a66597*, i32) #1

declare dso_local i32 @pipe_start(%struct.r8a66597*, %struct.TYPE_4__*) #1

declare dso_local i32 @pipe_irq_enable(%struct.r8a66597*, %struct.urb*, i32) #1

declare dso_local i32 @pipe_setting(%struct.r8a66597*, %struct.r8a66597_td*) #1

declare dso_local i32 @pipe_stop(%struct.r8a66597*, %struct.TYPE_4__*) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @r8a66597_bset(%struct.r8a66597*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
