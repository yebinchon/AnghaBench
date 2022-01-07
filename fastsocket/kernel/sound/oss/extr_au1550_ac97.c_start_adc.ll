; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_au1550_ac97.c_start_adc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_au1550_ac97.c_start_adc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.au1550_state = type { %struct.dmabuf }
%struct.dmabuf = type { i64, i64, i64, i64, i64, i32, i32 }

@PSC_AC97PCR_RC = common dso_local global i32 0, align 4
@PSC_AC97PCR = common dso_local global i32 0, align 4
@PSC_AC97PCR_RS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.au1550_state*)* @start_adc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @start_adc(%struct.au1550_state* %0) #0 {
  %2 = alloca %struct.au1550_state*, align 8
  %3 = alloca %struct.dmabuf*, align 8
  %4 = alloca i32, align 4
  store %struct.au1550_state* %0, %struct.au1550_state** %2, align 8
  %5 = load %struct.au1550_state*, %struct.au1550_state** %2, align 8
  %6 = getelementptr inbounds %struct.au1550_state, %struct.au1550_state* %5, i32 0, i32 0
  store %struct.dmabuf* %6, %struct.dmabuf** %3, align 8
  %7 = load %struct.dmabuf*, %struct.dmabuf** %3, align 8
  %8 = getelementptr inbounds %struct.dmabuf, %struct.dmabuf* %7, i32 0, i32 4
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  br label %76

12:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %13

13:                                               ; preds = %54, %12
  %14 = load i32, i32* %4, align 4
  %15 = icmp slt i32 %14, 2
  br i1 %15, label %16, label %57

16:                                               ; preds = %13
  %17 = load %struct.dmabuf*, %struct.dmabuf** %3, align 8
  %18 = getelementptr inbounds %struct.dmabuf, %struct.dmabuf* %17, i32 0, i32 5
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.dmabuf*, %struct.dmabuf** %3, align 8
  %21 = getelementptr inbounds %struct.dmabuf, %struct.dmabuf* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.dmabuf*, %struct.dmabuf** %3, align 8
  %24 = getelementptr inbounds %struct.dmabuf, %struct.dmabuf* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = call i32 @au1xxx_dbdma_put_dest(i32 %19, i64 %22, i64 %25)
  %27 = load %struct.dmabuf*, %struct.dmabuf** %3, align 8
  %28 = getelementptr inbounds %struct.dmabuf, %struct.dmabuf* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.dmabuf*, %struct.dmabuf** %3, align 8
  %31 = getelementptr inbounds %struct.dmabuf, %struct.dmabuf* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = add nsw i64 %32, %29
  store i64 %33, i64* %31, align 8
  %34 = load %struct.dmabuf*, %struct.dmabuf** %3, align 8
  %35 = getelementptr inbounds %struct.dmabuf, %struct.dmabuf* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.dmabuf*, %struct.dmabuf** %3, align 8
  %38 = getelementptr inbounds %struct.dmabuf, %struct.dmabuf* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.dmabuf*, %struct.dmabuf** %3, align 8
  %41 = getelementptr inbounds %struct.dmabuf, %struct.dmabuf* %40, i32 0, i32 3
  %42 = load i64, i64* %41, align 8
  %43 = add nsw i64 %39, %42
  %44 = icmp sge i64 %36, %43
  br i1 %44, label %45, label %53

45:                                               ; preds = %16
  %46 = load %struct.dmabuf*, %struct.dmabuf** %3, align 8
  %47 = getelementptr inbounds %struct.dmabuf, %struct.dmabuf* %46, i32 0, i32 3
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.dmabuf*, %struct.dmabuf** %3, align 8
  %50 = getelementptr inbounds %struct.dmabuf, %struct.dmabuf* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = sub nsw i64 %51, %48
  store i64 %52, i64* %50, align 8
  br label %53

53:                                               ; preds = %45, %16
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %4, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %4, align 4
  br label %13

57:                                               ; preds = %13
  %58 = load %struct.dmabuf*, %struct.dmabuf** %3, align 8
  %59 = getelementptr inbounds %struct.dmabuf, %struct.dmabuf* %58, i32 0, i32 6
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @set_recv_slots(i32 %60)
  %62 = load %struct.dmabuf*, %struct.dmabuf** %3, align 8
  %63 = getelementptr inbounds %struct.dmabuf, %struct.dmabuf* %62, i32 0, i32 5
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @au1xxx_dbdma_start(i32 %64)
  %66 = load i32, i32* @PSC_AC97PCR_RC, align 4
  %67 = load i32, i32* @PSC_AC97PCR, align 4
  %68 = call i32 @au_writel(i32 %66, i32 %67)
  %69 = call i32 (...) @au_sync()
  %70 = load i32, i32* @PSC_AC97PCR_RS, align 4
  %71 = load i32, i32* @PSC_AC97PCR, align 4
  %72 = call i32 @au_writel(i32 %70, i32 %71)
  %73 = call i32 (...) @au_sync()
  %74 = load %struct.dmabuf*, %struct.dmabuf** %3, align 8
  %75 = getelementptr inbounds %struct.dmabuf, %struct.dmabuf* %74, i32 0, i32 4
  store i64 0, i64* %75, align 8
  br label %76

76:                                               ; preds = %57, %11
  ret void
}

declare dso_local i32 @au1xxx_dbdma_put_dest(i32, i64, i64) #1

declare dso_local i32 @set_recv_slots(i32) #1

declare dso_local i32 @au1xxx_dbdma_start(i32) #1

declare dso_local i32 @au_writel(i32, i32) #1

declare dso_local i32 @au_sync(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
