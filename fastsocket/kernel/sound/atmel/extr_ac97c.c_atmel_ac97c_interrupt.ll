; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/atmel/extr_ac97c.c_atmel_ac97c_interrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/atmel/extr_ac97c.c_atmel_ac97c_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atmel_ac97c = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@IRQ_NONE = common dso_local global i64 0, align 8
@SR = common dso_local global i32 0, align 4
@CASR = common dso_local global i32 0, align 4
@COSR = common dso_local global i32 0, align 4
@AC97C_SR_CAEVT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"channel A event%s%s%s%s%s%s\0A\00", align 1
@AC97C_CSR_OVRUN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c" OVRUN\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@AC97C_CSR_RXRDY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c" RXRDY\00", align 1
@AC97C_CSR_UNRUN = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [7 x i8] c" UNRUN\00", align 1
@AC97C_CSR_TXEMPTY = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [9 x i8] c" TXEMPTY\00", align 1
@AC97C_CSR_TXRDY = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [7 x i8] c" TXRDY\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c" NONE\00", align 1
@IRQ_HANDLED = common dso_local global i64 0, align 8
@AC97C_SR_COEVT = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [31 x i8] c"codec channel event%s%s%s%s%s\0A\00", align 1
@.str.9 = private unnamed_addr constant [54 x i8] c"spurious interrupt sr 0x%08x casr 0x%08x cosr 0x%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i8*)* @atmel_ac97c_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @atmel_ac97c_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.atmel_ac97c*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.atmel_ac97c*
  store %struct.atmel_ac97c* %11, %struct.atmel_ac97c** %5, align 8
  %12 = load i64, i64* @IRQ_NONE, align 8
  store i64 %12, i64* %6, align 8
  %13 = load %struct.atmel_ac97c*, %struct.atmel_ac97c** %5, align 8
  %14 = load i32, i32* @SR, align 4
  %15 = call i32 @ac97c_readl(%struct.atmel_ac97c* %13, i32 %14)
  store i32 %15, i32* %7, align 4
  %16 = load %struct.atmel_ac97c*, %struct.atmel_ac97c** %5, align 8
  %17 = load i32, i32* @CASR, align 4
  %18 = call i32 @ac97c_readl(%struct.atmel_ac97c* %16, i32 %17)
  store i32 %18, i32* %8, align 4
  %19 = load %struct.atmel_ac97c*, %struct.atmel_ac97c** %5, align 8
  %20 = load i32, i32* @COSR, align 4
  %21 = call i32 @ac97c_readl(%struct.atmel_ac97c* %19, i32 %20)
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* @AC97C_SR_CAEVT, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %68

26:                                               ; preds = %2
  %27 = load %struct.atmel_ac97c*, %struct.atmel_ac97c** %5, align 8
  %28 = getelementptr inbounds %struct.atmel_ac97c, %struct.atmel_ac97c* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* @AC97C_CSR_OVRUN, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  %35 = zext i1 %34 to i64
  %36 = select i1 %34, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* @AC97C_CSR_RXRDY, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  %41 = zext i1 %40 to i64
  %42 = select i1 %40, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* @AC97C_CSR_UNRUN, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  %47 = zext i1 %46 to i64
  %48 = select i1 %46, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* @AC97C_CSR_TXEMPTY, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  %53 = zext i1 %52 to i64
  %54 = select i1 %52, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* @AC97C_CSR_TXRDY, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  %59 = zext i1 %58 to i64
  %60 = select i1 %58, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %61 = load i32, i32* %8, align 4
  %62 = icmp ne i32 %61, 0
  %63 = xor i1 %62, true
  %64 = zext i1 %63 to i64
  %65 = select i1 %63, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %66 = call i32 (i32*, i8*, i8*, i8*, i8*, i8*, i8*, ...) @dev_info(i32* %30, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* %36, i8* %42, i8* %48, i8* %54, i8* %60, i8* %65)
  %67 = load i64, i64* @IRQ_HANDLED, align 8
  store i64 %67, i64* %6, align 8
  br label %68

68:                                               ; preds = %26, %2
  %69 = load i32, i32* %7, align 4
  %70 = load i32, i32* @AC97C_SR_COEVT, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %109

73:                                               ; preds = %68
  %74 = load %struct.atmel_ac97c*, %struct.atmel_ac97c** %5, align 8
  %75 = getelementptr inbounds %struct.atmel_ac97c, %struct.atmel_ac97c* %74, i32 0, i32 0
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  %78 = load i32, i32* %9, align 4
  %79 = load i32, i32* @AC97C_CSR_OVRUN, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  %82 = zext i1 %81 to i64
  %83 = select i1 %81, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %84 = load i32, i32* %9, align 4
  %85 = load i32, i32* @AC97C_CSR_RXRDY, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  %88 = zext i1 %87 to i64
  %89 = select i1 %87, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %90 = load i32, i32* %9, align 4
  %91 = load i32, i32* @AC97C_CSR_TXEMPTY, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  %94 = zext i1 %93 to i64
  %95 = select i1 %93, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %96 = load i32, i32* %9, align 4
  %97 = load i32, i32* @AC97C_CSR_TXRDY, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  %100 = zext i1 %99 to i64
  %101 = select i1 %99, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %102 = load i32, i32* %9, align 4
  %103 = icmp ne i32 %102, 0
  %104 = xor i1 %103, true
  %105 = zext i1 %104 to i64
  %106 = select i1 %104, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %107 = call i32 (i32*, i8*, i8*, i8*, i8*, i8*, i8*, ...) @dev_info(i32* %77, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i64 0, i64 0), i8* %83, i8* %89, i8* %95, i8* %101, i8* %106)
  %108 = load i64, i64* @IRQ_HANDLED, align 8
  store i64 %108, i64* %6, align 8
  br label %109

109:                                              ; preds = %73, %68
  %110 = load i64, i64* %6, align 8
  %111 = load i64, i64* @IRQ_NONE, align 8
  %112 = icmp eq i64 %110, %111
  br i1 %112, label %113, label %122

113:                                              ; preds = %109
  %114 = load %struct.atmel_ac97c*, %struct.atmel_ac97c** %5, align 8
  %115 = getelementptr inbounds %struct.atmel_ac97c, %struct.atmel_ac97c* %114, i32 0, i32 0
  %116 = load %struct.TYPE_2__*, %struct.TYPE_2__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 0
  %118 = load i32, i32* %7, align 4
  %119 = load i32, i32* %8, align 4
  %120 = load i32, i32* %9, align 4
  %121 = call i32 @dev_err(i32* %117, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.9, i64 0, i64 0), i32 %118, i32 %119, i32 %120)
  br label %122

122:                                              ; preds = %113, %109
  %123 = load i64, i64* %6, align 8
  ret i64 %123
}

declare dso_local i32 @ac97c_readl(%struct.atmel_ac97c*, i32) #1

declare dso_local i32 @dev_info(i32*, i8*, i8*, i8*, i8*, i8*, i8*, ...) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
