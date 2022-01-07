; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext3/extr_file.c_ext3_release_file.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext3/extr_file.c_ext3_release_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32 }
%struct.file = type { i32, i64 }
%struct.TYPE_2__ = type { i32, i32 }

@EXT3_STATE_FLUSH_ON_CLOSE = common dso_local global i32 0, align 4
@FMODE_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @ext3_release_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext3_release_file(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.file*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.file* %1, %struct.file** %4, align 8
  %5 = load %struct.inode*, %struct.inode** %3, align 8
  %6 = call %struct.TYPE_2__* @EXT3_I(%struct.inode* %5)
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @EXT3_STATE_FLUSH_ON_CLOSE, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %24

12:                                               ; preds = %2
  %13 = load %struct.inode*, %struct.inode** %3, align 8
  %14 = getelementptr inbounds %struct.inode, %struct.inode* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @filemap_flush(i32 %15)
  %17 = load i32, i32* @EXT3_STATE_FLUSH_ON_CLOSE, align 4
  %18 = xor i32 %17, -1
  %19 = load %struct.inode*, %struct.inode** %3, align 8
  %20 = call %struct.TYPE_2__* @EXT3_I(%struct.inode* %19)
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = and i32 %22, %18
  store i32 %23, i32* %21, align 4
  br label %24

24:                                               ; preds = %12, %2
  %25 = load %struct.file*, %struct.file** %4, align 8
  %26 = getelementptr inbounds %struct.file, %struct.file* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @FMODE_WRITE, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %47

31:                                               ; preds = %24
  %32 = load %struct.inode*, %struct.inode** %3, align 8
  %33 = getelementptr inbounds %struct.inode, %struct.inode* %32, i32 0, i32 0
  %34 = call i32 @atomic_read(i32* %33)
  %35 = icmp eq i32 %34, 1
  br i1 %35, label %36, label %47

36:                                               ; preds = %31
  %37 = load %struct.inode*, %struct.inode** %3, align 8
  %38 = call %struct.TYPE_2__* @EXT3_I(%struct.inode* %37)
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  %40 = call i32 @mutex_lock(i32* %39)
  %41 = load %struct.inode*, %struct.inode** %3, align 8
  %42 = call i32 @ext3_discard_reservation(%struct.inode* %41)
  %43 = load %struct.inode*, %struct.inode** %3, align 8
  %44 = call %struct.TYPE_2__* @EXT3_I(%struct.inode* %43)
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  %46 = call i32 @mutex_unlock(i32* %45)
  br label %47

47:                                               ; preds = %36, %31, %24
  %48 = load %struct.inode*, %struct.inode** %3, align 8
  %49 = call i64 @is_dx(%struct.inode* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %61

51:                                               ; preds = %47
  %52 = load %struct.file*, %struct.file** %4, align 8
  %53 = getelementptr inbounds %struct.file, %struct.file* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %51
  %57 = load %struct.file*, %struct.file** %4, align 8
  %58 = getelementptr inbounds %struct.file, %struct.file* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = call i32 @ext3_htree_free_dir_info(i64 %59)
  br label %61

61:                                               ; preds = %56, %51, %47
  ret i32 0
}

declare dso_local %struct.TYPE_2__* @EXT3_I(%struct.inode*) #1

declare dso_local i32 @filemap_flush(i32) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ext3_discard_reservation(%struct.inode*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i64 @is_dx(%struct.inode*) #1

declare dso_local i32 @ext3_htree_free_dir_info(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
