; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_s626.c_SendDAC.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_s626.c_SendDAC.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32*, i32 }
%struct.comedi_device = type { i32 }

@LP_DACPOL = common dso_local global i32 0, align 4
@devpriv = common dso_local global %struct.TYPE_2__* null, align 8
@P_MC1 = common dso_local global i32 0, align 4
@MC1_A2OUT = common dso_local global i32 0, align 4
@P_ISR = common dso_local global i32 0, align 4
@ISR_AFOU = common dso_local global i32 0, align 4
@XSD2 = common dso_local global i32 0, align 4
@RSD3 = common dso_local global i32 0, align 4
@SIB_A2 = common dso_local global i32 0, align 4
@P_SSR = common dso_local global i32 0, align 4
@SSR_AF2_OUT = common dso_local global i32 0, align 4
@XFIFO_2 = common dso_local global i32 0, align 4
@RSD2 = common dso_local global i32 0, align 4
@EOS = common dso_local global i32 0, align 4
@P_FB_BUFFER2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*, i32)* @SendDAC to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @SendDAC(%struct.comedi_device* %0, i32 %1) #0 {
  %3 = alloca %struct.comedi_device*, align 8
  %4 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %6 = load i32, i32* @LP_DACPOL, align 4
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 8
  %10 = call i32 @DEBIwrite(%struct.comedi_device* %5, i32 %6, i32 %9)
  %11 = load i32, i32* %4, align 4
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  store i32 %11, i32* %14, align 4
  %15 = load i32, i32* @P_MC1, align 4
  %16 = load i32, i32* @MC1_A2OUT, align 4
  %17 = call i32 @MC_ENABLE(i32 %15, i32 %16)
  %18 = load i32, i32* @P_ISR, align 4
  %19 = load i32, i32* @ISR_AFOU, align 4
  %20 = call i32 @WR7146(i32 %18, i32 %19)
  br label %21

21:                                               ; preds = %27, %2
  %22 = load i32, i32* @P_MC1, align 4
  %23 = call i32 @RR7146(i32 %22)
  %24 = load i32, i32* @MC1_A2OUT, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  br label %21

28:                                               ; preds = %21
  %29 = load i32, i32* @XSD2, align 4
  %30 = load i32, i32* @RSD3, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @SIB_A2, align 4
  %33 = or i32 %31, %32
  %34 = call i32 @SETVECT(i32 0, i32 %33)
  br label %35

35:                                               ; preds = %41, %28
  %36 = load i32, i32* @P_SSR, align 4
  %37 = call i32 @RR7146(i32 %36)
  %38 = load i32, i32* @SSR_AF2_OUT, align 4
  %39 = and i32 %37, %38
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %35
  br label %35

42:                                               ; preds = %35
  %43 = load i32, i32* @XSD2, align 4
  %44 = load i32, i32* @XFIFO_2, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* @RSD2, align 4
  %47 = or i32 %45, %46
  %48 = load i32, i32* @SIB_A2, align 4
  %49 = or i32 %47, %48
  %50 = load i32, i32* @EOS, align 4
  %51 = or i32 %49, %50
  %52 = call i32 @SETVECT(i32 0, i32 %51)
  %53 = load i32, i32* @P_FB_BUFFER2, align 4
  %54 = call i32 @RR7146(i32 %53)
  %55 = and i32 %54, -16777216
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %65

57:                                               ; preds = %42
  br label %58

58:                                               ; preds = %63, %57
  %59 = load i32, i32* @P_FB_BUFFER2, align 4
  %60 = call i32 @RR7146(i32 %59)
  %61 = and i32 %60, -16777216
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %58
  br label %58

64:                                               ; preds = %58
  br label %65

65:                                               ; preds = %64, %42
  %66 = load i32, i32* @RSD3, align 4
  %67 = load i32, i32* @SIB_A2, align 4
  %68 = or i32 %66, %67
  %69 = load i32, i32* @EOS, align 4
  %70 = or i32 %68, %69
  %71 = call i32 @SETVECT(i32 0, i32 %70)
  br label %72

72:                                               ; preds = %77, %65
  %73 = load i32, i32* @P_FB_BUFFER2, align 4
  %74 = call i32 @RR7146(i32 %73)
  %75 = and i32 %74, -16777216
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %72
  br label %72

78:                                               ; preds = %72
  ret void
}

declare dso_local i32 @DEBIwrite(%struct.comedi_device*, i32, i32) #1

declare dso_local i32 @MC_ENABLE(i32, i32) #1

declare dso_local i32 @WR7146(i32, i32) #1

declare dso_local i32 @RR7146(i32) #1

declare dso_local i32 @SETVECT(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
