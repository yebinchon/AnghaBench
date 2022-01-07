; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_super.c_validate_inode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_super.c_validate_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i64 }
%struct.inode = type { i64, i32, i32 }
%struct.ubifs_inode = type { i64, i64, i64, i64, i64 }

@.str = private unnamed_addr constant [26 x i8] c"inode is too large (%lld)\00", align 1
@UBIFS_COMPR_TYPES_CNT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [28 x i8] c"unknown compression type %d\00", align 1
@XATTR_LIST_MAX = common dso_local global i64 0, align 8
@UBIFS_MAX_INO_DATA = common dso_local global i64 0, align 8
@S_IFMT = common dso_local global i32 0, align 4
@S_IFREG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [60 x i8] c"inode %lu uses '%s' compression, but it was not compiled in\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ubifs_info*, %struct.inode*)* @validate_inode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @validate_inode(%struct.ubifs_info* %0, %struct.inode* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ubifs_info*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ubifs_inode*, align 8
  store %struct.ubifs_info* %0, %struct.ubifs_info** %4, align 8
  store %struct.inode* %1, %struct.inode** %5, align 8
  %8 = load %struct.inode*, %struct.inode** %5, align 8
  %9 = call %struct.ubifs_inode* @ubifs_inode(%struct.inode* %8)
  store %struct.ubifs_inode* %9, %struct.ubifs_inode** %7, align 8
  %10 = load %struct.inode*, %struct.inode** %5, align 8
  %11 = getelementptr inbounds %struct.inode, %struct.inode* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %14 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp sgt i64 %12, %15
  br i1 %16, label %17, label %22

17:                                               ; preds = %2
  %18 = load %struct.inode*, %struct.inode** %5, align 8
  %19 = getelementptr inbounds %struct.inode, %struct.inode* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = call i32 @ubifs_err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i64 %20)
  store i32 1, i32* %3, align 4
  br label %95

22:                                               ; preds = %2
  %23 = load %struct.ubifs_inode*, %struct.ubifs_inode** %7, align 8
  %24 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp slt i64 %25, 0
  br i1 %26, label %33, label %27

27:                                               ; preds = %22
  %28 = load %struct.ubifs_inode*, %struct.ubifs_inode** %7, align 8
  %29 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @UBIFS_COMPR_TYPES_CNT, align 8
  %32 = icmp sge i64 %30, %31
  br i1 %32, label %33, label %38

33:                                               ; preds = %27, %22
  %34 = load %struct.ubifs_inode*, %struct.ubifs_inode** %7, align 8
  %35 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = call i32 @ubifs_err(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i64 %36)
  store i32 2, i32* %3, align 4
  br label %95

38:                                               ; preds = %27
  %39 = load %struct.ubifs_inode*, %struct.ubifs_inode** %7, align 8
  %40 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.ubifs_inode*, %struct.ubifs_inode** %7, align 8
  %43 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = add nsw i64 %41, %44
  %46 = load i64, i64* @XATTR_LIST_MAX, align 8
  %47 = icmp sgt i64 %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %38
  store i32 3, i32* %3, align 4
  br label %95

49:                                               ; preds = %38
  %50 = load %struct.ubifs_inode*, %struct.ubifs_inode** %7, align 8
  %51 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %50, i32 0, i32 3
  %52 = load i64, i64* %51, align 8
  %53 = icmp slt i64 %52, 0
  br i1 %53, label %60, label %54

54:                                               ; preds = %49
  %55 = load %struct.ubifs_inode*, %struct.ubifs_inode** %7, align 8
  %56 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %55, i32 0, i32 3
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @UBIFS_MAX_INO_DATA, align 8
  %59 = icmp sgt i64 %57, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %54, %49
  store i32 4, i32* %3, align 4
  br label %95

61:                                               ; preds = %54
  %62 = load %struct.ubifs_inode*, %struct.ubifs_inode** %7, align 8
  %63 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %62, i32 0, i32 4
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %75

66:                                               ; preds = %61
  %67 = load %struct.inode*, %struct.inode** %5, align 8
  %68 = getelementptr inbounds %struct.inode, %struct.inode* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @S_IFMT, align 4
  %71 = and i32 %69, %70
  %72 = load i32, i32* @S_IFREG, align 4
  %73 = icmp ne i32 %71, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %66
  store i32 5, i32* %3, align 4
  br label %95

75:                                               ; preds = %66, %61
  %76 = load %struct.ubifs_inode*, %struct.ubifs_inode** %7, align 8
  %77 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = call i32 @ubifs_compr_present(i64 %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %90, label %81

81:                                               ; preds = %75
  %82 = load %struct.inode*, %struct.inode** %5, align 8
  %83 = getelementptr inbounds %struct.inode, %struct.inode* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.ubifs_inode*, %struct.ubifs_inode** %7, align 8
  %86 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = call i32 @ubifs_compr_name(i64 %87)
  %89 = call i32 @ubifs_warn(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.2, i64 0, i64 0), i32 %84, i32 %88)
  br label %90

90:                                               ; preds = %81, %75
  %91 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %92 = load %struct.inode*, %struct.inode** %5, align 8
  %93 = call i32 @dbg_check_dir_size(%struct.ubifs_info* %91, %struct.inode* %92)
  store i32 %93, i32* %6, align 4
  %94 = load i32, i32* %6, align 4
  store i32 %94, i32* %3, align 4
  br label %95

95:                                               ; preds = %90, %74, %60, %48, %33, %17
  %96 = load i32, i32* %3, align 4
  ret i32 %96
}

declare dso_local %struct.ubifs_inode* @ubifs_inode(%struct.inode*) #1

declare dso_local i32 @ubifs_err(i8*, i64) #1

declare dso_local i32 @ubifs_compr_present(i64) #1

declare dso_local i32 @ubifs_warn(i8*, i32, i32) #1

declare dso_local i32 @ubifs_compr_name(i64) #1

declare dso_local i32 @dbg_check_dir_size(%struct.ubifs_info*, %struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
