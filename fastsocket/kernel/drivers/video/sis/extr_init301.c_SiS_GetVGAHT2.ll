; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/sis/extr_init301.c_SiS_GetVGAHT2.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/sis/extr_init301.c_SiS_GetVGAHT2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SiS_Private = type { i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i16 (%struct.SiS_Private*)* @SiS_GetVGAHT2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i16 @SiS_GetVGAHT2(%struct.SiS_Private* %0) #0 {
  %2 = alloca %struct.SiS_Private*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.SiS_Private* %0, %struct.SiS_Private** %2, align 8
  %5 = load %struct.SiS_Private*, %struct.SiS_Private** %2, align 8
  %6 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.SiS_Private*, %struct.SiS_Private** %2, align 8
  %9 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = sub i32 %7, %10
  %12 = load %struct.SiS_Private*, %struct.SiS_Private** %2, align 8
  %13 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = mul i32 %11, %14
  store i32 %15, i32* %4, align 4
  %16 = load %struct.SiS_Private*, %struct.SiS_Private** %2, align 8
  %17 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.SiS_Private*, %struct.SiS_Private** %2, align 8
  %20 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %19, i32 0, i32 4
  %21 = load i32, i32* %20, align 4
  %22 = sub i32 %18, %21
  %23 = load %struct.SiS_Private*, %struct.SiS_Private** %2, align 8
  %24 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %23, i32 0, i32 5
  %25 = load i32, i32* %24, align 4
  %26 = mul i32 %22, %25
  store i32 %26, i32* %3, align 4
  %27 = load i32, i32* %3, align 4
  %28 = load %struct.SiS_Private*, %struct.SiS_Private** %2, align 8
  %29 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %28, i32 0, i32 6
  %30 = load i32, i32* %29, align 4
  %31 = mul i32 %27, %30
  %32 = load i32, i32* %4, align 4
  %33 = udiv i32 %31, %32
  store i32 %33, i32* %3, align 4
  %34 = load i32, i32* %3, align 4
  %35 = trunc i32 %34 to i16
  ret i16 %35
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
