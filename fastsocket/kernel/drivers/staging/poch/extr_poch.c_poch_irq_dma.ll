; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/poch/extr_poch.c_poch_irq_dma.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/poch/extr_poch.c_poch_irq_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.channel_info = type { i64, i64, i64, i64, i32, i32, %struct.poch_group_info*, %struct.TYPE_2__*, i32 }
%struct.poch_group_info = type { i32 }
%struct.TYPE_2__ = type { i32* }

@CHNO_RX_CHANNEL = common dso_local global i64 0, align 8
@FPGA_RX_CURR_GROUP_REG = common dso_local global i64 0, align 8
@FPGA_TX_CURR_GROUP_REG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.channel_info*)* @poch_irq_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @poch_irq_dma(%struct.channel_info* %0) #0 {
  %2 = alloca %struct.channel_info*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.poch_group_info*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  store %struct.channel_info* %0, %struct.channel_info** %2, align 8
  %11 = load %struct.channel_info*, %struct.channel_info** %2, align 8
  %12 = getelementptr inbounds %struct.channel_info, %struct.channel_info* %11, i32 0, i32 8
  %13 = call i32 @atomic_read(i32* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  br label %92

16:                                               ; preds = %1
  %17 = load %struct.channel_info*, %struct.channel_info** %2, align 8
  %18 = getelementptr inbounds %struct.channel_info, %struct.channel_info* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %3, align 8
  %20 = load %struct.channel_info*, %struct.channel_info** %2, align 8
  %21 = getelementptr inbounds %struct.channel_info, %struct.channel_info* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @CHNO_RX_CHANNEL, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %16
  %26 = load i64, i64* @FPGA_RX_CURR_GROUP_REG, align 8
  store i64 %26, i64* %10, align 8
  br label %29

27:                                               ; preds = %16
  %28 = load i64, i64* @FPGA_TX_CURR_GROUP_REG, align 8
  store i64 %28, i64* %10, align 8
  br label %29

29:                                               ; preds = %27, %25
  %30 = load %struct.channel_info*, %struct.channel_info** %2, align 8
  %31 = getelementptr inbounds %struct.channel_info, %struct.channel_info* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* %10, align 8
  %34 = add i64 %32, %33
  %35 = call i64 @ioread32(i64 %34)
  store i64 %35, i64* %4, align 8
  %36 = load i64, i64* %4, align 8
  %37 = load i64, i64* %3, align 8
  %38 = sub i64 %36, %37
  store i64 %38, i64* %5, align 8
  %39 = load i64, i64* %5, align 8
  %40 = icmp sle i64 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %29
  %42 = load %struct.channel_info*, %struct.channel_info** %2, align 8
  %43 = getelementptr inbounds %struct.channel_info, %struct.channel_info* %42, i32 0, i32 3
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* %5, align 8
  %46 = add nsw i64 %45, %44
  store i64 %46, i64* %5, align 8
  br label %47

47:                                               ; preds = %41, %29
  %48 = load %struct.channel_info*, %struct.channel_info** %2, align 8
  %49 = getelementptr inbounds %struct.channel_info, %struct.channel_info* %48, i32 0, i32 7
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  store i32* %52, i32** %9, align 8
  %53 = load %struct.channel_info*, %struct.channel_info** %2, align 8
  %54 = getelementptr inbounds %struct.channel_info, %struct.channel_info* %53, i32 0, i32 6
  %55 = load %struct.poch_group_info*, %struct.poch_group_info** %54, align 8
  store %struct.poch_group_info* %55, %struct.poch_group_info** %8, align 8
  %56 = load %struct.channel_info*, %struct.channel_info** %2, align 8
  %57 = getelementptr inbounds %struct.channel_info, %struct.channel_info* %56, i32 0, i32 5
  %58 = call i32 @spin_lock(i32* %57)
  store i64 0, i64* %6, align 8
  br label %59

59:                                               ; preds = %79, %47
  %60 = load i64, i64* %6, align 8
  %61 = load i64, i64* %5, align 8
  %62 = icmp ult i64 %60, %61
  br i1 %62, label %63, label %82

63:                                               ; preds = %59
  %64 = load i64, i64* %3, align 8
  %65 = load i64, i64* %6, align 8
  %66 = add i64 %64, %65
  %67 = load %struct.channel_info*, %struct.channel_info** %2, align 8
  %68 = getelementptr inbounds %struct.channel_info, %struct.channel_info* %67, i32 0, i32 3
  %69 = load i64, i64* %68, align 8
  %70 = urem i64 %66, %69
  store i64 %70, i64* %7, align 8
  %71 = load %struct.poch_group_info*, %struct.poch_group_info** %8, align 8
  %72 = load i64, i64* %7, align 8
  %73 = getelementptr inbounds %struct.poch_group_info, %struct.poch_group_info* %71, i64 %72
  %74 = getelementptr inbounds %struct.poch_group_info, %struct.poch_group_info* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32*, i32** %9, align 8
  %77 = load i64, i64* %7, align 8
  %78 = getelementptr inbounds i32, i32* %76, i64 %77
  store i32 %75, i32* %78, align 4
  br label %79

79:                                               ; preds = %63
  %80 = load i64, i64* %6, align 8
  %81 = add i64 %80, 1
  store i64 %81, i64* %6, align 8
  br label %59

82:                                               ; preds = %59
  %83 = load %struct.channel_info*, %struct.channel_info** %2, align 8
  %84 = getelementptr inbounds %struct.channel_info, %struct.channel_info* %83, i32 0, i32 5
  %85 = call i32 @spin_unlock(i32* %84)
  %86 = load i64, i64* %4, align 8
  %87 = load %struct.channel_info*, %struct.channel_info** %2, align 8
  %88 = getelementptr inbounds %struct.channel_info, %struct.channel_info* %87, i32 0, i32 0
  store i64 %86, i64* %88, align 8
  %89 = load %struct.channel_info*, %struct.channel_info** %2, align 8
  %90 = getelementptr inbounds %struct.channel_info, %struct.channel_info* %89, i32 0, i32 4
  %91 = call i32 @wake_up_interruptible(i32* %90)
  br label %92

92:                                               ; preds = %82, %15
  ret void
}

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i64 @ioread32(i64) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
