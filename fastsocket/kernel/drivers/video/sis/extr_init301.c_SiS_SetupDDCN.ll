; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/sis/extr_init301.c_SiS_SetupDDCN.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/sis/extr_init301.c_SiS_SetupDDCN.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SiS_Private = type { i32, i32, i32, i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.SiS_Private*)* @SiS_SetupDDCN to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @SiS_SetupDDCN(%struct.SiS_Private* %0) #0 {
  %2 = alloca %struct.SiS_Private*, align 8
  store %struct.SiS_Private* %0, %struct.SiS_Private** %2, align 8
  %3 = load %struct.SiS_Private*, %struct.SiS_Private** %2, align 8
  %4 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %3, i32 0, i32 1
  %5 = load i32, i32* %4, align 4
  %6 = xor i32 %5, -1
  %7 = load %struct.SiS_Private*, %struct.SiS_Private** %2, align 8
  %8 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %7, i32 0, i32 0
  store i32 %6, i32* %8, align 8
  %9 = load %struct.SiS_Private*, %struct.SiS_Private** %2, align 8
  %10 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 4
  %12 = xor i32 %11, -1
  %13 = load %struct.SiS_Private*, %struct.SiS_Private** %2, align 8
  %14 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %13, i32 0, i32 2
  store i32 %12, i32* %14, align 8
  %15 = load %struct.SiS_Private*, %struct.SiS_Private** %2, align 8
  %16 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 8
  %18 = icmp eq i32 %17, 17
  br i1 %18, label %19, label %33

19:                                               ; preds = %1
  %20 = load %struct.SiS_Private*, %struct.SiS_Private** %2, align 8
  %21 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %20, i32 0, i32 5
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %33

24:                                               ; preds = %19
  %25 = load %struct.SiS_Private*, %struct.SiS_Private** %2, align 8
  %26 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = and i32 %27, 15
  store i32 %28, i32* %26, align 8
  %29 = load %struct.SiS_Private*, %struct.SiS_Private** %2, align 8
  %30 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = and i32 %31, 15
  store i32 %32, i32* %30, align 8
  br label %33

33:                                               ; preds = %24, %19, %1
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
