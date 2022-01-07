; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_s526.c_s526_ai_rinsn.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_s526.c_s526_ai_rinsn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.comedi_device = type { i32 }
%struct.comedi_subdevice = type { i32 }
%struct.comedi_insn = type { i32, i32 }

@devpriv = common dso_local global %struct.TYPE_2__* null, align 8
@REG_ADC = common dso_local global i32 0, align 4
@REG_ISR = common dso_local global i32 0, align 4
@ISR_ADC_DONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"s526: ADC(0x%04x) timeout\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@REG_ADD = common dso_local global i32 0, align 4
@TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @s526_ai_rinsn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s526_ai_rinsn(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_insn* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.comedi_device*, align 8
  %7 = alloca %struct.comedi_subdevice*, align 8
  %8 = alloca %struct.comedi_insn*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i16, align 2
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %6, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %7, align 8
  store %struct.comedi_insn* %2, %struct.comedi_insn** %8, align 8
  store i32* %3, i32** %9, align 8
  %16 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %17 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @CR_CHAN(i32 %18)
  store i32 %19, i32* %12, align 4
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = and i32 %22, 32768
  %24 = load i32, i32* %12, align 4
  %25 = shl i32 32, %24
  %26 = or i32 %23, %25
  %27 = load i32, i32* %12, align 4
  %28 = shl i32 %27, 1
  %29 = or i32 %26, %28
  %30 = or i32 %29, 1
  %31 = trunc i32 %30 to i16
  store i16 %31, i16* %13, align 2
  store i32 0, i32* %10, align 4
  br label %32

32:                                               ; preds = %84, %4
  %33 = load i32, i32* %10, align 4
  %34 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %35 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp slt i32 %33, %36
  br i1 %37, label %38, label %87

38:                                               ; preds = %32
  %39 = load i16, i16* %13, align 2
  %40 = zext i16 %39 to i32
  %41 = load i32, i32* @REG_ADC, align 4
  %42 = call i32 @ADDR_REG(i32 %41)
  %43 = call i32 @outw(i32 %40, i32 %42)
  store i32 0, i32* %11, align 4
  br label %44

44:                                               ; preds = %61, %38
  %45 = load i32, i32* %11, align 4
  %46 = icmp slt i32 %45, 100
  br i1 %46, label %47, label %64

47:                                               ; preds = %44
  %48 = load i32, i32* @REG_ISR, align 4
  %49 = call i32 @ADDR_REG(i32 %48)
  %50 = call i32 @inw(i32 %49)
  store i32 %50, i32* %15, align 4
  %51 = load i32, i32* %15, align 4
  %52 = load i32, i32* @ISR_ADC_DONE, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %47
  %56 = load i32, i32* @ISR_ADC_DONE, align 4
  %57 = load i32, i32* @REG_ISR, align 4
  %58 = call i32 @ADDR_REG(i32 %57)
  %59 = call i32 @outw(i32 %56, i32 %58)
  br label %64

60:                                               ; preds = %47
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* %11, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %11, align 4
  br label %44

64:                                               ; preds = %55, %44
  %65 = load i32, i32* %11, align 4
  %66 = icmp eq i32 %65, 100
  br i1 %66, label %67, label %74

67:                                               ; preds = %64
  %68 = load i32, i32* @REG_ISR, align 4
  %69 = call i32 @ADDR_REG(i32 %68)
  %70 = call i32 @inw(i32 %69)
  %71 = call i32 @printk(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %70)
  %72 = load i32, i32* @ETIMEDOUT, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %5, align 4
  br label %89

74:                                               ; preds = %64
  %75 = load i32, i32* @REG_ADD, align 4
  %76 = call i32 @ADDR_REG(i32 %75)
  %77 = call i32 @inw(i32 %76)
  store i32 %77, i32* %14, align 4
  %78 = load i32, i32* %14, align 4
  %79 = xor i32 %78, 32768
  %80 = load i32*, i32** %9, align 8
  %81 = load i32, i32* %10, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %80, i64 %82
  store i32 %79, i32* %83, align 4
  br label %84

84:                                               ; preds = %74
  %85 = load i32, i32* %10, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %10, align 4
  br label %32

87:                                               ; preds = %32
  %88 = load i32, i32* %10, align 4
  store i32 %88, i32* %5, align 4
  br label %89

89:                                               ; preds = %87, %67
  %90 = load i32, i32* %5, align 4
  ret i32 %90
}

declare dso_local i32 @CR_CHAN(i32) #1

declare dso_local i32 @outw(i32, i32) #1

declare dso_local i32 @ADDR_REG(i32) #1

declare dso_local i32 @inw(i32) #1

declare dso_local i32 @printk(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
