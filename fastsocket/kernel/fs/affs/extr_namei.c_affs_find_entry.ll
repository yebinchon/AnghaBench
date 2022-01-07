; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/affs/extr_namei.c_affs_find_entry.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/affs/extr_namei.c_affs_find_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buffer_head = type { i32 }
%struct.inode = type { i32, %struct.super_block* }
%struct.super_block = type { i32 }
%struct.dentry = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i32 }
%struct.TYPE_6__ = type { i32* }
%struct.TYPE_5__ = type { i32, i32 }

@.str = private unnamed_addr constant [26 x i8] c"AFFS: find_entry(\22%.*s\22)\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.buffer_head* (%struct.inode*, %struct.dentry*)* @affs_find_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.buffer_head* @affs_find_entry(%struct.inode* %0, %struct.dentry* %1) #0 {
  %3 = alloca %struct.buffer_head*, align 8
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.super_block*, align 8
  %7 = alloca %struct.buffer_head*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.dentry* %1, %struct.dentry** %5, align 8
  %10 = load %struct.inode*, %struct.inode** %4, align 8
  %11 = getelementptr inbounds %struct.inode, %struct.inode* %10, i32 0, i32 1
  %12 = load %struct.super_block*, %struct.super_block** %11, align 8
  store %struct.super_block* %12, %struct.super_block** %6, align 8
  %13 = load %struct.super_block*, %struct.super_block** %6, align 8
  %14 = call i32 @affs_get_toupper(%struct.super_block* %13)
  store i32 %14, i32* %8, align 4
  %15 = load %struct.dentry*, %struct.dentry** %5, align 8
  %16 = getelementptr inbounds %struct.dentry, %struct.dentry* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = trunc i64 %18 to i32
  %20 = load %struct.dentry*, %struct.dentry** %5, align 8
  %21 = getelementptr inbounds %struct.dentry, %struct.dentry* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @pr_debug(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %19, i32 %23)
  %25 = load %struct.super_block*, %struct.super_block** %6, align 8
  %26 = load %struct.inode*, %struct.inode** %4, align 8
  %27 = getelementptr inbounds %struct.inode, %struct.inode* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call %struct.buffer_head* @affs_bread(%struct.super_block* %25, i32 %28)
  store %struct.buffer_head* %29, %struct.buffer_head** %7, align 8
  %30 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %31 = icmp ne %struct.buffer_head* %30, null
  br i1 %31, label %36, label %32

32:                                               ; preds = %2
  %33 = load i32, i32* @EIO, align 4
  %34 = sub nsw i32 0, %33
  %35 = call %struct.buffer_head* @ERR_PTR(i32 %34)
  store %struct.buffer_head* %35, %struct.buffer_head** %3, align 8
  br label %89

36:                                               ; preds = %2
  %37 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %38 = call %struct.TYPE_6__* @AFFS_HEAD(%struct.buffer_head* %37)
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = load %struct.super_block*, %struct.super_block** %6, align 8
  %42 = load %struct.dentry*, %struct.dentry** %5, align 8
  %43 = getelementptr inbounds %struct.dentry, %struct.dentry* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.dentry*, %struct.dentry** %5, align 8
  %47 = getelementptr inbounds %struct.dentry, %struct.dentry* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = call i64 @affs_hash_name(%struct.super_block* %41, i32 %45, i64 %49)
  %51 = getelementptr inbounds i32, i32* %40, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @be32_to_cpu(i32 %52)
  store i32 %53, i32* %9, align 4
  br label %54

54:                                               ; preds = %82, %36
  %55 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %56 = call i32 @affs_brelse(%struct.buffer_head* %55)
  %57 = load i32, i32* %9, align 4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %54
  store %struct.buffer_head* null, %struct.buffer_head** %3, align 8
  br label %89

60:                                               ; preds = %54
  %61 = load %struct.super_block*, %struct.super_block** %6, align 8
  %62 = load i32, i32* %9, align 4
  %63 = call %struct.buffer_head* @affs_bread(%struct.super_block* %61, i32 %62)
  store %struct.buffer_head* %63, %struct.buffer_head** %7, align 8
  %64 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %65 = icmp ne %struct.buffer_head* %64, null
  br i1 %65, label %70, label %66

66:                                               ; preds = %60
  %67 = load i32, i32* @EIO, align 4
  %68 = sub nsw i32 0, %67
  %69 = call %struct.buffer_head* @ERR_PTR(i32 %68)
  store %struct.buffer_head* %69, %struct.buffer_head** %3, align 8
  br label %89

70:                                               ; preds = %60
  %71 = load %struct.dentry*, %struct.dentry** %5, align 8
  %72 = load %struct.super_block*, %struct.super_block** %6, align 8
  %73 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %74 = call %struct.TYPE_5__* @AFFS_TAIL(%struct.super_block* %72, %struct.buffer_head* %73)
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* %8, align 4
  %78 = call i64 @affs_match(%struct.dentry* %71, i32 %76, i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %70
  %81 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  store %struct.buffer_head* %81, %struct.buffer_head** %3, align 8
  br label %89

82:                                               ; preds = %70
  %83 = load %struct.super_block*, %struct.super_block** %6, align 8
  %84 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %85 = call %struct.TYPE_5__* @AFFS_TAIL(%struct.super_block* %83, %struct.buffer_head* %84)
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @be32_to_cpu(i32 %87)
  store i32 %88, i32* %9, align 4
  br label %54

89:                                               ; preds = %80, %66, %59, %32
  %90 = load %struct.buffer_head*, %struct.buffer_head** %3, align 8
  ret %struct.buffer_head* %90
}

declare dso_local i32 @affs_get_toupper(%struct.super_block*) #1

declare dso_local i32 @pr_debug(i8*, i32, i32) #1

declare dso_local %struct.buffer_head* @affs_bread(%struct.super_block*, i32) #1

declare dso_local %struct.buffer_head* @ERR_PTR(i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local %struct.TYPE_6__* @AFFS_HEAD(%struct.buffer_head*) #1

declare dso_local i64 @affs_hash_name(%struct.super_block*, i32, i64) #1

declare dso_local i32 @affs_brelse(%struct.buffer_head*) #1

declare dso_local i64 @affs_match(%struct.dentry*, i32, i32) #1

declare dso_local %struct.TYPE_5__* @AFFS_TAIL(%struct.super_block*, %struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
