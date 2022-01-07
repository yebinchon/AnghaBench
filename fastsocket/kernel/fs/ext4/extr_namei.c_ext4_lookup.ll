; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_namei.c_ext4_lookup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_namei.c_ext4_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.dentry = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.nameidata = type { i32 }
%struct.ext4_dir_entry_2 = type { i32 }
%struct.buffer_head = type { i32 }

@EXT4_NAME_LEN = common dso_local global i64 0, align 8
@ENAMETOOLONG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"bad inode number: %u\00", align 1
@EIO = common dso_local global i32 0, align 4
@ESTALE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"deleted inode referenced: %u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dentry* (%struct.inode*, %struct.dentry*, %struct.nameidata*)* @ext4_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dentry* @ext4_lookup(%struct.inode* %0, %struct.dentry* %1, %struct.nameidata* %2) #0 {
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca %struct.nameidata*, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.ext4_dir_entry_2*, align 8
  %10 = alloca %struct.buffer_head*, align 8
  %11 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.dentry* %1, %struct.dentry** %6, align 8
  store %struct.nameidata* %2, %struct.nameidata** %7, align 8
  %12 = load %struct.dentry*, %struct.dentry** %6, align 8
  %13 = getelementptr inbounds %struct.dentry, %struct.dentry* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @EXT4_NAME_LEN, align 8
  %17 = icmp sgt i64 %15, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %3
  %19 = load i32, i32* @ENAMETOOLONG, align 4
  %20 = sub nsw i32 0, %19
  %21 = call %struct.dentry* @ERR_PTR(i32 %20)
  store %struct.dentry* %21, %struct.dentry** %4, align 8
  br label %84

22:                                               ; preds = %3
  %23 = load %struct.inode*, %struct.inode** %5, align 8
  %24 = load %struct.dentry*, %struct.dentry** %6, align 8
  %25 = getelementptr inbounds %struct.dentry, %struct.dentry* %24, i32 0, i32 0
  %26 = call %struct.buffer_head* @ext4_find_entry(%struct.inode* %23, %struct.TYPE_2__* %25, %struct.ext4_dir_entry_2** %9)
  store %struct.buffer_head* %26, %struct.buffer_head** %10, align 8
  store %struct.inode* null, %struct.inode** %8, align 8
  %27 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %28 = icmp ne %struct.buffer_head* %27, null
  br i1 %28, label %29, label %80

29:                                               ; preds = %22
  %30 = load %struct.ext4_dir_entry_2*, %struct.ext4_dir_entry_2** %9, align 8
  %31 = getelementptr inbounds %struct.ext4_dir_entry_2, %struct.ext4_dir_entry_2* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @le32_to_cpu(i32 %32)
  store i32 %33, i32* %11, align 4
  %34 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %35 = call i32 @brelse(%struct.buffer_head* %34)
  %36 = load %struct.inode*, %struct.inode** %5, align 8
  %37 = getelementptr inbounds %struct.inode, %struct.inode* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %11, align 4
  %40 = call i32 @ext4_valid_inum(i32 %38, i32 %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %51, label %42

42:                                               ; preds = %29
  %43 = load %struct.inode*, %struct.inode** %5, align 8
  %44 = getelementptr inbounds %struct.inode, %struct.inode* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %11, align 4
  %47 = call i32 @ext4_error(i32 %45, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %46)
  %48 = load i32, i32* @EIO, align 4
  %49 = sub nsw i32 0, %48
  %50 = call %struct.dentry* @ERR_PTR(i32 %49)
  store %struct.dentry* %50, %struct.dentry** %4, align 8
  br label %84

51:                                               ; preds = %29
  %52 = load %struct.inode*, %struct.inode** %5, align 8
  %53 = getelementptr inbounds %struct.inode, %struct.inode* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %11, align 4
  %56 = call %struct.inode* @ext4_iget(i32 %54, i32 %55)
  store %struct.inode* %56, %struct.inode** %8, align 8
  %57 = load %struct.inode*, %struct.inode** %8, align 8
  %58 = call i32 @IS_ERR(%struct.inode* %57)
  %59 = call i64 @unlikely(i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %79

61:                                               ; preds = %51
  %62 = load %struct.inode*, %struct.inode** %8, align 8
  %63 = call i32 @PTR_ERR(%struct.inode* %62)
  %64 = load i32, i32* @ESTALE, align 4
  %65 = sub nsw i32 0, %64
  %66 = icmp eq i32 %63, %65
  br i1 %66, label %67, label %76

67:                                               ; preds = %61
  %68 = load %struct.inode*, %struct.inode** %5, align 8
  %69 = getelementptr inbounds %struct.inode, %struct.inode* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* %11, align 4
  %72 = call i32 @ext4_error(i32 %70, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %71)
  %73 = load i32, i32* @EIO, align 4
  %74 = sub nsw i32 0, %73
  %75 = call %struct.dentry* @ERR_PTR(i32 %74)
  store %struct.dentry* %75, %struct.dentry** %4, align 8
  br label %84

76:                                               ; preds = %61
  %77 = load %struct.inode*, %struct.inode** %8, align 8
  %78 = call %struct.dentry* @ERR_CAST(%struct.inode* %77)
  store %struct.dentry* %78, %struct.dentry** %4, align 8
  br label %84

79:                                               ; preds = %51
  br label %80

80:                                               ; preds = %79, %22
  %81 = load %struct.inode*, %struct.inode** %8, align 8
  %82 = load %struct.dentry*, %struct.dentry** %6, align 8
  %83 = call %struct.dentry* @d_splice_alias(%struct.inode* %81, %struct.dentry* %82)
  store %struct.dentry* %83, %struct.dentry** %4, align 8
  br label %84

84:                                               ; preds = %80, %76, %67, %42, %18
  %85 = load %struct.dentry*, %struct.dentry** %4, align 8
  ret %struct.dentry* %85
}

declare dso_local %struct.dentry* @ERR_PTR(i32) #1

declare dso_local %struct.buffer_head* @ext4_find_entry(%struct.inode*, %struct.TYPE_2__*, %struct.ext4_dir_entry_2**) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @ext4_valid_inum(i32, i32) #1

declare dso_local i32 @ext4_error(i32, i8*, i32) #1

declare dso_local %struct.inode* @ext4_iget(i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @IS_ERR(%struct.inode*) #1

declare dso_local i32 @PTR_ERR(%struct.inode*) #1

declare dso_local %struct.dentry* @ERR_CAST(%struct.inode*) #1

declare dso_local %struct.dentry* @d_splice_alias(%struct.inode*, %struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
