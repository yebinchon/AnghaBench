; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_sync.c___sync_filesystem.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_sync.c___sync_filesystem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { {}* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, i32)* @__sync_filesystem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__sync_filesystem(%struct.super_block* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.super_block*, %struct.super_block** %4, align 8
  %7 = getelementptr inbounds %struct.super_block, %struct.super_block* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 8
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %48

11:                                               ; preds = %2
  %12 = load i32, i32* %5, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %19, label %14

14:                                               ; preds = %11
  %15 = load %struct.super_block*, %struct.super_block** %4, align 8
  %16 = call i32 @writeout_quota_sb(%struct.super_block* %15, i32 -1)
  %17 = load %struct.super_block*, %struct.super_block** %4, align 8
  %18 = call i32 @writeback_inodes_sb(%struct.super_block* %17)
  br label %24

19:                                               ; preds = %11
  %20 = load %struct.super_block*, %struct.super_block** %4, align 8
  %21 = call i32 @sync_quota_sb(%struct.super_block* %20, i32 -1)
  %22 = load %struct.super_block*, %struct.super_block** %4, align 8
  %23 = call i32 @sync_inodes_sb(%struct.super_block* %22)
  br label %24

24:                                               ; preds = %19, %14
  %25 = load %struct.super_block*, %struct.super_block** %4, align 8
  %26 = getelementptr inbounds %struct.super_block, %struct.super_block* %25, i32 0, i32 1
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = bitcast {}** %28 to i32 (%struct.super_block*, i32)**
  %30 = load i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*, i32)** %29, align 8
  %31 = icmp ne i32 (%struct.super_block*, i32)* %30, null
  br i1 %31, label %32, label %42

32:                                               ; preds = %24
  %33 = load %struct.super_block*, %struct.super_block** %4, align 8
  %34 = getelementptr inbounds %struct.super_block, %struct.super_block* %33, i32 0, i32 1
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = bitcast {}** %36 to i32 (%struct.super_block*, i32)**
  %38 = load i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*, i32)** %37, align 8
  %39 = load %struct.super_block*, %struct.super_block** %4, align 8
  %40 = load i32, i32* %5, align 4
  %41 = call i32 %38(%struct.super_block* %39, i32 %40)
  br label %42

42:                                               ; preds = %32, %24
  %43 = load %struct.super_block*, %struct.super_block** %4, align 8
  %44 = getelementptr inbounds %struct.super_block, %struct.super_block* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* %5, align 4
  %47 = call i32 @__sync_blockdev(i32 %45, i32 %46)
  store i32 %47, i32* %3, align 4
  br label %48

48:                                               ; preds = %42, %10
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local i32 @writeout_quota_sb(%struct.super_block*, i32) #1

declare dso_local i32 @writeback_inodes_sb(%struct.super_block*) #1

declare dso_local i32 @sync_quota_sb(%struct.super_block*, i32) #1

declare dso_local i32 @sync_inodes_sb(%struct.super_block*) #1

declare dso_local i32 @__sync_blockdev(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
