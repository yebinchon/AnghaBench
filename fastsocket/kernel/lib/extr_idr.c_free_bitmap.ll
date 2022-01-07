; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/lib/extr_idr.c_free_bitmap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/lib/extr_idr.c_free_bitmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ida = type { %struct.TYPE_2__, %struct.ida_bitmap* }
%struct.TYPE_2__ = type { i32 }
%struct.ida_bitmap = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ida*, %struct.ida_bitmap*)* @free_bitmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_bitmap(%struct.ida* %0, %struct.ida_bitmap* %1) #0 {
  %3 = alloca %struct.ida*, align 8
  %4 = alloca %struct.ida_bitmap*, align 8
  %5 = alloca i64, align 8
  store %struct.ida* %0, %struct.ida** %3, align 8
  store %struct.ida_bitmap* %1, %struct.ida_bitmap** %4, align 8
  %6 = load %struct.ida*, %struct.ida** %3, align 8
  %7 = getelementptr inbounds %struct.ida, %struct.ida* %6, i32 0, i32 1
  %8 = load %struct.ida_bitmap*, %struct.ida_bitmap** %7, align 8
  %9 = icmp ne %struct.ida_bitmap* %8, null
  br i1 %9, label %30, label %10

10:                                               ; preds = %2
  %11 = load %struct.ida*, %struct.ida** %3, align 8
  %12 = getelementptr inbounds %struct.ida, %struct.ida* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i64, i64* %5, align 8
  %15 = call i32 @spin_lock_irqsave(i32* %13, i64 %14)
  %16 = load %struct.ida*, %struct.ida** %3, align 8
  %17 = getelementptr inbounds %struct.ida, %struct.ida* %16, i32 0, i32 1
  %18 = load %struct.ida_bitmap*, %struct.ida_bitmap** %17, align 8
  %19 = icmp ne %struct.ida_bitmap* %18, null
  br i1 %19, label %24, label %20

20:                                               ; preds = %10
  %21 = load %struct.ida_bitmap*, %struct.ida_bitmap** %4, align 8
  %22 = load %struct.ida*, %struct.ida** %3, align 8
  %23 = getelementptr inbounds %struct.ida, %struct.ida* %22, i32 0, i32 1
  store %struct.ida_bitmap* %21, %struct.ida_bitmap** %23, align 8
  store %struct.ida_bitmap* null, %struct.ida_bitmap** %4, align 8
  br label %24

24:                                               ; preds = %20, %10
  %25 = load %struct.ida*, %struct.ida** %3, align 8
  %26 = getelementptr inbounds %struct.ida, %struct.ida* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i64, i64* %5, align 8
  %29 = call i32 @spin_unlock_irqrestore(i32* %27, i64 %28)
  br label %30

30:                                               ; preds = %24, %2
  %31 = load %struct.ida_bitmap*, %struct.ida_bitmap** %4, align 8
  %32 = call i32 @kfree(%struct.ida_bitmap* %31)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @kfree(%struct.ida_bitmap*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
