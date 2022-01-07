; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/sis/extr_init301.c_SiS_WriteDABDDC.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/sis/extr_init301.c_SiS_WriteDABDDC.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SiS_Private = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i16 (%struct.SiS_Private*)* @SiS_WriteDABDDC to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i16 @SiS_WriteDABDDC(%struct.SiS_Private* %0) #0 {
  %2 = alloca i16, align 2
  %3 = alloca %struct.SiS_Private*, align 8
  store %struct.SiS_Private* %0, %struct.SiS_Private** %3, align 8
  %4 = load %struct.SiS_Private*, %struct.SiS_Private** %3, align 8
  %5 = call i64 @SiS_SetStart(%struct.SiS_Private* %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  store i16 -1, i16* %2, align 2
  br label %25

8:                                                ; preds = %1
  %9 = load %struct.SiS_Private*, %struct.SiS_Private** %3, align 8
  %10 = load %struct.SiS_Private*, %struct.SiS_Private** %3, align 8
  %11 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i64 @SiS_WriteDDC2Data(%struct.SiS_Private* %9, i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %8
  store i16 -1, i16* %2, align 2
  br label %25

16:                                               ; preds = %8
  %17 = load %struct.SiS_Private*, %struct.SiS_Private** %3, align 8
  %18 = load %struct.SiS_Private*, %struct.SiS_Private** %3, align 8
  %19 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @SiS_WriteDDC2Data(%struct.SiS_Private* %17, i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %16
  store i16 -1, i16* %2, align 2
  br label %25

24:                                               ; preds = %16
  store i16 0, i16* %2, align 2
  br label %25

25:                                               ; preds = %24, %23, %15, %7
  %26 = load i16, i16* %2, align 2
  ret i16 %26
}

declare dso_local i64 @SiS_SetStart(%struct.SiS_Private*) #1

declare dso_local i64 @SiS_WriteDDC2Data(%struct.SiS_Private*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
