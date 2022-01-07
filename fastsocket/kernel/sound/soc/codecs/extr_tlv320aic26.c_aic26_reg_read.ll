; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_tlv320aic26.c_aic26_reg_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_tlv320aic26.c_aic26_reg_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_codec = type { i32*, %struct.aic26* }
%struct.aic26 = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@AIC26_NUM_REGS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"AIC26 reg read error\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_codec*, i32)* @aic26_reg_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aic26_reg_read(%struct.snd_soc_codec* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_soc_codec*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.aic26*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [2 x i32], align 4
  %11 = alloca i32, align 4
  store %struct.snd_soc_codec* %0, %struct.snd_soc_codec** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %4, align 8
  %13 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %12, i32 0, i32 1
  %14 = load %struct.aic26*, %struct.aic26** %13, align 8
  store %struct.aic26* %14, %struct.aic26** %6, align 8
  %15 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %4, align 8
  %16 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  store i32* %17, i32** %7, align 8
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @AIC26_NUM_REGS, align 4
  %20 = icmp uge i32 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %2
  %22 = call i32 @WARN_ON_ONCE(i32 1)
  store i32 0, i32* %3, align 4
  br label %62

23:                                               ; preds = %2
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @AIC26_READ_COMMAND_WORD(i32 %24)
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = ashr i32 %26, 8
  %28 = and i32 %27, 255
  %29 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  store i32 %28, i32* %29, align 4
  %30 = load i32, i32* %8, align 4
  %31 = and i32 %30, 255
  %32 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 1
  store i32 %31, i32* %32, align 4
  %33 = load %struct.aic26*, %struct.aic26** %6, align 8
  %34 = getelementptr inbounds %struct.aic26, %struct.aic26* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %37 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %38 = call i32 @spi_write_then_read(%struct.TYPE_2__* %35, i32* %36, i32 2, i32* %37, i32 2)
  store i32 %38, i32* %11, align 4
  %39 = load i32, i32* %11, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %49

41:                                               ; preds = %23
  %42 = load %struct.aic26*, %struct.aic26** %6, align 8
  %43 = getelementptr inbounds %struct.aic26, %struct.aic26* %42, i32 0, i32 0
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = call i32 @dev_err(i32* %45, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %47 = load i32, i32* @EIO, align 4
  %48 = sub i32 0, %47
  store i32 %48, i32* %3, align 4
  br label %62

49:                                               ; preds = %23
  %50 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %51 = load i32, i32* %50, align 4
  %52 = shl i32 %51, 8
  %53 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 1
  %54 = load i32, i32* %53, align 4
  %55 = or i32 %52, %54
  store i32 %55, i32* %9, align 4
  %56 = load i32, i32* %9, align 4
  %57 = load i32*, i32** %7, align 8
  %58 = load i32, i32* %5, align 4
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  store i32 %56, i32* %60, align 4
  %61 = load i32, i32* %9, align 4
  store i32 %61, i32* %3, align 4
  br label %62

62:                                               ; preds = %49, %41, %21
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @AIC26_READ_COMMAND_WORD(i32) #1

declare dso_local i32 @spi_write_then_read(%struct.TYPE_2__*, i32*, i32, i32*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
