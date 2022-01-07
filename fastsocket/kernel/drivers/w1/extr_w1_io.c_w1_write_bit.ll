; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/w1/extr_w1_io.c_w1_write_bit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/w1/extr_w1_io.c_w1_write_bit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.w1_master = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 (i32, i32)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.w1_master*, i32)* @w1_write_bit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @w1_write_bit(%struct.w1_master* %0, i32 %1) #0 {
  %3 = alloca %struct.w1_master*, align 8
  %4 = alloca i32, align 4
  store %struct.w1_master* %0, %struct.w1_master** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %32

7:                                                ; preds = %2
  %8 = load %struct.w1_master*, %struct.w1_master** %3, align 8
  %9 = getelementptr inbounds %struct.w1_master, %struct.w1_master* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 1
  %12 = load i32 (i32, i32)*, i32 (i32, i32)** %11, align 8
  %13 = load %struct.w1_master*, %struct.w1_master** %3, align 8
  %14 = getelementptr inbounds %struct.w1_master, %struct.w1_master* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call i32 %12(i32 %17, i32 0)
  %19 = call i32 @w1_delay(i32 6)
  %20 = load %struct.w1_master*, %struct.w1_master** %3, align 8
  %21 = getelementptr inbounds %struct.w1_master, %struct.w1_master* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load i32 (i32, i32)*, i32 (i32, i32)** %23, align 8
  %25 = load %struct.w1_master*, %struct.w1_master** %3, align 8
  %26 = getelementptr inbounds %struct.w1_master, %struct.w1_master* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 %24(i32 %29, i32 1)
  %31 = call i32 @w1_delay(i32 64)
  br label %57

32:                                               ; preds = %2
  %33 = load %struct.w1_master*, %struct.w1_master** %3, align 8
  %34 = getelementptr inbounds %struct.w1_master, %struct.w1_master* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  %37 = load i32 (i32, i32)*, i32 (i32, i32)** %36, align 8
  %38 = load %struct.w1_master*, %struct.w1_master** %3, align 8
  %39 = getelementptr inbounds %struct.w1_master, %struct.w1_master* %38, i32 0, i32 0
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 %37(i32 %42, i32 0)
  %44 = call i32 @w1_delay(i32 60)
  %45 = load %struct.w1_master*, %struct.w1_master** %3, align 8
  %46 = getelementptr inbounds %struct.w1_master, %struct.w1_master* %45, i32 0, i32 0
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 1
  %49 = load i32 (i32, i32)*, i32 (i32, i32)** %48, align 8
  %50 = load %struct.w1_master*, %struct.w1_master** %3, align 8
  %51 = getelementptr inbounds %struct.w1_master, %struct.w1_master* %50, i32 0, i32 0
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i32 %49(i32 %54, i32 1)
  %56 = call i32 @w1_delay(i32 10)
  br label %57

57:                                               ; preds = %32, %7
  ret void
}

declare dso_local i32 @w1_delay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
