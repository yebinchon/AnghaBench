; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_s626.c_SetDAC.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_s626.c_SetDAC.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.comedi_device = type { i32 }

@devpriv = common dso_local global %struct.TYPE_2__* null, align 8
@WS1 = common dso_local global i32 0, align 4
@WS2 = common dso_local global i32 0, align 4
@XSD2 = common dso_local global i32 0, align 4
@XFIFO_1 = common dso_local global i32 0, align 4
@XFIFO_0 = common dso_local global i32 0, align 4
@XFIFO_3 = common dso_local global i32 0, align 4
@WS3 = common dso_local global i32 0, align 4
@XFIFO_2 = common dso_local global i32 0, align 4
@EOS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*, i32, i16)* @SetDAC to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @SetDAC(%struct.comedi_device* %0, i32 %1, i16 signext %2) #0 {
  %4 = alloca %struct.comedi_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i16, align 2
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i16 %2, i16* %6, align 2
  %9 = load i32, i32* %5, align 4
  %10 = shl i32 1, %9
  store i32 %10, i32* %7, align 4
  %11 = load i16, i16* %6, align 2
  %12 = sext i16 %11 to i32
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %24

14:                                               ; preds = %3
  %15 = load i16, i16* %6, align 2
  %16 = sext i16 %15 to i32
  %17 = sub nsw i32 0, %16
  %18 = trunc i32 %17 to i16
  store i16 %18, i16* %6, align 2
  %19 = load i32, i32* %7, align 4
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = or i32 %22, %19
  store i32 %23, i32* %21, align 4
  br label %31

24:                                               ; preds = %3
  %25 = load i32, i32* %7, align 4
  %26 = xor i32 %25, -1
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = and i32 %29, %26
  store i32 %30, i32* %28, align 4
  br label %31

31:                                               ; preds = %24, %14
  %32 = load i16, i16* %6, align 2
  %33 = sext i16 %32 to i32
  %34 = icmp sgt i32 %33, 8191
  br i1 %34, label %35, label %36

35:                                               ; preds = %31
  store i16 8191, i16* %6, align 2
  br label %36

36:                                               ; preds = %35, %31
  %37 = load i32, i32* %5, align 4
  %38 = and i32 %37, 2
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %36
  %41 = load i32, i32* @WS1, align 4
  br label %44

42:                                               ; preds = %36
  %43 = load i32, i32* @WS2, align 4
  br label %44

44:                                               ; preds = %42, %40
  %45 = phi i32 [ %41, %40 ], [ %43, %42 ]
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* @XSD2, align 4
  %47 = load i32, i32* @XFIFO_1, align 4
  %48 = or i32 %46, %47
  %49 = load i32, i32* %8, align 4
  %50 = or i32 %48, %49
  %51 = call i32 @SETVECT(i32 2, i32 %50)
  %52 = load i32, i32* @XSD2, align 4
  %53 = load i32, i32* @XFIFO_0, align 4
  %54 = or i32 %52, %53
  %55 = load i32, i32* %8, align 4
  %56 = or i32 %54, %55
  %57 = call i32 @SETVECT(i32 3, i32 %56)
  %58 = load i32, i32* @XSD2, align 4
  %59 = load i32, i32* @XFIFO_3, align 4
  %60 = or i32 %58, %59
  %61 = load i32, i32* @WS3, align 4
  %62 = or i32 %60, %61
  %63 = call i32 @SETVECT(i32 4, i32 %62)
  %64 = load i32, i32* @XSD2, align 4
  %65 = load i32, i32* @XFIFO_2, align 4
  %66 = or i32 %64, %65
  %67 = load i32, i32* @WS3, align 4
  %68 = or i32 %66, %67
  %69 = load i32, i32* @EOS, align 4
  %70 = or i32 %68, %69
  %71 = call i32 @SETVECT(i32 5, i32 %70)
  %72 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %73 = load i32, i32* %5, align 4
  %74 = and i32 %73, 1
  %75 = shl i32 %74, 15
  %76 = or i32 251674624, %75
  %77 = load i16, i16* %6, align 2
  %78 = sext i16 %77 to i32
  %79 = or i32 %76, %78
  %80 = call i32 @SendDAC(%struct.comedi_device* %72, i32 %79)
  ret void
}

declare dso_local i32 @SETVECT(i32, i32) #1

declare dso_local i32 @SendDAC(%struct.comedi_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
