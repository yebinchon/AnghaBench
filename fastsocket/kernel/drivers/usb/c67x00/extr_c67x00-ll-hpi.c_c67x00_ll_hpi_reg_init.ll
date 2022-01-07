; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/c67x00/extr_c67x00-ll-hpi.c_c67x00_ll_hpi_reg_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/c67x00/extr_c67x00-ll-hpi.c_c67x00_ll_hpi_reg_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.c67x00_device = type { i32 }

@HPI_IRQ_ROUTING_REG = common dso_local global i32 0, align 4
@C67X00_SIES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @c67x00_ll_hpi_reg_init(%struct.c67x00_device* %0) #0 {
  %2 = alloca %struct.c67x00_device*, align 8
  %3 = alloca i32, align 4
  store %struct.c67x00_device* %0, %struct.c67x00_device** %2, align 8
  %4 = load %struct.c67x00_device*, %struct.c67x00_device** %2, align 8
  %5 = call i32 @hpi_recv_mbox(%struct.c67x00_device* %4)
  %6 = load %struct.c67x00_device*, %struct.c67x00_device** %2, align 8
  %7 = call i32 @c67x00_ll_hpi_status(%struct.c67x00_device* %6)
  %8 = load %struct.c67x00_device*, %struct.c67x00_device** %2, align 8
  %9 = load i32, i32* @HPI_IRQ_ROUTING_REG, align 4
  %10 = call i32 @hpi_write_word(%struct.c67x00_device* %8, i32 %9, i32 0)
  store i32 0, i32* %3, align 4
  br label %11

11:                                               ; preds = %24, %1
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* @C67X00_SIES, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %27

15:                                               ; preds = %11
  %16 = load %struct.c67x00_device*, %struct.c67x00_device** %2, align 8
  %17 = load i32, i32* %3, align 4
  %18 = call i32 @SIEMSG_REG(i32 %17)
  %19 = call i32 @hpi_write_word(%struct.c67x00_device* %16, i32 %18, i32 0)
  %20 = load %struct.c67x00_device*, %struct.c67x00_device** %2, align 8
  %21 = load i32, i32* %3, align 4
  %22 = call i32 @SIEMSG_REG(i32 %21)
  %23 = call i32 @hpi_read_word(%struct.c67x00_device* %20, i32 %22)
  br label %24

24:                                               ; preds = %15
  %25 = load i32, i32* %3, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %3, align 4
  br label %11

27:                                               ; preds = %11
  ret void
}

declare dso_local i32 @hpi_recv_mbox(%struct.c67x00_device*) #1

declare dso_local i32 @c67x00_ll_hpi_status(%struct.c67x00_device*) #1

declare dso_local i32 @hpi_write_word(%struct.c67x00_device*, i32, i32) #1

declare dso_local i32 @SIEMSG_REG(i32) #1

declare dso_local i32 @hpi_read_word(%struct.c67x00_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
