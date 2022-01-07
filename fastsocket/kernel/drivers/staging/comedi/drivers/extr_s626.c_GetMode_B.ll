; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_s626.c_GetMode_B.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_s626.c_GetMode_B.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32 }
%struct.enc_private = type { i32, i32 }

@STDBIT_INTSRC = common dso_local global i32 0, align 4
@CRBBIT_INTSRC_B = common dso_local global i32 0, align 4
@STDMSK_INTSRC = common dso_local global i32 0, align 4
@STDBIT_LATCHSRC = common dso_local global i32 0, align 4
@CRBBIT_LATCHSRC = common dso_local global i32 0, align 4
@STDMSK_LATCHSRC = common dso_local global i32 0, align 4
@STDBIT_LOADSRC = common dso_local global i32 0, align 4
@CRBBIT_LOADSRC_B = common dso_local global i32 0, align 4
@STDMSK_LOADSRC = common dso_local global i32 0, align 4
@STDBIT_INDXPOL = common dso_local global i32 0, align 4
@CRBBIT_INDXPOL_B = common dso_local global i32 0, align 4
@STDMSK_INDXPOL = common dso_local global i32 0, align 4
@CRBBIT_CLKENAB_B = common dso_local global i32 0, align 4
@STDBIT_CLKENAB = common dso_local global i32 0, align 4
@STDMSK_CLKENAB = common dso_local global i32 0, align 4
@CRABIT_INDXSRC_B = common dso_local global i32 0, align 4
@STDBIT_INDXSRC = common dso_local global i32 0, align 4
@STDMSK_INDXSRC = common dso_local global i32 0, align 4
@CRBMSK_CLKMULT_B = common dso_local global i32 0, align 4
@MULT_X0 = common dso_local global i32 0, align 4
@CRBBIT_CLKMULT_B = common dso_local global i32 0, align 4
@CLKSRC_EXTENDER = common dso_local global i32 0, align 4
@STDBIT_CLKSRC = common dso_local global i32 0, align 4
@MULT_X1 = common dso_local global i32 0, align 4
@STDBIT_CLKMULT = common dso_local global i32 0, align 4
@CRABIT_CLKSRC_B = common dso_local global i32 0, align 4
@STDBIT_CLKPOL = common dso_local global i32 0, align 4
@STDMSK_CLKPOL = common dso_local global i32 0, align 4
@CLKSRC_TIMER = common dso_local global i32 0, align 4
@CLKSRC_COUNTER = common dso_local global i32 0, align 4
@STDMSK_CLKMULT = common dso_local global i32 0, align 4
@CRBBIT_CLKPOL_B = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.enc_private*)* @GetMode_B to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @GetMode_B(%struct.comedi_device* %0, %struct.enc_private* %1) #0 {
  %3 = alloca %struct.comedi_device*, align 8
  %4 = alloca %struct.enc_private*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %3, align 8
  store %struct.enc_private* %1, %struct.enc_private** %4, align 8
  %8 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %9 = load %struct.enc_private*, %struct.enc_private** %4, align 8
  %10 = getelementptr inbounds %struct.enc_private, %struct.enc_private* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @DEBIread(%struct.comedi_device* %8, i32 %11)
  store i32 %12, i32* %5, align 4
  %13 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %14 = load %struct.enc_private*, %struct.enc_private** %4, align 8
  %15 = getelementptr inbounds %struct.enc_private, %struct.enc_private* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @DEBIread(%struct.comedi_device* %13, i32 %16)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @STDBIT_INTSRC, align 4
  %20 = load i32, i32* @CRBBIT_INTSRC_B, align 4
  %21 = sub nsw i32 %19, %20
  %22 = shl i32 %18, %21
  %23 = load i32, i32* @STDMSK_INTSRC, align 4
  %24 = and i32 %22, %23
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* @STDBIT_LATCHSRC, align 4
  %27 = load i32, i32* @CRBBIT_LATCHSRC, align 4
  %28 = sub nsw i32 %26, %27
  %29 = shl i32 %25, %28
  %30 = load i32, i32* @STDMSK_LATCHSRC, align 4
  %31 = and i32 %29, %30
  %32 = or i32 %24, %31
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* @STDBIT_LOADSRC, align 4
  %35 = load i32, i32* @CRBBIT_LOADSRC_B, align 4
  %36 = sub nsw i32 %34, %35
  %37 = shl i32 %33, %36
  %38 = load i32, i32* @STDMSK_LOADSRC, align 4
  %39 = and i32 %37, %38
  %40 = or i32 %32, %39
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* @STDBIT_INDXPOL, align 4
  %43 = load i32, i32* @CRBBIT_INDXPOL_B, align 4
  %44 = sub nsw i32 %42, %43
  %45 = shl i32 %41, %44
  %46 = load i32, i32* @STDMSK_INDXPOL, align 4
  %47 = and i32 %45, %46
  %48 = or i32 %40, %47
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* @CRBBIT_CLKENAB_B, align 4
  %51 = load i32, i32* @STDBIT_CLKENAB, align 4
  %52 = sub nsw i32 %50, %51
  %53 = ashr i32 %49, %52
  %54 = load i32, i32* @STDMSK_CLKENAB, align 4
  %55 = and i32 %53, %54
  %56 = or i32 %48, %55
  %57 = load i32, i32* %5, align 4
  %58 = load i32, i32* @CRABIT_INDXSRC_B, align 4
  %59 = add nsw i32 %58, 1
  %60 = load i32, i32* @STDBIT_INDXSRC, align 4
  %61 = sub nsw i32 %59, %60
  %62 = ashr i32 %57, %61
  %63 = load i32, i32* @STDMSK_INDXSRC, align 4
  %64 = and i32 %62, %63
  %65 = or i32 %56, %64
  store i32 %65, i32* %7, align 4
  %66 = load i32, i32* %6, align 4
  %67 = load i32, i32* @CRBMSK_CLKMULT_B, align 4
  %68 = and i32 %66, %67
  %69 = load i32, i32* @MULT_X0, align 4
  %70 = load i32, i32* @CRBBIT_CLKMULT_B, align 4
  %71 = shl i32 %69, %70
  %72 = icmp eq i32 %68, %71
  br i1 %72, label %73, label %91

73:                                               ; preds = %2
  %74 = load i32, i32* @CLKSRC_EXTENDER, align 4
  %75 = load i32, i32* @STDBIT_CLKSRC, align 4
  %76 = shl i32 %74, %75
  %77 = load i32, i32* @MULT_X1, align 4
  %78 = load i32, i32* @STDBIT_CLKMULT, align 4
  %79 = shl i32 %77, %78
  %80 = or i32 %76, %79
  %81 = load i32, i32* %5, align 4
  %82 = load i32, i32* @CRABIT_CLKSRC_B, align 4
  %83 = load i32, i32* @STDBIT_CLKPOL, align 4
  %84 = sub nsw i32 %82, %83
  %85 = ashr i32 %81, %84
  %86 = load i32, i32* @STDMSK_CLKPOL, align 4
  %87 = and i32 %85, %86
  %88 = or i32 %80, %87
  %89 = load i32, i32* %7, align 4
  %90 = or i32 %89, %88
  store i32 %90, i32* %7, align 4
  br label %138

91:                                               ; preds = %2
  %92 = load i32, i32* %5, align 4
  %93 = load i32, i32* @CRABIT_CLKSRC_B, align 4
  %94 = shl i32 2, %93
  %95 = and i32 %92, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %115

97:                                               ; preds = %91
  %98 = load i32, i32* @CLKSRC_TIMER, align 4
  %99 = load i32, i32* @STDBIT_CLKSRC, align 4
  %100 = shl i32 %98, %99
  %101 = load i32, i32* @MULT_X1, align 4
  %102 = load i32, i32* @STDBIT_CLKMULT, align 4
  %103 = shl i32 %101, %102
  %104 = or i32 %100, %103
  %105 = load i32, i32* %5, align 4
  %106 = load i32, i32* @CRABIT_CLKSRC_B, align 4
  %107 = load i32, i32* @STDBIT_CLKPOL, align 4
  %108 = sub nsw i32 %106, %107
  %109 = ashr i32 %105, %108
  %110 = load i32, i32* @STDMSK_CLKPOL, align 4
  %111 = and i32 %109, %110
  %112 = or i32 %104, %111
  %113 = load i32, i32* %7, align 4
  %114 = or i32 %113, %112
  store i32 %114, i32* %7, align 4
  br label %137

115:                                              ; preds = %91
  %116 = load i32, i32* @CLKSRC_COUNTER, align 4
  %117 = load i32, i32* @STDBIT_CLKSRC, align 4
  %118 = shl i32 %116, %117
  %119 = load i32, i32* %6, align 4
  %120 = load i32, i32* @CRBBIT_CLKMULT_B, align 4
  %121 = load i32, i32* @STDBIT_CLKMULT, align 4
  %122 = sub nsw i32 %120, %121
  %123 = ashr i32 %119, %122
  %124 = load i32, i32* @STDMSK_CLKMULT, align 4
  %125 = and i32 %123, %124
  %126 = or i32 %118, %125
  %127 = load i32, i32* %6, align 4
  %128 = load i32, i32* @STDBIT_CLKPOL, align 4
  %129 = load i32, i32* @CRBBIT_CLKPOL_B, align 4
  %130 = sub nsw i32 %128, %129
  %131 = shl i32 %127, %130
  %132 = load i32, i32* @STDMSK_CLKPOL, align 4
  %133 = and i32 %131, %132
  %134 = or i32 %126, %133
  %135 = load i32, i32* %7, align 4
  %136 = or i32 %135, %134
  store i32 %136, i32* %7, align 4
  br label %137

137:                                              ; preds = %115, %97
  br label %138

138:                                              ; preds = %137, %73
  %139 = load i32, i32* %7, align 4
  ret i32 %139
}

declare dso_local i32 @DEBIread(%struct.comedi_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
