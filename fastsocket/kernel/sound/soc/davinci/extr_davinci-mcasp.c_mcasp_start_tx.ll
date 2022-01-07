; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/davinci/extr_davinci-mcasp.c_mcasp_start_tx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/davinci/extr_davinci-mcasp.c_mcasp_start_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.davinci_audio_dev = type { i64, i64*, i64 }

@DAVINCI_MCASP_GBLCTLX_REG = common dso_local global i64 0, align 8
@TXHCLKRST = common dso_local global i32 0, align 4
@TXCLKRST = common dso_local global i32 0, align 4
@TXSERCLR = common dso_local global i32 0, align 4
@DAVINCI_MCASP_TXBUF_REG = common dso_local global i64 0, align 8
@TXSMRST = common dso_local global i32 0, align 4
@TXFSRST = common dso_local global i32 0, align 4
@TX_MODE = common dso_local global i64 0, align 8
@TXSTATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.davinci_audio_dev*)* @mcasp_start_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mcasp_start_tx(%struct.davinci_audio_dev* %0) #0 {
  %2 = alloca %struct.davinci_audio_dev*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.davinci_audio_dev* %0, %struct.davinci_audio_dev** %2, align 8
  store i64 0, i64* %3, align 8
  %6 = load %struct.davinci_audio_dev*, %struct.davinci_audio_dev** %2, align 8
  %7 = getelementptr inbounds %struct.davinci_audio_dev, %struct.davinci_audio_dev* %6, i32 0, i32 2
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @DAVINCI_MCASP_GBLCTLX_REG, align 8
  %10 = add nsw i64 %8, %9
  %11 = load i32, i32* @TXHCLKRST, align 4
  %12 = call i32 @mcasp_set_ctl_reg(i64 %10, i32 %11)
  %13 = load %struct.davinci_audio_dev*, %struct.davinci_audio_dev** %2, align 8
  %14 = getelementptr inbounds %struct.davinci_audio_dev, %struct.davinci_audio_dev* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @DAVINCI_MCASP_GBLCTLX_REG, align 8
  %17 = add nsw i64 %15, %16
  %18 = load i32, i32* @TXCLKRST, align 4
  %19 = call i32 @mcasp_set_ctl_reg(i64 %17, i32 %18)
  %20 = load %struct.davinci_audio_dev*, %struct.davinci_audio_dev** %2, align 8
  %21 = getelementptr inbounds %struct.davinci_audio_dev, %struct.davinci_audio_dev* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @DAVINCI_MCASP_GBLCTLX_REG, align 8
  %24 = add nsw i64 %22, %23
  %25 = load i32, i32* @TXSERCLR, align 4
  %26 = call i32 @mcasp_set_ctl_reg(i64 %24, i32 %25)
  %27 = load %struct.davinci_audio_dev*, %struct.davinci_audio_dev** %2, align 8
  %28 = getelementptr inbounds %struct.davinci_audio_dev, %struct.davinci_audio_dev* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @DAVINCI_MCASP_TXBUF_REG, align 8
  %31 = add nsw i64 %29, %30
  %32 = call i32 @mcasp_set_reg(i64 %31, i32 0)
  %33 = load %struct.davinci_audio_dev*, %struct.davinci_audio_dev** %2, align 8
  %34 = getelementptr inbounds %struct.davinci_audio_dev, %struct.davinci_audio_dev* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @DAVINCI_MCASP_GBLCTLX_REG, align 8
  %37 = add nsw i64 %35, %36
  %38 = load i32, i32* @TXSMRST, align 4
  %39 = call i32 @mcasp_set_ctl_reg(i64 %37, i32 %38)
  %40 = load %struct.davinci_audio_dev*, %struct.davinci_audio_dev** %2, align 8
  %41 = getelementptr inbounds %struct.davinci_audio_dev, %struct.davinci_audio_dev* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @DAVINCI_MCASP_GBLCTLX_REG, align 8
  %44 = add nsw i64 %42, %43
  %45 = load i32, i32* @TXFSRST, align 4
  %46 = call i32 @mcasp_set_ctl_reg(i64 %44, i32 %45)
  %47 = load %struct.davinci_audio_dev*, %struct.davinci_audio_dev** %2, align 8
  %48 = getelementptr inbounds %struct.davinci_audio_dev, %struct.davinci_audio_dev* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @DAVINCI_MCASP_TXBUF_REG, align 8
  %51 = add nsw i64 %49, %50
  %52 = call i32 @mcasp_set_reg(i64 %51, i32 0)
  store i64 0, i64* %4, align 8
  br label %53

53:                                               ; preds = %71, %1
  %54 = load i64, i64* %4, align 8
  %55 = load %struct.davinci_audio_dev*, %struct.davinci_audio_dev** %2, align 8
  %56 = getelementptr inbounds %struct.davinci_audio_dev, %struct.davinci_audio_dev* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp ult i64 %54, %57
  br i1 %58, label %59, label %74

59:                                               ; preds = %53
  %60 = load %struct.davinci_audio_dev*, %struct.davinci_audio_dev** %2, align 8
  %61 = getelementptr inbounds %struct.davinci_audio_dev, %struct.davinci_audio_dev* %60, i32 0, i32 1
  %62 = load i64*, i64** %61, align 8
  %63 = load i64, i64* %4, align 8
  %64 = getelementptr inbounds i64, i64* %62, i64 %63
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @TX_MODE, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %70

68:                                               ; preds = %59
  %69 = load i64, i64* %4, align 8
  store i64 %69, i64* %3, align 8
  br label %74

70:                                               ; preds = %59
  br label %71

71:                                               ; preds = %70
  %72 = load i64, i64* %4, align 8
  %73 = add i64 %72, 1
  store i64 %73, i64* %4, align 8
  br label %53

74:                                               ; preds = %68, %53
  store i32 0, i32* %5, align 4
  br label %75

75:                                               ; preds = %91, %74
  %76 = load %struct.davinci_audio_dev*, %struct.davinci_audio_dev** %2, align 8
  %77 = getelementptr inbounds %struct.davinci_audio_dev, %struct.davinci_audio_dev* %76, i32 0, i32 2
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* %3, align 8
  %80 = call i64 @DAVINCI_MCASP_XRSRCTL_REG(i64 %79)
  %81 = add nsw i64 %78, %80
  %82 = call i32 @mcasp_get_reg(i64 %81)
  %83 = load i32, i32* @TXSTATE, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %89, label %86

86:                                               ; preds = %75
  %87 = load i32, i32* %5, align 4
  %88 = icmp slt i32 %87, 100000
  br label %89

89:                                               ; preds = %86, %75
  %90 = phi i1 [ false, %75 ], [ %88, %86 ]
  br i1 %90, label %91, label %94

91:                                               ; preds = %89
  %92 = load i32, i32* %5, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %5, align 4
  br label %75

94:                                               ; preds = %89
  %95 = load %struct.davinci_audio_dev*, %struct.davinci_audio_dev** %2, align 8
  %96 = getelementptr inbounds %struct.davinci_audio_dev, %struct.davinci_audio_dev* %95, i32 0, i32 2
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @DAVINCI_MCASP_TXBUF_REG, align 8
  %99 = add nsw i64 %97, %98
  %100 = call i32 @mcasp_set_reg(i64 %99, i32 0)
  ret void
}

declare dso_local i32 @mcasp_set_ctl_reg(i64, i32) #1

declare dso_local i32 @mcasp_set_reg(i64, i32) #1

declare dso_local i32 @mcasp_get_reg(i64) #1

declare dso_local i64 @DAVINCI_MCASP_XRSRCTL_REG(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
