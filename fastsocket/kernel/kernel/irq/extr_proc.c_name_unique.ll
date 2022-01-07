; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/irq/extr_proc.c_name_unique.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/irq/extr_proc.c_name_unique.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irqaction = type { i64, %struct.irqaction* }
%struct.irq_desc = type { i32, %struct.irqaction* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.irqaction*)* @name_unique to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @name_unique(i32 %0, %struct.irqaction* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.irqaction*, align 8
  %5 = alloca %struct.irq_desc*, align 8
  %6 = alloca %struct.irqaction*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.irqaction* %1, %struct.irqaction** %4, align 8
  %9 = load i32, i32* %3, align 4
  %10 = call %struct.irq_desc* @irq_to_desc(i32 %9)
  store %struct.irq_desc* %10, %struct.irq_desc** %5, align 8
  store i32 1, i32* %8, align 4
  %11 = load %struct.irq_desc*, %struct.irq_desc** %5, align 8
  %12 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %11, i32 0, i32 0
  %13 = load i64, i64* %7, align 8
  %14 = call i32 @spin_lock_irqsave(i32* %12, i64 %13)
  %15 = load %struct.irq_desc*, %struct.irq_desc** %5, align 8
  %16 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %15, i32 0, i32 1
  %17 = load %struct.irqaction*, %struct.irqaction** %16, align 8
  store %struct.irqaction* %17, %struct.irqaction** %6, align 8
  br label %18

18:                                               ; preds = %41, %2
  %19 = load %struct.irqaction*, %struct.irqaction** %6, align 8
  %20 = icmp ne %struct.irqaction* %19, null
  br i1 %20, label %21, label %45

21:                                               ; preds = %18
  %22 = load %struct.irqaction*, %struct.irqaction** %6, align 8
  %23 = load %struct.irqaction*, %struct.irqaction** %4, align 8
  %24 = icmp ne %struct.irqaction* %22, %23
  br i1 %24, label %25, label %40

25:                                               ; preds = %21
  %26 = load %struct.irqaction*, %struct.irqaction** %6, align 8
  %27 = getelementptr inbounds %struct.irqaction, %struct.irqaction* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %40

30:                                               ; preds = %25
  %31 = load %struct.irqaction*, %struct.irqaction** %4, align 8
  %32 = getelementptr inbounds %struct.irqaction, %struct.irqaction* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.irqaction*, %struct.irqaction** %6, align 8
  %35 = getelementptr inbounds %struct.irqaction, %struct.irqaction* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = call i32 @strcmp(i64 %33, i64 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %30
  store i32 0, i32* %8, align 4
  br label %45

40:                                               ; preds = %30, %25, %21
  br label %41

41:                                               ; preds = %40
  %42 = load %struct.irqaction*, %struct.irqaction** %6, align 8
  %43 = getelementptr inbounds %struct.irqaction, %struct.irqaction* %42, i32 0, i32 1
  %44 = load %struct.irqaction*, %struct.irqaction** %43, align 8
  store %struct.irqaction* %44, %struct.irqaction** %6, align 8
  br label %18

45:                                               ; preds = %39, %18
  %46 = load %struct.irq_desc*, %struct.irq_desc** %5, align 8
  %47 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %46, i32 0, i32 0
  %48 = load i64, i64* %7, align 8
  %49 = call i32 @spin_unlock_irqrestore(i32* %47, i64 %48)
  %50 = load i32, i32* %8, align 4
  ret i32 %50
}

declare dso_local %struct.irq_desc* @irq_to_desc(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @strcmp(i64, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
