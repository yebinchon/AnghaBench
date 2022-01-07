; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/irq/extr_manage.c___irq_set_trigger.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/irq/extr_manage.c___irq_set_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_desc = type { i64, %struct.irq_chip* }
%struct.irq_chip = type { i32 (i32, i64)*, i64 }

@.str = private unnamed_addr constant [38 x i8] c"No set_type function for IRQ %d (%s)\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str.2 = private unnamed_addr constant [49 x i8] c"setting trigger mode %d for irq %u failed (%pF)\0A\00", align 1
@IRQ_TYPE_LEVEL_LOW = common dso_local global i64 0, align 8
@IRQ_TYPE_LEVEL_HIGH = common dso_local global i64 0, align 8
@IRQ_LEVEL = common dso_local global i64 0, align 8
@IRQ_TYPE_SENSE_MASK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__irq_set_trigger(%struct.irq_desc* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.irq_desc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.irq_chip*, align 8
  store %struct.irq_desc* %0, %struct.irq_desc** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %10 = load %struct.irq_desc*, %struct.irq_desc** %5, align 8
  %11 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %10, i32 0, i32 1
  %12 = load %struct.irq_chip*, %struct.irq_chip** %11, align 8
  store %struct.irq_chip* %12, %struct.irq_chip** %9, align 8
  %13 = load %struct.irq_chip*, %struct.irq_chip** %9, align 8
  %14 = icmp ne %struct.irq_chip* %13, null
  br i1 %14, label %15, label %20

15:                                               ; preds = %3
  %16 = load %struct.irq_chip*, %struct.irq_chip** %9, align 8
  %17 = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %16, i32 0, i32 0
  %18 = load i32 (i32, i64)*, i32 (i32, i64)** %17, align 8
  %19 = icmp ne i32 (i32, i64)* %18, null
  br i1 %19, label %38, label %20

20:                                               ; preds = %15, %3
  %21 = load i32, i32* %6, align 4
  %22 = load %struct.irq_chip*, %struct.irq_chip** %9, align 8
  %23 = icmp ne %struct.irq_chip* %22, null
  br i1 %23, label %24, label %34

24:                                               ; preds = %20
  %25 = load %struct.irq_chip*, %struct.irq_chip** %9, align 8
  %26 = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %24
  %30 = inttoptr i64 %27 to i8*
  br label %32

31:                                               ; preds = %24
  br label %32

32:                                               ; preds = %31, %29
  %33 = phi i8* [ %30, %29 ], [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), %31 ]
  br label %35

34:                                               ; preds = %20
  br label %35

35:                                               ; preds = %34, %32
  %36 = phi i8* [ %33, %32 ], [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), %34 ]
  %37 = call i32 @pr_debug(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %21, i8* %36)
  store i32 0, i32* %4, align 4
  br label %82

38:                                               ; preds = %15
  %39 = load %struct.irq_chip*, %struct.irq_chip** %9, align 8
  %40 = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %39, i32 0, i32 0
  %41 = load i32 (i32, i64)*, i32 (i32, i64)** %40, align 8
  %42 = load i32, i32* %6, align 4
  %43 = load i64, i64* %7, align 8
  %44 = call i32 %41(i32 %42, i64 %43)
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* %8, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %55

47:                                               ; preds = %38
  %48 = load i64, i64* %7, align 8
  %49 = trunc i64 %48 to i32
  %50 = load i32, i32* %6, align 4
  %51 = load %struct.irq_chip*, %struct.irq_chip** %9, align 8
  %52 = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %51, i32 0, i32 0
  %53 = load i32 (i32, i64)*, i32 (i32, i64)** %52, align 8
  %54 = call i32 @pr_err(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0), i32 %49, i32 %50, i32 (i32, i64)* %53)
  br label %80

55:                                               ; preds = %38
  %56 = load i64, i64* %7, align 8
  %57 = load i64, i64* @IRQ_TYPE_LEVEL_LOW, align 8
  %58 = load i64, i64* @IRQ_TYPE_LEVEL_HIGH, align 8
  %59 = or i64 %57, %58
  %60 = and i64 %56, %59
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %55
  %63 = load i64, i64* @IRQ_LEVEL, align 8
  %64 = load i64, i64* %7, align 8
  %65 = or i64 %64, %63
  store i64 %65, i64* %7, align 8
  br label %66

66:                                               ; preds = %62, %55
  %67 = load i64, i64* @IRQ_LEVEL, align 8
  %68 = load i64, i64* @IRQ_TYPE_SENSE_MASK, align 8
  %69 = or i64 %67, %68
  %70 = xor i64 %69, -1
  %71 = load %struct.irq_desc*, %struct.irq_desc** %5, align 8
  %72 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = and i64 %73, %70
  store i64 %74, i64* %72, align 8
  %75 = load i64, i64* %7, align 8
  %76 = load %struct.irq_desc*, %struct.irq_desc** %5, align 8
  %77 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = or i64 %78, %75
  store i64 %79, i64* %77, align 8
  br label %80

80:                                               ; preds = %66, %47
  %81 = load i32, i32* %8, align 4
  store i32 %81, i32* %4, align 4
  br label %82

82:                                               ; preds = %80, %35
  %83 = load i32, i32* %4, align 4
  ret i32 %83
}

declare dso_local i32 @pr_debug(i8*, i32, i8*) #1

declare dso_local i32 @pr_err(i8*, i32, i32, i32 (i32, i64)*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
