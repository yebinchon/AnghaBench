; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/irq/extr_chip.c_irq_chip_set_defaults.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/irq/extr_chip.c_irq_chip_set_defaults.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.irq_chip = type { i64, i64, i64, i64, i64, i64, i64 }

@default_enable = common dso_local global i64 0, align 8
@default_disable = common dso_local global i64 0, align 8
@default_startup = common dso_local global i64 0, align 8
@default_shutdown = common dso_local global i64 0, align 8
@dummy_irq_chip = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @irq_chip_set_defaults(%struct.irq_chip* %0) #0 {
  %2 = alloca %struct.irq_chip*, align 8
  store %struct.irq_chip* %0, %struct.irq_chip** %2, align 8
  %3 = load %struct.irq_chip*, %struct.irq_chip** %2, align 8
  %4 = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %3, i32 0, i32 6
  %5 = load i64, i64* %4, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %11, label %7

7:                                                ; preds = %1
  %8 = load i64, i64* @default_enable, align 8
  %9 = load %struct.irq_chip*, %struct.irq_chip** %2, align 8
  %10 = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %9, i32 0, i32 6
  store i64 %8, i64* %10, align 8
  br label %11

11:                                               ; preds = %7, %1
  %12 = load %struct.irq_chip*, %struct.irq_chip** %2, align 8
  %13 = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %11
  %17 = load i64, i64* @default_disable, align 8
  %18 = load %struct.irq_chip*, %struct.irq_chip** %2, align 8
  %19 = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %18, i32 0, i32 0
  store i64 %17, i64* %19, align 8
  br label %20

20:                                               ; preds = %16, %11
  %21 = load %struct.irq_chip*, %struct.irq_chip** %2, align 8
  %22 = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %21, i32 0, i32 5
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %20
  %26 = load i64, i64* @default_startup, align 8
  %27 = load %struct.irq_chip*, %struct.irq_chip** %2, align 8
  %28 = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %27, i32 0, i32 5
  store i64 %26, i64* %28, align 8
  br label %29

29:                                               ; preds = %25, %20
  %30 = load %struct.irq_chip*, %struct.irq_chip** %2, align 8
  %31 = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %50, label %34

34:                                               ; preds = %29
  %35 = load %struct.irq_chip*, %struct.irq_chip** %2, align 8
  %36 = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @default_disable, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %44

40:                                               ; preds = %34
  %41 = load %struct.irq_chip*, %struct.irq_chip** %2, align 8
  %42 = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  br label %46

44:                                               ; preds = %34
  %45 = load i64, i64* @default_shutdown, align 8
  br label %46

46:                                               ; preds = %44, %40
  %47 = phi i64 [ %43, %40 ], [ %45, %44 ]
  %48 = load %struct.irq_chip*, %struct.irq_chip** %2, align 8
  %49 = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %48, i32 0, i32 1
  store i64 %47, i64* %49, align 8
  br label %50

50:                                               ; preds = %46, %29
  %51 = load %struct.irq_chip*, %struct.irq_chip** %2, align 8
  %52 = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %51, i32 0, i32 4
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %61, label %55

55:                                               ; preds = %50
  %56 = load %struct.irq_chip*, %struct.irq_chip** %2, align 8
  %57 = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %56, i32 0, i32 3
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.irq_chip*, %struct.irq_chip** %2, align 8
  %60 = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %59, i32 0, i32 4
  store i64 %58, i64* %60, align 8
  br label %61

61:                                               ; preds = %55, %50
  %62 = load %struct.irq_chip*, %struct.irq_chip** %2, align 8
  %63 = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %70, label %66

66:                                               ; preds = %61
  %67 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dummy_irq_chip, i32 0, i32 0), align 8
  %68 = load %struct.irq_chip*, %struct.irq_chip** %2, align 8
  %69 = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %68, i32 0, i32 2
  store i64 %67, i64* %69, align 8
  br label %70

70:                                               ; preds = %66, %61
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
