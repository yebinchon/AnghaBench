; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/sparc/extr_dbri.c_dbri_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/sparc/extr_dbri.c_dbri_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_dbri = type { i64 }

@D_GEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"reset 0:%x 2:%x 8:%x 9:%x\0A\00", align 1
@REG0 = common dso_local global i64 0, align 8
@REG2 = common dso_local global i64 0, align 8
@REG8 = common dso_local global i64 0, align 8
@REG9 = common dso_local global i64 0, align 8
@D_R = common dso_local global i32 0, align 4
@D_G = common dso_local global i32 0, align 4
@D_E = common dso_local global i32 0, align 4
@D_S = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_dbri*)* @dbri_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dbri_reset(%struct.snd_dbri* %0) #0 {
  %2 = alloca %struct.snd_dbri*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.snd_dbri* %0, %struct.snd_dbri** %2, align 8
  %5 = load i32, i32* @D_GEN, align 4
  %6 = load %struct.snd_dbri*, %struct.snd_dbri** %2, align 8
  %7 = getelementptr inbounds %struct.snd_dbri, %struct.snd_dbri* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @REG0, align 8
  %10 = add nsw i64 %8, %9
  %11 = call i32 @sbus_readl(i64 %10)
  %12 = load %struct.snd_dbri*, %struct.snd_dbri** %2, align 8
  %13 = getelementptr inbounds %struct.snd_dbri, %struct.snd_dbri* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @REG2, align 8
  %16 = add nsw i64 %14, %15
  %17 = call i32 @sbus_readl(i64 %16)
  %18 = load %struct.snd_dbri*, %struct.snd_dbri** %2, align 8
  %19 = getelementptr inbounds %struct.snd_dbri, %struct.snd_dbri* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @REG8, align 8
  %22 = add nsw i64 %20, %21
  %23 = call i32 @sbus_readl(i64 %22)
  %24 = load %struct.snd_dbri*, %struct.snd_dbri** %2, align 8
  %25 = getelementptr inbounds %struct.snd_dbri, %struct.snd_dbri* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @REG9, align 8
  %28 = add nsw i64 %26, %27
  %29 = call i32 @sbus_readl(i64 %28)
  %30 = call i32 @dprintk(i32 %5, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %11, i32 %17, i32 %23, i32 %29)
  %31 = load i32, i32* @D_R, align 4
  %32 = load %struct.snd_dbri*, %struct.snd_dbri** %2, align 8
  %33 = getelementptr inbounds %struct.snd_dbri, %struct.snd_dbri* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @REG0, align 8
  %36 = add nsw i64 %34, %35
  %37 = call i32 @sbus_writel(i32 %31, i64 %36)
  store i32 0, i32* %3, align 4
  br label %38

38:                                               ; preds = %55, %1
  %39 = load %struct.snd_dbri*, %struct.snd_dbri** %2, align 8
  %40 = getelementptr inbounds %struct.snd_dbri, %struct.snd_dbri* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @REG0, align 8
  %43 = add nsw i64 %41, %42
  %44 = call i32 @sbus_readl(i64 %43)
  %45 = load i32, i32* @D_R, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %38
  %49 = load i32, i32* %3, align 4
  %50 = icmp slt i32 %49, 64
  br label %51

51:                                               ; preds = %48, %38
  %52 = phi i1 [ false, %38 ], [ %50, %48 ]
  br i1 %52, label %53, label %58

53:                                               ; preds = %51
  %54 = call i32 @udelay(i32 10)
  br label %55

55:                                               ; preds = %53
  %56 = load i32, i32* %3, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %3, align 4
  br label %38

58:                                               ; preds = %51
  %59 = load %struct.snd_dbri*, %struct.snd_dbri** %2, align 8
  %60 = getelementptr inbounds %struct.snd_dbri, %struct.snd_dbri* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @REG0, align 8
  %63 = add nsw i64 %61, %62
  %64 = call i32 @sbus_readl(i64 %63)
  store i32 %64, i32* %4, align 4
  %65 = load i32, i32* @D_G, align 4
  %66 = load i32, i32* @D_E, align 4
  %67 = or i32 %65, %66
  %68 = load i32, i32* %4, align 4
  %69 = or i32 %68, %67
  store i32 %69, i32* %4, align 4
  %70 = load i32, i32* @D_S, align 4
  %71 = xor i32 %70, -1
  %72 = load i32, i32* %4, align 4
  %73 = and i32 %72, %71
  store i32 %73, i32* %4, align 4
  %74 = load i32, i32* %4, align 4
  %75 = load %struct.snd_dbri*, %struct.snd_dbri** %2, align 8
  %76 = getelementptr inbounds %struct.snd_dbri, %struct.snd_dbri* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @REG0, align 8
  %79 = add nsw i64 %77, %78
  %80 = call i32 @sbus_writel(i32 %74, i64 %79)
  ret void
}

declare dso_local i32 @dprintk(i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @sbus_readl(i64) #1

declare dso_local i32 @sbus_writel(i32, i64) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
