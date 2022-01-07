; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/sis/extr_init301.c_SiS_GetCH700x.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/sis/extr_init301.c_SiS_GetCH700x.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SiS_Private = type { i32, i32, i32, i32, i16, i32 }

@SiS_I2CDELAYSHORT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i16 @SiS_GetCH700x(%struct.SiS_Private* %0, i16 zeroext %1) #0 {
  %3 = alloca %struct.SiS_Private*, align 8
  %4 = alloca i16, align 2
  %5 = alloca i16, align 2
  store %struct.SiS_Private* %0, %struct.SiS_Private** %3, align 8
  store i16 %1, i16* %4, align 2
  %6 = load %struct.SiS_Private*, %struct.SiS_Private** %3, align 8
  %7 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %6, i32 0, i32 0
  store i32 234, i32* %7, align 4
  %8 = load %struct.SiS_Private*, %struct.SiS_Private** %3, align 8
  %9 = load i32, i32* @SiS_I2CDELAYSHORT, align 4
  %10 = call i32 @SiS_DDC2Delay(%struct.SiS_Private* %8, i32 %9)
  %11 = load %struct.SiS_Private*, %struct.SiS_Private** %3, align 8
  %12 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %11, i32 0, i32 5
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %24, label %15

15:                                               ; preds = %2
  %16 = load %struct.SiS_Private*, %struct.SiS_Private** %3, align 8
  %17 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %16, i32 0, i32 1
  store i32 17, i32* %17, align 4
  %18 = load %struct.SiS_Private*, %struct.SiS_Private** %3, align 8
  %19 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %18, i32 0, i32 2
  store i32 2, i32* %19, align 4
  %20 = load %struct.SiS_Private*, %struct.SiS_Private** %3, align 8
  %21 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %20, i32 0, i32 3
  store i32 1, i32* %21, align 4
  %22 = load %struct.SiS_Private*, %struct.SiS_Private** %3, align 8
  %23 = call i32 @SiS_SetupDDCN(%struct.SiS_Private* %22)
  br label %24

24:                                               ; preds = %15, %2
  %25 = load i16, i16* %4, align 2
  %26 = load %struct.SiS_Private*, %struct.SiS_Private** %3, align 8
  %27 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %26, i32 0, i32 4
  store i16 %25, i16* %27, align 4
  %28 = load %struct.SiS_Private*, %struct.SiS_Private** %3, align 8
  %29 = call zeroext i16 @SiS_GetChReg(%struct.SiS_Private* %28, i32 128)
  store i16 %29, i16* %5, align 2
  %30 = zext i16 %29 to i32
  %31 = icmp eq i32 %30, 65535
  br i1 %31, label %32, label %48

32:                                               ; preds = %24
  %33 = load %struct.SiS_Private*, %struct.SiS_Private** %3, align 8
  %34 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %33, i32 0, i32 5
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %48, label %37

37:                                               ; preds = %32
  %38 = load %struct.SiS_Private*, %struct.SiS_Private** %3, align 8
  %39 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %38, i32 0, i32 1
  store i32 10, i32* %39, align 4
  %40 = load %struct.SiS_Private*, %struct.SiS_Private** %3, align 8
  %41 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %40, i32 0, i32 2
  store i32 128, i32* %41, align 4
  %42 = load %struct.SiS_Private*, %struct.SiS_Private** %3, align 8
  %43 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %42, i32 0, i32 3
  store i32 64, i32* %43, align 4
  %44 = load %struct.SiS_Private*, %struct.SiS_Private** %3, align 8
  %45 = call i32 @SiS_SetupDDCN(%struct.SiS_Private* %44)
  %46 = load %struct.SiS_Private*, %struct.SiS_Private** %3, align 8
  %47 = call zeroext i16 @SiS_GetChReg(%struct.SiS_Private* %46, i32 128)
  store i16 %47, i16* %5, align 2
  br label %48

48:                                               ; preds = %37, %32, %24
  %49 = load i16, i16* %5, align 2
  ret i16 %49
}

declare dso_local i32 @SiS_DDC2Delay(%struct.SiS_Private*, i32) #1

declare dso_local i32 @SiS_SetupDDCN(%struct.SiS_Private*) #1

declare dso_local zeroext i16 @SiS_GetChReg(%struct.SiS_Private*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
