; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/dsa/extr_mv88e6xxx.c___mv88e6xxx_reg_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/dsa/extr_mv88e6xxx.c___mv88e6xxx_reg_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mii_bus = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__mv88e6xxx_reg_write(%struct.mii_bus* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.mii_bus*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.mii_bus* %0, %struct.mii_bus** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %13 = load i32, i32* %8, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %5
  %16 = load %struct.mii_bus*, %struct.mii_bus** %7, align 8
  %17 = load i32, i32* %9, align 4
  %18 = load i32, i32* %10, align 4
  %19 = load i32, i32* %11, align 4
  %20 = call i32 @mdiobus_write(%struct.mii_bus* %16, i32 %17, i32 %18, i32 %19)
  store i32 %20, i32* %6, align 4
  br label %60

21:                                               ; preds = %5
  %22 = load %struct.mii_bus*, %struct.mii_bus** %7, align 8
  %23 = load i32, i32* %8, align 4
  %24 = call i32 @mv88e6xxx_reg_wait_ready(%struct.mii_bus* %22, i32 %23)
  store i32 %24, i32* %12, align 4
  %25 = load i32, i32* %12, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %21
  %28 = load i32, i32* %12, align 4
  store i32 %28, i32* %6, align 4
  br label %60

29:                                               ; preds = %21
  %30 = load %struct.mii_bus*, %struct.mii_bus** %7, align 8
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* %11, align 4
  %33 = call i32 @mdiobus_write(%struct.mii_bus* %30, i32 %31, i32 1, i32 %32)
  store i32 %33, i32* %12, align 4
  %34 = load i32, i32* %12, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %29
  %37 = load i32, i32* %12, align 4
  store i32 %37, i32* %6, align 4
  br label %60

38:                                               ; preds = %29
  %39 = load %struct.mii_bus*, %struct.mii_bus** %7, align 8
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* %9, align 4
  %42 = shl i32 %41, 5
  %43 = or i32 37888, %42
  %44 = load i32, i32* %10, align 4
  %45 = or i32 %43, %44
  %46 = call i32 @mdiobus_write(%struct.mii_bus* %39, i32 %40, i32 0, i32 %45)
  store i32 %46, i32* %12, align 4
  %47 = load i32, i32* %12, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %38
  %50 = load i32, i32* %12, align 4
  store i32 %50, i32* %6, align 4
  br label %60

51:                                               ; preds = %38
  %52 = load %struct.mii_bus*, %struct.mii_bus** %7, align 8
  %53 = load i32, i32* %8, align 4
  %54 = call i32 @mv88e6xxx_reg_wait_ready(%struct.mii_bus* %52, i32 %53)
  store i32 %54, i32* %12, align 4
  %55 = load i32, i32* %12, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %51
  %58 = load i32, i32* %12, align 4
  store i32 %58, i32* %6, align 4
  br label %60

59:                                               ; preds = %51
  store i32 0, i32* %6, align 4
  br label %60

60:                                               ; preds = %59, %57, %49, %36, %27, %15
  %61 = load i32, i32* %6, align 4
  ret i32 %61
}

declare dso_local i32 @mdiobus_write(%struct.mii_bus*, i32, i32, i32) #1

declare dso_local i32 @mv88e6xxx_reg_wait_ready(%struct.mii_bus*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
