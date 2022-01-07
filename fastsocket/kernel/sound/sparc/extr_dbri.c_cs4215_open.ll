; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/sparc/extr_dbri.c_cs4215_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/sparc/extr_dbri.c_cs4215_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_dbri = type { i32, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i64, i64 }

@D_MM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"cs4215_open: %d channels, %d bits\0A\00", align 1
@REG0 = common dso_local global i64 0, align 8
@D_C = common dso_local global i32 0, align 4
@D_ENPIO = common dso_local global i32 0, align 4
@D_PIO1 = common dso_local global i32 0, align 4
@D_PIO3 = common dso_local global i32 0, align 4
@D_PIO0 = common dso_local global i32 0, align 4
@D_PIO2 = common dso_local global i32 0, align 4
@REG2 = common dso_local global i64 0, align 8
@CHIslave = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_dbri*)* @cs4215_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cs4215_open(%struct.snd_dbri* %0) #0 {
  %2 = alloca %struct.snd_dbri*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.snd_dbri* %0, %struct.snd_dbri** %2, align 8
  %6 = load i32, i32* @D_MM, align 4
  %7 = load %struct.snd_dbri*, %struct.snd_dbri** %2, align 8
  %8 = getelementptr inbounds %struct.snd_dbri, %struct.snd_dbri* %7, i32 0, i32 2
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load %struct.snd_dbri*, %struct.snd_dbri** %2, align 8
  %12 = getelementptr inbounds %struct.snd_dbri, %struct.snd_dbri* %11, i32 0, i32 2
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @dprintk(i32 %6, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %10, i32 %14)
  %16 = load %struct.snd_dbri*, %struct.snd_dbri** %2, align 8
  %17 = call i32 @cs4215_setdata(%struct.snd_dbri* %16, i32 1)
  %18 = call i32 @udelay(i32 125)
  %19 = load %struct.snd_dbri*, %struct.snd_dbri** %2, align 8
  %20 = getelementptr inbounds %struct.snd_dbri, %struct.snd_dbri* %19, i32 0, i32 0
  %21 = load i64, i64* %5, align 8
  %22 = call i32 @spin_lock_irqsave(i32* %20, i64 %21)
  %23 = load %struct.snd_dbri*, %struct.snd_dbri** %2, align 8
  %24 = getelementptr inbounds %struct.snd_dbri, %struct.snd_dbri* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @REG0, align 8
  %27 = add nsw i64 %25, %26
  %28 = call i32 @sbus_readl(i64 %27)
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* @D_C, align 4
  %30 = xor i32 %29, -1
  %31 = load i32, i32* %4, align 4
  %32 = and i32 %31, %30
  store i32 %32, i32* %4, align 4
  %33 = load i32, i32* %4, align 4
  %34 = load %struct.snd_dbri*, %struct.snd_dbri** %2, align 8
  %35 = getelementptr inbounds %struct.snd_dbri, %struct.snd_dbri* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @REG0, align 8
  %38 = add nsw i64 %36, %37
  %39 = call i32 @sbus_writel(i32 %33, i64 %38)
  %40 = load i32, i32* @D_ENPIO, align 4
  %41 = load i32, i32* @D_PIO1, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* @D_PIO3, align 4
  %44 = or i32 %42, %43
  %45 = load %struct.snd_dbri*, %struct.snd_dbri** %2, align 8
  %46 = getelementptr inbounds %struct.snd_dbri, %struct.snd_dbri* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 3
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %1
  %51 = load i32, i32* @D_PIO0, align 4
  br label %54

52:                                               ; preds = %1
  %53 = load i32, i32* @D_PIO2, align 4
  br label %54

54:                                               ; preds = %52, %50
  %55 = phi i32 [ %51, %50 ], [ %53, %52 ]
  %56 = or i32 %44, %55
  %57 = load %struct.snd_dbri*, %struct.snd_dbri** %2, align 8
  %58 = getelementptr inbounds %struct.snd_dbri, %struct.snd_dbri* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @REG2, align 8
  %61 = add nsw i64 %59, %60
  %62 = call i32 @sbus_writel(i32 %56, i64 %61)
  %63 = load %struct.snd_dbri*, %struct.snd_dbri** %2, align 8
  %64 = load i32, i32* @CHIslave, align 4
  %65 = call i32 @reset_chi(%struct.snd_dbri* %63, i32 %64, i32 128)
  %66 = load %struct.snd_dbri*, %struct.snd_dbri** %2, align 8
  %67 = getelementptr inbounds %struct.snd_dbri, %struct.snd_dbri* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.snd_dbri*, %struct.snd_dbri** %2, align 8
  %71 = getelementptr inbounds %struct.snd_dbri, %struct.snd_dbri* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = mul nsw i32 %69, %73
  store i32 %74, i32* %3, align 4
  %75 = load %struct.snd_dbri*, %struct.snd_dbri** %2, align 8
  %76 = load i32, i32* %3, align 4
  %77 = load %struct.snd_dbri*, %struct.snd_dbri** %2, align 8
  %78 = getelementptr inbounds %struct.snd_dbri, %struct.snd_dbri* %77, i32 0, i32 2
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 2
  %80 = load i64, i64* %79, align 8
  %81 = call i32 @link_time_slot(%struct.snd_dbri* %75, i32 4, i32 16, i32 16, i32 %76, i64 %80)
  %82 = load %struct.snd_dbri*, %struct.snd_dbri** %2, align 8
  %83 = load %struct.snd_dbri*, %struct.snd_dbri** %2, align 8
  %84 = getelementptr inbounds %struct.snd_dbri, %struct.snd_dbri* %83, i32 0, i32 2
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 2
  %86 = load i64, i64* %85, align 8
  %87 = add nsw i64 %86, 32
  %88 = call i32 @link_time_slot(%struct.snd_dbri* %82, i32 20, i32 4, i32 16, i32 32, i64 %87)
  %89 = load %struct.snd_dbri*, %struct.snd_dbri** %2, align 8
  %90 = load i32, i32* %3, align 4
  %91 = load %struct.snd_dbri*, %struct.snd_dbri** %2, align 8
  %92 = getelementptr inbounds %struct.snd_dbri, %struct.snd_dbri* %91, i32 0, i32 2
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 2
  %94 = load i64, i64* %93, align 8
  %95 = call i32 @link_time_slot(%struct.snd_dbri* %89, i32 6, i32 16, i32 16, i32 %90, i64 %94)
  %96 = load %struct.snd_dbri*, %struct.snd_dbri** %2, align 8
  %97 = load %struct.snd_dbri*, %struct.snd_dbri** %2, align 8
  %98 = getelementptr inbounds %struct.snd_dbri, %struct.snd_dbri* %97, i32 0, i32 2
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 2
  %100 = load i64, i64* %99, align 8
  %101 = add nsw i64 %100, 40
  %102 = call i32 @link_time_slot(%struct.snd_dbri* %96, i32 21, i32 6, i32 16, i32 16, i64 %101)
  %103 = load %struct.snd_dbri*, %struct.snd_dbri** %2, align 8
  %104 = getelementptr inbounds %struct.snd_dbri, %struct.snd_dbri* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @REG0, align 8
  %107 = add nsw i64 %105, %106
  %108 = call i32 @sbus_readl(i64 %107)
  store i32 %108, i32* %4, align 4
  %109 = load i32, i32* @D_C, align 4
  %110 = load i32, i32* %4, align 4
  %111 = or i32 %110, %109
  store i32 %111, i32* %4, align 4
  %112 = load i32, i32* %4, align 4
  %113 = load %struct.snd_dbri*, %struct.snd_dbri** %2, align 8
  %114 = getelementptr inbounds %struct.snd_dbri, %struct.snd_dbri* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* @REG0, align 8
  %117 = add nsw i64 %115, %116
  %118 = call i32 @sbus_writel(i32 %112, i64 %117)
  %119 = load %struct.snd_dbri*, %struct.snd_dbri** %2, align 8
  %120 = getelementptr inbounds %struct.snd_dbri, %struct.snd_dbri* %119, i32 0, i32 0
  %121 = load i64, i64* %5, align 8
  %122 = call i32 @spin_unlock_irqrestore(i32* %120, i64 %121)
  %123 = load %struct.snd_dbri*, %struct.snd_dbri** %2, align 8
  %124 = call i32 @cs4215_setdata(%struct.snd_dbri* %123, i32 0)
  ret void
}

declare dso_local i32 @dprintk(i32, i8*, i32, i32) #1

declare dso_local i32 @cs4215_setdata(%struct.snd_dbri*, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @sbus_readl(i64) #1

declare dso_local i32 @sbus_writel(i32, i64) #1

declare dso_local i32 @reset_chi(%struct.snd_dbri*, i32, i32) #1

declare dso_local i32 @link_time_slot(%struct.snd_dbri*, i32, i32, i32, i32, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
