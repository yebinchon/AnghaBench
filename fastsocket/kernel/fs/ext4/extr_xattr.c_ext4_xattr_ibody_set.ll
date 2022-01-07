; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_xattr.c_ext4_xattr_ibody_set.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_xattr.c_ext4_xattr_ibody_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.ext4_xattr_info = type { i32 }
%struct.ext4_xattr_ibody_find = type { i32, %struct.ext4_xattr_search }
%struct.ext4_xattr_search = type { i32 }
%struct.ext4_xattr_ibody_header = type { i8* }
%struct.TYPE_2__ = type { i64 }

@ENOSPC = common dso_local global i32 0, align 4
@EXT4_XATTR_MAGIC = common dso_local global i32 0, align 4
@EXT4_STATE_XATTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.inode*, %struct.ext4_xattr_info*, %struct.ext4_xattr_ibody_find*)* @ext4_xattr_ibody_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext4_xattr_ibody_set(i32* %0, %struct.inode* %1, %struct.ext4_xattr_info* %2, %struct.ext4_xattr_ibody_find* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.ext4_xattr_info*, align 8
  %9 = alloca %struct.ext4_xattr_ibody_find*, align 8
  %10 = alloca %struct.ext4_xattr_ibody_header*, align 8
  %11 = alloca %struct.ext4_xattr_search*, align 8
  %12 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store %struct.inode* %1, %struct.inode** %7, align 8
  store %struct.ext4_xattr_info* %2, %struct.ext4_xattr_info** %8, align 8
  store %struct.ext4_xattr_ibody_find* %3, %struct.ext4_xattr_ibody_find** %9, align 8
  %13 = load %struct.ext4_xattr_ibody_find*, %struct.ext4_xattr_ibody_find** %9, align 8
  %14 = getelementptr inbounds %struct.ext4_xattr_ibody_find, %struct.ext4_xattr_ibody_find* %13, i32 0, i32 1
  store %struct.ext4_xattr_search* %14, %struct.ext4_xattr_search** %11, align 8
  %15 = load %struct.inode*, %struct.inode** %7, align 8
  %16 = call %struct.TYPE_2__* @EXT4_I(%struct.inode* %15)
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %4
  %21 = load i32, i32* @ENOSPC, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %5, align 4
  br label %58

23:                                               ; preds = %4
  %24 = load %struct.ext4_xattr_info*, %struct.ext4_xattr_info** %8, align 8
  %25 = load %struct.ext4_xattr_search*, %struct.ext4_xattr_search** %11, align 8
  %26 = call i32 @ext4_xattr_set_entry(%struct.ext4_xattr_info* %24, %struct.ext4_xattr_search* %25)
  store i32 %26, i32* %12, align 4
  %27 = load i32, i32* %12, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %23
  %30 = load i32, i32* %12, align 4
  store i32 %30, i32* %5, align 4
  br label %58

31:                                               ; preds = %23
  %32 = load %struct.inode*, %struct.inode** %7, align 8
  %33 = load %struct.ext4_xattr_ibody_find*, %struct.ext4_xattr_ibody_find** %9, align 8
  %34 = getelementptr inbounds %struct.ext4_xattr_ibody_find, %struct.ext4_xattr_ibody_find* %33, i32 0, i32 0
  %35 = call i32 @ext4_raw_inode(i32* %34)
  %36 = call %struct.ext4_xattr_ibody_header* @IHDR(%struct.inode* %32, i32 %35)
  store %struct.ext4_xattr_ibody_header* %36, %struct.ext4_xattr_ibody_header** %10, align 8
  %37 = load %struct.ext4_xattr_search*, %struct.ext4_xattr_search** %11, align 8
  %38 = getelementptr inbounds %struct.ext4_xattr_search, %struct.ext4_xattr_search* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @IS_LAST_ENTRY(i32 %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %50, label %42

42:                                               ; preds = %31
  %43 = load i32, i32* @EXT4_XATTR_MAGIC, align 4
  %44 = call i8* @cpu_to_le32(i32 %43)
  %45 = load %struct.ext4_xattr_ibody_header*, %struct.ext4_xattr_ibody_header** %10, align 8
  %46 = getelementptr inbounds %struct.ext4_xattr_ibody_header, %struct.ext4_xattr_ibody_header* %45, i32 0, i32 0
  store i8* %44, i8** %46, align 8
  %47 = load %struct.inode*, %struct.inode** %7, align 8
  %48 = load i32, i32* @EXT4_STATE_XATTR, align 4
  %49 = call i32 @ext4_set_inode_state(%struct.inode* %47, i32 %48)
  br label %57

50:                                               ; preds = %31
  %51 = call i8* @cpu_to_le32(i32 0)
  %52 = load %struct.ext4_xattr_ibody_header*, %struct.ext4_xattr_ibody_header** %10, align 8
  %53 = getelementptr inbounds %struct.ext4_xattr_ibody_header, %struct.ext4_xattr_ibody_header* %52, i32 0, i32 0
  store i8* %51, i8** %53, align 8
  %54 = load %struct.inode*, %struct.inode** %7, align 8
  %55 = load i32, i32* @EXT4_STATE_XATTR, align 4
  %56 = call i32 @ext4_clear_inode_state(%struct.inode* %54, i32 %55)
  br label %57

57:                                               ; preds = %50, %42
  store i32 0, i32* %5, align 4
  br label %58

58:                                               ; preds = %57, %29, %20
  %59 = load i32, i32* %5, align 4
  ret i32 %59
}

declare dso_local %struct.TYPE_2__* @EXT4_I(%struct.inode*) #1

declare dso_local i32 @ext4_xattr_set_entry(%struct.ext4_xattr_info*, %struct.ext4_xattr_search*) #1

declare dso_local %struct.ext4_xattr_ibody_header* @IHDR(%struct.inode*, i32) #1

declare dso_local i32 @ext4_raw_inode(i32*) #1

declare dso_local i32 @IS_LAST_ENTRY(i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @ext4_set_inode_state(%struct.inode*, i32) #1

declare dso_local i32 @ext4_clear_inode_state(%struct.inode*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
