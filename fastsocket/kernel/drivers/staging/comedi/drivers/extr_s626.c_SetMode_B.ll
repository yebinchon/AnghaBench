; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_s626.c_SetMode_B.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_s626.c_SetMode_B.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.comedi_device = type { i32 }
%struct.enc_private = type { i32, i32, i32* }

@STDMSK_INDXSRC = common dso_local global i32 0, align 4
@CRABIT_INDXSRC_B = common dso_local global i32 0, align 4
@STDBIT_INDXSRC = common dso_local global i32 0, align 4
@CRBMSK_INTRESETCMD = common dso_local global i32 0, align 4
@CRBMSK_INTRESET_B = common dso_local global i32 0, align 4
@STDMSK_CLKENAB = common dso_local global i32 0, align 4
@CRBBIT_CLKENAB_B = common dso_local global i32 0, align 4
@STDBIT_CLKENAB = common dso_local global i32 0, align 4
@STDMSK_LOADSRC = common dso_local global i32 0, align 4
@STDBIT_LOADSRC = common dso_local global i32 0, align 4
@CRBBIT_LOADSRC_B = common dso_local global i32 0, align 4
@STDMSK_INTSRC = common dso_local global i32 0, align 4
@STDBIT_INTSRC = common dso_local global i32 0, align 4
@CRBBIT_INTSRC_B = common dso_local global i32 0, align 4
@STDMSK_CLKSRC = common dso_local global i32 0, align 4
@STDBIT_CLKSRC = common dso_local global i32 0, align 4
@CRABIT_CLKSRC_B = common dso_local global i32 0, align 4
@STDMSK_CLKPOL = common dso_local global i32 0, align 4
@STDBIT_CLKPOL = common dso_local global i32 0, align 4
@CRBBIT_CLKPOL_B = common dso_local global i32 0, align 4
@MULT_X1 = common dso_local global i32 0, align 4
@CRBBIT_CLKMULT_B = common dso_local global i32 0, align 4
@MULT_X0 = common dso_local global i32 0, align 4
@CLKSRC_COUNTER = common dso_local global i32 0, align 4
@STDMSK_CLKMULT = common dso_local global i32 0, align 4
@STDBIT_CLKMULT = common dso_local global i32 0, align 4
@STDMSK_INDXPOL = common dso_local global i32 0, align 4
@STDBIT_INDXPOL = common dso_local global i32 0, align 4
@CRBBIT_INDXPOL_B = common dso_local global i32 0, align 4
@devpriv = common dso_local global %struct.TYPE_2__* null, align 8
@CRAMSK_INDXSRC_B = common dso_local global i32 0, align 4
@CRAMSK_CLKSRC_B = common dso_local global i32 0, align 4
@CRBMSK_CLKENAB_A = common dso_local global i32 0, align 4
@CRBMSK_LATCHSRC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*, %struct.enc_private*, i32, i32)* @SetMode_B to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @SetMode_B(%struct.comedi_device* %0, %struct.enc_private* %1, i32 %2, i32 %3) #0 {
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
  %14 = load i32, i32* @STDMSK_INDXSRC, align 4
  %15 = and i32 %13, %14
  %16 = load i32, i32* @CRABIT_INDXSRC_B, align 4
  %17 = add nsw i32 %16, 1
  %18 = load i32, i32* @STDBIT_INDXSRC, align 4
  %19 = sub nsw i32 %17, %18
  %20 = shl i32 %15, %19
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* @CRBMSK_INTRESETCMD, align 4
  %22 = load i32, i32* @CRBMSK_INTRESET_B, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* %11, align 4
  %25 = load i32, i32* @STDMSK_CLKENAB, align 4
  %26 = and i32 %24, %25
  %27 = load i32, i32* @CRBBIT_CLKENAB_B, align 4
  %28 = load i32, i32* @STDBIT_CLKENAB, align 4
  %29 = sub nsw i32 %27, %28
  %30 = shl i32 %26, %29
  %31 = or i32 %23, %30
  %32 = load i32, i32* %11, align 4
  %33 = load i32, i32* @STDMSK_LOADSRC, align 4
  %34 = and i32 %32, %33
  %35 = load i32, i32* @STDBIT_LOADSRC, align 4
  %36 = load i32, i32* @CRBBIT_LOADSRC_B, align 4
  %37 = sub nsw i32 %35, %36
  %38 = ashr i32 %34, %37
  %39 = or i32 %31, %38
  store i32 %39, i32* %10, align 4
  %40 = load i32, i32* %8, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %52, label %42

42:                                               ; preds = %4
  %43 = load i32, i32* %11, align 4
  %44 = load i32, i32* @STDMSK_INTSRC, align 4
  %45 = and i32 %43, %44
  %46 = load i32, i32* @STDBIT_INTSRC, align 4
  %47 = load i32, i32* @CRBBIT_INTSRC_B, align 4
  %48 = sub nsw i32 %46, %47
  %49 = ashr i32 %45, %48
  %50 = load i32, i32* %10, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %10, align 4
  br label %52

52:                                               ; preds = %42, %4
  %53 = load i32, i32* %11, align 4
  %54 = load i32, i32* @STDMSK_CLKSRC, align 4
  %55 = and i32 %53, %54
  %56 = load i32, i32* @STDBIT_CLKSRC, align 4
  %57 = ashr i32 %55, %56
  switch i32 %57, label %100 [
    i32 128, label %58
    i32 129, label %79
  ]

58:                                               ; preds = %52
  %59 = load i32, i32* @CRABIT_CLKSRC_B, align 4
  %60 = shl i32 2, %59
  %61 = load i32, i32* %11, align 4
  %62 = load i32, i32* @STDMSK_CLKPOL, align 4
  %63 = and i32 %61, %62
  %64 = load i32, i32* @CRABIT_CLKSRC_B, align 4
  %65 = load i32, i32* @STDBIT_CLKPOL, align 4
  %66 = sub nsw i32 %64, %65
  %67 = shl i32 %63, %66
  %68 = or i32 %60, %67
  %69 = load i32, i32* %9, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* %9, align 4
  %71 = load i32, i32* @CRBBIT_CLKPOL_B, align 4
  %72 = shl i32 1, %71
  %73 = load i32, i32* @MULT_X1, align 4
  %74 = load i32, i32* @CRBBIT_CLKMULT_B, align 4
  %75 = shl i32 %73, %74
  %76 = or i32 %72, %75
  %77 = load i32, i32* %10, align 4
  %78 = or i32 %77, %76
  store i32 %78, i32* %10, align 4
  br label %137

79:                                               ; preds = %52
  %80 = load i32, i32* @CRABIT_CLKSRC_B, align 4
  %81 = shl i32 2, %80
  %82 = load i32, i32* %11, align 4
  %83 = load i32, i32* @STDMSK_CLKPOL, align 4
  %84 = and i32 %82, %83
  %85 = load i32, i32* @CRABIT_CLKSRC_B, align 4
  %86 = load i32, i32* @STDBIT_CLKPOL, align 4
  %87 = sub nsw i32 %85, %86
  %88 = shl i32 %84, %87
  %89 = or i32 %81, %88
  %90 = load i32, i32* %9, align 4
  %91 = or i32 %90, %89
  store i32 %91, i32* %9, align 4
  %92 = load i32, i32* @CRBBIT_CLKPOL_B, align 4
  %93 = shl i32 1, %92
  %94 = load i32, i32* @MULT_X0, align 4
  %95 = load i32, i32* @CRBBIT_CLKMULT_B, align 4
  %96 = shl i32 %94, %95
  %97 = or i32 %93, %96
  %98 = load i32, i32* %10, align 4
  %99 = or i32 %98, %97
  store i32 %99, i32* %10, align 4
  br label %137

100:                                              ; preds = %52
  %101 = load i32, i32* @CLKSRC_COUNTER, align 4
  %102 = load i32, i32* @CRABIT_CLKSRC_B, align 4
  %103 = shl i32 %101, %102
  %104 = load i32, i32* %9, align 4
  %105 = or i32 %104, %103
  store i32 %105, i32* %9, align 4
  %106 = load i32, i32* %11, align 4
  %107 = load i32, i32* @STDMSK_CLKPOL, align 4
  %108 = and i32 %106, %107
  %109 = load i32, i32* @STDBIT_CLKPOL, align 4
  %110 = load i32, i32* @CRBBIT_CLKPOL_B, align 4
  %111 = sub nsw i32 %109, %110
  %112 = ashr i32 %108, %111
  %113 = load i32, i32* %11, align 4
  %114 = load i32, i32* @STDMSK_CLKMULT, align 4
  %115 = and i32 %113, %114
  %116 = load i32, i32* @MULT_X0, align 4
  %117 = load i32, i32* @STDBIT_CLKMULT, align 4
  %118 = shl i32 %116, %117
  %119 = icmp eq i32 %115, %118
  br i1 %119, label %120, label %124

120:                                              ; preds = %100
  %121 = load i32, i32* @MULT_X1, align 4
  %122 = load i32, i32* @CRBBIT_CLKMULT_B, align 4
  %123 = shl i32 %121, %122
  br label %132

124:                                              ; preds = %100
  %125 = load i32, i32* %11, align 4
  %126 = load i32, i32* @STDMSK_CLKMULT, align 4
  %127 = and i32 %125, %126
  %128 = load i32, i32* @CRBBIT_CLKMULT_B, align 4
  %129 = load i32, i32* @STDBIT_CLKMULT, align 4
  %130 = sub nsw i32 %128, %129
  %131 = shl i32 %127, %130
  br label %132

132:                                              ; preds = %124, %120
  %133 = phi i32 [ %123, %120 ], [ %131, %124 ]
  %134 = or i32 %112, %133
  %135 = load i32, i32* %10, align 4
  %136 = or i32 %135, %134
  store i32 %136, i32* %10, align 4
  br label %137

137:                                              ; preds = %132, %79, %58
  %138 = load i32, i32* %11, align 4
  %139 = xor i32 %138, -1
  %140 = load i32, i32* @STDMSK_INDXSRC, align 4
  %141 = and i32 %139, %140
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %153

143:                                              ; preds = %137
  %144 = load i32, i32* %11, align 4
  %145 = load i32, i32* @STDMSK_INDXPOL, align 4
  %146 = and i32 %144, %145
  %147 = load i32, i32* @STDBIT_INDXPOL, align 4
  %148 = load i32, i32* @CRBBIT_INDXPOL_B, align 4
  %149 = sub nsw i32 %147, %148
  %150 = ashr i32 %146, %149
  %151 = load i32, i32* %10, align 4
  %152 = or i32 %151, %150
  store i32 %152, i32* %10, align 4
  br label %153

153:                                              ; preds = %143, %137
  %154 = load i32, i32* %8, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %167

156:                                              ; preds = %153
  %157 = load %struct.enc_private*, %struct.enc_private** %6, align 8
  %158 = getelementptr inbounds %struct.enc_private, %struct.enc_private* %157, i32 0, i32 2
  %159 = load i32*, i32** %158, align 8
  %160 = getelementptr inbounds i32, i32* %159, i64 3
  %161 = load i32, i32* %160, align 4
  %162 = xor i32 %161, -1
  %163 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %164 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = and i32 %165, %162
  store i32 %166, i32* %164, align 4
  br label %167

167:                                              ; preds = %156, %153
  %168 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %169 = load %struct.enc_private*, %struct.enc_private** %6, align 8
  %170 = getelementptr inbounds %struct.enc_private, %struct.enc_private* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 4
  %172 = load i32, i32* @CRAMSK_INDXSRC_B, align 4
  %173 = load i32, i32* @CRAMSK_CLKSRC_B, align 4
  %174 = or i32 %172, %173
  %175 = xor i32 %174, -1
  %176 = load i32, i32* %9, align 4
  %177 = call i32 @DEBIreplace(%struct.comedi_device* %168, i32 %171, i32 %175, i32 %176)
  %178 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %179 = load %struct.enc_private*, %struct.enc_private** %6, align 8
  %180 = getelementptr inbounds %struct.enc_private, %struct.enc_private* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = load i32, i32* @CRBMSK_CLKENAB_A, align 4
  %183 = load i32, i32* @CRBMSK_LATCHSRC, align 4
  %184 = or i32 %182, %183
  %185 = load i32, i32* %10, align 4
  %186 = call i32 @DEBIreplace(%struct.comedi_device* %178, i32 %181, i32 %184, i32 %185)
  ret void
}

declare dso_local i32 @DEBIreplace(%struct.comedi_device*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
