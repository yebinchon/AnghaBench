; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_xattr.c_ext4_xattr_ibody_find.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_xattr.c_ext4_xattr_ibody_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.ext4_xattr_info = type { i32, i32 }
%struct.ext4_xattr_ibody_find = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, i64, i8*, i64, i64 }
%struct.ext4_xattr_ibody_header = type { i32 }
%struct.ext4_inode = type { i32 }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i32 }

@EXT4_STATE_XATTR = common dso_local global i32 0, align 4
@ENODATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.ext4_xattr_info*, %struct.ext4_xattr_ibody_find*)* @ext4_xattr_ibody_find to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext4_xattr_ibody_find(%struct.inode* %0, %struct.ext4_xattr_info* %1, %struct.ext4_xattr_ibody_find* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.ext4_xattr_info*, align 8
  %7 = alloca %struct.ext4_xattr_ibody_find*, align 8
  %8 = alloca %struct.ext4_xattr_ibody_header*, align 8
  %9 = alloca %struct.ext4_inode*, align 8
  %10 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.ext4_xattr_info* %1, %struct.ext4_xattr_info** %6, align 8
  store %struct.ext4_xattr_ibody_find* %2, %struct.ext4_xattr_ibody_find** %7, align 8
  %11 = load %struct.inode*, %struct.inode** %5, align 8
  %12 = call %struct.TYPE_6__* @EXT4_I(%struct.inode* %11)
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %107

17:                                               ; preds = %3
  %18 = load %struct.ext4_xattr_ibody_find*, %struct.ext4_xattr_ibody_find** %7, align 8
  %19 = getelementptr inbounds %struct.ext4_xattr_ibody_find, %struct.ext4_xattr_ibody_find* %18, i32 0, i32 1
  %20 = call %struct.ext4_inode* @ext4_raw_inode(i32* %19)
  store %struct.ext4_inode* %20, %struct.ext4_inode** %9, align 8
  %21 = load %struct.inode*, %struct.inode** %5, align 8
  %22 = load %struct.ext4_inode*, %struct.ext4_inode** %9, align 8
  %23 = call %struct.ext4_xattr_ibody_header* @IHDR(%struct.inode* %21, %struct.ext4_inode* %22)
  store %struct.ext4_xattr_ibody_header* %23, %struct.ext4_xattr_ibody_header** %8, align 8
  %24 = load %struct.ext4_xattr_ibody_header*, %struct.ext4_xattr_ibody_header** %8, align 8
  %25 = call i64 @IFIRST(%struct.ext4_xattr_ibody_header* %24)
  %26 = load %struct.ext4_xattr_ibody_find*, %struct.ext4_xattr_ibody_find** %7, align 8
  %27 = getelementptr inbounds %struct.ext4_xattr_ibody_find, %struct.ext4_xattr_ibody_find* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 4
  store i64 %25, i64* %28, align 8
  %29 = load %struct.ext4_xattr_ibody_find*, %struct.ext4_xattr_ibody_find** %7, align 8
  %30 = getelementptr inbounds %struct.ext4_xattr_ibody_find, %struct.ext4_xattr_ibody_find* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  store i64 %25, i64* %31, align 8
  %32 = load %struct.ext4_xattr_ibody_find*, %struct.ext4_xattr_ibody_find** %7, align 8
  %33 = getelementptr inbounds %struct.ext4_xattr_ibody_find, %struct.ext4_xattr_ibody_find* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 4
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.ext4_xattr_ibody_find*, %struct.ext4_xattr_ibody_find** %7, align 8
  %37 = getelementptr inbounds %struct.ext4_xattr_ibody_find, %struct.ext4_xattr_ibody_find* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 3
  store i64 %35, i64* %38, align 8
  %39 = load %struct.ext4_inode*, %struct.ext4_inode** %9, align 8
  %40 = bitcast %struct.ext4_inode* %39 to i8*
  %41 = load %struct.inode*, %struct.inode** %5, align 8
  %42 = getelementptr inbounds %struct.inode, %struct.inode* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call %struct.TYPE_5__* @EXT4_SB(i32 %43)
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr i8, i8* %40, i64 %47
  %49 = load %struct.ext4_xattr_ibody_find*, %struct.ext4_xattr_ibody_find** %7, align 8
  %50 = getelementptr inbounds %struct.ext4_xattr_ibody_find, %struct.ext4_xattr_ibody_find* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 2
  store i8* %48, i8** %51, align 8
  %52 = load %struct.inode*, %struct.inode** %5, align 8
  %53 = load i32, i32* @EXT4_STATE_XATTR, align 4
  %54 = call i64 @ext4_test_inode_state(%struct.inode* %52, i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %106

56:                                               ; preds = %17
  %57 = load %struct.ext4_xattr_ibody_header*, %struct.ext4_xattr_ibody_header** %8, align 8
  %58 = call i64 @IFIRST(%struct.ext4_xattr_ibody_header* %57)
  %59 = load %struct.ext4_xattr_ibody_find*, %struct.ext4_xattr_ibody_find** %7, align 8
  %60 = getelementptr inbounds %struct.ext4_xattr_ibody_find, %struct.ext4_xattr_ibody_find* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 2
  %62 = load i8*, i8** %61, align 8
  %63 = call i32 @ext4_xattr_check_names(i64 %58, i8* %62)
  store i32 %63, i32* %10, align 4
  %64 = load i32, i32* %10, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %56
  %67 = load i32, i32* %10, align 4
  store i32 %67, i32* %4, align 4
  br label %107

68:                                               ; preds = %56
  %69 = load %struct.ext4_xattr_ibody_find*, %struct.ext4_xattr_ibody_find** %7, align 8
  %70 = getelementptr inbounds %struct.ext4_xattr_ibody_find, %struct.ext4_xattr_ibody_find* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 3
  %72 = load %struct.ext4_xattr_info*, %struct.ext4_xattr_info** %6, align 8
  %73 = getelementptr inbounds %struct.ext4_xattr_info, %struct.ext4_xattr_info* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.ext4_xattr_info*, %struct.ext4_xattr_info** %6, align 8
  %76 = getelementptr inbounds %struct.ext4_xattr_info, %struct.ext4_xattr_info* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.ext4_xattr_ibody_find*, %struct.ext4_xattr_ibody_find** %7, align 8
  %79 = getelementptr inbounds %struct.ext4_xattr_ibody_find, %struct.ext4_xattr_ibody_find* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 2
  %81 = load i8*, i8** %80, align 8
  %82 = load %struct.ext4_xattr_ibody_find*, %struct.ext4_xattr_ibody_find** %7, align 8
  %83 = getelementptr inbounds %struct.ext4_xattr_ibody_find, %struct.ext4_xattr_ibody_find* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = inttoptr i64 %85 to i8*
  %87 = ptrtoint i8* %81 to i64
  %88 = ptrtoint i8* %86 to i64
  %89 = sub i64 %87, %88
  %90 = inttoptr i64 %89 to i8*
  %91 = call i32 @ext4_xattr_find_entry(i64* %71, i32 %74, i32 %77, i8* %90, i32 0)
  store i32 %91, i32* %10, align 4
  %92 = load i32, i32* %10, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %101

94:                                               ; preds = %68
  %95 = load i32, i32* %10, align 4
  %96 = load i32, i32* @ENODATA, align 4
  %97 = sub nsw i32 0, %96
  %98 = icmp ne i32 %95, %97
  br i1 %98, label %99, label %101

99:                                               ; preds = %94
  %100 = load i32, i32* %10, align 4
  store i32 %100, i32* %4, align 4
  br label %107

101:                                              ; preds = %94, %68
  %102 = load i32, i32* %10, align 4
  %103 = load %struct.ext4_xattr_ibody_find*, %struct.ext4_xattr_ibody_find** %7, align 8
  %104 = getelementptr inbounds %struct.ext4_xattr_ibody_find, %struct.ext4_xattr_ibody_find* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 0
  store i32 %102, i32* %105, align 8
  br label %106

106:                                              ; preds = %101, %17
  store i32 0, i32* %4, align 4
  br label %107

107:                                              ; preds = %106, %99, %66, %16
  %108 = load i32, i32* %4, align 4
  ret i32 %108
}

declare dso_local %struct.TYPE_6__* @EXT4_I(%struct.inode*) #1

declare dso_local %struct.ext4_inode* @ext4_raw_inode(i32*) #1

declare dso_local %struct.ext4_xattr_ibody_header* @IHDR(%struct.inode*, %struct.ext4_inode*) #1

declare dso_local i64 @IFIRST(%struct.ext4_xattr_ibody_header*) #1

declare dso_local %struct.TYPE_5__* @EXT4_SB(i32) #1

declare dso_local i64 @ext4_test_inode_state(%struct.inode*, i32) #1

declare dso_local i32 @ext4_xattr_check_names(i64, i8*) #1

declare dso_local i32 @ext4_xattr_find_entry(i64*, i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
