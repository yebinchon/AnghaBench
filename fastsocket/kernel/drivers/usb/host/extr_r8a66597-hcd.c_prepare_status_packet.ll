; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_r8a66597-hcd.c_prepare_status_packet.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_r8a66597-hcd.c_prepare_status_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r8a66597 = type { i32 }
%struct.r8a66597_td = type { i32, %struct.urb* }
%struct.urb = type { i32* }

@USB_ENDPOINT_DIR_MASK = common dso_local global i32 0, align 4
@R8A66597_DIR = common dso_local global i32 0, align 4
@DCPCFG = common dso_local global i32 0, align 4
@ISEL = common dso_local global i32 0, align 4
@CURPIPE = common dso_local global i32 0, align 4
@CFIFOSEL = common dso_local global i32 0, align 4
@BEMP0 = common dso_local global i32 0, align 4
@BEMPSTS = common dso_local global i32 0, align 4
@BCLR = common dso_local global i32 0, align 4
@BVAL = common dso_local global i32 0, align 4
@CFIFOCTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.r8a66597*, %struct.r8a66597_td*)* @prepare_status_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @prepare_status_packet(%struct.r8a66597* %0, %struct.r8a66597_td* %1) #0 {
  %3 = alloca %struct.r8a66597*, align 8
  %4 = alloca %struct.r8a66597_td*, align 8
  %5 = alloca %struct.urb*, align 8
  store %struct.r8a66597* %0, %struct.r8a66597** %3, align 8
  store %struct.r8a66597_td* %1, %struct.r8a66597_td** %4, align 8
  %6 = load %struct.r8a66597_td*, %struct.r8a66597_td** %4, align 8
  %7 = getelementptr inbounds %struct.r8a66597_td, %struct.r8a66597_td* %6, i32 0, i32 1
  %8 = load %struct.urb*, %struct.urb** %7, align 8
  store %struct.urb* %8, %struct.urb** %5, align 8
  %9 = load %struct.r8a66597*, %struct.r8a66597** %3, align 8
  %10 = load %struct.r8a66597_td*, %struct.r8a66597_td** %4, align 8
  %11 = getelementptr inbounds %struct.r8a66597_td, %struct.r8a66597_td* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @r8a66597_pipe_toggle(%struct.r8a66597* %9, i32 %12, i32 1)
  %14 = load %struct.r8a66597*, %struct.r8a66597** %3, align 8
  %15 = load %struct.r8a66597_td*, %struct.r8a66597_td** %4, align 8
  %16 = getelementptr inbounds %struct.r8a66597_td, %struct.r8a66597_td* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @pipe_stop(%struct.r8a66597* %14, i32 %17)
  %19 = load %struct.urb*, %struct.urb** %5, align 8
  %20 = getelementptr inbounds %struct.urb, %struct.urb* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @USB_ENDPOINT_DIR_MASK, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %56

27:                                               ; preds = %2
  %28 = load %struct.r8a66597*, %struct.r8a66597** %3, align 8
  %29 = load i32, i32* @R8A66597_DIR, align 4
  %30 = load i32, i32* @DCPCFG, align 4
  %31 = call i32 @r8a66597_bset(%struct.r8a66597* %28, i32 %29, i32 %30)
  %32 = load %struct.r8a66597*, %struct.r8a66597** %3, align 8
  %33 = load i32, i32* @ISEL, align 4
  %34 = load i32, i32* @ISEL, align 4
  %35 = load i32, i32* @CURPIPE, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* @CFIFOSEL, align 4
  %38 = call i32 @r8a66597_mdfy(%struct.r8a66597* %32, i32 %33, i32 %36, i32 %37)
  %39 = load %struct.r8a66597*, %struct.r8a66597** %3, align 8
  %40 = load i32, i32* @CFIFOSEL, align 4
  %41 = load i32, i32* @CURPIPE, align 4
  %42 = call i32 @r8a66597_reg_wait(%struct.r8a66597* %39, i32 %40, i32 %41, i32 0)
  %43 = load %struct.r8a66597*, %struct.r8a66597** %3, align 8
  %44 = load i32, i32* @BEMP0, align 4
  %45 = xor i32 %44, -1
  %46 = load i32, i32* @BEMPSTS, align 4
  %47 = call i32 @r8a66597_write(%struct.r8a66597* %43, i32 %45, i32 %46)
  %48 = load %struct.r8a66597*, %struct.r8a66597** %3, align 8
  %49 = load i32, i32* @BCLR, align 4
  %50 = load i32, i32* @BVAL, align 4
  %51 = or i32 %49, %50
  %52 = load i32, i32* @CFIFOCTR, align 4
  %53 = call i32 @r8a66597_write(%struct.r8a66597* %48, i32 %51, i32 %52)
  %54 = load %struct.r8a66597*, %struct.r8a66597** %3, align 8
  %55 = call i32 @enable_irq_empty(%struct.r8a66597* %54, i32 0)
  br label %77

56:                                               ; preds = %2
  %57 = load %struct.r8a66597*, %struct.r8a66597** %3, align 8
  %58 = load i32, i32* @R8A66597_DIR, align 4
  %59 = load i32, i32* @DCPCFG, align 4
  %60 = call i32 @r8a66597_bclr(%struct.r8a66597* %57, i32 %58, i32 %59)
  %61 = load %struct.r8a66597*, %struct.r8a66597** %3, align 8
  %62 = load i32, i32* @ISEL, align 4
  %63 = load i32, i32* @CURPIPE, align 4
  %64 = or i32 %62, %63
  %65 = load i32, i32* @CFIFOSEL, align 4
  %66 = call i32 @r8a66597_mdfy(%struct.r8a66597* %61, i32 0, i32 %64, i32 %65)
  %67 = load %struct.r8a66597*, %struct.r8a66597** %3, align 8
  %68 = load i32, i32* @CFIFOSEL, align 4
  %69 = load i32, i32* @CURPIPE, align 4
  %70 = call i32 @r8a66597_reg_wait(%struct.r8a66597* %67, i32 %68, i32 %69, i32 0)
  %71 = load %struct.r8a66597*, %struct.r8a66597** %3, align 8
  %72 = load i32, i32* @BCLR, align 4
  %73 = load i32, i32* @CFIFOCTR, align 4
  %74 = call i32 @r8a66597_write(%struct.r8a66597* %71, i32 %72, i32 %73)
  %75 = load %struct.r8a66597*, %struct.r8a66597** %3, align 8
  %76 = call i32 @enable_irq_ready(%struct.r8a66597* %75, i32 0)
  br label %77

77:                                               ; preds = %56, %27
  %78 = load %struct.r8a66597*, %struct.r8a66597** %3, align 8
  %79 = call i32 @enable_irq_nrdy(%struct.r8a66597* %78, i32 0)
  %80 = load %struct.r8a66597*, %struct.r8a66597** %3, align 8
  %81 = load %struct.r8a66597_td*, %struct.r8a66597_td** %4, align 8
  %82 = getelementptr inbounds %struct.r8a66597_td, %struct.r8a66597_td* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @pipe_start(%struct.r8a66597* %80, i32 %83)
  ret void
}

declare dso_local i32 @r8a66597_pipe_toggle(%struct.r8a66597*, i32, i32) #1

declare dso_local i32 @pipe_stop(%struct.r8a66597*, i32) #1

declare dso_local i32 @r8a66597_bset(%struct.r8a66597*, i32, i32) #1

declare dso_local i32 @r8a66597_mdfy(%struct.r8a66597*, i32, i32, i32) #1

declare dso_local i32 @r8a66597_reg_wait(%struct.r8a66597*, i32, i32, i32) #1

declare dso_local i32 @r8a66597_write(%struct.r8a66597*, i32, i32) #1

declare dso_local i32 @enable_irq_empty(%struct.r8a66597*, i32) #1

declare dso_local i32 @r8a66597_bclr(%struct.r8a66597*, i32, i32) #1

declare dso_local i32 @enable_irq_ready(%struct.r8a66597*, i32) #1

declare dso_local i32 @enable_irq_nrdy(%struct.r8a66597*, i32) #1

declare dso_local i32 @pipe_start(%struct.r8a66597*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
