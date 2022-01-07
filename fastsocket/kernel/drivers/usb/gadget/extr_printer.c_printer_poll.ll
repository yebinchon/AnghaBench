; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_printer.c_printer_poll.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_printer.c_printer_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.printer_dev* }
%struct.printer_dev = type { i32, i32, i32, i32, i32, i32, i32 }

@POLLOUT = common dso_local global i32 0, align 4
@POLLWRNORM = common dso_local global i32 0, align 4
@POLLIN = common dso_local global i32 0, align 4
@POLLRDNORM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i32*)* @printer_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @printer_poll(%struct.file* %0, i32* %1) #0 {
  %3 = alloca %struct.file*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.printer_dev*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %3, align 8
  store i32* %1, i32** %4, align 8
  %8 = load %struct.file*, %struct.file** %3, align 8
  %9 = getelementptr inbounds %struct.file, %struct.file* %8, i32 0, i32 0
  %10 = load %struct.printer_dev*, %struct.printer_dev** %9, align 8
  store %struct.printer_dev* %10, %struct.printer_dev** %5, align 8
  store i32 0, i32* %7, align 4
  %11 = load %struct.printer_dev*, %struct.printer_dev** %5, align 8
  %12 = getelementptr inbounds %struct.printer_dev, %struct.printer_dev* %11, i32 0, i32 6
  %13 = call i32 @spin_lock(i32* %12)
  %14 = load %struct.printer_dev*, %struct.printer_dev** %5, align 8
  %15 = getelementptr inbounds %struct.printer_dev, %struct.printer_dev* %14, i32 0, i32 1
  %16 = load i64, i64* %6, align 8
  %17 = call i32 @spin_lock_irqsave(i32* %15, i64 %16)
  %18 = load %struct.printer_dev*, %struct.printer_dev** %5, align 8
  %19 = call i32 @setup_rx_reqs(%struct.printer_dev* %18)
  %20 = load %struct.printer_dev*, %struct.printer_dev** %5, align 8
  %21 = getelementptr inbounds %struct.printer_dev, %struct.printer_dev* %20, i32 0, i32 1
  %22 = load i64, i64* %6, align 8
  %23 = call i32 @spin_unlock_irqrestore(i32* %21, i64 %22)
  %24 = load %struct.printer_dev*, %struct.printer_dev** %5, align 8
  %25 = getelementptr inbounds %struct.printer_dev, %struct.printer_dev* %24, i32 0, i32 6
  %26 = call i32 @spin_unlock(i32* %25)
  %27 = load %struct.file*, %struct.file** %3, align 8
  %28 = load %struct.printer_dev*, %struct.printer_dev** %5, align 8
  %29 = getelementptr inbounds %struct.printer_dev, %struct.printer_dev* %28, i32 0, i32 5
  %30 = load i32*, i32** %4, align 8
  %31 = call i32 @poll_wait(%struct.file* %27, i32* %29, i32* %30)
  %32 = load %struct.file*, %struct.file** %3, align 8
  %33 = load %struct.printer_dev*, %struct.printer_dev** %5, align 8
  %34 = getelementptr inbounds %struct.printer_dev, %struct.printer_dev* %33, i32 0, i32 4
  %35 = load i32*, i32** %4, align 8
  %36 = call i32 @poll_wait(%struct.file* %32, i32* %34, i32* %35)
  %37 = load %struct.printer_dev*, %struct.printer_dev** %5, align 8
  %38 = getelementptr inbounds %struct.printer_dev, %struct.printer_dev* %37, i32 0, i32 1
  %39 = load i64, i64* %6, align 8
  %40 = call i32 @spin_lock_irqsave(i32* %38, i64 %39)
  %41 = load %struct.printer_dev*, %struct.printer_dev** %5, align 8
  %42 = getelementptr inbounds %struct.printer_dev, %struct.printer_dev* %41, i32 0, i32 3
  %43 = call i32 @list_empty(i32* %42)
  %44 = icmp ne i32 %43, 0
  %45 = xor i1 %44, true
  %46 = zext i1 %45 to i32
  %47 = call i64 @likely(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %2
  %50 = load i32, i32* @POLLOUT, align 4
  %51 = load i32, i32* @POLLWRNORM, align 4
  %52 = or i32 %50, %51
  %53 = load i32, i32* %7, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %7, align 4
  br label %55

55:                                               ; preds = %49, %2
  %56 = load %struct.printer_dev*, %struct.printer_dev** %5, align 8
  %57 = getelementptr inbounds %struct.printer_dev, %struct.printer_dev* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i64 @likely(i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %70, label %61

61:                                               ; preds = %55
  %62 = load %struct.printer_dev*, %struct.printer_dev** %5, align 8
  %63 = getelementptr inbounds %struct.printer_dev, %struct.printer_dev* %62, i32 0, i32 2
  %64 = call i32 @list_empty(i32* %63)
  %65 = icmp ne i32 %64, 0
  %66 = xor i1 %65, true
  %67 = zext i1 %66 to i32
  %68 = call i64 @likely(i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %61, %55
  %71 = load i32, i32* @POLLIN, align 4
  %72 = load i32, i32* @POLLRDNORM, align 4
  %73 = or i32 %71, %72
  %74 = load i32, i32* %7, align 4
  %75 = or i32 %74, %73
  store i32 %75, i32* %7, align 4
  br label %76

76:                                               ; preds = %70, %61
  %77 = load %struct.printer_dev*, %struct.printer_dev** %5, align 8
  %78 = getelementptr inbounds %struct.printer_dev, %struct.printer_dev* %77, i32 0, i32 1
  %79 = load i64, i64* %6, align 8
  %80 = call i32 @spin_unlock_irqrestore(i32* %78, i64 %79)
  %81 = load i32, i32* %7, align 4
  ret i32 %81
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @setup_rx_reqs(%struct.printer_dev*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @poll_wait(%struct.file*, i32*, i32*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @list_empty(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
