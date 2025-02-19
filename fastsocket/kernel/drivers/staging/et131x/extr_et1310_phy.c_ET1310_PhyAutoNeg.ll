; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/et131x/extr_et1310_phy.c_ET1310_PhyAutoNeg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/et131x/extr_et1310_phy.c_ET1310_PhyAutoNeg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.et131x_adapter = type { i32 }

@PHY_CONTROL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ET1310_PhyAutoNeg(%struct.et131x_adapter* %0, i32 %1) #0 {
  %3 = alloca %struct.et131x_adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.et131x_adapter* %0, %struct.et131x_adapter** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.et131x_adapter*, %struct.et131x_adapter** %3, align 8
  %7 = load i32, i32* @PHY_CONTROL, align 4
  %8 = call i32 @MiRead(%struct.et131x_adapter* %6, i32 %7, i32* %5)
  %9 = load i32, i32* %4, align 4
  %10 = icmp eq i32 %9, 1
  br i1 %10, label %11, label %18

11:                                               ; preds = %2
  %12 = load i32, i32* %5, align 4
  %13 = or i32 %12, 4096
  store i32 %13, i32* %5, align 4
  %14 = load %struct.et131x_adapter*, %struct.et131x_adapter** %3, align 8
  %15 = load i32, i32* @PHY_CONTROL, align 4
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @MiWrite(%struct.et131x_adapter* %14, i32 %15, i32 %16)
  br label %25

18:                                               ; preds = %2
  %19 = load i32, i32* %5, align 4
  %20 = and i32 %19, -4097
  store i32 %20, i32* %5, align 4
  %21 = load %struct.et131x_adapter*, %struct.et131x_adapter** %3, align 8
  %22 = load i32, i32* @PHY_CONTROL, align 4
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @MiWrite(%struct.et131x_adapter* %21, i32 %22, i32 %23)
  br label %25

25:                                               ; preds = %18, %11
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
