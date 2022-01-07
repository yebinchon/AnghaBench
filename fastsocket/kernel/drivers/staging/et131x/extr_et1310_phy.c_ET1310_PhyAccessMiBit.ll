; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/et131x/extr_et1310_phy.c_ET1310_PhyAccessMiBit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/et131x/extr_et1310_phy.c_ET1310_PhyAccessMiBit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.et131x_adapter = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ET1310_PhyAccessMiBit(%struct.et131x_adapter* %0, i32 %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca %struct.et131x_adapter*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.et131x_adapter* %0, %struct.et131x_adapter** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  store i32 0, i32* %12, align 4
  %13 = load i32, i32* %9, align 4
  %14 = shl i32 1, %13
  store i32 %14, i32* %12, align 4
  %15 = load %struct.et131x_adapter*, %struct.et131x_adapter** %6, align 8
  %16 = load i32, i32* %8, align 4
  %17 = call i32 @MiRead(%struct.et131x_adapter* %15, i32 %16, i32* %11)
  %18 = load i32, i32* %7, align 4
  switch i32 %18, label %47 [
    i32 129, label %19
    i32 128, label %30
    i32 130, label %38
  ]

19:                                               ; preds = %5
  %20 = load i32*, i32** %10, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %29

22:                                               ; preds = %19
  %23 = load i32, i32* %11, align 4
  %24 = load i32, i32* %12, align 4
  %25 = and i32 %23, %24
  %26 = load i32, i32* %9, align 4
  %27 = ashr i32 %25, %26
  %28 = load i32*, i32** %10, align 8
  store i32 %27, i32* %28, align 4
  br label %29

29:                                               ; preds = %22, %19
  br label %48

30:                                               ; preds = %5
  %31 = load i32, i32* %12, align 4
  %32 = load i32, i32* %11, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %11, align 4
  %34 = load %struct.et131x_adapter*, %struct.et131x_adapter** %6, align 8
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* %11, align 4
  %37 = call i32 @MiWrite(%struct.et131x_adapter* %34, i32 %35, i32 %36)
  br label %48

38:                                               ; preds = %5
  %39 = load i32, i32* %12, align 4
  %40 = xor i32 %39, -1
  %41 = load i32, i32* %11, align 4
  %42 = and i32 %41, %40
  store i32 %42, i32* %11, align 4
  %43 = load %struct.et131x_adapter*, %struct.et131x_adapter** %6, align 8
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* %11, align 4
  %46 = call i32 @MiWrite(%struct.et131x_adapter* %43, i32 %44, i32 %45)
  br label %48

47:                                               ; preds = %5
  br label %48

48:                                               ; preds = %47, %38, %30, %29
  ret void
}

declare dso_local i32 @MiRead(%struct.et131x_adapter*, i32, i32*) #1

declare dso_local i32 @MiWrite(%struct.et131x_adapter*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
