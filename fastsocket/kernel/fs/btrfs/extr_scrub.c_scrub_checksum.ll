; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_scrub.c_scrub_checksum.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_scrub.c_scrub_checksum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scrub_block = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@BTRFS_EXTENT_FLAG_DATA = common dso_local global i32 0, align 4
@BTRFS_EXTENT_FLAG_TREE_BLOCK = common dso_local global i32 0, align 4
@BTRFS_EXTENT_FLAG_SUPER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.scrub_block*)* @scrub_checksum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @scrub_checksum(%struct.scrub_block* %0) #0 {
  %2 = alloca %struct.scrub_block*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.scrub_block* %0, %struct.scrub_block** %2, align 8
  %5 = load %struct.scrub_block*, %struct.scrub_block** %2, align 8
  %6 = getelementptr inbounds %struct.scrub_block, %struct.scrub_block* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = icmp slt i32 %7, 1
  %9 = zext i1 %8 to i32
  %10 = call i32 @BUG_ON(i32 %9)
  %11 = load %struct.scrub_block*, %struct.scrub_block** %2, align 8
  %12 = getelementptr inbounds %struct.scrub_block, %struct.scrub_block* %11, i32 0, i32 1
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i64 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %3, align 4
  store i32 0, i32* %4, align 4
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* @BTRFS_EXTENT_FLAG_DATA, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %1
  %22 = load %struct.scrub_block*, %struct.scrub_block** %2, align 8
  %23 = call i32 @scrub_checksum_data(%struct.scrub_block* %22)
  store i32 %23, i32* %4, align 4
  br label %44

24:                                               ; preds = %1
  %25 = load i32, i32* %3, align 4
  %26 = load i32, i32* @BTRFS_EXTENT_FLAG_TREE_BLOCK, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %24
  %30 = load %struct.scrub_block*, %struct.scrub_block** %2, align 8
  %31 = call i32 @scrub_checksum_tree_block(%struct.scrub_block* %30)
  store i32 %31, i32* %4, align 4
  br label %43

32:                                               ; preds = %24
  %33 = load i32, i32* %3, align 4
  %34 = load i32, i32* @BTRFS_EXTENT_FLAG_SUPER, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %32
  %38 = load %struct.scrub_block*, %struct.scrub_block** %2, align 8
  %39 = call i32 @scrub_checksum_super(%struct.scrub_block* %38)
  br label %42

40:                                               ; preds = %32
  %41 = call i32 @WARN_ON(i32 1)
  br label %42

42:                                               ; preds = %40, %37
  br label %43

43:                                               ; preds = %42, %29
  br label %44

44:                                               ; preds = %43, %21
  %45 = load i32, i32* %4, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %44
  %48 = load %struct.scrub_block*, %struct.scrub_block** %2, align 8
  %49 = call i32 @scrub_handle_errored_block(%struct.scrub_block* %48)
  br label %50

50:                                               ; preds = %47, %44
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @scrub_checksum_data(%struct.scrub_block*) #1

declare dso_local i32 @scrub_checksum_tree_block(%struct.scrub_block*) #1

declare dso_local i32 @scrub_checksum_super(%struct.scrub_block*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @scrub_handle_errored_block(%struct.scrub_block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
