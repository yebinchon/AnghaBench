; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_xattr.c_ext4_xattr_ibody_list.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_xattr.c_ext4_xattr_ibody_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.ext4_xattr_ibody_header = type { i32 }
%struct.ext4_inode = type { i32 }
%struct.ext4_iloc = type { i32 }
%struct.TYPE_2__ = type { i32 }

@EXT4_STATE_XATTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i8*, i64)* @ext4_xattr_ibody_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext4_xattr_ibody_list(%struct.inode* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.ext4_xattr_ibody_header*, align 8
  %9 = alloca %struct.ext4_inode*, align 8
  %10 = alloca %struct.ext4_iloc, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %13 = load %struct.inode*, %struct.inode** %5, align 8
  %14 = load i32, i32* @EXT4_STATE_XATTR, align 4
  %15 = call i32 @ext4_test_inode_state(%struct.inode* %13, i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %59

18:                                               ; preds = %3
  %19 = load %struct.inode*, %struct.inode** %5, align 8
  %20 = call i32 @ext4_get_inode_loc(%struct.inode* %19, %struct.ext4_iloc* %10)
  store i32 %20, i32* %12, align 4
  %21 = load i32, i32* %12, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %18
  %24 = load i32, i32* %12, align 4
  store i32 %24, i32* %4, align 4
  br label %59

25:                                               ; preds = %18
  %26 = call %struct.ext4_inode* @ext4_raw_inode(%struct.ext4_iloc* %10)
  store %struct.ext4_inode* %26, %struct.ext4_inode** %9, align 8
  %27 = load %struct.inode*, %struct.inode** %5, align 8
  %28 = load %struct.ext4_inode*, %struct.ext4_inode** %9, align 8
  %29 = call %struct.ext4_xattr_ibody_header* @IHDR(%struct.inode* %27, %struct.ext4_inode* %28)
  store %struct.ext4_xattr_ibody_header* %29, %struct.ext4_xattr_ibody_header** %8, align 8
  %30 = load %struct.ext4_inode*, %struct.ext4_inode** %9, align 8
  %31 = bitcast %struct.ext4_inode* %30 to i8*
  %32 = load %struct.inode*, %struct.inode** %5, align 8
  %33 = getelementptr inbounds %struct.inode, %struct.inode* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call %struct.TYPE_2__* @EXT4_SB(i32 %34)
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr i8, i8* %31, i64 %38
  store i8* %39, i8** %11, align 8
  %40 = load %struct.ext4_xattr_ibody_header*, %struct.ext4_xattr_ibody_header** %8, align 8
  %41 = call i32 @IFIRST(%struct.ext4_xattr_ibody_header* %40)
  %42 = load i8*, i8** %11, align 8
  %43 = call i32 @ext4_xattr_check_names(i32 %41, i8* %42)
  store i32 %43, i32* %12, align 4
  %44 = load i32, i32* %12, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %25
  br label %54

47:                                               ; preds = %25
  %48 = load %struct.inode*, %struct.inode** %5, align 8
  %49 = load %struct.ext4_xattr_ibody_header*, %struct.ext4_xattr_ibody_header** %8, align 8
  %50 = call i32 @IFIRST(%struct.ext4_xattr_ibody_header* %49)
  %51 = load i8*, i8** %6, align 8
  %52 = load i64, i64* %7, align 8
  %53 = call i32 @ext4_xattr_list_entries(%struct.inode* %48, i32 %50, i8* %51, i64 %52)
  store i32 %53, i32* %12, align 4
  br label %54

54:                                               ; preds = %47, %46
  %55 = getelementptr inbounds %struct.ext4_iloc, %struct.ext4_iloc* %10, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @brelse(i32 %56)
  %58 = load i32, i32* %12, align 4
  store i32 %58, i32* %4, align 4
  br label %59

59:                                               ; preds = %54, %23, %17
  %60 = load i32, i32* %4, align 4
  ret i32 %60
}

declare dso_local i32 @ext4_test_inode_state(%struct.inode*, i32) #1

declare dso_local i32 @ext4_get_inode_loc(%struct.inode*, %struct.ext4_iloc*) #1

declare dso_local %struct.ext4_inode* @ext4_raw_inode(%struct.ext4_iloc*) #1

declare dso_local %struct.ext4_xattr_ibody_header* @IHDR(%struct.inode*, %struct.ext4_inode*) #1

declare dso_local %struct.TYPE_2__* @EXT4_SB(i32) #1

declare dso_local i32 @ext4_xattr_check_names(i32, i8*) #1

declare dso_local i32 @IFIRST(%struct.ext4_xattr_ibody_header*) #1

declare dso_local i32 @ext4_xattr_list_entries(%struct.inode*, i32, i8*, i64) #1

declare dso_local i32 @brelse(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
