; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/smbfs/extr_file.c_smb_writepage_sync.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/smbfs/extr_file.c_smb_writepage_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i64, i32, i32, i32, i32 }
%struct.page = type { i64 }
%struct.smb_sb_info = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.inode*, i64, i32, i8*)* }
%struct.TYPE_4__ = type { i32, i32 }

@PAGE_CACHE_SHIFT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [49 x i8] c"file ino=%ld, fileid=%d, count=%d@%Ld, wsize=%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"failed write, wsize=%d, write_ret=%d\0A\00", align 1
@SMB_F_LOCALWRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.page*, i64, i32)* @smb_writepage_sync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smb_writepage_sync(%struct.inode* %0, %struct.page* %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.page*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.smb_sb_info*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.page* %1, %struct.page** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %15 = load %struct.page*, %struct.page** %6, align 8
  %16 = call i8* @kmap(%struct.page* %15)
  %17 = load i64, i64* %7, align 8
  %18 = getelementptr inbounds i8, i8* %16, i64 %17
  store i8* %18, i8** %10, align 8
  %19 = load %struct.inode*, %struct.inode** %5, align 8
  %20 = call %struct.smb_sb_info* @server_from_inode(%struct.inode* %19)
  store %struct.smb_sb_info* %20, %struct.smb_sb_info** %11, align 8
  %21 = load %struct.smb_sb_info*, %struct.smb_sb_info** %11, align 8
  %22 = call i32 @smb_get_wsize(%struct.smb_sb_info* %21)
  store i32 %22, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %23 = load %struct.page*, %struct.page** %6, align 8
  %24 = getelementptr inbounds %struct.page, %struct.page* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @PAGE_CACHE_SHIFT, align 8
  %27 = shl i64 %25, %26
  %28 = load i64, i64* %7, align 8
  %29 = add i64 %27, %28
  store i64 %29, i64* %9, align 8
  %30 = load %struct.inode*, %struct.inode** %5, align 8
  %31 = getelementptr inbounds %struct.inode, %struct.inode* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.inode*, %struct.inode** %5, align 8
  %34 = call %struct.TYPE_4__* @SMB_I(%struct.inode* %33)
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %8, align 4
  %38 = load i64, i64* %9, align 8
  %39 = load i32, i32* %12, align 4
  %40 = call i32 @VERBOSE(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %32, i32 %36, i32 %37, i64 %38, i32 %39)
  br label %41

41:                                               ; preds = %101, %4
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* %12, align 4
  %44 = icmp ult i32 %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %41
  %46 = load i32, i32* %8, align 4
  store i32 %46, i32* %12, align 4
  br label %47

47:                                               ; preds = %45, %41
  %48 = load %struct.smb_sb_info*, %struct.smb_sb_info** %11, align 8
  %49 = getelementptr inbounds %struct.smb_sb_info, %struct.smb_sb_info* %48, i32 0, i32 0
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i32 (%struct.inode*, i64, i32, i8*)*, i32 (%struct.inode*, i64, i32, i8*)** %51, align 8
  %53 = load %struct.inode*, %struct.inode** %5, align 8
  %54 = load i64, i64* %9, align 8
  %55 = load i32, i32* %12, align 4
  %56 = load i8*, i8** %10, align 8
  %57 = call i32 %52(%struct.inode* %53, i64 %54, i32 %55, i8* %56)
  store i32 %57, i32* %14, align 4
  %58 = load i32, i32* %14, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %47
  %61 = load i32, i32* %12, align 4
  %62 = load i32, i32* %14, align 4
  %63 = call i32 @PARANOIA(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %61, i32 %62)
  %64 = load i32, i32* %14, align 4
  store i32 %64, i32* %13, align 4
  br label %104

65:                                               ; preds = %47
  %66 = load i32, i32* %12, align 4
  %67 = load i8*, i8** %10, align 8
  %68 = zext i32 %66 to i64
  %69 = getelementptr inbounds i8, i8* %67, i64 %68
  store i8* %69, i8** %10, align 8
  %70 = load i32, i32* %12, align 4
  %71 = zext i32 %70 to i64
  %72 = load i64, i64* %9, align 8
  %73 = add i64 %72, %71
  store i64 %73, i64* %9, align 8
  %74 = load i32, i32* %12, align 4
  %75 = load i32, i32* %8, align 4
  %76 = sub i32 %75, %74
  store i32 %76, i32* %8, align 4
  %77 = load %struct.inode*, %struct.inode** %5, align 8
  %78 = getelementptr inbounds %struct.inode, %struct.inode* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @current_fs_time(i32 %79)
  %81 = load %struct.inode*, %struct.inode** %5, align 8
  %82 = getelementptr inbounds %struct.inode, %struct.inode* %81, i32 0, i32 2
  store i32 %80, i32* %82, align 4
  %83 = load %struct.inode*, %struct.inode** %5, align 8
  %84 = getelementptr inbounds %struct.inode, %struct.inode* %83, i32 0, i32 3
  store i32 %80, i32* %84, align 8
  %85 = load i32, i32* @SMB_F_LOCALWRITE, align 4
  %86 = load %struct.inode*, %struct.inode** %5, align 8
  %87 = call %struct.TYPE_4__* @SMB_I(%struct.inode* %86)
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = or i32 %89, %85
  store i32 %90, i32* %88, align 4
  %91 = load i64, i64* %9, align 8
  %92 = load %struct.inode*, %struct.inode** %5, align 8
  %93 = getelementptr inbounds %struct.inode, %struct.inode* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = icmp ugt i64 %91, %94
  br i1 %95, label %96, label %100

96:                                               ; preds = %65
  %97 = load i64, i64* %9, align 8
  %98 = load %struct.inode*, %struct.inode** %5, align 8
  %99 = getelementptr inbounds %struct.inode, %struct.inode* %98, i32 0, i32 0
  store i64 %97, i64* %99, align 8
  br label %100

100:                                              ; preds = %96, %65
  br label %101

101:                                              ; preds = %100
  %102 = load i32, i32* %8, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %41, label %104

104:                                              ; preds = %101, %60
  %105 = load %struct.page*, %struct.page** %6, align 8
  %106 = call i32 @kunmap(%struct.page* %105)
  %107 = load i32, i32* %13, align 4
  ret i32 %107
}

declare dso_local i8* @kmap(%struct.page*) #1

declare dso_local %struct.smb_sb_info* @server_from_inode(%struct.inode*) #1

declare dso_local i32 @smb_get_wsize(%struct.smb_sb_info*) #1

declare dso_local i32 @VERBOSE(i8*, i32, i32, i32, i64, i32) #1

declare dso_local %struct.TYPE_4__* @SMB_I(%struct.inode*) #1

declare dso_local i32 @PARANOIA(i8*, i32, i32) #1

declare dso_local i32 @current_fs_time(i32) #1

declare dso_local i32 @kunmap(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
