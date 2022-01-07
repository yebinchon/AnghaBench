; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext3/extr_xattr.c_ext3_xattr_ibody_get.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext3/extr_xattr.c_ext3_xattr_ibody_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.ext3_xattr_ibody_header = type { i32 }
%struct.ext3_xattr_entry = type { i32, i32 }
%struct.ext3_inode = type { i32 }
%struct.ext3_iloc = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@EXT3_STATE_XATTR = common dso_local global i32 0, align 4
@ENODATA = common dso_local global i32 0, align 4
@ERANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i32, i8*, i8*, i64)* @ext3_xattr_ibody_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext3_xattr_ibody_get(%struct.inode* %0, i32 %1, i8* %2, i8* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.inode*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.ext3_xattr_ibody_header*, align 8
  %13 = alloca %struct.ext3_xattr_entry*, align 8
  %14 = alloca %struct.ext3_inode*, align 8
  %15 = alloca %struct.ext3_iloc, align 4
  %16 = alloca i64, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  %19 = load %struct.inode*, %struct.inode** %7, align 8
  %20 = call %struct.TYPE_4__* @EXT3_I(%struct.inode* %19)
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @EXT3_STATE_XATTR, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %5
  %27 = load i32, i32* @ENODATA, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %6, align 4
  br label %108

29:                                               ; preds = %5
  %30 = load %struct.inode*, %struct.inode** %7, align 8
  %31 = call i32 @ext3_get_inode_loc(%struct.inode* %30, %struct.ext3_iloc* %15)
  store i32 %31, i32* %18, align 4
  %32 = load i32, i32* %18, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %29
  %35 = load i32, i32* %18, align 4
  store i32 %35, i32* %6, align 4
  br label %108

36:                                               ; preds = %29
  %37 = call %struct.ext3_inode* @ext3_raw_inode(%struct.ext3_iloc* %15)
  store %struct.ext3_inode* %37, %struct.ext3_inode** %14, align 8
  %38 = load %struct.inode*, %struct.inode** %7, align 8
  %39 = load %struct.ext3_inode*, %struct.ext3_inode** %14, align 8
  %40 = call %struct.ext3_xattr_ibody_header* @IHDR(%struct.inode* %38, %struct.ext3_inode* %39)
  store %struct.ext3_xattr_ibody_header* %40, %struct.ext3_xattr_ibody_header** %12, align 8
  %41 = load %struct.ext3_xattr_ibody_header*, %struct.ext3_xattr_ibody_header** %12, align 8
  %42 = call %struct.ext3_xattr_entry* @IFIRST(%struct.ext3_xattr_ibody_header* %41)
  store %struct.ext3_xattr_entry* %42, %struct.ext3_xattr_entry** %13, align 8
  %43 = load %struct.ext3_inode*, %struct.ext3_inode** %14, align 8
  %44 = bitcast %struct.ext3_inode* %43 to i8*
  %45 = load %struct.inode*, %struct.inode** %7, align 8
  %46 = getelementptr inbounds %struct.inode, %struct.inode* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call %struct.TYPE_3__* @EXT3_SB(i32 %47)
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr i8, i8* %44, i64 %51
  store i8* %52, i8** %17, align 8
  %53 = load %struct.ext3_xattr_entry*, %struct.ext3_xattr_entry** %13, align 8
  %54 = load i8*, i8** %17, align 8
  %55 = call i32 @ext3_xattr_check_names(%struct.ext3_xattr_entry* %53, i8* %54)
  store i32 %55, i32* %18, align 4
  %56 = load i32, i32* %18, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %36
  br label %103

59:                                               ; preds = %36
  %60 = load i32, i32* %8, align 4
  %61 = load i8*, i8** %9, align 8
  %62 = load i8*, i8** %17, align 8
  %63 = load %struct.ext3_xattr_entry*, %struct.ext3_xattr_entry** %13, align 8
  %64 = bitcast %struct.ext3_xattr_entry* %63 to i8*
  %65 = ptrtoint i8* %62 to i64
  %66 = ptrtoint i8* %64 to i64
  %67 = sub i64 %65, %66
  %68 = trunc i64 %67 to i32
  %69 = call i32 @ext3_xattr_find_entry(%struct.ext3_xattr_entry** %13, i32 %60, i8* %61, i32 %68, i32 0)
  store i32 %69, i32* %18, align 4
  %70 = load i32, i32* %18, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %59
  br label %103

73:                                               ; preds = %59
  %74 = load %struct.ext3_xattr_entry*, %struct.ext3_xattr_entry** %13, align 8
  %75 = getelementptr inbounds %struct.ext3_xattr_entry, %struct.ext3_xattr_entry* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = call i64 @le32_to_cpu(i32 %76)
  store i64 %77, i64* %16, align 8
  %78 = load i8*, i8** %10, align 8
  %79 = icmp ne i8* %78, null
  br i1 %79, label %80, label %100

80:                                               ; preds = %73
  %81 = load i32, i32* @ERANGE, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %18, align 4
  %83 = load i64, i64* %16, align 8
  %84 = load i64, i64* %11, align 8
  %85 = icmp ugt i64 %83, %84
  br i1 %85, label %86, label %87

86:                                               ; preds = %80
  br label %103

87:                                               ; preds = %80
  %88 = load i8*, i8** %10, align 8
  %89 = load %struct.ext3_xattr_ibody_header*, %struct.ext3_xattr_ibody_header** %12, align 8
  %90 = call %struct.ext3_xattr_entry* @IFIRST(%struct.ext3_xattr_ibody_header* %89)
  %91 = bitcast %struct.ext3_xattr_entry* %90 to i8*
  %92 = load %struct.ext3_xattr_entry*, %struct.ext3_xattr_entry** %13, align 8
  %93 = getelementptr inbounds %struct.ext3_xattr_entry, %struct.ext3_xattr_entry* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @le16_to_cpu(i32 %94)
  %96 = sext i32 %95 to i64
  %97 = getelementptr i8, i8* %91, i64 %96
  %98 = load i64, i64* %16, align 8
  %99 = call i32 @memcpy(i8* %88, i8* %97, i64 %98)
  br label %100

100:                                              ; preds = %87, %73
  %101 = load i64, i64* %16, align 8
  %102 = trunc i64 %101 to i32
  store i32 %102, i32* %18, align 4
  br label %103

103:                                              ; preds = %100, %86, %72, %58
  %104 = getelementptr inbounds %struct.ext3_iloc, %struct.ext3_iloc* %15, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @brelse(i32 %105)
  %107 = load i32, i32* %18, align 4
  store i32 %107, i32* %6, align 4
  br label %108

108:                                              ; preds = %103, %34, %26
  %109 = load i32, i32* %6, align 4
  ret i32 %109
}

declare dso_local %struct.TYPE_4__* @EXT3_I(%struct.inode*) #1

declare dso_local i32 @ext3_get_inode_loc(%struct.inode*, %struct.ext3_iloc*) #1

declare dso_local %struct.ext3_inode* @ext3_raw_inode(%struct.ext3_iloc*) #1

declare dso_local %struct.ext3_xattr_ibody_header* @IHDR(%struct.inode*, %struct.ext3_inode*) #1

declare dso_local %struct.ext3_xattr_entry* @IFIRST(%struct.ext3_xattr_ibody_header*) #1

declare dso_local %struct.TYPE_3__* @EXT3_SB(i32) #1

declare dso_local i32 @ext3_xattr_check_names(%struct.ext3_xattr_entry*, i8*) #1

declare dso_local i32 @ext3_xattr_find_entry(%struct.ext3_xattr_entry**, i32, i8*, i32, i32) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @brelse(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
