; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/rme9652/extr_hdsp.c_hdsp_hw_pointer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/rme9652/extr_hdsp.c_hdsp_hw_pointer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdsp = type { i32, i32 }

@HDSP_statusRegister = common dso_local global i32 0, align 4
@HDSP_BufferID = common dso_local global i32 0, align 4
@HDSP_BufferPositionMask = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hdsp*)* @hdsp_hw_pointer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hdsp_hw_pointer(%struct.hdsp* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hdsp*, align 8
  %4 = alloca i32, align 4
  store %struct.hdsp* %0, %struct.hdsp** %3, align 8
  %5 = load %struct.hdsp*, %struct.hdsp** %3, align 8
  %6 = load i32, i32* @HDSP_statusRegister, align 4
  %7 = call i32 @hdsp_read(%struct.hdsp* %5, i32 %6)
  store i32 %7, i32* %4, align 4
  %8 = load %struct.hdsp*, %struct.hdsp** %3, align 8
  %9 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %25, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @HDSP_BufferID, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %12
  %18 = load %struct.hdsp*, %struct.hdsp** %3, align 8
  %19 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = sdiv i32 %20, 4
  br label %23

22:                                               ; preds = %12
  br label %23

23:                                               ; preds = %22, %17
  %24 = phi i32 [ %21, %17 ], [ 0, %22 ]
  store i32 %24, i32* %2, align 4
  br label %39

25:                                               ; preds = %1
  %26 = load i32, i32* @HDSP_BufferPositionMask, align 4
  %27 = load i32, i32* %4, align 4
  %28 = and i32 %27, %26
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* %4, align 4
  %30 = sdiv i32 %29, 4
  store i32 %30, i32* %4, align 4
  %31 = load %struct.hdsp*, %struct.hdsp** %3, align 8
  %32 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = sdiv i32 %33, 2
  %35 = sub nsw i32 %34, 1
  %36 = load i32, i32* %4, align 4
  %37 = and i32 %36, %35
  store i32 %37, i32* %4, align 4
  %38 = load i32, i32* %4, align 4
  store i32 %38, i32* %2, align 4
  br label %39

39:                                               ; preds = %25, %23
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local i32 @hdsp_read(%struct.hdsp*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
