; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext2/extr_inode.c_ext2_delete_inode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext2/extr_inode.c_ext2_delete_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i64, i64, i32 }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ext2_delete_inode(%struct.inode* %0) #0 {
  %2 = alloca %struct.inode*, align 8
  store %struct.inode* %0, %struct.inode** %2, align 8
  %3 = load %struct.inode*, %struct.inode** %2, align 8
  %4 = getelementptr inbounds %struct.inode, %struct.inode* %3, i32 0, i32 3
  %5 = call i32 @truncate_inode_pages(i32* %4, i32 0)
  %6 = load %struct.inode*, %struct.inode** %2, align 8
  %7 = call i64 @is_bad_inode(%struct.inode* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %41

10:                                               ; preds = %1
  %11 = load %struct.inode*, %struct.inode** %2, align 8
  %12 = getelementptr inbounds %struct.inode, %struct.inode* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @sb_start_intwrite(i32 %13)
  %15 = call i32 (...) @get_seconds()
  %16 = load %struct.inode*, %struct.inode** %2, align 8
  %17 = call %struct.TYPE_2__* @EXT2_I(%struct.inode* %16)
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  store i32 %15, i32* %18, align 4
  %19 = load %struct.inode*, %struct.inode** %2, align 8
  %20 = call i32 @mark_inode_dirty(%struct.inode* %19)
  %21 = load %struct.inode*, %struct.inode** %2, align 8
  %22 = load %struct.inode*, %struct.inode** %2, align 8
  %23 = call i32 @inode_needs_sync(%struct.inode* %22)
  %24 = call i32 @__ext2_write_inode(%struct.inode* %21, i32 %23)
  %25 = load %struct.inode*, %struct.inode** %2, align 8
  %26 = getelementptr inbounds %struct.inode, %struct.inode* %25, i32 0, i32 2
  store i64 0, i64* %26, align 8
  %27 = load %struct.inode*, %struct.inode** %2, align 8
  %28 = getelementptr inbounds %struct.inode, %struct.inode* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %10
  %32 = load %struct.inode*, %struct.inode** %2, align 8
  %33 = call i32 @ext2_truncate(%struct.inode* %32)
  br label %34

34:                                               ; preds = %31, %10
  %35 = load %struct.inode*, %struct.inode** %2, align 8
  %36 = call i32 @ext2_free_inode(%struct.inode* %35)
  %37 = load %struct.inode*, %struct.inode** %2, align 8
  %38 = getelementptr inbounds %struct.inode, %struct.inode* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @sb_end_intwrite(i32 %39)
  br label %44

41:                                               ; preds = %9
  %42 = load %struct.inode*, %struct.inode** %2, align 8
  %43 = call i32 @clear_inode(%struct.inode* %42)
  br label %44

44:                                               ; preds = %41, %34
  ret void
}

declare dso_local i32 @truncate_inode_pages(i32*, i32) #1

declare dso_local i64 @is_bad_inode(%struct.inode*) #1

declare dso_local i32 @sb_start_intwrite(i32) #1

declare dso_local i32 @get_seconds(...) #1

declare dso_local %struct.TYPE_2__* @EXT2_I(%struct.inode*) #1

declare dso_local i32 @mark_inode_dirty(%struct.inode*) #1

declare dso_local i32 @__ext2_write_inode(%struct.inode*, i32) #1

declare dso_local i32 @inode_needs_sync(%struct.inode*) #1

declare dso_local i32 @ext2_truncate(%struct.inode*) #1

declare dso_local i32 @ext2_free_inode(%struct.inode*) #1

declare dso_local i32 @sb_end_intwrite(i32) #1

declare dso_local i32 @clear_inode(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
