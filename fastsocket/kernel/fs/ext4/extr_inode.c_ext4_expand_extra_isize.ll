; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_inode.c_ext4_expand_extra_isize.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_inode.c_ext4_expand_extra_isize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.ext4_iloc = type { i32 }
%struct.ext4_inode = type { i32 }
%struct.ext4_xattr_ibody_header = type { i64 }
%struct.ext4_xattr_entry = type { i32 }
%struct.TYPE_2__ = type { i32 }

@EXT4_STATE_XATTR = common dso_local global i32 0, align 4
@EXT4_XATTR_MAGIC = common dso_local global i32 0, align 4
@EXT4_GOOD_OLD_INODE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i32, i32, i32*)* @ext4_expand_extra_isize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext4_expand_extra_isize(%struct.inode* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ext4_iloc, align 4
  %7 = alloca %struct.inode*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.ext4_inode*, align 8
  %11 = alloca %struct.ext4_xattr_ibody_header*, align 8
  %12 = alloca %struct.ext4_xattr_entry*, align 8
  %13 = getelementptr inbounds %struct.ext4_iloc, %struct.ext4_iloc* %6, i32 0, i32 0
  store i32 %2, i32* %13, align 4
  store %struct.inode* %0, %struct.inode** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %14 = load %struct.inode*, %struct.inode** %7, align 8
  %15 = call %struct.TYPE_2__* @EXT4_I(%struct.inode* %14)
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %8, align 4
  %19 = icmp uge i32 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %57

21:                                               ; preds = %4
  %22 = call %struct.ext4_inode* @ext4_raw_inode(%struct.ext4_iloc* %6)
  store %struct.ext4_inode* %22, %struct.ext4_inode** %10, align 8
  %23 = load %struct.inode*, %struct.inode** %7, align 8
  %24 = load %struct.ext4_inode*, %struct.ext4_inode** %10, align 8
  %25 = call %struct.ext4_xattr_ibody_header* @IHDR(%struct.inode* %23, %struct.ext4_inode* %24)
  store %struct.ext4_xattr_ibody_header* %25, %struct.ext4_xattr_ibody_header** %11, align 8
  %26 = load %struct.ext4_xattr_ibody_header*, %struct.ext4_xattr_ibody_header** %11, align 8
  %27 = call %struct.ext4_xattr_entry* @IFIRST(%struct.ext4_xattr_ibody_header* %26)
  store %struct.ext4_xattr_entry* %27, %struct.ext4_xattr_entry** %12, align 8
  %28 = load %struct.inode*, %struct.inode** %7, align 8
  %29 = load i32, i32* @EXT4_STATE_XATTR, align 4
  %30 = call i32 @ext4_test_inode_state(%struct.inode* %28, i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %21
  %33 = load %struct.ext4_xattr_ibody_header*, %struct.ext4_xattr_ibody_header** %11, align 8
  %34 = getelementptr inbounds %struct.ext4_xattr_ibody_header, %struct.ext4_xattr_ibody_header* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i32, i32* @EXT4_XATTR_MAGIC, align 4
  %37 = call i64 @cpu_to_le32(i32 %36)
  %38 = icmp ne i64 %35, %37
  br i1 %38, label %39, label %51

39:                                               ; preds = %32, %21
  %40 = load %struct.ext4_inode*, %struct.ext4_inode** %10, align 8
  %41 = bitcast %struct.ext4_inode* %40 to i8*
  %42 = load i32, i32* @EXT4_GOOD_OLD_INODE_SIZE, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr i8, i8* %41, i64 %43
  %45 = load i32, i32* %8, align 4
  %46 = call i32 @memset(i8* %44, i32 0, i32 %45)
  %47 = load i32, i32* %8, align 4
  %48 = load %struct.inode*, %struct.inode** %7, align 8
  %49 = call %struct.TYPE_2__* @EXT4_I(%struct.inode* %48)
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  store i32 %47, i32* %50, align 4
  store i32 0, i32* %5, align 4
  br label %57

51:                                               ; preds = %32
  %52 = load %struct.inode*, %struct.inode** %7, align 8
  %53 = load i32, i32* %8, align 4
  %54 = load %struct.ext4_inode*, %struct.ext4_inode** %10, align 8
  %55 = load i32*, i32** %9, align 8
  %56 = call i32 @ext4_expand_extra_isize_ea(%struct.inode* %52, i32 %53, %struct.ext4_inode* %54, i32* %55)
  store i32 %56, i32* %5, align 4
  br label %57

57:                                               ; preds = %51, %39, %20
  %58 = load i32, i32* %5, align 4
  ret i32 %58
}

declare dso_local %struct.TYPE_2__* @EXT4_I(%struct.inode*) #1

declare dso_local %struct.ext4_inode* @ext4_raw_inode(%struct.ext4_iloc*) #1

declare dso_local %struct.ext4_xattr_ibody_header* @IHDR(%struct.inode*, %struct.ext4_inode*) #1

declare dso_local %struct.ext4_xattr_entry* @IFIRST(%struct.ext4_xattr_ibody_header*) #1

declare dso_local i32 @ext4_test_inode_state(%struct.inode*, i32) #1

declare dso_local i64 @cpu_to_le32(i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @ext4_expand_extra_isize_ea(%struct.inode*, i32, %struct.ext4_inode*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
