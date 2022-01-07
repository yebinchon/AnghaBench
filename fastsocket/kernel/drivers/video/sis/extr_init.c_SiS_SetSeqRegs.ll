; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/sis/extr_init.c_SiS_SetSeqRegs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/sis/extr_init.c_SiS_SetSeqRegs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SiS_Private = type { i32, i32, i32, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32* }

@VB_SISVB = common dso_local global i32 0, align 4
@SetCRT2ToLCD = common dso_local global i32 0, align 4
@SetCRT2ToTV = common dso_local global i32 0, align 4
@SetInSlaveMode = common dso_local global i32 0, align 4
@SetCRT2ToLCDA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.SiS_Private*, i16)* @SiS_SetSeqRegs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @SiS_SetSeqRegs(%struct.SiS_Private* %0, i16 zeroext %1) #0 {
  %3 = alloca %struct.SiS_Private*, align 8
  %4 = alloca i16, align 2
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  store %struct.SiS_Private* %0, %struct.SiS_Private** %3, align 8
  store i16 %1, i16* %4, align 2
  %7 = load %struct.SiS_Private*, %struct.SiS_Private** %3, align 8
  %8 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 8
  %10 = call i32 @SiS_SetReg(i32 %9, i32 0, i8 zeroext 3)
  %11 = load %struct.SiS_Private*, %struct.SiS_Private** %3, align 8
  %12 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %11, i32 0, i32 3
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = load i16, i16* %4, align 2
  %15 = zext i16 %14 to i64
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i64 %15
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 0
  %20 = load i32, i32* %19, align 4
  %21 = or i32 %20, 32
  %22 = trunc i32 %21 to i8
  store i8 %22, i8* %5, align 1
  %23 = load %struct.SiS_Private*, %struct.SiS_Private** %3, align 8
  %24 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @VB_SISVB, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %2
  %30 = load %struct.SiS_Private*, %struct.SiS_Private** %3, align 8
  %31 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %30, i32 0, i32 4
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %70

34:                                               ; preds = %29, %2
  %35 = load %struct.SiS_Private*, %struct.SiS_Private** %3, align 8
  %36 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @SetCRT2ToLCD, align 4
  %39 = load i32, i32* @SetCRT2ToTV, align 4
  %40 = or i32 %38, %39
  %41 = and i32 %37, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %56

43:                                               ; preds = %34
  %44 = load %struct.SiS_Private*, %struct.SiS_Private** %3, align 8
  %45 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @SetInSlaveMode, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %43
  %51 = load i8, i8* %5, align 1
  %52 = zext i8 %51 to i32
  %53 = or i32 %52, 1
  %54 = trunc i32 %53 to i8
  store i8 %54, i8* %5, align 1
  br label %55

55:                                               ; preds = %50, %43
  br label %69

56:                                               ; preds = %34
  %57 = load %struct.SiS_Private*, %struct.SiS_Private** %3, align 8
  %58 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @SetCRT2ToLCDA, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %56
  %64 = load i8, i8* %5, align 1
  %65 = zext i8 %64 to i32
  %66 = or i32 %65, 1
  %67 = trunc i32 %66 to i8
  store i8 %67, i8* %5, align 1
  br label %68

68:                                               ; preds = %63, %56
  br label %69

69:                                               ; preds = %68, %55
  br label %70

70:                                               ; preds = %69, %29
  %71 = load %struct.SiS_Private*, %struct.SiS_Private** %3, align 8
  %72 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = load i8, i8* %5, align 1
  %75 = call i32 @SiS_SetReg(i32 %73, i32 1, i8 zeroext %74)
  store i32 2, i32* %6, align 4
  br label %76

76:                                               ; preds = %100, %70
  %77 = load i32, i32* %6, align 4
  %78 = icmp sle i32 %77, 4
  br i1 %78, label %79, label %103

79:                                               ; preds = %76
  %80 = load %struct.SiS_Private*, %struct.SiS_Private** %3, align 8
  %81 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %80, i32 0, i32 3
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** %81, align 8
  %83 = load i16, i16* %4, align 2
  %84 = zext i16 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  %87 = load i32*, i32** %86, align 8
  %88 = load i32, i32* %6, align 4
  %89 = sub nsw i32 %88, 1
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %87, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = trunc i32 %92 to i8
  store i8 %93, i8* %5, align 1
  %94 = load %struct.SiS_Private*, %struct.SiS_Private** %3, align 8
  %95 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* %6, align 4
  %98 = load i8, i8* %5, align 1
  %99 = call i32 @SiS_SetReg(i32 %96, i32 %97, i8 zeroext %98)
  br label %100

100:                                              ; preds = %79
  %101 = load i32, i32* %6, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %6, align 4
  br label %76

103:                                              ; preds = %76
  ret void
}

declare dso_local i32 @SiS_SetReg(i32, i32, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
