; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_s626.c_s626_detach.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_s626.c_s626_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64, i64, i32, i32, i64 }
%struct.comedi_device = type { i64 }

@devpriv = common dso_local global %struct.TYPE_2__* null, align 8
@P_IER = common dso_local global i32 0, align 4
@P_ISR = common dso_local global i32 0, align 4
@IRQ_GPIO3 = common dso_local global i32 0, align 4
@IRQ_RPS1 = common dso_local global i32 0, align 4
@P_MC1 = common dso_local global i32 0, align 4
@MC1_SHUTDOWN = common dso_local global i32 0, align 4
@P_ACON1 = common dso_local global i32 0, align 4
@ACON1_BASE = common dso_local global i32 0, align 4
@DMABUF_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"s626_detach: S626 detached!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*)* @s626_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s626_detach(%struct.comedi_device* %0) #0 {
  %2 = alloca %struct.comedi_device*, align 8
  store %struct.comedi_device* %0, %struct.comedi_device** %2, align 8
  %3 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %4 = icmp ne %struct.TYPE_2__* %3, null
  br i1 %4, label %5, label %80

5:                                                ; preds = %1
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 5
  store i64 0, i64* %7, align 8
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 2
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %38

12:                                               ; preds = %5
  %13 = load i32, i32* @P_IER, align 4
  %14 = call i32 @WR7146(i32 %13, i32 0)
  %15 = load i32, i32* @P_ISR, align 4
  %16 = load i32, i32* @IRQ_GPIO3, align 4
  %17 = load i32, i32* @IRQ_RPS1, align 4
  %18 = or i32 %16, %17
  %19 = call i32 @WR7146(i32 %15, i32 %18)
  %20 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %21 = call i32 @WriteMISC2(%struct.comedi_device* %20, i32 0)
  %22 = load i32, i32* @P_MC1, align 4
  %23 = load i32, i32* @MC1_SHUTDOWN, align 4
  %24 = call i32 @WR7146(i32 %22, i32 %23)
  %25 = load i32, i32* @P_ACON1, align 4
  %26 = load i32, i32* @ACON1_BASE, align 4
  %27 = call i32 @WR7146(i32 %25, i32 %26)
  %28 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 4
  %31 = load i32, i32* @DMABUF_SIZE, align 4
  %32 = call i32 @CloseDMAB(%struct.comedi_device* %28, i32* %30, i32 %31)
  %33 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 3
  %36 = load i32, i32* @DMABUF_SIZE, align 4
  %37 = call i32 @CloseDMAB(%struct.comedi_device* %33, i32* %35, i32 %36)
  br label %38

38:                                               ; preds = %12, %5
  %39 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %40 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %38
  %44 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %45 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %48 = call i32 @free_irq(i64 %46, %struct.comedi_device* %47)
  br label %49

49:                                               ; preds = %43, %38
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %49
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = call i32 @iounmap(i64 %57)
  br label %59

59:                                               ; preds = %54, %49
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %79

64:                                               ; preds = %59
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %64
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = call i32 @comedi_pci_disable(i64 %72)
  br label %74

74:                                               ; preds = %69, %64
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = call i32 @pci_dev_put(i64 %77)
  br label %79

79:                                               ; preds = %74, %59
  br label %80

80:                                               ; preds = %79, %1
  %81 = call i32 @DEBUG(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  ret i32 0
}

declare dso_local i32 @WR7146(i32, i32) #1

declare dso_local i32 @WriteMISC2(%struct.comedi_device*, i32) #1

declare dso_local i32 @CloseDMAB(%struct.comedi_device*, i32*, i32) #1

declare dso_local i32 @free_irq(i64, %struct.comedi_device*) #1

declare dso_local i32 @iounmap(i64) #1

declare dso_local i32 @comedi_pci_disable(i64) #1

declare dso_local i32 @pci_dev_put(i64) #1

declare dso_local i32 @DEBUG(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
