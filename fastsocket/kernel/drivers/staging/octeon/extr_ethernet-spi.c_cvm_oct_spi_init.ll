; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/octeon/extr_ethernet-spi.c_cvm_oct_spi_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/octeon/extr_ethernet-spi.c_cvm_oct_spi_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.octeon_ethernet = type { i32, i32 }

@number_spi_ports = common dso_local global i64 0, align 8
@OCTEON_IRQ_RML = common dso_local global i32 0, align 4
@cvm_oct_spi_rml_interrupt = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"SPI\00", align 1
@cvm_oct_spi_poll = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cvm_oct_spi_init(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.octeon_ethernet*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %5 = load %struct.net_device*, %struct.net_device** %2, align 8
  %6 = call %struct.octeon_ethernet* @netdev_priv(%struct.net_device* %5)
  store %struct.octeon_ethernet* %6, %struct.octeon_ethernet** %4, align 8
  %7 = load i64, i64* @number_spi_ports, align 8
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %1
  %10 = load i32, i32* @OCTEON_IRQ_RML, align 4
  %11 = load i32, i32* @cvm_oct_spi_rml_interrupt, align 4
  %12 = load i32, i32* @IRQF_SHARED, align 4
  %13 = call i32 @request_irq(i32 %10, i32 %11, i32 %12, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i64* @number_spi_ports)
  store i32 %13, i32* %3, align 4
  br label %14

14:                                               ; preds = %9, %1
  %15 = load i64, i64* @number_spi_ports, align 8
  %16 = add nsw i64 %15, 1
  store i64 %16, i64* @number_spi_ports, align 8
  %17 = load %struct.octeon_ethernet*, %struct.octeon_ethernet** %4, align 8
  %18 = getelementptr inbounds %struct.octeon_ethernet, %struct.octeon_ethernet* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %26, label %21

21:                                               ; preds = %14
  %22 = load %struct.octeon_ethernet*, %struct.octeon_ethernet** %4, align 8
  %23 = getelementptr inbounds %struct.octeon_ethernet, %struct.octeon_ethernet* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp eq i32 %24, 16
  br i1 %25, label %26, label %35

26:                                               ; preds = %21, %14
  %27 = load %struct.octeon_ethernet*, %struct.octeon_ethernet** %4, align 8
  %28 = getelementptr inbounds %struct.octeon_ethernet, %struct.octeon_ethernet* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @INTERFACE(i32 %29)
  %31 = call i32 @cvm_oct_spi_enable_error_reporting(i32 %30)
  %32 = load i32, i32* @cvm_oct_spi_poll, align 4
  %33 = load %struct.octeon_ethernet*, %struct.octeon_ethernet** %4, align 8
  %34 = getelementptr inbounds %struct.octeon_ethernet, %struct.octeon_ethernet* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 4
  br label %35

35:                                               ; preds = %26, %21
  %36 = load %struct.net_device*, %struct.net_device** %2, align 8
  %37 = call i32 @cvm_oct_common_init(%struct.net_device* %36)
  ret i32 0
}

declare dso_local %struct.octeon_ethernet* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @request_irq(i32, i32, i32, i8*, i64*) #1

declare dso_local i32 @cvm_oct_spi_enable_error_reporting(i32) #1

declare dso_local i32 @INTERFACE(i32) #1

declare dso_local i32 @cvm_oct_common_init(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
