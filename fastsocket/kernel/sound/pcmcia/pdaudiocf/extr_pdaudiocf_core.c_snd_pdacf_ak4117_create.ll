; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pcmcia/pdaudiocf/extr_pdaudiocf_core.c_snd_pdacf_ak4117_create.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pcmcia/pdaudiocf/extr_pdaudiocf_core.c_snd_pdacf_ak4117_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pdacf = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 (%struct.TYPE_3__*, i32, i32)*, %struct.snd_pdacf* }

@snd_pdacf_ak4117_create.pgm = internal global [5 x i8] c"\89\8F\8B\FF\87", align 1
@pdacf_ak4117_read = common dso_local global i32 0, align 4
@pdacf_ak4117_write = common dso_local global i32 0, align 4
@PDAUDIOCF_REG_TCR = common dso_local global i32 0, align 4
@PDAUDIOCF_ELIMAKMBIT = common dso_local global i32 0, align 4
@PDAUDIOCF_TESTDATASEL = common dso_local global i32 0, align 4
@PDAUDIOCF_REG_SCR = common dso_local global i32 0, align 4
@PDAUDIOCF_CLKDIV0 = common dso_local global i32 0, align 4
@PDAUDIOCF_CLKDIV1 = common dso_local global i32 0, align 4
@PDAUDIOCF_RED_LED_OFF = common dso_local global i32 0, align 4
@PDAUDIOCF_BLUE_LED_OFF = common dso_local global i32 0, align 4
@PDAUDIOCF_DATAFMT0 = common dso_local global i32 0, align 4
@PDAUDIOCF_DATAFMT1 = common dso_local global i32 0, align 4
@PDAUDIOCF_REG_IER = common dso_local global i32 0, align 4
@PDAUDIOCF_IRQLVLEN0 = common dso_local global i32 0, align 4
@PDAUDIOCF_IRQLVLEN1 = common dso_local global i32 0, align 4
@PDAUDIOCF_BLUEDUTY0 = common dso_local global i32 0, align 4
@PDAUDIOCF_REDDUTY0 = common dso_local global i32 0, align 4
@PDAUDIOCF_REDDUTY1 = common dso_local global i32 0, align 4
@PDAUDIOCF_BLUEDUTY1 = common dso_local global i32 0, align 4
@PDAUDIOCF_HALFRATE = common dso_local global i32 0, align 4
@PDAUDIOCF_IRQOVREN = common dso_local global i32 0, align 4
@PDAUDIOCF_IRQAKMEN = common dso_local global i32 0, align 4
@AK4117_UNLCK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_pdacf_ak4117_create(%struct.snd_pdacf* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_pdacf*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.snd_pdacf* %0, %struct.snd_pdacf** %3, align 8
  %6 = load %struct.snd_pdacf*, %struct.snd_pdacf** %3, align 8
  %7 = call i32 @pdacf_reset(%struct.snd_pdacf* %6, i32 0)
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* %4, align 4
  store i32 %11, i32* %2, align 4
  br label %109

12:                                               ; preds = %1
  %13 = load %struct.snd_pdacf*, %struct.snd_pdacf** %3, align 8
  %14 = getelementptr inbounds %struct.snd_pdacf, %struct.snd_pdacf* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @pdacf_ak4117_read, align 4
  %17 = load i32, i32* @pdacf_ak4117_write, align 4
  %18 = load %struct.snd_pdacf*, %struct.snd_pdacf** %3, align 8
  %19 = load %struct.snd_pdacf*, %struct.snd_pdacf** %3, align 8
  %20 = getelementptr inbounds %struct.snd_pdacf, %struct.snd_pdacf* %19, i32 0, i32 0
  %21 = call i32 @snd_ak4117_create(i32 %15, i32 %16, i32 %17, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @snd_pdacf_ak4117_create.pgm, i64 0, i64 0), %struct.snd_pdacf* %18, %struct.TYPE_3__** %20)
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %12
  %25 = load i32, i32* %4, align 4
  store i32 %25, i32* %2, align 4
  br label %109

26:                                               ; preds = %12
  %27 = load %struct.snd_pdacf*, %struct.snd_pdacf** %3, align 8
  %28 = load i32, i32* @PDAUDIOCF_REG_TCR, align 4
  %29 = call i32 @pdacf_reg_read(%struct.snd_pdacf* %27, i32 %28)
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* @PDAUDIOCF_ELIMAKMBIT, align 4
  %31 = load i32, i32* @PDAUDIOCF_TESTDATASEL, align 4
  %32 = or i32 %30, %31
  %33 = xor i32 %32, -1
  %34 = load i32, i32* %5, align 4
  %35 = and i32 %34, %33
  store i32 %35, i32* %5, align 4
  %36 = load %struct.snd_pdacf*, %struct.snd_pdacf** %3, align 8
  %37 = load i32, i32* @PDAUDIOCF_REG_TCR, align 4
  %38 = load i32, i32* %5, align 4
  %39 = call i32 @pdacf_reg_write(%struct.snd_pdacf* %36, i32 %37, i32 %38)
  %40 = load %struct.snd_pdacf*, %struct.snd_pdacf** %3, align 8
  %41 = load i32, i32* @PDAUDIOCF_REG_SCR, align 4
  %42 = call i32 @pdacf_reg_read(%struct.snd_pdacf* %40, i32 %41)
  store i32 %42, i32* %5, align 4
  %43 = load i32, i32* @PDAUDIOCF_CLKDIV0, align 4
  %44 = load i32, i32* @PDAUDIOCF_CLKDIV1, align 4
  %45 = or i32 %43, %44
  %46 = xor i32 %45, -1
  %47 = load i32, i32* %5, align 4
  %48 = and i32 %47, %46
  store i32 %48, i32* %5, align 4
  %49 = load i32, i32* @PDAUDIOCF_RED_LED_OFF, align 4
  %50 = load i32, i32* @PDAUDIOCF_BLUE_LED_OFF, align 4
  %51 = or i32 %49, %50
  %52 = xor i32 %51, -1
  %53 = load i32, i32* %5, align 4
  %54 = and i32 %53, %52
  store i32 %54, i32* %5, align 4
  %55 = load i32, i32* @PDAUDIOCF_DATAFMT0, align 4
  %56 = load i32, i32* @PDAUDIOCF_DATAFMT1, align 4
  %57 = or i32 %55, %56
  %58 = load i32, i32* %5, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %5, align 4
  %60 = load %struct.snd_pdacf*, %struct.snd_pdacf** %3, align 8
  %61 = load i32, i32* @PDAUDIOCF_REG_SCR, align 4
  %62 = load i32, i32* %5, align 4
  %63 = call i32 @pdacf_reg_write(%struct.snd_pdacf* %60, i32 %61, i32 %62)
  %64 = load %struct.snd_pdacf*, %struct.snd_pdacf** %3, align 8
  %65 = load i32, i32* @PDAUDIOCF_REG_IER, align 4
  %66 = call i32 @pdacf_reg_read(%struct.snd_pdacf* %64, i32 %65)
  store i32 %66, i32* %5, align 4
  %67 = load i32, i32* @PDAUDIOCF_IRQLVLEN0, align 4
  %68 = load i32, i32* @PDAUDIOCF_IRQLVLEN1, align 4
  %69 = or i32 %67, %68
  %70 = xor i32 %69, -1
  %71 = load i32, i32* %5, align 4
  %72 = and i32 %71, %70
  store i32 %72, i32* %5, align 4
  %73 = load i32, i32* @PDAUDIOCF_BLUEDUTY0, align 4
  %74 = load i32, i32* @PDAUDIOCF_REDDUTY0, align 4
  %75 = or i32 %73, %74
  %76 = load i32, i32* @PDAUDIOCF_REDDUTY1, align 4
  %77 = or i32 %75, %76
  %78 = xor i32 %77, -1
  %79 = load i32, i32* %5, align 4
  %80 = and i32 %79, %78
  store i32 %80, i32* %5, align 4
  %81 = load i32, i32* @PDAUDIOCF_BLUEDUTY1, align 4
  %82 = load i32, i32* @PDAUDIOCF_HALFRATE, align 4
  %83 = or i32 %81, %82
  %84 = load i32, i32* %5, align 4
  %85 = or i32 %84, %83
  store i32 %85, i32* %5, align 4
  %86 = load i32, i32* @PDAUDIOCF_IRQOVREN, align 4
  %87 = load i32, i32* @PDAUDIOCF_IRQAKMEN, align 4
  %88 = or i32 %86, %87
  %89 = load i32, i32* %5, align 4
  %90 = or i32 %89, %88
  store i32 %90, i32* %5, align 4
  %91 = load %struct.snd_pdacf*, %struct.snd_pdacf** %3, align 8
  %92 = load i32, i32* @PDAUDIOCF_REG_IER, align 4
  %93 = load i32, i32* %5, align 4
  %94 = call i32 @pdacf_reg_write(%struct.snd_pdacf* %91, i32 %92, i32 %93)
  %95 = load %struct.snd_pdacf*, %struct.snd_pdacf** %3, align 8
  %96 = load %struct.snd_pdacf*, %struct.snd_pdacf** %3, align 8
  %97 = getelementptr inbounds %struct.snd_pdacf, %struct.snd_pdacf* %96, i32 0, i32 0
  %98 = load %struct.TYPE_3__*, %struct.TYPE_3__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 1
  store %struct.snd_pdacf* %95, %struct.snd_pdacf** %99, align 8
  %100 = load %struct.snd_pdacf*, %struct.snd_pdacf** %3, align 8
  %101 = getelementptr inbounds %struct.snd_pdacf, %struct.snd_pdacf* %100, i32 0, i32 0
  %102 = load %struct.TYPE_3__*, %struct.TYPE_3__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 0
  store i32 (%struct.TYPE_3__*, i32, i32)* @snd_pdacf_ak4117_change, i32 (%struct.TYPE_3__*, i32, i32)** %103, align 8
  %104 = load %struct.snd_pdacf*, %struct.snd_pdacf** %3, align 8
  %105 = getelementptr inbounds %struct.snd_pdacf, %struct.snd_pdacf* %104, i32 0, i32 0
  %106 = load %struct.TYPE_3__*, %struct.TYPE_3__** %105, align 8
  %107 = load i32, i32* @AK4117_UNLCK, align 4
  %108 = call i32 @snd_pdacf_ak4117_change(%struct.TYPE_3__* %106, i32 %107, i32 0)
  store i32 0, i32* %2, align 4
  br label %109

109:                                              ; preds = %26, %24, %10
  %110 = load i32, i32* %2, align 4
  ret i32 %110
}

declare dso_local i32 @pdacf_reset(%struct.snd_pdacf*, i32) #1

declare dso_local i32 @snd_ak4117_create(i32, i32, i32, i8*, %struct.snd_pdacf*, %struct.TYPE_3__**) #1

declare dso_local i32 @pdacf_reg_read(%struct.snd_pdacf*, i32) #1

declare dso_local i32 @pdacf_reg_write(%struct.snd_pdacf*, i32, i32) #1

declare dso_local i32 @snd_pdacf_ak4117_change(%struct.TYPE_3__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
