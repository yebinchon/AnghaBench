; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/extr_maestro3.c_snd_m3_interrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/extr_maestro3.c_snd_m3_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_m3 = type { i32, i64, %struct.TYPE_2__*, i32, %struct.m3_dma*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.m3_dma = type { i64 }

@HOST_INT_STATUS = common dso_local global i64 0, align 8
@IRQ_NONE = common dso_local global i32 0, align 4
@HV_INT_PENDING = common dso_local global i32 0, align 4
@ASSP_INT_PENDING = common dso_local global i32 0, align 4
@ASSP_CONTROL_B = common dso_local global i64 0, align 8
@STOP_ASSP_CLOCK = common dso_local global i32 0, align 4
@ASSP_HOST_INT_STATUS = common dso_local global i64 0, align 8
@DSP2HOST_REQ_TIMER = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@MPU401_INT_PENDING = common dso_local global i32 0, align 4
@regs = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @snd_m3_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_m3_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.snd_m3*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.m3_dma*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.snd_m3*
  store %struct.snd_m3* %12, %struct.snd_m3** %6, align 8
  %13 = load %struct.snd_m3*, %struct.snd_m3** %6, align 8
  %14 = getelementptr inbounds %struct.snd_m3, %struct.snd_m3* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @HOST_INT_STATUS, align 8
  %17 = add nsw i64 %15, %16
  %18 = call i32 @inb(i64 %17)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp eq i32 %19, 255
  br i1 %20, label %21, label %23

21:                                               ; preds = %2
  %22 = load i32, i32* @IRQ_NONE, align 4
  store i32 %22, i32* %3, align 4
  br label %110

23:                                               ; preds = %2
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* @HV_INT_PENDING, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %23
  %29 = load %struct.snd_m3*, %struct.snd_m3** %6, align 8
  %30 = getelementptr inbounds %struct.snd_m3, %struct.snd_m3* %29, i32 0, i32 5
  %31 = call i32 @tasklet_schedule(i32* %30)
  br label %32

32:                                               ; preds = %28, %23
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* @ASSP_INT_PENDING, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %101

37:                                               ; preds = %32
  %38 = load %struct.snd_m3*, %struct.snd_m3** %6, align 8
  %39 = getelementptr inbounds %struct.snd_m3, %struct.snd_m3* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @ASSP_CONTROL_B, align 8
  %42 = add nsw i64 %40, %41
  %43 = call i32 @inb(i64 %42)
  store i32 %43, i32* %9, align 4
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* @STOP_ASSP_CLOCK, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %100, label %48

48:                                               ; preds = %37
  %49 = load %struct.snd_m3*, %struct.snd_m3** %6, align 8
  %50 = getelementptr inbounds %struct.snd_m3, %struct.snd_m3* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @ASSP_HOST_INT_STATUS, align 8
  %53 = add nsw i64 %51, %52
  %54 = call i32 @inb(i64 %53)
  store i32 %54, i32* %9, align 4
  %55 = load i32, i32* %9, align 4
  %56 = load i32, i32* @DSP2HOST_REQ_TIMER, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %99

59:                                               ; preds = %48
  %60 = load i32, i32* @DSP2HOST_REQ_TIMER, align 4
  %61 = load %struct.snd_m3*, %struct.snd_m3** %6, align 8
  %62 = getelementptr inbounds %struct.snd_m3, %struct.snd_m3* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @ASSP_HOST_INT_STATUS, align 8
  %65 = add nsw i64 %63, %64
  %66 = call i32 @outb(i32 %60, i64 %65)
  %67 = load %struct.snd_m3*, %struct.snd_m3** %6, align 8
  %68 = getelementptr inbounds %struct.snd_m3, %struct.snd_m3* %67, i32 0, i32 3
  %69 = call i32 @spin_lock(i32* %68)
  store i32 0, i32* %8, align 4
  br label %70

70:                                               ; preds = %92, %59
  %71 = load i32, i32* %8, align 4
  %72 = load %struct.snd_m3*, %struct.snd_m3** %6, align 8
  %73 = getelementptr inbounds %struct.snd_m3, %struct.snd_m3* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = icmp slt i32 %71, %74
  br i1 %75, label %76, label %95

76:                                               ; preds = %70
  %77 = load %struct.snd_m3*, %struct.snd_m3** %6, align 8
  %78 = getelementptr inbounds %struct.snd_m3, %struct.snd_m3* %77, i32 0, i32 4
  %79 = load %struct.m3_dma*, %struct.m3_dma** %78, align 8
  %80 = load i32, i32* %8, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.m3_dma, %struct.m3_dma* %79, i64 %81
  store %struct.m3_dma* %82, %struct.m3_dma** %10, align 8
  %83 = load %struct.m3_dma*, %struct.m3_dma** %10, align 8
  %84 = getelementptr inbounds %struct.m3_dma, %struct.m3_dma* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %91

87:                                               ; preds = %76
  %88 = load %struct.snd_m3*, %struct.snd_m3** %6, align 8
  %89 = load %struct.m3_dma*, %struct.m3_dma** %10, align 8
  %90 = call i32 @snd_m3_update_ptr(%struct.snd_m3* %88, %struct.m3_dma* %89)
  br label %91

91:                                               ; preds = %87, %76
  br label %92

92:                                               ; preds = %91
  %93 = load i32, i32* %8, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %8, align 4
  br label %70

95:                                               ; preds = %70
  %96 = load %struct.snd_m3*, %struct.snd_m3** %6, align 8
  %97 = getelementptr inbounds %struct.snd_m3, %struct.snd_m3* %96, i32 0, i32 3
  %98 = call i32 @spin_unlock(i32* %97)
  br label %99

99:                                               ; preds = %95, %48
  br label %100

100:                                              ; preds = %99, %37
  br label %101

101:                                              ; preds = %100, %32
  %102 = load i32, i32* %7, align 4
  %103 = load %struct.snd_m3*, %struct.snd_m3** %6, align 8
  %104 = getelementptr inbounds %struct.snd_m3, %struct.snd_m3* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @HOST_INT_STATUS, align 8
  %107 = add nsw i64 %105, %106
  %108 = call i32 @outb(i32 %102, i64 %107)
  %109 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %109, i32* %3, align 4
  br label %110

110:                                              ; preds = %101, %21
  %111 = load i32, i32* %3, align 4
  ret i32 %111
}

declare dso_local i32 @inb(i64) #1

declare dso_local i32 @tasklet_schedule(i32*) #1

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @snd_m3_update_ptr(%struct.snd_m3*, %struct.m3_dma*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
