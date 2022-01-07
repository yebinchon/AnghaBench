; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/sis/extr_init301.c_SiS_SetStop.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/sis/extr_init301.c_SiS_SetStop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SiS_Private = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i16 (%struct.SiS_Private*)* @SiS_SetStop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i16 @SiS_SetStop(%struct.SiS_Private* %0) #0 {
  %2 = alloca i16, align 2
  %3 = alloca %struct.SiS_Private*, align 8
  store %struct.SiS_Private* %0, %struct.SiS_Private** %3, align 8
  %4 = load %struct.SiS_Private*, %struct.SiS_Private** %3, align 8
  %5 = call i64 @SiS_SetSCLKLow(%struct.SiS_Private* %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  store i16 -1, i16* %2, align 2
  br label %42

8:                                                ; preds = %1
  %9 = load %struct.SiS_Private*, %struct.SiS_Private** %3, align 8
  %10 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.SiS_Private*, %struct.SiS_Private** %3, align 8
  %13 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.SiS_Private*, %struct.SiS_Private** %3, align 8
  %16 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @SiS_SetRegANDOR(i32 %11, i32 %14, i32 %17, i32 0)
  %19 = load %struct.SiS_Private*, %struct.SiS_Private** %3, align 8
  %20 = call i64 @SiS_SetSCLKHigh(%struct.SiS_Private* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %8
  store i16 -1, i16* %2, align 2
  br label %42

23:                                               ; preds = %8
  %24 = load %struct.SiS_Private*, %struct.SiS_Private** %3, align 8
  %25 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.SiS_Private*, %struct.SiS_Private** %3, align 8
  %28 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.SiS_Private*, %struct.SiS_Private** %3, align 8
  %31 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.SiS_Private*, %struct.SiS_Private** %3, align 8
  %34 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @SiS_SetRegANDOR(i32 %26, i32 %29, i32 %32, i32 %35)
  %37 = load %struct.SiS_Private*, %struct.SiS_Private** %3, align 8
  %38 = call i64 @SiS_SetSCLKHigh(%struct.SiS_Private* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %23
  store i16 -1, i16* %2, align 2
  br label %42

41:                                               ; preds = %23
  store i16 0, i16* %2, align 2
  br label %42

42:                                               ; preds = %41, %40, %22, %7
  %43 = load i16, i16* %2, align 2
  ret i16 %43
}

declare dso_local i64 @SiS_SetSCLKLow(%struct.SiS_Private*) #1

declare dso_local i32 @SiS_SetRegANDOR(i32, i32, i32, i32) #1

declare dso_local i64 @SiS_SetSCLKHigh(%struct.SiS_Private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
