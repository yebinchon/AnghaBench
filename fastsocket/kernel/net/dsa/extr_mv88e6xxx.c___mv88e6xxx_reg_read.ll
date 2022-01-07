; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/dsa/extr_mv88e6xxx.c___mv88e6xxx_reg_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/dsa/extr_mv88e6xxx.c___mv88e6xxx_reg_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mii_bus = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__mv88e6xxx_reg_read(%struct.mii_bus* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mii_bus*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.mii_bus* %0, %struct.mii_bus** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load i32, i32* %7, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %4
  %14 = load %struct.mii_bus*, %struct.mii_bus** %6, align 8
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* %9, align 4
  %17 = call i32 @mdiobus_read(%struct.mii_bus* %14, i32 %15, i32 %16)
  store i32 %17, i32* %5, align 4
  br label %58

18:                                               ; preds = %4
  %19 = load %struct.mii_bus*, %struct.mii_bus** %6, align 8
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @mv88e6xxx_reg_wait_ready(%struct.mii_bus* %19, i32 %20)
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* %10, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %18
  %25 = load i32, i32* %10, align 4
  store i32 %25, i32* %5, align 4
  br label %58

26:                                               ; preds = %18
  %27 = load %struct.mii_bus*, %struct.mii_bus** %6, align 8
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* %8, align 4
  %30 = shl i32 %29, 5
  %31 = or i32 38912, %30
  %32 = load i32, i32* %9, align 4
  %33 = or i32 %31, %32
  %34 = call i32 @mdiobus_write(%struct.mii_bus* %27, i32 %28, i32 0, i32 %33)
  store i32 %34, i32* %10, align 4
  %35 = load i32, i32* %10, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %26
  %38 = load i32, i32* %10, align 4
  store i32 %38, i32* %5, align 4
  br label %58

39:                                               ; preds = %26
  %40 = load %struct.mii_bus*, %struct.mii_bus** %6, align 8
  %41 = load i32, i32* %7, align 4
  %42 = call i32 @mv88e6xxx_reg_wait_ready(%struct.mii_bus* %40, i32 %41)
  store i32 %42, i32* %10, align 4
  %43 = load i32, i32* %10, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %39
  %46 = load i32, i32* %10, align 4
  store i32 %46, i32* %5, align 4
  br label %58

47:                                               ; preds = %39
  %48 = load %struct.mii_bus*, %struct.mii_bus** %6, align 8
  %49 = load i32, i32* %7, align 4
  %50 = call i32 @mdiobus_read(%struct.mii_bus* %48, i32 %49, i32 1)
  store i32 %50, i32* %10, align 4
  %51 = load i32, i32* %10, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %47
  %54 = load i32, i32* %10, align 4
  store i32 %54, i32* %5, align 4
  br label %58

55:                                               ; preds = %47
  %56 = load i32, i32* %10, align 4
  %57 = and i32 %56, 65535
  store i32 %57, i32* %5, align 4
  br label %58

58:                                               ; preds = %55, %53, %45, %37, %24, %13
  %59 = load i32, i32* %5, align 4
  ret i32 %59
}

declare dso_local i32 @mdiobus_read(%struct.mii_bus*, i32, i32) #1

declare dso_local i32 @mv88e6xxx_reg_wait_ready(%struct.mii_bus*, i32) #1

declare dso_local i32 @mdiobus_write(%struct.mii_bus*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
