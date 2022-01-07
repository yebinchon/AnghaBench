; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/irq/extr_manage.c_set_irq_wake.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/irq/extr_manage.c_set_irq_wake.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_desc = type { i64, i32, i32 }

@IRQ_WAKEUP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Unbalanced IRQ %d wake disable\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @set_irq_wake(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.irq_desc*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* %3, align 4
  %9 = call %struct.irq_desc* @irq_to_desc(i32 %8)
  store %struct.irq_desc* %9, %struct.irq_desc** %5, align 8
  store i32 0, i32* %7, align 4
  %10 = load %struct.irq_desc*, %struct.irq_desc** %5, align 8
  %11 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %10, i32 0, i32 1
  %12 = load i64, i64* %6, align 8
  %13 = call i32 @spin_lock_irqsave(i32* %11, i64 %12)
  %14 = load i32, i32* %4, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %39

16:                                               ; preds = %2
  %17 = load %struct.irq_desc*, %struct.irq_desc** %5, align 8
  %18 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = add nsw i64 %19, 1
  store i64 %20, i64* %18, align 8
  %21 = icmp eq i64 %19, 0
  br i1 %21, label %22, label %38

22:                                               ; preds = %16
  %23 = load i32, i32* %3, align 4
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @set_irq_wake_real(i32 %23, i32 %24)
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %22
  %29 = load %struct.irq_desc*, %struct.irq_desc** %5, align 8
  %30 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %29, i32 0, i32 0
  store i64 0, i64* %30, align 8
  br label %37

31:                                               ; preds = %22
  %32 = load i32, i32* @IRQ_WAKEUP, align 4
  %33 = load %struct.irq_desc*, %struct.irq_desc** %5, align 8
  %34 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = or i32 %35, %32
  store i32 %36, i32* %34, align 4
  br label %37

37:                                               ; preds = %31, %28
  br label %38

38:                                               ; preds = %37, %16
  br label %72

39:                                               ; preds = %2
  %40 = load %struct.irq_desc*, %struct.irq_desc** %5, align 8
  %41 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %39
  %45 = load i32, i32* %3, align 4
  %46 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %45)
  br label %71

47:                                               ; preds = %39
  %48 = load %struct.irq_desc*, %struct.irq_desc** %5, align 8
  %49 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = add nsw i64 %50, -1
  store i64 %51, i64* %49, align 8
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %53, label %70

53:                                               ; preds = %47
  %54 = load i32, i32* %3, align 4
  %55 = load i32, i32* %4, align 4
  %56 = call i32 @set_irq_wake_real(i32 %54, i32 %55)
  store i32 %56, i32* %7, align 4
  %57 = load i32, i32* %7, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %53
  %60 = load %struct.irq_desc*, %struct.irq_desc** %5, align 8
  %61 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %60, i32 0, i32 0
  store i64 1, i64* %61, align 8
  br label %69

62:                                               ; preds = %53
  %63 = load i32, i32* @IRQ_WAKEUP, align 4
  %64 = xor i32 %63, -1
  %65 = load %struct.irq_desc*, %struct.irq_desc** %5, align 8
  %66 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = and i32 %67, %64
  store i32 %68, i32* %66, align 4
  br label %69

69:                                               ; preds = %62, %59
  br label %70

70:                                               ; preds = %69, %47
  br label %71

71:                                               ; preds = %70, %44
  br label %72

72:                                               ; preds = %71, %38
  %73 = load %struct.irq_desc*, %struct.irq_desc** %5, align 8
  %74 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %73, i32 0, i32 1
  %75 = load i64, i64* %6, align 8
  %76 = call i32 @spin_unlock_irqrestore(i32* %74, i64 %75)
  %77 = load i32, i32* %7, align 4
  ret i32 %77
}

declare dso_local %struct.irq_desc* @irq_to_desc(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @set_irq_wake_real(i32, i32) #1

declare dso_local i32 @WARN(i32, i8*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
