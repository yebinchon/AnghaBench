; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/affs/extr_namei.c_affs_rename.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/affs/extr_namei.c_affs_rename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i64, %struct.super_block* }
%struct.super_block = type { i32 }
%struct.dentry = type { %struct.TYPE_5__*, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i64, i32 }
%struct.buffer_head = type { i32 }
%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [44 x i8] c"AFFS: rename(old=%u,\22%*s\22 to new=%u,\22%*s\22)\0A\00", align 1
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @affs_rename(%struct.inode* %0, %struct.dentry* %1, %struct.inode* %2, %struct.dentry* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.dentry*, align 8
  %10 = alloca %struct.super_block*, align 8
  %11 = alloca %struct.buffer_head*, align 8
  %12 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %6, align 8
  store %struct.dentry* %1, %struct.dentry** %7, align 8
  store %struct.inode* %2, %struct.inode** %8, align 8
  store %struct.dentry* %3, %struct.dentry** %9, align 8
  %13 = load %struct.inode*, %struct.inode** %6, align 8
  %14 = getelementptr inbounds %struct.inode, %struct.inode* %13, i32 0, i32 1
  %15 = load %struct.super_block*, %struct.super_block** %14, align 8
  store %struct.super_block* %15, %struct.super_block** %10, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %11, align 8
  %16 = load %struct.inode*, %struct.inode** %6, align 8
  %17 = getelementptr inbounds %struct.inode, %struct.inode* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = trunc i64 %18 to i32
  %20 = load %struct.dentry*, %struct.dentry** %7, align 8
  %21 = getelementptr inbounds %struct.dentry, %struct.dentry* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = trunc i64 %23 to i32
  %25 = load %struct.dentry*, %struct.dentry** %7, align 8
  %26 = getelementptr inbounds %struct.dentry, %struct.dentry* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.inode*, %struct.inode** %8, align 8
  %30 = getelementptr inbounds %struct.inode, %struct.inode* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = trunc i64 %31 to i32
  %33 = load %struct.dentry*, %struct.dentry** %9, align 8
  %34 = getelementptr inbounds %struct.dentry, %struct.dentry* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = trunc i64 %36 to i32
  %38 = load %struct.dentry*, %struct.dentry** %9, align 8
  %39 = getelementptr inbounds %struct.dentry, %struct.dentry* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @pr_debug(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %19, i32 %24, i32 %28, i32 %32, i32 %37, i32 %41)
  %43 = load %struct.dentry*, %struct.dentry** %9, align 8
  %44 = getelementptr inbounds %struct.dentry, %struct.dentry* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.dentry*, %struct.dentry** %9, align 8
  %48 = getelementptr inbounds %struct.dentry, %struct.dentry* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = call i32 @affs_check_name(i32 %46, i64 %50)
  store i32 %51, i32* %12, align 4
  %52 = load i32, i32* %12, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %4
  %55 = load i32, i32* %12, align 4
  store i32 %55, i32* %5, align 4
  br label %125

56:                                               ; preds = %4
  %57 = load %struct.dentry*, %struct.dentry** %9, align 8
  %58 = getelementptr inbounds %struct.dentry, %struct.dentry* %57, i32 0, i32 0
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %58, align 8
  %60 = icmp ne %struct.TYPE_5__* %59, null
  br i1 %60, label %61, label %69

61:                                               ; preds = %56
  %62 = load %struct.dentry*, %struct.dentry** %9, align 8
  %63 = call i32 @affs_remove_header(%struct.dentry* %62)
  store i32 %63, i32* %12, align 4
  %64 = load i32, i32* %12, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %61
  %67 = load i32, i32* %12, align 4
  store i32 %67, i32* %5, align 4
  br label %125

68:                                               ; preds = %61
  br label %69

69:                                               ; preds = %68, %56
  %70 = load %struct.super_block*, %struct.super_block** %10, align 8
  %71 = load %struct.dentry*, %struct.dentry** %7, align 8
  %72 = getelementptr inbounds %struct.dentry, %struct.dentry* %71, i32 0, i32 0
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call %struct.buffer_head* @affs_bread(%struct.super_block* %70, i32 %75)
  store %struct.buffer_head* %76, %struct.buffer_head** %11, align 8
  %77 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %78 = icmp ne %struct.buffer_head* %77, null
  br i1 %78, label %82, label %79

79:                                               ; preds = %69
  %80 = load i32, i32* @EIO, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %5, align 4
  br label %125

82:                                               ; preds = %69
  %83 = load %struct.inode*, %struct.inode** %6, align 8
  %84 = call i32 @affs_lock_dir(%struct.inode* %83)
  %85 = load %struct.inode*, %struct.inode** %6, align 8
  %86 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %87 = call i32 @affs_remove_hash(%struct.inode* %85, %struct.buffer_head* %86)
  store i32 %87, i32* %12, align 4
  %88 = load %struct.inode*, %struct.inode** %6, align 8
  %89 = call i32 @affs_unlock_dir(%struct.inode* %88)
  %90 = load i32, i32* %12, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %82
  br label %111

93:                                               ; preds = %82
  %94 = load %struct.super_block*, %struct.super_block** %10, align 8
  %95 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %96 = call %struct.TYPE_6__* @AFFS_TAIL(%struct.super_block* %94, %struct.buffer_head* %95)
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.dentry*, %struct.dentry** %9, align 8
  %100 = call i32 @affs_copy_name(i32 %98, %struct.dentry* %99)
  %101 = load %struct.super_block*, %struct.super_block** %10, align 8
  %102 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %103 = call i32 @affs_fix_checksum(%struct.super_block* %101, %struct.buffer_head* %102)
  %104 = load %struct.inode*, %struct.inode** %8, align 8
  %105 = call i32 @affs_lock_dir(%struct.inode* %104)
  %106 = load %struct.inode*, %struct.inode** %8, align 8
  %107 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %108 = call i32 @affs_insert_hash(%struct.inode* %106, %struct.buffer_head* %107)
  store i32 %108, i32* %12, align 4
  %109 = load %struct.inode*, %struct.inode** %8, align 8
  %110 = call i32 @affs_unlock_dir(%struct.inode* %109)
  br label %111

111:                                              ; preds = %93, %92
  %112 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %113 = load i32, i32* %12, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %117

115:                                              ; preds = %111
  %116 = load %struct.inode*, %struct.inode** %6, align 8
  br label %119

117:                                              ; preds = %111
  %118 = load %struct.inode*, %struct.inode** %8, align 8
  br label %119

119:                                              ; preds = %117, %115
  %120 = phi %struct.inode* [ %116, %115 ], [ %118, %117 ]
  %121 = call i32 @mark_buffer_dirty_inode(%struct.buffer_head* %112, %struct.inode* %120)
  %122 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %123 = call i32 @affs_brelse(%struct.buffer_head* %122)
  %124 = load i32, i32* %12, align 4
  store i32 %124, i32* %5, align 4
  br label %125

125:                                              ; preds = %119, %79, %66, %54
  %126 = load i32, i32* %5, align 4
  ret i32 %126
}

declare dso_local i32 @pr_debug(i8*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @affs_check_name(i32, i64) #1

declare dso_local i32 @affs_remove_header(%struct.dentry*) #1

declare dso_local %struct.buffer_head* @affs_bread(%struct.super_block*, i32) #1

declare dso_local i32 @affs_lock_dir(%struct.inode*) #1

declare dso_local i32 @affs_remove_hash(%struct.inode*, %struct.buffer_head*) #1

declare dso_local i32 @affs_unlock_dir(%struct.inode*) #1

declare dso_local i32 @affs_copy_name(i32, %struct.dentry*) #1

declare dso_local %struct.TYPE_6__* @AFFS_TAIL(%struct.super_block*, %struct.buffer_head*) #1

declare dso_local i32 @affs_fix_checksum(%struct.super_block*, %struct.buffer_head*) #1

declare dso_local i32 @affs_insert_hash(%struct.inode*, %struct.buffer_head*) #1

declare dso_local i32 @mark_buffer_dirty_inode(%struct.buffer_head*, %struct.inode*) #1

declare dso_local i32 @affs_brelse(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
