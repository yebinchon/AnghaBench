; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_mempool.c_free_pool.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_mempool.c_free_pool.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_5__*, i32, i32 (i8*, i32)*, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*)* @free_pool to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_pool(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca i8*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  br label %4

4:                                                ; preds = %9, %1
  %5 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 3
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %20

9:                                                ; preds = %4
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %11 = call i8* @remove_element(%struct.TYPE_5__* %10)
  store i8* %11, i8** %3, align 8
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 2
  %14 = load i32 (i8*, i32)*, i32 (i8*, i32)** %13, align 8
  %15 = load i8*, i8** %3, align 8
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = call i32 %14(i8* %15, i32 %18)
  br label %4

20:                                               ; preds = %4
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %22, align 8
  %24 = call i32 @kfree(%struct.TYPE_5__* %23)
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %26 = call i32 @kfree(%struct.TYPE_5__* %25)
  ret void
}

declare dso_local i8* @remove_element(%struct.TYPE_5__*) #1

declare dso_local i32 @kfree(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
