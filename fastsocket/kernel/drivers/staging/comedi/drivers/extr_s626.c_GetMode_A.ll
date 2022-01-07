; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_s626.c_GetMode_A.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_s626.c_GetMode_A.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32 }
%struct.enc_private = type { i32, i32 }

@STDMSK_LOADSRC = common dso_local global i32 0, align 4
@STDBIT_LATCHSRC = common dso_local global i32 0, align 4
@CRBBIT_LATCHSRC = common dso_local global i32 0, align 4
@STDMSK_LATCHSRC = common dso_local global i32 0, align 4
@STDBIT_INTSRC = common dso_local global i32 0, align 4
@CRABIT_INTSRC_A = common dso_local global i32 0, align 4
@STDMSK_INTSRC = common dso_local global i32 0, align 4
@STDBIT_INDXSRC = common dso_local global i32 0, align 4
@CRABIT_INDXSRC_A = common dso_local global i32 0, align 4
@STDMSK_INDXSRC = common dso_local global i32 0, align 4
@CRABIT_INDXPOL_A = common dso_local global i32 0, align 4
@STDBIT_INDXPOL = common dso_local global i32 0, align 4
@STDMSK_INDXPOL = common dso_local global i32 0, align 4
@CRBBIT_CLKENAB_A = common dso_local global i32 0, align 4
@STDBIT_CLKENAB = common dso_local global i32 0, align 4
@STDMSK_CLKENAB = common dso_local global i32 0, align 4
@CRABIT_CLKSRC_A = common dso_local global i32 0, align 4
@CLKSRC_TIMER = common dso_local global i32 0, align 4
@STDBIT_CLKSRC = common dso_local global i32 0, align 4
@STDBIT_CLKPOL = common dso_local global i32 0, align 4
@STDMSK_CLKPOL = common dso_local global i32 0, align 4
@MULT_X1 = common dso_local global i32 0, align 4
@STDBIT_CLKMULT = common dso_local global i32 0, align 4
@CLKSRC_COUNTER = common dso_local global i32 0, align 4
@CRABIT_CLKPOL_A = common dso_local global i32 0, align 4
@CRAMSK_CLKMULT_A = common dso_local global i32 0, align 4
@MULT_X0 = common dso_local global i32 0, align 4
@CRABIT_CLKMULT_A = common dso_local global i32 0, align 4
@STDMSK_CLKMULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.enc_private*)* @GetMode_A to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @GetMode_A(%struct.comedi_device* %0, %struct.enc_private* %1) #0 {
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
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @STDMSK_LOADSRC, align 4
  %20 = and i32 %18, %19
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* @STDBIT_LATCHSRC, align 4
  %23 = load i32, i32* @CRBBIT_LATCHSRC, align 4
  %24 = sub nsw i32 %22, %23
  %25 = shl i32 %21, %24
  %26 = load i32, i32* @STDMSK_LATCHSRC, align 4
  %27 = and i32 %25, %26
  %28 = or i32 %20, %27
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @STDBIT_INTSRC, align 4
  %31 = load i32, i32* @CRABIT_INTSRC_A, align 4
  %32 = sub nsw i32 %30, %31
  %33 = shl i32 %29, %32
  %34 = load i32, i32* @STDMSK_INTSRC, align 4
  %35 = and i32 %33, %34
  %36 = or i32 %28, %35
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* @STDBIT_INDXSRC, align 4
  %39 = load i32, i32* @CRABIT_INDXSRC_A, align 4
  %40 = add nsw i32 %39, 1
  %41 = sub nsw i32 %38, %40
  %42 = shl i32 %37, %41
  %43 = load i32, i32* @STDMSK_INDXSRC, align 4
  %44 = and i32 %42, %43
  %45 = or i32 %36, %44
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* @CRABIT_INDXPOL_A, align 4
  %48 = load i32, i32* @STDBIT_INDXPOL, align 4
  %49 = sub nsw i32 %47, %48
  %50 = ashr i32 %46, %49
  %51 = load i32, i32* @STDMSK_INDXPOL, align 4
  %52 = and i32 %50, %51
  %53 = or i32 %45, %52
  %54 = load i32, i32* %6, align 4
  %55 = load i32, i32* @CRBBIT_CLKENAB_A, align 4
  %56 = load i32, i32* @STDBIT_CLKENAB, align 4
  %57 = sub nsw i32 %55, %56
  %58 = ashr i32 %54, %57
  %59 = load i32, i32* @STDMSK_CLKENAB, align 4
  %60 = and i32 %58, %59
  %61 = or i32 %53, %60
  store i32 %61, i32* %7, align 4
  %62 = load i32, i32* %5, align 4
  %63 = load i32, i32* @CRABIT_CLKSRC_A, align 4
  %64 = shl i32 2, %63
  %65 = and i32 %62, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %85

67:                                               ; preds = %2
  %68 = load i32, i32* @CLKSRC_TIMER, align 4
  %69 = load i32, i32* @STDBIT_CLKSRC, align 4
  %70 = shl i32 %68, %69
  %71 = load i32, i32* %5, align 4
  %72 = load i32, i32* @STDBIT_CLKPOL, align 4
  %73 = load i32, i32* @CRABIT_CLKSRC_A, align 4
  %74 = sub nsw i32 %72, %73
  %75 = shl i32 %71, %74
  %76 = load i32, i32* @STDMSK_CLKPOL, align 4
  %77 = and i32 %75, %76
  %78 = or i32 %70, %77
  %79 = load i32, i32* @MULT_X1, align 4
  %80 = load i32, i32* @STDBIT_CLKMULT, align 4
  %81 = shl i32 %79, %80
  %82 = or i32 %78, %81
  %83 = load i32, i32* %7, align 4
  %84 = or i32 %83, %82
  store i32 %84, i32* %7, align 4
  br label %121

85:                                               ; preds = %2
  %86 = load i32, i32* @CLKSRC_COUNTER, align 4
  %87 = load i32, i32* @STDBIT_CLKSRC, align 4
  %88 = shl i32 %86, %87
  %89 = load i32, i32* %5, align 4
  %90 = load i32, i32* @CRABIT_CLKPOL_A, align 4
  %91 = load i32, i32* @STDBIT_CLKPOL, align 4
  %92 = sub nsw i32 %90, %91
  %93 = ashr i32 %89, %92
  %94 = load i32, i32* @STDMSK_CLKPOL, align 4
  %95 = and i32 %93, %94
  %96 = or i32 %88, %95
  %97 = load i32, i32* %5, align 4
  %98 = load i32, i32* @CRAMSK_CLKMULT_A, align 4
  %99 = and i32 %97, %98
  %100 = load i32, i32* @MULT_X0, align 4
  %101 = load i32, i32* @CRABIT_CLKMULT_A, align 4
  %102 = shl i32 %100, %101
  %103 = icmp eq i32 %99, %102
  br i1 %103, label %104, label %108

104:                                              ; preds = %85
  %105 = load i32, i32* @MULT_X1, align 4
  %106 = load i32, i32* @STDBIT_CLKMULT, align 4
  %107 = shl i32 %105, %106
  br label %116

108:                                              ; preds = %85
  %109 = load i32, i32* %5, align 4
  %110 = load i32, i32* @CRABIT_CLKMULT_A, align 4
  %111 = load i32, i32* @STDBIT_CLKMULT, align 4
  %112 = sub nsw i32 %110, %111
  %113 = ashr i32 %109, %112
  %114 = load i32, i32* @STDMSK_CLKMULT, align 4
  %115 = and i32 %113, %114
  br label %116

116:                                              ; preds = %108, %104
  %117 = phi i32 [ %107, %104 ], [ %115, %108 ]
  %118 = or i32 %96, %117
  %119 = load i32, i32* %7, align 4
  %120 = or i32 %119, %118
  store i32 %120, i32* %7, align 4
  br label %121

121:                                              ; preds = %116, %67
  %122 = load i32, i32* %7, align 4
  ret i32 %122
}

declare dso_local i32 @DEBIread(%struct.comedi_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
