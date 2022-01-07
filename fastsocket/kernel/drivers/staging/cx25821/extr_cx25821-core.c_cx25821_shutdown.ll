; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/cx25821/extr_cx25821-core.c_cx25821_shutdown.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/cx25821/extr_cx25821-core.c_cx25821_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx25821_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@DEV_CNTRL2 = common dso_local global i32 0, align 4
@VID_CHANNEL_NUM = common dso_local global i32 0, align 4
@VID_UPSTREAM_SRAM_CHANNEL_I = common dso_local global i32 0, align 4
@VID_UPSTREAM_SRAM_CHANNEL_J = common dso_local global i32 0, align 4
@AUD_INT_DMA_CTL = common dso_local global i32 0, align 4
@UART_CTL = common dso_local global i32 0, align 4
@PCI_INT_MSK = common dso_local global i32 0, align 4
@AUD_A_INT_MSK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cx25821_dev*)* @cx25821_shutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cx25821_shutdown(%struct.cx25821_dev* %0) #0 {
  %2 = alloca %struct.cx25821_dev*, align 8
  %3 = alloca i32, align 4
  store %struct.cx25821_dev* %0, %struct.cx25821_dev** %2, align 8
  %4 = load i32, i32* @DEV_CNTRL2, align 4
  %5 = call i32 @cx_write(i32 %4, i32 0)
  store i32 0, i32* %3, align 4
  br label %6

6:                                                ; preds = %29, %1
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* @VID_CHANNEL_NUM, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %32

10:                                               ; preds = %6
  %11 = load %struct.cx25821_dev*, %struct.cx25821_dev** %2, align 8
  %12 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = load i32, i32* %3, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i64 %15
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @cx_write(i32 %18, i32 0)
  %20 = load %struct.cx25821_dev*, %struct.cx25821_dev** %2, align 8
  %21 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = load i32, i32* %3, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @cx_write(i32 %27, i32 0)
  br label %29

29:                                               ; preds = %10
  %30 = load i32, i32* %3, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %3, align 4
  br label %6

32:                                               ; preds = %6
  %33 = load i32, i32* @VID_UPSTREAM_SRAM_CHANNEL_I, align 4
  store i32 %33, i32* %3, align 4
  br label %34

34:                                               ; preds = %57, %32
  %35 = load i32, i32* %3, align 4
  %36 = load i32, i32* @VID_UPSTREAM_SRAM_CHANNEL_J, align 4
  %37 = icmp sle i32 %35, %36
  br i1 %37, label %38, label %60

38:                                               ; preds = %34
  %39 = load %struct.cx25821_dev*, %struct.cx25821_dev** %2, align 8
  %40 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %39, i32 0, i32 0
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = load i32, i32* %3, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @cx_write(i32 %46, i32 0)
  %48 = load %struct.cx25821_dev*, %struct.cx25821_dev** %2, align 8
  %49 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %48, i32 0, i32 0
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = load i32, i32* %3, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @cx_write(i32 %55, i32 0)
  br label %57

57:                                               ; preds = %38
  %58 = load i32, i32* %3, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %3, align 4
  br label %34

60:                                               ; preds = %34
  %61 = load i32, i32* @AUD_INT_DMA_CTL, align 4
  %62 = call i32 @cx_write(i32 %61, i32 0)
  %63 = load i32, i32* @UART_CTL, align 4
  %64 = call i32 @cx_write(i32 %63, i32 0)
  %65 = load i32, i32* @PCI_INT_MSK, align 4
  %66 = call i32 @cx_write(i32 %65, i32 0)
  %67 = load i32, i32* @AUD_A_INT_MSK, align 4
  %68 = call i32 @cx_write(i32 %67, i32 0)
  ret void
}

declare dso_local i32 @cx_write(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
