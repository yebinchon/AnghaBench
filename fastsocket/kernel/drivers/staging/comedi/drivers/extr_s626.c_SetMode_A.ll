; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_s626.c_SetMode_A.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_s626.c_SetMode_A.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.comedi_device = type { i32 }
%struct.enc_private = type { i32, i32, i32* }

@CRAMSK_LOADSRC_A = common dso_local global i32 0, align 4
@STDMSK_INDXSRC = common dso_local global i32 0, align 4
@STDBIT_INDXSRC = common dso_local global i32 0, align 4
@CRABIT_INDXSRC_A = common dso_local global i32 0, align 4
@CRBMSK_INTRESETCMD = common dso_local global i32 0, align 4
@CRBMSK_INTRESET_A = common dso_local global i32 0, align 4
@STDMSK_CLKENAB = common dso_local global i32 0, align 4
@CRBBIT_CLKENAB_A = common dso_local global i32 0, align 4
@STDBIT_CLKENAB = common dso_local global i32 0, align 4
@STDMSK_INTSRC = common dso_local global i32 0, align 4
@STDBIT_INTSRC = common dso_local global i32 0, align 4
@CRABIT_INTSRC_A = common dso_local global i32 0, align 4
@STDMSK_CLKSRC = common dso_local global i32 0, align 4
@STDBIT_CLKSRC = common dso_local global i32 0, align 4
@CRABIT_CLKSRC_A = common dso_local global i32 0, align 4
@STDMSK_CLKPOL = common dso_local global i32 0, align 4
@STDBIT_CLKPOL = common dso_local global i32 0, align 4
@CRABIT_CLKPOL_A = common dso_local global i32 0, align 4
@MULT_X1 = common dso_local global i32 0, align 4
@CRABIT_CLKMULT_A = common dso_local global i32 0, align 4
@CLKSRC_COUNTER = common dso_local global i32 0, align 4
@STDMSK_CLKMULT = common dso_local global i32 0, align 4
@MULT_X0 = common dso_local global i32 0, align 4
@STDBIT_CLKMULT = common dso_local global i32 0, align 4
@STDMSK_INDXPOL = common dso_local global i32 0, align 4
@CRABIT_INDXPOL_A = common dso_local global i32 0, align 4
@STDBIT_INDXPOL = common dso_local global i32 0, align 4
@devpriv = common dso_local global %struct.TYPE_2__* null, align 8
@CRAMSK_INDXSRC_B = common dso_local global i32 0, align 4
@CRAMSK_CLKSRC_B = common dso_local global i32 0, align 4
@CRBMSK_INTCTRL = common dso_local global i32 0, align 4
@CRBMSK_CLKENAB_A = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*, %struct.enc_private*, i32, i32)* @SetMode_A to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @SetMode_A(%struct.comedi_device* %0, %struct.enc_private* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.comedi_device*, align 8
  %6 = alloca %struct.enc_private*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %5, align 8
  store %struct.enc_private* %1, %struct.enc_private** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load i32, i32* %7, align 4
  store i32 %12, i32* %11, align 4
  %13 = load i32, i32* %11, align 4
  %14 = load i32, i32* @CRAMSK_LOADSRC_A, align 4
  %15 = and i32 %13, %14
  %16 = load i32, i32* %11, align 4
  %17 = load i32, i32* @STDMSK_INDXSRC, align 4
  %18 = and i32 %16, %17
  %19 = load i32, i32* @STDBIT_INDXSRC, align 4
  %20 = load i32, i32* @CRABIT_INDXSRC_A, align 4
  %21 = add nsw i32 %20, 1
  %22 = sub nsw i32 %19, %21
  %23 = ashr i32 %18, %22
  %24 = or i32 %15, %23
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* @CRBMSK_INTRESETCMD, align 4
  %26 = load i32, i32* @CRBMSK_INTRESET_A, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* %11, align 4
  %29 = load i32, i32* @STDMSK_CLKENAB, align 4
  %30 = and i32 %28, %29
  %31 = load i32, i32* @CRBBIT_CLKENAB_A, align 4
  %32 = load i32, i32* @STDBIT_CLKENAB, align 4
  %33 = sub nsw i32 %31, %32
  %34 = shl i32 %30, %33
  %35 = or i32 %27, %34
  store i32 %35, i32* %10, align 4
  %36 = load i32, i32* %8, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %48, label %38

38:                                               ; preds = %4
  %39 = load i32, i32* %11, align 4
  %40 = load i32, i32* @STDMSK_INTSRC, align 4
  %41 = and i32 %39, %40
  %42 = load i32, i32* @STDBIT_INTSRC, align 4
  %43 = load i32, i32* @CRABIT_INTSRC_A, align 4
  %44 = sub nsw i32 %42, %43
  %45 = ashr i32 %41, %44
  %46 = load i32, i32* %9, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %9, align 4
  br label %48

48:                                               ; preds = %38, %4
  %49 = load i32, i32* %11, align 4
  %50 = load i32, i32* @STDMSK_CLKSRC, align 4
  %51 = and i32 %49, %50
  %52 = load i32, i32* @STDBIT_CLKSRC, align 4
  %53 = ashr i32 %51, %52
  switch i32 %53, label %74 [
    i32 129, label %54
    i32 128, label %54
  ]

54:                                               ; preds = %48, %48
  %55 = load i32, i32* @CRABIT_CLKSRC_A, align 4
  %56 = shl i32 2, %55
  %57 = load i32, i32* %11, align 4
  %58 = load i32, i32* @STDMSK_CLKPOL, align 4
  %59 = and i32 %57, %58
  %60 = load i32, i32* @STDBIT_CLKPOL, align 4
  %61 = load i32, i32* @CRABIT_CLKSRC_A, align 4
  %62 = sub nsw i32 %60, %61
  %63 = ashr i32 %59, %62
  %64 = or i32 %56, %63
  %65 = load i32, i32* @CRABIT_CLKPOL_A, align 4
  %66 = shl i32 1, %65
  %67 = or i32 %64, %66
  %68 = load i32, i32* @MULT_X1, align 4
  %69 = load i32, i32* @CRABIT_CLKMULT_A, align 4
  %70 = shl i32 %68, %69
  %71 = or i32 %67, %70
  %72 = load i32, i32* %9, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* %9, align 4
  br label %108

74:                                               ; preds = %48
  %75 = load i32, i32* @CLKSRC_COUNTER, align 4
  %76 = load i32, i32* %11, align 4
  %77 = load i32, i32* @STDMSK_CLKPOL, align 4
  %78 = and i32 %76, %77
  %79 = load i32, i32* @CRABIT_CLKPOL_A, align 4
  %80 = load i32, i32* @STDBIT_CLKPOL, align 4
  %81 = sub nsw i32 %79, %80
  %82 = shl i32 %78, %81
  %83 = or i32 %75, %82
  %84 = load i32, i32* %11, align 4
  %85 = load i32, i32* @STDMSK_CLKMULT, align 4
  %86 = and i32 %84, %85
  %87 = load i32, i32* @MULT_X0, align 4
  %88 = load i32, i32* @STDBIT_CLKMULT, align 4
  %89 = shl i32 %87, %88
  %90 = icmp eq i32 %86, %89
  br i1 %90, label %91, label %95

91:                                               ; preds = %74
  %92 = load i32, i32* @MULT_X1, align 4
  %93 = load i32, i32* @CRABIT_CLKMULT_A, align 4
  %94 = shl i32 %92, %93
  br label %103

95:                                               ; preds = %74
  %96 = load i32, i32* %11, align 4
  %97 = load i32, i32* @STDMSK_CLKMULT, align 4
  %98 = and i32 %96, %97
  %99 = load i32, i32* @CRABIT_CLKMULT_A, align 4
  %100 = load i32, i32* @STDBIT_CLKMULT, align 4
  %101 = sub nsw i32 %99, %100
  %102 = shl i32 %98, %101
  br label %103

103:                                              ; preds = %95, %91
  %104 = phi i32 [ %94, %91 ], [ %102, %95 ]
  %105 = or i32 %83, %104
  %106 = load i32, i32* %9, align 4
  %107 = or i32 %106, %105
  store i32 %107, i32* %9, align 4
  br label %108

108:                                              ; preds = %103, %54
  %109 = load i32, i32* %11, align 4
  %110 = xor i32 %109, -1
  %111 = load i32, i32* @STDMSK_INDXSRC, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %124

114:                                              ; preds = %108
  %115 = load i32, i32* %11, align 4
  %116 = load i32, i32* @STDMSK_INDXPOL, align 4
  %117 = and i32 %115, %116
  %118 = load i32, i32* @CRABIT_INDXPOL_A, align 4
  %119 = load i32, i32* @STDBIT_INDXPOL, align 4
  %120 = sub nsw i32 %118, %119
  %121 = shl i32 %117, %120
  %122 = load i32, i32* %9, align 4
  %123 = or i32 %122, %121
  store i32 %123, i32* %9, align 4
  br label %124

124:                                              ; preds = %114, %108
  %125 = load i32, i32* %8, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %138

127:                                              ; preds = %124
  %128 = load %struct.enc_private*, %struct.enc_private** %6, align 8
  %129 = getelementptr inbounds %struct.enc_private, %struct.enc_private* %128, i32 0, i32 2
  %130 = load i32*, i32** %129, align 8
  %131 = getelementptr inbounds i32, i32* %130, i64 3
  %132 = load i32, i32* %131, align 4
  %133 = xor i32 %132, -1
  %134 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %135 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = and i32 %136, %133
  store i32 %137, i32* %135, align 4
  br label %138

138:                                              ; preds = %127, %124
  %139 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %140 = load %struct.enc_private*, %struct.enc_private** %6, align 8
  %141 = getelementptr inbounds %struct.enc_private, %struct.enc_private* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = load i32, i32* @CRAMSK_INDXSRC_B, align 4
  %144 = load i32, i32* @CRAMSK_CLKSRC_B, align 4
  %145 = or i32 %143, %144
  %146 = load i32, i32* %9, align 4
  %147 = call i32 @DEBIreplace(%struct.comedi_device* %139, i32 %142, i32 %145, i32 %146)
  %148 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %149 = load %struct.enc_private*, %struct.enc_private** %6, align 8
  %150 = getelementptr inbounds %struct.enc_private, %struct.enc_private* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = load i32, i32* @CRBMSK_INTCTRL, align 4
  %153 = load i32, i32* @CRBMSK_CLKENAB_A, align 4
  %154 = or i32 %152, %153
  %155 = xor i32 %154, -1
  %156 = load i32, i32* %10, align 4
  %157 = call i32 @DEBIreplace(%struct.comedi_device* %148, i32 %151, i32 %155, i32 %156)
  ret void
}

declare dso_local i32 @DEBIreplace(%struct.comedi_device*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
