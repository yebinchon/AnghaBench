; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/sis/extr_init301.c_SiS_SetDualLinkEtc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/sis/extr_init301.c_SiS_SetDualLinkEtc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SiS_Private = type { i64, i32, i32, i32 }

@SIS_315H = common dso_local global i64 0, align 8
@VB_SISDUALLINK = common dso_local global i32 0, align 4
@LCDDualLink = common dso_local global i32 0, align 4
@VB_SISEMI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.SiS_Private*)* @SiS_SetDualLinkEtc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @SiS_SetDualLinkEtc(%struct.SiS_Private* %0) #0 {
  %2 = alloca %struct.SiS_Private*, align 8
  store %struct.SiS_Private* %0, %struct.SiS_Private** %2, align 8
  %3 = load %struct.SiS_Private*, %struct.SiS_Private** %2, align 8
  %4 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @SIS_315H, align 8
  %7 = icmp sge i64 %5, %6
  br i1 %7, label %8, label %43

8:                                                ; preds = %1
  %9 = load %struct.SiS_Private*, %struct.SiS_Private** %2, align 8
  %10 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @VB_SISDUALLINK, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %42

15:                                               ; preds = %8
  %16 = load %struct.SiS_Private*, %struct.SiS_Private** %2, align 8
  %17 = call i64 @SiS_CRT2IsLCD(%struct.SiS_Private* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %15
  %20 = load %struct.SiS_Private*, %struct.SiS_Private** %2, align 8
  %21 = call i64 @SiS_IsVAMode(%struct.SiS_Private* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %41

23:                                               ; preds = %19, %15
  %24 = load %struct.SiS_Private*, %struct.SiS_Private** %2, align 8
  %25 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @LCDDualLink, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %23
  %31 = load %struct.SiS_Private*, %struct.SiS_Private** %2, align 8
  %32 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @SiS_SetRegOR(i32 %33, i32 39, i32 44)
  br label %40

35:                                               ; preds = %23
  %36 = load %struct.SiS_Private*, %struct.SiS_Private** %2, align 8
  %37 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @SiS_SetRegAND(i32 %38, i32 39, i32 -33)
  br label %40

40:                                               ; preds = %35, %30
  br label %41

41:                                               ; preds = %40, %19
  br label %42

42:                                               ; preds = %41, %8
  br label %43

43:                                               ; preds = %42, %1
  %44 = load %struct.SiS_Private*, %struct.SiS_Private** %2, align 8
  %45 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @VB_SISEMI, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %59

50:                                               ; preds = %43
  %51 = load %struct.SiS_Private*, %struct.SiS_Private** %2, align 8
  %52 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @SiS_SetReg(i32 %53, i32 42, i32 0)
  %55 = load %struct.SiS_Private*, %struct.SiS_Private** %2, align 8
  %56 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @SiS_SetReg(i32 %57, i32 52, i32 16)
  br label %59

59:                                               ; preds = %50, %43
  ret void
}

declare dso_local i64 @SiS_CRT2IsLCD(%struct.SiS_Private*) #1

declare dso_local i64 @SiS_IsVAMode(%struct.SiS_Private*) #1

declare dso_local i32 @SiS_SetRegOR(i32, i32, i32) #1

declare dso_local i32 @SiS_SetRegAND(i32, i32, i32) #1

declare dso_local i32 @SiS_SetReg(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
