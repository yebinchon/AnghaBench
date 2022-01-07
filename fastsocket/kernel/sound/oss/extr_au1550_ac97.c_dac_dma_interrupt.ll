; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_au1550_ac97.c_dac_dma_interrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_au1550_ac97.c_dac_dma_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.au1550_state = type { i32, %struct.dmabuf }
%struct.dmabuf = type { i64, i64, i64, i64, i64, i32, i32, i64, i32, i32 }

@PSC_AC97STAT = common dso_local global i32 0, align 4
@AC97C_XU = common dso_local global i32 0, align 4
@AC97C_XO = common dso_local global i32 0, align 4
@AC97C_TE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"AC97C status = 0x%08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"qcount < 2 and no ring room!\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*)* @dac_dma_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dac_dma_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.au1550_state*, align 8
  %6 = alloca %struct.dmabuf*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.au1550_state*
  store %struct.au1550_state* %9, %struct.au1550_state** %5, align 8
  %10 = load %struct.au1550_state*, %struct.au1550_state** %5, align 8
  %11 = getelementptr inbounds %struct.au1550_state, %struct.au1550_state* %10, i32 0, i32 1
  store %struct.dmabuf* %11, %struct.dmabuf** %6, align 8
  %12 = load %struct.au1550_state*, %struct.au1550_state** %5, align 8
  %13 = getelementptr inbounds %struct.au1550_state, %struct.au1550_state* %12, i32 0, i32 0
  %14 = call i32 @spin_lock(i32* %13)
  %15 = load i32, i32* @PSC_AC97STAT, align 4
  %16 = call i32 @au_readl(i32 %15)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* @AC97C_XU, align 4
  %19 = load i32, i32* @AC97C_XO, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @AC97C_TE, align 4
  %22 = or i32 %20, %21
  %23 = and i32 %17, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %2
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @pr_debug(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %26)
  br label %28

28:                                               ; preds = %25, %2
  %29 = load %struct.dmabuf*, %struct.dmabuf** %6, align 8
  %30 = getelementptr inbounds %struct.dmabuf, %struct.dmabuf* %29, i32 0, i32 6
  %31 = load i32, i32* %30, align 4
  %32 = add nsw i32 %31, -1
  store i32 %32, i32* %30, align 4
  %33 = load %struct.dmabuf*, %struct.dmabuf** %6, align 8
  %34 = getelementptr inbounds %struct.dmabuf, %struct.dmabuf* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.dmabuf*, %struct.dmabuf** %6, align 8
  %37 = getelementptr inbounds %struct.dmabuf, %struct.dmabuf* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp sge i64 %35, %38
  br i1 %39, label %40, label %102

40:                                               ; preds = %28
  %41 = load %struct.dmabuf*, %struct.dmabuf** %6, align 8
  %42 = getelementptr inbounds %struct.dmabuf, %struct.dmabuf* %41, i32 0, i32 9
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.dmabuf*, %struct.dmabuf** %6, align 8
  %45 = getelementptr inbounds %struct.dmabuf, %struct.dmabuf* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.dmabuf*, %struct.dmabuf** %6, align 8
  %48 = getelementptr inbounds %struct.dmabuf, %struct.dmabuf* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = call i64 @au1xxx_dbdma_put_source(i32 %43, i64 %46, i64 %49)
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %40
  %53 = call i32 @err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %54

54:                                               ; preds = %52, %40
  %55 = load %struct.dmabuf*, %struct.dmabuf** %6, align 8
  %56 = getelementptr inbounds %struct.dmabuf, %struct.dmabuf* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.dmabuf*, %struct.dmabuf** %6, align 8
  %59 = getelementptr inbounds %struct.dmabuf, %struct.dmabuf* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = add nsw i64 %60, %57
  store i64 %61, i64* %59, align 8
  %62 = load %struct.dmabuf*, %struct.dmabuf** %6, align 8
  %63 = getelementptr inbounds %struct.dmabuf, %struct.dmabuf* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.dmabuf*, %struct.dmabuf** %6, align 8
  %66 = getelementptr inbounds %struct.dmabuf, %struct.dmabuf* %65, i32 0, i32 3
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.dmabuf*, %struct.dmabuf** %6, align 8
  %69 = getelementptr inbounds %struct.dmabuf, %struct.dmabuf* %68, i32 0, i32 4
  %70 = load i64, i64* %69, align 8
  %71 = add nsw i64 %67, %70
  %72 = icmp sge i64 %64, %71
  br i1 %72, label %73, label %81

73:                                               ; preds = %54
  %74 = load %struct.dmabuf*, %struct.dmabuf** %6, align 8
  %75 = getelementptr inbounds %struct.dmabuf, %struct.dmabuf* %74, i32 0, i32 4
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.dmabuf*, %struct.dmabuf** %6, align 8
  %78 = getelementptr inbounds %struct.dmabuf, %struct.dmabuf* %77, i32 0, i32 2
  %79 = load i64, i64* %78, align 8
  %80 = sub nsw i64 %79, %76
  store i64 %80, i64* %78, align 8
  br label %81

81:                                               ; preds = %73, %54
  %82 = load %struct.dmabuf*, %struct.dmabuf** %6, align 8
  %83 = getelementptr inbounds %struct.dmabuf, %struct.dmabuf* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = load %struct.dmabuf*, %struct.dmabuf** %6, align 8
  %86 = getelementptr inbounds %struct.dmabuf, %struct.dmabuf* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = sub nsw i64 %87, %84
  store i64 %88, i64* %86, align 8
  %89 = load %struct.dmabuf*, %struct.dmabuf** %6, align 8
  %90 = getelementptr inbounds %struct.dmabuf, %struct.dmabuf* %89, i32 0, i32 7
  %91 = load i64, i64* %90, align 8
  %92 = load %struct.dmabuf*, %struct.dmabuf** %6, align 8
  %93 = getelementptr inbounds %struct.dmabuf, %struct.dmabuf* %92, i32 0, i32 8
  %94 = load i32, i32* %93, align 8
  %95 = sext i32 %94 to i64
  %96 = add nsw i64 %95, %91
  %97 = trunc i64 %96 to i32
  store i32 %97, i32* %93, align 8
  %98 = load %struct.dmabuf*, %struct.dmabuf** %6, align 8
  %99 = getelementptr inbounds %struct.dmabuf, %struct.dmabuf* %98, i32 0, i32 6
  %100 = load i32, i32* %99, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %99, align 4
  br label %102

102:                                              ; preds = %81, %28
  %103 = load %struct.dmabuf*, %struct.dmabuf** %6, align 8
  %104 = getelementptr inbounds %struct.dmabuf, %struct.dmabuf* %103, i32 0, i32 5
  %105 = call i64 @waitqueue_active(i32* %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %111

107:                                              ; preds = %102
  %108 = load %struct.dmabuf*, %struct.dmabuf** %6, align 8
  %109 = getelementptr inbounds %struct.dmabuf, %struct.dmabuf* %108, i32 0, i32 5
  %110 = call i32 @wake_up(i32* %109)
  br label %111

111:                                              ; preds = %107, %102
  %112 = load %struct.au1550_state*, %struct.au1550_state** %5, align 8
  %113 = getelementptr inbounds %struct.au1550_state, %struct.au1550_state* %112, i32 0, i32 0
  %114 = call i32 @spin_unlock(i32* %113)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @au_readl(i32) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local i64 @au1xxx_dbdma_put_source(i32, i64, i64) #1

declare dso_local i32 @err(i8*) #1

declare dso_local i64 @waitqueue_active(i32*) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
