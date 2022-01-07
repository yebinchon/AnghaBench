; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/nm256/extr_nm256.c_snd_nm256_release_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/nm256/extr_nm256.c_snd_nm256_release_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nm256 = type { i64, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nm256*)* @snd_nm256_release_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_nm256_release_irq(%struct.nm256* %0) #0 {
  %2 = alloca %struct.nm256*, align 8
  store %struct.nm256* %0, %struct.nm256** %2, align 8
  %3 = load %struct.nm256*, %struct.nm256** %2, align 8
  %4 = getelementptr inbounds %struct.nm256, %struct.nm256* %3, i32 0, i32 2
  %5 = call i32 @mutex_lock(i32* %4)
  %6 = load %struct.nm256*, %struct.nm256** %2, align 8
  %7 = getelementptr inbounds %struct.nm256, %struct.nm256* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp sgt i64 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %1
  %11 = load %struct.nm256*, %struct.nm256** %2, align 8
  %12 = getelementptr inbounds %struct.nm256, %struct.nm256* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = add nsw i64 %13, -1
  store i64 %14, i64* %12, align 8
  br label %15

15:                                               ; preds = %10, %1
  %16 = load %struct.nm256*, %struct.nm256** %2, align 8
  %17 = getelementptr inbounds %struct.nm256, %struct.nm256* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %33

20:                                               ; preds = %15
  %21 = load %struct.nm256*, %struct.nm256** %2, align 8
  %22 = getelementptr inbounds %struct.nm256, %struct.nm256* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = icmp sge i32 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %20
  %26 = load %struct.nm256*, %struct.nm256** %2, align 8
  %27 = getelementptr inbounds %struct.nm256, %struct.nm256* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.nm256*, %struct.nm256** %2, align 8
  %30 = call i32 @free_irq(i32 %28, %struct.nm256* %29)
  %31 = load %struct.nm256*, %struct.nm256** %2, align 8
  %32 = getelementptr inbounds %struct.nm256, %struct.nm256* %31, i32 0, i32 1
  store i32 -1, i32* %32, align 8
  br label %33

33:                                               ; preds = %25, %20, %15
  %34 = load %struct.nm256*, %struct.nm256** %2, align 8
  %35 = getelementptr inbounds %struct.nm256, %struct.nm256* %34, i32 0, i32 2
  %36 = call i32 @mutex_unlock(i32* %35)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @free_irq(i32, %struct.nm256*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
