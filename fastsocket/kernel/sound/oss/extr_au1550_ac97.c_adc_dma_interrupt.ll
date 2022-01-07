; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_au1550_ac97.c_adc_dma_interrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_au1550_ac97.c_adc_dma_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.au1550_state = type { i32, %struct.dmabuf }
%struct.dmabuf = type { i64, i64, i64, i64, i64, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [12 x i8] c"adc overrun\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*)* @adc_dma_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @adc_dma_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.au1550_state*, align 8
  %6 = alloca %struct.dmabuf*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.au1550_state*
  store %struct.au1550_state* %10, %struct.au1550_state** %5, align 8
  %11 = load %struct.au1550_state*, %struct.au1550_state** %5, align 8
  %12 = getelementptr inbounds %struct.au1550_state, %struct.au1550_state* %11, i32 0, i32 1
  store %struct.dmabuf* %12, %struct.dmabuf** %6, align 8
  %13 = load %struct.au1550_state*, %struct.au1550_state** %5, align 8
  %14 = getelementptr inbounds %struct.au1550_state, %struct.au1550_state* %13, i32 0, i32 0
  %15 = call i32 @spin_lock(i32* %14)
  %16 = load %struct.dmabuf*, %struct.dmabuf** %6, align 8
  %17 = getelementptr inbounds %struct.dmabuf, %struct.dmabuf* %16, i32 0, i32 7
  %18 = load i32, i32* %17, align 8
  %19 = bitcast i8** %8 to i8*
  %20 = call i32 @au1xxx_dbdma_get_dest(i32 %18, i8* %19, i64* %7)
  %21 = load %struct.dmabuf*, %struct.dmabuf** %6, align 8
  %22 = getelementptr inbounds %struct.dmabuf, %struct.dmabuf* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* %7, align 8
  %25 = add nsw i64 %23, %24
  %26 = load %struct.dmabuf*, %struct.dmabuf** %6, align 8
  %27 = getelementptr inbounds %struct.dmabuf, %struct.dmabuf* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp sgt i64 %25, %28
  br i1 %29, label %30, label %41

30:                                               ; preds = %2
  %31 = load %struct.au1550_state*, %struct.au1550_state** %5, align 8
  %32 = getelementptr inbounds %struct.au1550_state, %struct.au1550_state* %31, i32 0, i32 0
  %33 = call i32 @spin_unlock(i32* %32)
  %34 = load %struct.au1550_state*, %struct.au1550_state** %5, align 8
  %35 = call i32 @stop_adc(%struct.au1550_state* %34)
  %36 = load %struct.dmabuf*, %struct.dmabuf** %6, align 8
  %37 = getelementptr inbounds %struct.dmabuf, %struct.dmabuf* %36, i32 0, i32 8
  %38 = load i32, i32* %37, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %37, align 4
  %40 = call i32 @err(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  br label %103

41:                                               ; preds = %2
  %42 = load %struct.dmabuf*, %struct.dmabuf** %6, align 8
  %43 = getelementptr inbounds %struct.dmabuf, %struct.dmabuf* %42, i32 0, i32 7
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.dmabuf*, %struct.dmabuf** %6, align 8
  %46 = getelementptr inbounds %struct.dmabuf, %struct.dmabuf* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.dmabuf*, %struct.dmabuf** %6, align 8
  %49 = getelementptr inbounds %struct.dmabuf, %struct.dmabuf* %48, i32 0, i32 3
  %50 = load i64, i64* %49, align 8
  %51 = call i32 @au1xxx_dbdma_put_dest(i32 %44, i64 %47, i64 %50)
  %52 = load %struct.dmabuf*, %struct.dmabuf** %6, align 8
  %53 = getelementptr inbounds %struct.dmabuf, %struct.dmabuf* %52, i32 0, i32 3
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.dmabuf*, %struct.dmabuf** %6, align 8
  %56 = getelementptr inbounds %struct.dmabuf, %struct.dmabuf* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = add nsw i64 %57, %54
  store i64 %58, i64* %56, align 8
  %59 = load %struct.dmabuf*, %struct.dmabuf** %6, align 8
  %60 = getelementptr inbounds %struct.dmabuf, %struct.dmabuf* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.dmabuf*, %struct.dmabuf** %6, align 8
  %63 = getelementptr inbounds %struct.dmabuf, %struct.dmabuf* %62, i32 0, i32 4
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.dmabuf*, %struct.dmabuf** %6, align 8
  %66 = getelementptr inbounds %struct.dmabuf, %struct.dmabuf* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = add nsw i64 %64, %67
  %69 = icmp sge i64 %61, %68
  br i1 %69, label %70, label %78

70:                                               ; preds = %41
  %71 = load %struct.dmabuf*, %struct.dmabuf** %6, align 8
  %72 = getelementptr inbounds %struct.dmabuf, %struct.dmabuf* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.dmabuf*, %struct.dmabuf** %6, align 8
  %75 = getelementptr inbounds %struct.dmabuf, %struct.dmabuf* %74, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  %77 = sub nsw i64 %76, %73
  store i64 %77, i64* %75, align 8
  br label %78

78:                                               ; preds = %70, %41
  %79 = load i64, i64* %7, align 8
  %80 = load %struct.dmabuf*, %struct.dmabuf** %6, align 8
  %81 = getelementptr inbounds %struct.dmabuf, %struct.dmabuf* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = add nsw i64 %82, %79
  store i64 %83, i64* %81, align 8
  %84 = load i64, i64* %7, align 8
  %85 = load %struct.dmabuf*, %struct.dmabuf** %6, align 8
  %86 = getelementptr inbounds %struct.dmabuf, %struct.dmabuf* %85, i32 0, i32 6
  %87 = load i32, i32* %86, align 4
  %88 = sext i32 %87 to i64
  %89 = add nsw i64 %88, %84
  %90 = trunc i64 %89 to i32
  store i32 %90, i32* %86, align 4
  %91 = load %struct.dmabuf*, %struct.dmabuf** %6, align 8
  %92 = getelementptr inbounds %struct.dmabuf, %struct.dmabuf* %91, i32 0, i32 5
  %93 = call i64 @waitqueue_active(i32* %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %99

95:                                               ; preds = %78
  %96 = load %struct.dmabuf*, %struct.dmabuf** %6, align 8
  %97 = getelementptr inbounds %struct.dmabuf, %struct.dmabuf* %96, i32 0, i32 5
  %98 = call i32 @wake_up(i32* %97)
  br label %99

99:                                               ; preds = %95, %78
  %100 = load %struct.au1550_state*, %struct.au1550_state** %5, align 8
  %101 = getelementptr inbounds %struct.au1550_state, %struct.au1550_state* %100, i32 0, i32 0
  %102 = call i32 @spin_unlock(i32* %101)
  br label %103

103:                                              ; preds = %99, %30
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @au1xxx_dbdma_get_dest(i32, i8*, i64*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @stop_adc(%struct.au1550_state*) #1

declare dso_local i32 @err(i8*) #1

declare dso_local i32 @au1xxx_dbdma_put_dest(i32, i64, i64) #1

declare dso_local i64 @waitqueue_active(i32*) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
