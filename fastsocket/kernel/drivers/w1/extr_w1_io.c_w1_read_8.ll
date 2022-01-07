; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/w1/extr_w1_io.c_w1_read_8.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/w1/extr_w1_io.c_w1_read_8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.w1_master = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (i32)*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @w1_read_8(%struct.w1_master* %0) #0 {
  %2 = alloca %struct.w1_master*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.w1_master* %0, %struct.w1_master** %2, align 8
  store i32 0, i32* %4, align 4
  %5 = load %struct.w1_master*, %struct.w1_master** %2, align 8
  %6 = getelementptr inbounds %struct.w1_master, %struct.w1_master* %5, i32 0, i32 0
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32 (i32)*, i32 (i32)** %8, align 8
  %10 = icmp ne i32 (i32)* %9, null
  br i1 %10, label %11, label %23

11:                                               ; preds = %1
  %12 = load %struct.w1_master*, %struct.w1_master** %2, align 8
  %13 = getelementptr inbounds %struct.w1_master, %struct.w1_master* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32 (i32)*, i32 (i32)** %15, align 8
  %17 = load %struct.w1_master*, %struct.w1_master** %2, align 8
  %18 = getelementptr inbounds %struct.w1_master, %struct.w1_master* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = call i32 %16(i32 %21)
  store i32 %22, i32* %4, align 4
  br label %38

23:                                               ; preds = %1
  store i32 0, i32* %3, align 4
  br label %24

24:                                               ; preds = %34, %23
  %25 = load i32, i32* %3, align 4
  %26 = icmp slt i32 %25, 8
  br i1 %26, label %27, label %37

27:                                               ; preds = %24
  %28 = load %struct.w1_master*, %struct.w1_master** %2, align 8
  %29 = call i32 @w1_touch_bit(%struct.w1_master* %28, i32 1)
  %30 = load i32, i32* %3, align 4
  %31 = shl i32 %29, %30
  %32 = load i32, i32* %4, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %4, align 4
  br label %34

34:                                               ; preds = %27
  %35 = load i32, i32* %3, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %3, align 4
  br label %24

37:                                               ; preds = %24
  br label %38

38:                                               ; preds = %37, %11
  %39 = load i32, i32* %4, align 4
  ret i32 %39
}

declare dso_local i32 @w1_touch_bit(%struct.w1_master*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
