; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_super.c___sb_start_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_super.c___sb_start_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32*, i32 }

@_RET_IP_ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__sb_start_write(%struct.super_block* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = load %struct.super_block*, %struct.super_block** %5, align 8
  %9 = call i32 @sb_has_new_freeze(%struct.super_block* %8)
  %10 = icmp ne i32 %9, 0
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i32
  %13 = call i64 @unlikely(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %69

16:                                               ; preds = %3
  br label %17

17:                                               ; preds = %64, %16
  %18 = load %struct.super_block*, %struct.super_block** %5, align 8
  %19 = getelementptr inbounds %struct.super_block, %struct.super_block* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* %6, align 4
  %23 = icmp sge i32 %21, %22
  %24 = zext i1 %23 to i32
  %25 = call i64 @unlikely(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %44

27:                                               ; preds = %17
  %28 = load i32, i32* %7, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %27
  store i32 0, i32* %4, align 4
  br label %69

31:                                               ; preds = %27
  %32 = load %struct.super_block*, %struct.super_block** %5, align 8
  %33 = getelementptr inbounds %struct.super_block, %struct.super_block* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.super_block*, %struct.super_block** %5, align 8
  %37 = getelementptr inbounds %struct.super_block, %struct.super_block* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* %6, align 4
  %41 = icmp slt i32 %39, %40
  %42 = zext i1 %41 to i32
  %43 = call i32 @wait_event(i32 %35, i32 %42)
  br label %44

44:                                               ; preds = %31, %17
  %45 = load %struct.super_block*, %struct.super_block** %5, align 8
  %46 = getelementptr inbounds %struct.super_block, %struct.super_block* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* %6, align 4
  %50 = sub nsw i32 %49, 1
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %48, i64 %51
  %53 = call i32 @percpu_counter_inc(i32* %52)
  %54 = call i32 (...) @smp_mb()
  %55 = load %struct.super_block*, %struct.super_block** %5, align 8
  %56 = getelementptr inbounds %struct.super_block, %struct.super_block* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* %6, align 4
  %60 = icmp sge i32 %58, %59
  %61 = zext i1 %60 to i32
  %62 = call i64 @unlikely(i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %44
  %65 = load %struct.super_block*, %struct.super_block** %5, align 8
  %66 = load i32, i32* %6, align 4
  %67 = call i32 @__sb_end_write(%struct.super_block* %65, i32 %66)
  br label %17

68:                                               ; preds = %44
  store i32 1, i32* %4, align 4
  br label %69

69:                                               ; preds = %68, %30, %15
  %70 = load i32, i32* %4, align 4
  ret i32 %70
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @sb_has_new_freeze(%struct.super_block*) #1

declare dso_local i32 @wait_event(i32, i32) #1

declare dso_local i32 @percpu_counter_inc(i32*) #1

declare dso_local i32 @smp_mb(...) #1

declare dso_local i32 @__sb_end_write(%struct.super_block*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
