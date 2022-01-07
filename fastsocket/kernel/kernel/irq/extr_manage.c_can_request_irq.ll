; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/irq/extr_manage.c_can_request_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/irq/extr_manage.c_can_request_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_desc = type { i32, %struct.irqaction* }
%struct.irqaction = type { i64 }

@IRQ_NOREQUEST = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @can_request_irq(i32 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.irq_desc*, align 8
  %7 = alloca %struct.irqaction*, align 8
  store i32 %0, i32* %4, align 4
  store i64 %1, i64* %5, align 8
  %8 = load i32, i32* %4, align 4
  %9 = call %struct.irq_desc* @irq_to_desc(i32 %8)
  store %struct.irq_desc* %9, %struct.irq_desc** %6, align 8
  %10 = load %struct.irq_desc*, %struct.irq_desc** %6, align 8
  %11 = icmp ne %struct.irq_desc* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %43

13:                                               ; preds = %2
  %14 = load %struct.irq_desc*, %struct.irq_desc** %6, align 8
  %15 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @IRQ_NOREQUEST, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %13
  store i32 0, i32* %3, align 4
  br label %43

21:                                               ; preds = %13
  %22 = load %struct.irq_desc*, %struct.irq_desc** %6, align 8
  %23 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %22, i32 0, i32 1
  %24 = load %struct.irqaction*, %struct.irqaction** %23, align 8
  store %struct.irqaction* %24, %struct.irqaction** %7, align 8
  %25 = load %struct.irqaction*, %struct.irqaction** %7, align 8
  %26 = icmp ne %struct.irqaction* %25, null
  br i1 %26, label %27, label %38

27:                                               ; preds = %21
  %28 = load i64, i64* %5, align 8
  %29 = load %struct.irqaction*, %struct.irqaction** %7, align 8
  %30 = getelementptr inbounds %struct.irqaction, %struct.irqaction* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = and i64 %28, %31
  %33 = load i64, i64* @IRQF_SHARED, align 8
  %34 = and i64 %32, %33
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %27
  store %struct.irqaction* null, %struct.irqaction** %7, align 8
  br label %37

37:                                               ; preds = %36, %27
  br label %38

38:                                               ; preds = %37, %21
  %39 = load %struct.irqaction*, %struct.irqaction** %7, align 8
  %40 = icmp ne %struct.irqaction* %39, null
  %41 = xor i1 %40, true
  %42 = zext i1 %41 to i32
  store i32 %42, i32* %3, align 4
  br label %43

43:                                               ; preds = %38, %20, %12
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local %struct.irq_desc* @irq_to_desc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
