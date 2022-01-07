; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_extent_io.c_free_io_failure.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_extent_io.c_free_io_failure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.io_failure_record = type { i64, i64 }
%struct.extent_io_tree = type { i32 }
%struct.TYPE_2__ = type { %struct.extent_io_tree, %struct.extent_io_tree }

@EXTENT_LOCKED = common dso_local global i32 0, align 4
@EXTENT_DIRTY = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@EXTENT_DAMAGED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.io_failure_record*, i32)* @free_io_failure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @free_io_failure(%struct.inode* %0, %struct.io_failure_record* %1, i32 %2) #0 {
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.io_failure_record*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.extent_io_tree*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.io_failure_record* %1, %struct.io_failure_record** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %8, align 4
  %10 = load %struct.inode*, %struct.inode** %4, align 8
  %11 = call %struct.TYPE_2__* @BTRFS_I(%struct.inode* %10)
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 1
  store %struct.extent_io_tree* %12, %struct.extent_io_tree** %9, align 8
  %13 = load %struct.extent_io_tree*, %struct.extent_io_tree** %9, align 8
  %14 = load %struct.io_failure_record*, %struct.io_failure_record** %5, align 8
  %15 = getelementptr inbounds %struct.io_failure_record, %struct.io_failure_record* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = call i32 @set_state_private(%struct.extent_io_tree* %13, i64 %16, i32 0)
  %18 = load %struct.extent_io_tree*, %struct.extent_io_tree** %9, align 8
  %19 = load %struct.io_failure_record*, %struct.io_failure_record** %5, align 8
  %20 = getelementptr inbounds %struct.io_failure_record, %struct.io_failure_record* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.io_failure_record*, %struct.io_failure_record** %5, align 8
  %23 = getelementptr inbounds %struct.io_failure_record, %struct.io_failure_record* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.io_failure_record*, %struct.io_failure_record** %5, align 8
  %26 = getelementptr inbounds %struct.io_failure_record, %struct.io_failure_record* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = add nsw i64 %24, %27
  %29 = sub nsw i64 %28, 1
  %30 = load i32, i32* @EXTENT_LOCKED, align 4
  %31 = load i32, i32* @EXTENT_DIRTY, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @GFP_NOFS, align 4
  %34 = call i32 @clear_extent_bits(%struct.extent_io_tree* %18, i64 %21, i64 %29, i32 %32, i32 %33)
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %7, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %3
  %38 = load i32, i32* %7, align 4
  store i32 %38, i32* %8, align 4
  br label %39

39:                                               ; preds = %37, %3
  %40 = load i32, i32* %6, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %68

42:                                               ; preds = %39
  %43 = load %struct.inode*, %struct.inode** %4, align 8
  %44 = call %struct.TYPE_2__* @BTRFS_I(%struct.inode* %43)
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load %struct.io_failure_record*, %struct.io_failure_record** %5, align 8
  %47 = getelementptr inbounds %struct.io_failure_record, %struct.io_failure_record* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.io_failure_record*, %struct.io_failure_record** %5, align 8
  %50 = getelementptr inbounds %struct.io_failure_record, %struct.io_failure_record* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.io_failure_record*, %struct.io_failure_record** %5, align 8
  %53 = getelementptr inbounds %struct.io_failure_record, %struct.io_failure_record* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = add nsw i64 %51, %54
  %56 = sub nsw i64 %55, 1
  %57 = load i32, i32* @EXTENT_DAMAGED, align 4
  %58 = load i32, i32* @GFP_NOFS, align 4
  %59 = call i32 @clear_extent_bits(%struct.extent_io_tree* %45, i64 %48, i64 %56, i32 %57, i32 %58)
  store i32 %59, i32* %7, align 4
  %60 = load i32, i32* %7, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %42
  %63 = load i32, i32* %8, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %67, label %65

65:                                               ; preds = %62
  %66 = load i32, i32* %7, align 4
  store i32 %66, i32* %8, align 4
  br label %67

67:                                               ; preds = %65, %62, %42
  br label %68

68:                                               ; preds = %67, %39
  %69 = load %struct.io_failure_record*, %struct.io_failure_record** %5, align 8
  %70 = call i32 @kfree(%struct.io_failure_record* %69)
  %71 = load i32, i32* %8, align 4
  ret i32 %71
}

declare dso_local %struct.TYPE_2__* @BTRFS_I(%struct.inode*) #1

declare dso_local i32 @set_state_private(%struct.extent_io_tree*, i64, i32) #1

declare dso_local i32 @clear_extent_bits(%struct.extent_io_tree*, i64, i64, i32, i32) #1

declare dso_local i32 @kfree(%struct.io_failure_record*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
