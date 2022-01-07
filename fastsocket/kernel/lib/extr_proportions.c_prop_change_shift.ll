; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/lib/extr_proportions.c_prop_change_shift.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/lib/extr_proportions.c_prop_change_shift.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.prop_descriptor = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@PROP_MAX_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @prop_change_shift(%struct.prop_descriptor* %0, i32 %1) #0 {
  %3 = alloca %struct.prop_descriptor*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.prop_descriptor* %0, %struct.prop_descriptor** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @PROP_MAX_SHIFT, align 4
  %11 = icmp sgt i32 %9, %10
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* @PROP_MAX_SHIFT, align 4
  store i32 %13, i32* %4, align 4
  br label %14

14:                                               ; preds = %12, %2
  %15 = load %struct.prop_descriptor*, %struct.prop_descriptor** %3, align 8
  %16 = getelementptr inbounds %struct.prop_descriptor, %struct.prop_descriptor* %15, i32 0, i32 1
  %17 = call i32 @mutex_lock(i32* %16)
  %18 = load %struct.prop_descriptor*, %struct.prop_descriptor** %3, align 8
  %19 = getelementptr inbounds %struct.prop_descriptor, %struct.prop_descriptor* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = xor i32 %20, 1
  store i32 %21, i32* %5, align 4
  %22 = load %struct.prop_descriptor*, %struct.prop_descriptor** %3, align 8
  %23 = getelementptr inbounds %struct.prop_descriptor, %struct.prop_descriptor* %22, i32 0, i32 2
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = load %struct.prop_descriptor*, %struct.prop_descriptor** %3, align 8
  %26 = getelementptr inbounds %struct.prop_descriptor, %struct.prop_descriptor* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %4, align 4
  %33 = sub nsw i32 %31, %32
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %6, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %14
  br label %86

37:                                               ; preds = %14
  %38 = load i32, i32* %4, align 4
  %39 = load %struct.prop_descriptor*, %struct.prop_descriptor** %3, align 8
  %40 = getelementptr inbounds %struct.prop_descriptor, %struct.prop_descriptor* %39, i32 0, i32 2
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = load i32, i32* %5, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  store i32 %38, i32* %45, align 4
  %46 = load i64, i64* %8, align 8
  %47 = call i32 @local_irq_save(i64 %46)
  %48 = load %struct.prop_descriptor*, %struct.prop_descriptor** %3, align 8
  %49 = getelementptr inbounds %struct.prop_descriptor, %struct.prop_descriptor* %48, i32 0, i32 2
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = load %struct.prop_descriptor*, %struct.prop_descriptor** %3, align 8
  %52 = getelementptr inbounds %struct.prop_descriptor, %struct.prop_descriptor* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 1
  %57 = call i32 @percpu_counter_sum(i32* %56)
  store i32 %57, i32* %7, align 4
  %58 = load i32, i32* %6, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %37
  %61 = load i32, i32* %6, align 4
  %62 = sub nsw i32 0, %61
  %63 = load i32, i32* %7, align 4
  %64 = shl i32 %63, %62
  store i32 %64, i32* %7, align 4
  br label %69

65:                                               ; preds = %37
  %66 = load i32, i32* %6, align 4
  %67 = load i32, i32* %7, align 4
  %68 = ashr i32 %67, %66
  store i32 %68, i32* %7, align 4
  br label %69

69:                                               ; preds = %65, %60
  %70 = load %struct.prop_descriptor*, %struct.prop_descriptor** %3, align 8
  %71 = getelementptr inbounds %struct.prop_descriptor, %struct.prop_descriptor* %70, i32 0, i32 2
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %71, align 8
  %73 = load i32, i32* %5, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 1
  %77 = load i32, i32* %7, align 4
  %78 = call i32 @percpu_counter_set(i32* %76, i32 %77)
  %79 = call i32 (...) @smp_wmb()
  %80 = load i32, i32* %5, align 4
  %81 = load %struct.prop_descriptor*, %struct.prop_descriptor** %3, align 8
  %82 = getelementptr inbounds %struct.prop_descriptor, %struct.prop_descriptor* %81, i32 0, i32 0
  store i32 %80, i32* %82, align 8
  %83 = load i64, i64* %8, align 8
  %84 = call i32 @local_irq_restore(i64 %83)
  %85 = call i32 (...) @synchronize_rcu()
  br label %86

86:                                               ; preds = %69, %36
  %87 = load %struct.prop_descriptor*, %struct.prop_descriptor** %3, align 8
  %88 = getelementptr inbounds %struct.prop_descriptor, %struct.prop_descriptor* %87, i32 0, i32 1
  %89 = call i32 @mutex_unlock(i32* %88)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @percpu_counter_sum(i32*) #1

declare dso_local i32 @percpu_counter_set(i32*, i32) #1

declare dso_local i32 @smp_wmb(...) #1

declare dso_local i32 @local_irq_restore(i64) #1

declare dso_local i32 @synchronize_rcu(...) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
