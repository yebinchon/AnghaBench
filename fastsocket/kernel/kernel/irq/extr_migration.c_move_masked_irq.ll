; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/irq/extr_migration.c_move_masked_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/irq/extr_migration.c_move_masked_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_desc = type { i32, i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 (i32, i32)* }

@IRQ_MOVE_PENDING = common dso_local global i32 0, align 4
@cpu_online_mask = common dso_local global i32 0, align 4
@nr_cpu_ids = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @move_masked_irq(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.irq_desc*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = call %struct.irq_desc* @irq_to_desc(i32 %4)
  store %struct.irq_desc* %5, %struct.irq_desc** %3, align 8
  %6 = load %struct.irq_desc*, %struct.irq_desc** %3, align 8
  %7 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* @IRQ_MOVE_PENDING, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  %12 = xor i1 %11, true
  %13 = zext i1 %12 to i32
  %14 = call i64 @likely(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  br label %89

17:                                               ; preds = %1
  %18 = load %struct.irq_desc*, %struct.irq_desc** %3, align 8
  %19 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call i64 @CHECK_IRQ_PER_CPU(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %17
  %24 = call i32 @WARN_ON(i32 1)
  br label %89

25:                                               ; preds = %17
  %26 = load i32, i32* @IRQ_MOVE_PENDING, align 4
  %27 = xor i32 %26, -1
  %28 = load %struct.irq_desc*, %struct.irq_desc** %3, align 8
  %29 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = and i32 %30, %27
  store i32 %31, i32* %29, align 8
  %32 = load %struct.irq_desc*, %struct.irq_desc** %3, align 8
  %33 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @cpumask_empty(i32 %34)
  %36 = call i64 @unlikely(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %25
  br label %89

39:                                               ; preds = %25
  %40 = load %struct.irq_desc*, %struct.irq_desc** %3, align 8
  %41 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %40, i32 0, i32 3
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32 (i32, i32)*, i32 (i32, i32)** %43, align 8
  %45 = icmp ne i32 (i32, i32)* %44, null
  br i1 %45, label %47, label %46

46:                                               ; preds = %39
  br label %89

47:                                               ; preds = %39
  %48 = load %struct.irq_desc*, %struct.irq_desc** %3, align 8
  %49 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %48, i32 0, i32 4
  %50 = call i32 @assert_spin_locked(i32* %49)
  %51 = load %struct.irq_desc*, %struct.irq_desc** %3, align 8
  %52 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @cpu_online_mask, align 4
  %55 = call i64 @cpumask_any_and(i32 %53, i32 %54)
  %56 = load i64, i64* @nr_cpu_ids, align 8
  %57 = icmp slt i64 %55, %56
  %58 = zext i1 %57 to i32
  %59 = call i64 @likely(i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %84

61:                                               ; preds = %47
  %62 = load %struct.irq_desc*, %struct.irq_desc** %3, align 8
  %63 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %62, i32 0, i32 3
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i32 (i32, i32)*, i32 (i32, i32)** %65, align 8
  %67 = load i32, i32* %2, align 4
  %68 = load %struct.irq_desc*, %struct.irq_desc** %3, align 8
  %69 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = call i32 %66(i32 %67, i32 %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %83, label %73

73:                                               ; preds = %61
  %74 = load %struct.irq_desc*, %struct.irq_desc** %3, align 8
  %75 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.irq_desc*, %struct.irq_desc** %3, align 8
  %78 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @cpumask_copy(i32 %76, i32 %79)
  %81 = load %struct.irq_desc*, %struct.irq_desc** %3, align 8
  %82 = call i32 @irq_set_thread_affinity(%struct.irq_desc* %81)
  br label %83

83:                                               ; preds = %73, %61
  br label %84

84:                                               ; preds = %83, %47
  %85 = load %struct.irq_desc*, %struct.irq_desc** %3, align 8
  %86 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @cpumask_clear(i32 %87)
  br label %89

89:                                               ; preds = %84, %46, %38, %23, %16
  ret void
}

declare dso_local %struct.irq_desc* @irq_to_desc(i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i64 @CHECK_IRQ_PER_CPU(i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @cpumask_empty(i32) #1

declare dso_local i32 @assert_spin_locked(i32*) #1

declare dso_local i64 @cpumask_any_and(i32, i32) #1

declare dso_local i32 @cpumask_copy(i32, i32) #1

declare dso_local i32 @irq_set_thread_affinity(%struct.irq_desc*) #1

declare dso_local i32 @cpumask_clear(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
