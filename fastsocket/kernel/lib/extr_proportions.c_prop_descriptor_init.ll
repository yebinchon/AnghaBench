; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/lib/extr_proportions.c_prop_descriptor_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/lib/extr_proportions.c_prop_descriptor_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.prop_descriptor = type { %struct.TYPE_2__*, i32, i64 }
%struct.TYPE_2__ = type { i32, i32 }

@PROP_MAX_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @prop_descriptor_init(%struct.prop_descriptor* %0, i32 %1) #0 {
  %3 = alloca %struct.prop_descriptor*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.prop_descriptor* %0, %struct.prop_descriptor** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @PROP_MAX_SHIFT, align 4
  %8 = icmp sgt i32 %6, %7
  br i1 %8, label %9, label %11

9:                                                ; preds = %2
  %10 = load i32, i32* @PROP_MAX_SHIFT, align 4
  store i32 %10, i32* %4, align 4
  br label %11

11:                                               ; preds = %9, %2
  %12 = load %struct.prop_descriptor*, %struct.prop_descriptor** %3, align 8
  %13 = getelementptr inbounds %struct.prop_descriptor, %struct.prop_descriptor* %12, i32 0, i32 2
  store i64 0, i64* %13, align 8
  %14 = load i32, i32* %4, align 4
  %15 = load %struct.prop_descriptor*, %struct.prop_descriptor** %3, align 8
  %16 = getelementptr inbounds %struct.prop_descriptor, %struct.prop_descriptor* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i64 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  store i32 %14, i32* %19, align 4
  %20 = load %struct.prop_descriptor*, %struct.prop_descriptor** %3, align 8
  %21 = getelementptr inbounds %struct.prop_descriptor, %struct.prop_descriptor* %20, i32 0, i32 1
  %22 = call i32 @mutex_init(i32* %21)
  %23 = load %struct.prop_descriptor*, %struct.prop_descriptor** %3, align 8
  %24 = getelementptr inbounds %struct.prop_descriptor, %struct.prop_descriptor* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i64 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = call i32 @percpu_counter_init(i32* %27, i32 0)
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %11
  br label %49

32:                                               ; preds = %11
  %33 = load %struct.prop_descriptor*, %struct.prop_descriptor** %3, align 8
  %34 = getelementptr inbounds %struct.prop_descriptor, %struct.prop_descriptor* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i64 1
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  %38 = call i32 @percpu_counter_init(i32* %37, i32 0)
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* %5, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %32
  %42 = load %struct.prop_descriptor*, %struct.prop_descriptor** %3, align 8
  %43 = getelementptr inbounds %struct.prop_descriptor, %struct.prop_descriptor* %42, i32 0, i32 0
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i64 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  %47 = call i32 @percpu_counter_destroy(i32* %46)
  br label %48

48:                                               ; preds = %41, %32
  br label %49

49:                                               ; preds = %48, %31
  %50 = load i32, i32* %5, align 4
  ret i32 %50
}

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @percpu_counter_init(i32*, i32) #1

declare dso_local i32 @percpu_counter_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
