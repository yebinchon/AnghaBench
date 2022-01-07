; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/sis/extr_init301.c_SiS_SetCH700x.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/sis/extr_init301.c_SiS_SetCH700x.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SiS_Private = type { i32, i32, i32, i32, i32 }

@SiS_I2CDELAYSHORT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SiS_SetCH700x(%struct.SiS_Private* %0, i16 zeroext %1, i8 zeroext %2) #0 {
  %4 = alloca %struct.SiS_Private*, align 8
  %5 = alloca i16, align 2
  %6 = alloca i8, align 1
  store %struct.SiS_Private* %0, %struct.SiS_Private** %4, align 8
  store i16 %1, i16* %5, align 2
  store i8 %2, i8* %6, align 1
  %7 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %8 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %7, i32 0, i32 0
  store i32 234, i32* %8, align 4
  %9 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %10 = load i32, i32* @SiS_I2CDELAYSHORT, align 4
  %11 = call i32 @SiS_DDC2Delay(%struct.SiS_Private* %9, i32 %10)
  %12 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %13 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %12, i32 0, i32 4
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %25, label %16

16:                                               ; preds = %3
  %17 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %18 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %17, i32 0, i32 1
  store i32 17, i32* %18, align 4
  %19 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %20 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %19, i32 0, i32 2
  store i32 2, i32* %20, align 4
  %21 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %22 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %21, i32 0, i32 3
  store i32 1, i32* %22, align 4
  %23 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %24 = call i32 @SiS_SetupDDCN(%struct.SiS_Private* %23)
  br label %25

25:                                               ; preds = %16, %3
  %26 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %27 = load i16, i16* %5, align 2
  %28 = load i8, i8* %6, align 1
  %29 = call i32 @SiS_SetChReg(%struct.SiS_Private* %26, i16 zeroext %27, i8 zeroext %28, i32 128)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %49, label %31

31:                                               ; preds = %25
  %32 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %33 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %49, label %36

36:                                               ; preds = %31
  %37 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %38 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %37, i32 0, i32 1
  store i32 10, i32* %38, align 4
  %39 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %40 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %39, i32 0, i32 2
  store i32 128, i32* %40, align 4
  %41 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %42 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %41, i32 0, i32 3
  store i32 64, i32* %42, align 4
  %43 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %44 = call i32 @SiS_SetupDDCN(%struct.SiS_Private* %43)
  %45 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %46 = load i16, i16* %5, align 2
  %47 = load i8, i8* %6, align 1
  %48 = call i32 @SiS_SetChReg(%struct.SiS_Private* %45, i16 zeroext %46, i8 zeroext %47, i32 128)
  br label %49

49:                                               ; preds = %36, %31, %25
  ret void
}

declare dso_local i32 @SiS_DDC2Delay(%struct.SiS_Private*, i32) #1

declare dso_local i32 @SiS_SetupDDCN(%struct.SiS_Private*) #1

declare dso_local i32 @SiS_SetChReg(%struct.SiS_Private*, i16 zeroext, i8 zeroext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
