; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/affs/extr_amigaffs.c_affs_remove_header.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/affs/extr_amigaffs.c_affs_remove_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i64, %struct.inode*, %struct.TYPE_3__* }
%struct.inode = type { i32, i32, i32, %struct.super_block* }
%struct.super_block = type { i32 }
%struct.TYPE_3__ = type { %struct.inode* }
%struct.buffer_head = type { i32 }
%struct.TYPE_4__ = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"AFFS: remove_header(key=%ld)\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@CURRENT_TIME_SEC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @affs_remove_header(%struct.dentry* %0) #0 {
  %2 = alloca %struct.dentry*, align 8
  %3 = alloca %struct.super_block*, align 8
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.buffer_head*, align 8
  %7 = alloca i32, align 4
  store %struct.dentry* %0, %struct.dentry** %2, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %6, align 8
  %8 = load %struct.dentry*, %struct.dentry** %2, align 8
  %9 = getelementptr inbounds %struct.dentry, %struct.dentry* %8, i32 0, i32 2
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load %struct.inode*, %struct.inode** %11, align 8
  store %struct.inode* %12, %struct.inode** %5, align 8
  %13 = load %struct.inode*, %struct.inode** %5, align 8
  %14 = getelementptr inbounds %struct.inode, %struct.inode* %13, i32 0, i32 3
  %15 = load %struct.super_block*, %struct.super_block** %14, align 8
  store %struct.super_block* %15, %struct.super_block** %3, align 8
  %16 = load i32, i32* @ENOENT, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %7, align 4
  %18 = load %struct.dentry*, %struct.dentry** %2, align 8
  %19 = getelementptr inbounds %struct.dentry, %struct.dentry* %18, i32 0, i32 1
  %20 = load %struct.inode*, %struct.inode** %19, align 8
  store %struct.inode* %20, %struct.inode** %4, align 8
  %21 = load %struct.inode*, %struct.inode** %4, align 8
  %22 = icmp ne %struct.inode* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %1
  br label %94

24:                                               ; preds = %1
  %25 = load %struct.inode*, %struct.inode** %4, align 8
  %26 = getelementptr inbounds %struct.inode, %struct.inode* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @pr_debug(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %27)
  %29 = load i32, i32* @EIO, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %7, align 4
  %31 = load %struct.super_block*, %struct.super_block** %3, align 8
  %32 = load %struct.dentry*, %struct.dentry** %2, align 8
  %33 = getelementptr inbounds %struct.dentry, %struct.dentry* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = trunc i64 %34 to i32
  %36 = call %struct.buffer_head* @affs_bread(%struct.super_block* %31, i32 %35)
  store %struct.buffer_head* %36, %struct.buffer_head** %6, align 8
  %37 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %38 = icmp ne %struct.buffer_head* %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %24
  br label %94

40:                                               ; preds = %24
  %41 = load %struct.inode*, %struct.inode** %4, align 8
  %42 = call i32 @affs_lock_link(%struct.inode* %41)
  %43 = load %struct.inode*, %struct.inode** %5, align 8
  %44 = call i32 @affs_lock_dir(%struct.inode* %43)
  %45 = load %struct.super_block*, %struct.super_block** %3, align 8
  %46 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %47 = call %struct.TYPE_4__* @AFFS_TAIL(%struct.super_block* %45, %struct.buffer_head* %46)
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @be32_to_cpu(i32 %49)
  switch i32 %50, label %62 [
    i32 128, label %51
  ]

51:                                               ; preds = %40
  %52 = load %struct.inode*, %struct.inode** %4, align 8
  %53 = call i32 @affs_lock_dir(%struct.inode* %52)
  %54 = load %struct.inode*, %struct.inode** %4, align 8
  %55 = call i32 @affs_empty_dir(%struct.inode* %54)
  store i32 %55, i32* %7, align 4
  %56 = load %struct.inode*, %struct.inode** %4, align 8
  %57 = call i32 @affs_unlock_dir(%struct.inode* %56)
  %58 = load i32, i32* %7, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %51
  br label %98

61:                                               ; preds = %51
  br label %63

62:                                               ; preds = %40
  br label %63

63:                                               ; preds = %62, %61
  %64 = load %struct.inode*, %struct.inode** %5, align 8
  %65 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %66 = call i32 @affs_remove_hash(%struct.inode* %64, %struct.buffer_head* %65)
  store i32 %66, i32* %7, align 4
  %67 = load i32, i32* %7, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %63
  br label %98

70:                                               ; preds = %63
  %71 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %72 = load %struct.inode*, %struct.inode** %4, align 8
  %73 = call i32 @mark_buffer_dirty_inode(%struct.buffer_head* %71, %struct.inode* %72)
  %74 = load %struct.inode*, %struct.inode** %5, align 8
  %75 = call i32 @affs_unlock_dir(%struct.inode* %74)
  %76 = load %struct.inode*, %struct.inode** %4, align 8
  %77 = getelementptr inbounds %struct.inode, %struct.inode* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = icmp sgt i32 %78, 1
  br i1 %79, label %80, label %83

80:                                               ; preds = %70
  %81 = load %struct.dentry*, %struct.dentry** %2, align 8
  %82 = call i32 @affs_remove_link(%struct.dentry* %81)
  store i32 %82, i32* %7, align 4
  br label %86

83:                                               ; preds = %70
  %84 = load %struct.inode*, %struct.inode** %4, align 8
  %85 = getelementptr inbounds %struct.inode, %struct.inode* %84, i32 0, i32 0
  store i32 0, i32* %85, align 8
  br label %86

86:                                               ; preds = %83, %80
  %87 = load %struct.inode*, %struct.inode** %4, align 8
  %88 = call i32 @affs_unlock_link(%struct.inode* %87)
  %89 = load i32, i32* @CURRENT_TIME_SEC, align 4
  %90 = load %struct.inode*, %struct.inode** %4, align 8
  %91 = getelementptr inbounds %struct.inode, %struct.inode* %90, i32 0, i32 1
  store i32 %89, i32* %91, align 4
  %92 = load %struct.inode*, %struct.inode** %4, align 8
  %93 = call i32 @mark_inode_dirty(%struct.inode* %92)
  br label %94

94:                                               ; preds = %98, %86, %39, %23
  %95 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %96 = call i32 @affs_brelse(%struct.buffer_head* %95)
  %97 = load i32, i32* %7, align 4
  ret i32 %97

98:                                               ; preds = %69, %60
  %99 = load %struct.inode*, %struct.inode** %5, align 8
  %100 = call i32 @affs_unlock_dir(%struct.inode* %99)
  %101 = load %struct.inode*, %struct.inode** %4, align 8
  %102 = call i32 @affs_unlock_link(%struct.inode* %101)
  br label %94
}

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local %struct.buffer_head* @affs_bread(%struct.super_block*, i32) #1

declare dso_local i32 @affs_lock_link(%struct.inode*) #1

declare dso_local i32 @affs_lock_dir(%struct.inode*) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local %struct.TYPE_4__* @AFFS_TAIL(%struct.super_block*, %struct.buffer_head*) #1

declare dso_local i32 @affs_empty_dir(%struct.inode*) #1

declare dso_local i32 @affs_unlock_dir(%struct.inode*) #1

declare dso_local i32 @affs_remove_hash(%struct.inode*, %struct.buffer_head*) #1

declare dso_local i32 @mark_buffer_dirty_inode(%struct.buffer_head*, %struct.inode*) #1

declare dso_local i32 @affs_remove_link(%struct.dentry*) #1

declare dso_local i32 @affs_unlock_link(%struct.inode*) #1

declare dso_local i32 @mark_inode_dirty(%struct.inode*) #1

declare dso_local i32 @affs_brelse(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
