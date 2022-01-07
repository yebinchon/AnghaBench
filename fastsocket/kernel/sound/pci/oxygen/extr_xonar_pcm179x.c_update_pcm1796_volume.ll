; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/oxygen/extr_xonar_pcm179x.c_update_pcm1796_volume.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/oxygen/extr_xonar_pcm179x.c_update_pcm1796_volume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.oxygen = type { i64*, %struct.xonar_pcm179x* }
%struct.xonar_pcm179x = type { i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.oxygen*)* @update_pcm1796_volume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_pcm1796_volume(%struct.oxygen* %0) #0 {
  %2 = alloca %struct.oxygen*, align 8
  %3 = alloca %struct.xonar_pcm179x*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.oxygen* %0, %struct.oxygen** %2, align 8
  %6 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %7 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %6, i32 0, i32 1
  %8 = load %struct.xonar_pcm179x*, %struct.xonar_pcm179x** %7, align 8
  store %struct.xonar_pcm179x* %8, %struct.xonar_pcm179x** %3, align 8
  %9 = load %struct.xonar_pcm179x*, %struct.xonar_pcm179x** %3, align 8
  %10 = getelementptr inbounds %struct.xonar_pcm179x, %struct.xonar_pcm179x* %9, i32 0, i32 2
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %1
  %14 = load %struct.xonar_pcm179x*, %struct.xonar_pcm179x** %3, align 8
  %15 = getelementptr inbounds %struct.xonar_pcm179x, %struct.xonar_pcm179x* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  br label %18

17:                                               ; preds = %1
  br label %18

18:                                               ; preds = %17, %13
  %19 = phi i32 [ %16, %13 ], [ 0, %17 ]
  store i32 %19, i32* %5, align 4
  store i32 0, i32* %4, align 4
  br label %20

20:                                               ; preds = %56, %18
  %21 = load i32, i32* %4, align 4
  %22 = load %struct.xonar_pcm179x*, %struct.xonar_pcm179x** %3, align 8
  %23 = getelementptr inbounds %struct.xonar_pcm179x, %struct.xonar_pcm179x* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp ult i32 %21, %24
  br i1 %25, label %26, label %59

26:                                               ; preds = %20
  %27 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %28 = load i32, i32* %4, align 4
  %29 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %30 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %29, i32 0, i32 0
  %31 = load i64*, i64** %30, align 8
  %32 = load i32, i32* %4, align 4
  %33 = mul i32 %32, 2
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds i64, i64* %31, i64 %34
  %36 = load i64, i64* %35, align 8
  %37 = load i32, i32* %5, align 4
  %38 = sext i32 %37 to i64
  %39 = add nsw i64 %36, %38
  %40 = call i32 @pcm1796_write_cached(%struct.oxygen* %27, i32 %28, i32 16, i64 %39)
  %41 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %42 = load i32, i32* %4, align 4
  %43 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %44 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %43, i32 0, i32 0
  %45 = load i64*, i64** %44, align 8
  %46 = load i32, i32* %4, align 4
  %47 = mul i32 %46, 2
  %48 = add i32 %47, 1
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds i64, i64* %45, i64 %49
  %51 = load i64, i64* %50, align 8
  %52 = load i32, i32* %5, align 4
  %53 = sext i32 %52 to i64
  %54 = add nsw i64 %51, %53
  %55 = call i32 @pcm1796_write_cached(%struct.oxygen* %41, i32 %42, i32 17, i64 %54)
  store i32 0, i32* %5, align 4
  br label %56

56:                                               ; preds = %26
  %57 = load i32, i32* %4, align 4
  %58 = add i32 %57, 1
  store i32 %58, i32* %4, align 4
  br label %20

59:                                               ; preds = %20
  ret void
}

declare dso_local i32 @pcm1796_write_cached(%struct.oxygen*, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
