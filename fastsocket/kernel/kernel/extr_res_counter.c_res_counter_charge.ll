; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_res_counter.c_res_counter_charge.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_res_counter.c_res_counter_charge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.res_counter = type { i32, %struct.res_counter* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @res_counter_charge(%struct.res_counter* %0, i64 %1, %struct.res_counter** %2) #0 {
  %4 = alloca %struct.res_counter*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.res_counter**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.res_counter*, align 8
  %10 = alloca %struct.res_counter*, align 8
  store %struct.res_counter* %0, %struct.res_counter** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.res_counter** %2, %struct.res_counter*** %6, align 8
  %11 = load %struct.res_counter**, %struct.res_counter*** %6, align 8
  store %struct.res_counter* null, %struct.res_counter** %11, align 8
  %12 = load i64, i64* %8, align 8
  %13 = call i32 @local_irq_save(i64 %12)
  %14 = load %struct.res_counter*, %struct.res_counter** %4, align 8
  store %struct.res_counter* %14, %struct.res_counter** %9, align 8
  br label %15

15:                                               ; preds = %34, %3
  %16 = load %struct.res_counter*, %struct.res_counter** %9, align 8
  %17 = icmp ne %struct.res_counter* %16, null
  br i1 %17, label %18, label %38

18:                                               ; preds = %15
  %19 = load %struct.res_counter*, %struct.res_counter** %9, align 8
  %20 = getelementptr inbounds %struct.res_counter, %struct.res_counter* %19, i32 0, i32 0
  %21 = call i32 @spin_lock(i32* %20)
  %22 = load %struct.res_counter*, %struct.res_counter** %9, align 8
  %23 = load i64, i64* %5, align 8
  %24 = call i32 @res_counter_charge_locked(%struct.res_counter* %22, i64 %23)
  store i32 %24, i32* %7, align 4
  %25 = load %struct.res_counter*, %struct.res_counter** %9, align 8
  %26 = getelementptr inbounds %struct.res_counter, %struct.res_counter* %25, i32 0, i32 0
  %27 = call i32 @spin_unlock(i32* %26)
  %28 = load i32, i32* %7, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %18
  %31 = load %struct.res_counter*, %struct.res_counter** %9, align 8
  %32 = load %struct.res_counter**, %struct.res_counter*** %6, align 8
  store %struct.res_counter* %31, %struct.res_counter** %32, align 8
  br label %39

33:                                               ; preds = %18
  br label %34

34:                                               ; preds = %33
  %35 = load %struct.res_counter*, %struct.res_counter** %9, align 8
  %36 = getelementptr inbounds %struct.res_counter, %struct.res_counter* %35, i32 0, i32 1
  %37 = load %struct.res_counter*, %struct.res_counter** %36, align 8
  store %struct.res_counter* %37, %struct.res_counter** %9, align 8
  br label %15

38:                                               ; preds = %15
  store i32 0, i32* %7, align 4
  br label %60

39:                                               ; preds = %30
  %40 = load %struct.res_counter*, %struct.res_counter** %4, align 8
  store %struct.res_counter* %40, %struct.res_counter** %10, align 8
  br label %41

41:                                               ; preds = %55, %39
  %42 = load %struct.res_counter*, %struct.res_counter** %10, align 8
  %43 = load %struct.res_counter*, %struct.res_counter** %9, align 8
  %44 = icmp ne %struct.res_counter* %42, %43
  br i1 %44, label %45, label %59

45:                                               ; preds = %41
  %46 = load %struct.res_counter*, %struct.res_counter** %10, align 8
  %47 = getelementptr inbounds %struct.res_counter, %struct.res_counter* %46, i32 0, i32 0
  %48 = call i32 @spin_lock(i32* %47)
  %49 = load %struct.res_counter*, %struct.res_counter** %10, align 8
  %50 = load i64, i64* %5, align 8
  %51 = call i32 @res_counter_uncharge_locked(%struct.res_counter* %49, i64 %50)
  %52 = load %struct.res_counter*, %struct.res_counter** %10, align 8
  %53 = getelementptr inbounds %struct.res_counter, %struct.res_counter* %52, i32 0, i32 0
  %54 = call i32 @spin_unlock(i32* %53)
  br label %55

55:                                               ; preds = %45
  %56 = load %struct.res_counter*, %struct.res_counter** %10, align 8
  %57 = getelementptr inbounds %struct.res_counter, %struct.res_counter* %56, i32 0, i32 1
  %58 = load %struct.res_counter*, %struct.res_counter** %57, align 8
  store %struct.res_counter* %58, %struct.res_counter** %10, align 8
  br label %41

59:                                               ; preds = %41
  br label %60

60:                                               ; preds = %59, %38
  %61 = load i64, i64* %8, align 8
  %62 = call i32 @local_irq_restore(i64 %61)
  %63 = load i32, i32* %7, align 4
  ret i32 %63
}

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @res_counter_charge_locked(%struct.res_counter*, i64) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @res_counter_uncharge_locked(%struct.res_counter*, i64) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
