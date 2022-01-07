; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/sis/extr_init301.c_SiS_SetGroup5.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/sis/extr_init301.c_SiS_SetGroup5.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SiS_Private = type { i32, i64, i32 }

@SetCRT2ToLCDA = common dso_local global i32 0, align 4
@ModeVGA = common dso_local global i64 0, align 8
@SetInSlaveMode = common dso_local global i32 0, align 4
@LoadDACFlag = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.SiS_Private*, i16, i16)* @SiS_SetGroup5 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @SiS_SetGroup5(%struct.SiS_Private* %0, i16 zeroext %1, i16 zeroext %2) #0 {
  %4 = alloca %struct.SiS_Private*, align 8
  %5 = alloca i16, align 2
  %6 = alloca i16, align 2
  store %struct.SiS_Private* %0, %struct.SiS_Private** %4, align 8
  store i16 %1, i16* %5, align 2
  store i16 %2, i16* %6, align 2
  %7 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %8 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @SetCRT2ToLCDA, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  br label %39

14:                                               ; preds = %3
  %15 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %16 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @ModeVGA, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %39

20:                                               ; preds = %14
  %21 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %22 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @SetInSlaveMode, align 4
  %25 = load i32, i32* @LoadDACFlag, align 4
  %26 = or i32 %24, %25
  %27 = and i32 %23, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %38, label %29

29:                                               ; preds = %20
  %30 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %31 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @SiS_SetRegOR(i32 %32, i32 30, i32 32)
  %34 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %35 = load i16, i16* %5, align 2
  %36 = load i16, i16* %6, align 2
  %37 = call i32 @SiS_LoadDAC(%struct.SiS_Private* %34, i16 zeroext %35, i16 zeroext %36)
  br label %38

38:                                               ; preds = %29, %20
  br label %39

39:                                               ; preds = %13, %38, %14
  ret void
}

declare dso_local i32 @SiS_SetRegOR(i32, i32, i32) #1

declare dso_local i32 @SiS_LoadDAC(%struct.SiS_Private*, i16 zeroext, i16 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
