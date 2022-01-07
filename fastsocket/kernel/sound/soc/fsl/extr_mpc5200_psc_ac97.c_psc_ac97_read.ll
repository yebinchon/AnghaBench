; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/fsl/extr_mpc5200_psc_ac97.c_psc_ac97_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/fsl/extr_mpc5200_psc_ac97.c_psc_ac97_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.snd_ac97 = type { i32 }

@psc_dma = common dso_local global %struct.TYPE_6__* null, align 8
@MPC52xx_PSC_SR_CMDSEND = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"timeout on ac97 bus (rdy)\0A\00", align 1
@ENODEV = common dso_local global i16 0, align 2
@MPC52xx_PSC_SR_DATA_VAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"timeout on ac97 read (val) %x\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"reg echo error on ac97 read\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i16 (%struct.snd_ac97*, i16)* @psc_ac97_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i16 @psc_ac97_read(%struct.snd_ac97* %0, i16 zeroext %1) #0 {
  %3 = alloca i16, align 2
  %4 = alloca %struct.snd_ac97*, align 8
  %5 = alloca i16, align 2
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.snd_ac97* %0, %struct.snd_ac97** %4, align 8
  store i16 %1, i16* %5, align 2
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** @psc_dma, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = call i32 @mutex_lock(i32* %9)
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** @psc_dma, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 1
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = call i32 @in_be16(i32* %15)
  %17 = load i32, i32* @MPC52xx_PSC_SR_CMDSEND, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  %22 = call i32 @spin_event_timeout(i32 %21, i32 100, i32 0)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %34

25:                                               ; preds = %2
  %26 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** @psc_dma, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = call i32 @mutex_unlock(i32* %28)
  %30 = load i16, i16* @ENODEV, align 2
  %31 = zext i16 %30 to i32
  %32 = sub nsw i32 0, %31
  %33 = trunc i32 %32 to i16
  store i16 %33, i16* %3, align 2
  br label %106

34:                                               ; preds = %2
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** @psc_dma, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 1
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = call i32 @in_be32(i32* %38)
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** @psc_dma, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 1
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 2
  %44 = load i16, i16* %5, align 2
  %45 = zext i16 %44 to i32
  %46 = and i32 %45, 127
  %47 = shl i32 %46, 24
  %48 = or i32 -2147483648, %47
  %49 = call i32 @out_be32(i32* %43, i32 %48)
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** @psc_dma, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 1
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = call i32 @in_be16(i32* %54)
  %56 = load i32, i32* @MPC52xx_PSC_SR_DATA_VAL, align 4
  %57 = and i32 %55, %56
  %58 = call i32 @spin_event_timeout(i32 %57, i32 100, i32 0)
  store i32 %58, i32* %6, align 4
  %59 = load i32, i32* %6, align 4
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %76

61:                                               ; preds = %34
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** @psc_dma, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 1
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = call i32 @in_be16(i32* %66)
  %68 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %67)
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** @psc_dma, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  %71 = call i32 @mutex_unlock(i32* %70)
  %72 = load i16, i16* @ENODEV, align 2
  %73 = zext i16 %72 to i32
  %74 = sub nsw i32 0, %73
  %75 = trunc i32 %74 to i16
  store i16 %75, i16* %3, align 2
  br label %106

76:                                               ; preds = %34
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** @psc_dma, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 1
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 0
  %81 = call i32 @in_be32(i32* %80)
  store i32 %81, i32* %7, align 4
  %82 = load i32, i32* %7, align 4
  %83 = lshr i32 %82, 24
  %84 = and i32 %83, 127
  %85 = load i16, i16* %5, align 2
  %86 = zext i16 %85 to i32
  %87 = icmp ne i32 %84, %86
  br i1 %87, label %88, label %97

88:                                               ; preds = %76
  %89 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** @psc_dma, align 8
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 0
  %92 = call i32 @mutex_unlock(i32* %91)
  %93 = load i16, i16* @ENODEV, align 2
  %94 = zext i16 %93 to i32
  %95 = sub nsw i32 0, %94
  %96 = trunc i32 %95 to i16
  store i16 %96, i16* %3, align 2
  br label %106

97:                                               ; preds = %76
  %98 = load i32, i32* %7, align 4
  %99 = lshr i32 %98, 8
  %100 = and i32 %99, 65535
  store i32 %100, i32* %7, align 4
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** @psc_dma, align 8
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 0
  %103 = call i32 @mutex_unlock(i32* %102)
  %104 = load i32, i32* %7, align 4
  %105 = trunc i32 %104 to i16
  store i16 %105, i16* %3, align 2
  br label %106

106:                                              ; preds = %97, %88, %61, %25
  %107 = load i16, i16* %3, align 2
  ret i16 %107
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @spin_event_timeout(i32, i32, i32) #1

declare dso_local i32 @in_be16(i32*) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @in_be32(i32*) #1

declare dso_local i32 @out_be32(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
