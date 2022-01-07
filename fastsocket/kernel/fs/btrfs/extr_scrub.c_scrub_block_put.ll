; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_scrub.c_scrub_block_put.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_scrub.c_scrub_block_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scrub_block = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.scrub_block*)* @scrub_block_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @scrub_block_put(%struct.scrub_block* %0) #0 {
  %2 = alloca %struct.scrub_block*, align 8
  %3 = alloca i32, align 4
  store %struct.scrub_block* %0, %struct.scrub_block** %2, align 8
  %4 = load %struct.scrub_block*, %struct.scrub_block** %2, align 8
  %5 = getelementptr inbounds %struct.scrub_block, %struct.scrub_block* %4, i32 0, i32 2
  %6 = call i64 @atomic_dec_and_test(i32* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %42

8:                                                ; preds = %1
  store i32 0, i32* %3, align 4
  br label %9

9:                                                ; preds = %36, %8
  %10 = load i32, i32* %3, align 4
  %11 = load %struct.scrub_block*, %struct.scrub_block** %2, align 8
  %12 = getelementptr inbounds %struct.scrub_block, %struct.scrub_block* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp slt i32 %10, %13
  br i1 %14, label %15, label %39

15:                                               ; preds = %9
  %16 = load %struct.scrub_block*, %struct.scrub_block** %2, align 8
  %17 = getelementptr inbounds %struct.scrub_block, %struct.scrub_block* %16, i32 0, i32 1
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = load i32, i32* %3, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %35

25:                                               ; preds = %15
  %26 = load %struct.scrub_block*, %struct.scrub_block** %2, align 8
  %27 = getelementptr inbounds %struct.scrub_block, %struct.scrub_block* %26, i32 0, i32 1
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = load i32, i32* %3, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @__free_page(i64 %33)
  br label %35

35:                                               ; preds = %25, %15
  br label %36

36:                                               ; preds = %35
  %37 = load i32, i32* %3, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %3, align 4
  br label %9

39:                                               ; preds = %9
  %40 = load %struct.scrub_block*, %struct.scrub_block** %2, align 8
  %41 = call i32 @kfree(%struct.scrub_block* %40)
  br label %42

42:                                               ; preds = %39, %1
  ret void
}

declare dso_local i64 @atomic_dec_and_test(i32*) #1

declare dso_local i32 @__free_page(i64) #1

declare dso_local i32 @kfree(%struct.scrub_block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
