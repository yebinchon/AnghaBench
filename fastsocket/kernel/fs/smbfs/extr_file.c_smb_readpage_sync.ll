; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/smbfs/extr_file.c_smb_readpage_sync.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/smbfs/extr_file.c_smb_readpage_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.page = type { i64 }
%struct.smb_sb_info = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.TYPE_4__*, i32, i32, i8*)* }

@PAGE_CACHE_SHIFT = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"file %s/%s, count=%d@%Ld, rsize=%d\0A\00", align 1
@SMB_O_RDONLY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dentry*, %struct.page*)* @smb_readpage_sync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smb_readpage_sync(%struct.dentry* %0, %struct.page* %1) #0 {
  %3 = alloca %struct.dentry*, align 8
  %4 = alloca %struct.page*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.smb_sb_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.dentry* %0, %struct.dentry** %3, align 8
  store %struct.page* %1, %struct.page** %4, align 8
  %11 = load %struct.page*, %struct.page** %4, align 8
  %12 = call i8* @kmap(%struct.page* %11)
  store i8* %12, i8** %5, align 8
  %13 = load %struct.page*, %struct.page** %4, align 8
  %14 = getelementptr inbounds %struct.page, %struct.page* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = trunc i64 %15 to i32
  %17 = load i32, i32* @PAGE_CACHE_SHIFT, align 4
  %18 = shl i32 %16, %17
  store i32 %18, i32* %6, align 4
  %19 = load %struct.dentry*, %struct.dentry** %3, align 8
  %20 = call %struct.smb_sb_info* @server_from_dentry(%struct.dentry* %19)
  store %struct.smb_sb_info* %20, %struct.smb_sb_info** %7, align 8
  %21 = load %struct.smb_sb_info*, %struct.smb_sb_info** %7, align 8
  %22 = call i32 @smb_get_rsize(%struct.smb_sb_info* %21)
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* @PAGE_SIZE, align 4
  store i32 %23, i32* %9, align 4
  %24 = load %struct.dentry*, %struct.dentry** %3, align 8
  %25 = call i32 @DENTRY_PATH(%struct.dentry* %24)
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* %8, align 4
  %29 = call i32 @VERBOSE(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %25, i32 %26, i32 %27, i32 %28)
  %30 = load %struct.dentry*, %struct.dentry** %3, align 8
  %31 = load i32, i32* @SMB_O_RDONLY, align 4
  %32 = call i32 @smb_open(%struct.dentry* %30, i32 %31)
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* %10, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %2
  br label %96

36:                                               ; preds = %2
  br label %37

37:                                               ; preds = %85, %36
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* %8, align 4
  %40 = icmp ult i32 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %37
  %42 = load i32, i32* %9, align 4
  store i32 %42, i32* %8, align 4
  br label %43

43:                                               ; preds = %41, %37
  %44 = load %struct.smb_sb_info*, %struct.smb_sb_info** %7, align 8
  %45 = getelementptr inbounds %struct.smb_sb_info, %struct.smb_sb_info* %44, i32 0, i32 0
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i32 (%struct.TYPE_4__*, i32, i32, i8*)*, i32 (%struct.TYPE_4__*, i32, i32, i8*)** %47, align 8
  %49 = load %struct.dentry*, %struct.dentry** %3, align 8
  %50 = getelementptr inbounds %struct.dentry, %struct.dentry* %49, i32 0, i32 0
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = load i32, i32* %6, align 4
  %53 = load i32, i32* %8, align 4
  %54 = load i8*, i8** %5, align 8
  %55 = call i32 %48(%struct.TYPE_4__* %51, i32 %52, i32 %53, i8* %54)
  store i32 %55, i32* %10, align 4
  %56 = load i32, i32* %10, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %43
  br label %96

59:                                               ; preds = %43
  %60 = load i32, i32* %10, align 4
  %61 = load i32, i32* %9, align 4
  %62 = sub nsw i32 %61, %60
  store i32 %62, i32* %9, align 4
  %63 = load i32, i32* %10, align 4
  %64 = load i32, i32* %6, align 4
  %65 = add nsw i32 %64, %63
  store i32 %65, i32* %6, align 4
  %66 = load i32, i32* %10, align 4
  %67 = load i8*, i8** %5, align 8
  %68 = sext i32 %66 to i64
  %69 = getelementptr inbounds i8, i8* %67, i64 %68
  store i8* %69, i8** %5, align 8
  %70 = load %struct.dentry*, %struct.dentry** %3, align 8
  %71 = getelementptr inbounds %struct.dentry, %struct.dentry* %70, i32 0, i32 0
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @current_fs_time(i32 %74)
  %76 = load %struct.dentry*, %struct.dentry** %3, align 8
  %77 = getelementptr inbounds %struct.dentry, %struct.dentry* %76, i32 0, i32 0
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 1
  store i32 %75, i32* %79, align 4
  %80 = load i32, i32* %10, align 4
  %81 = load i32, i32* %8, align 4
  %82 = icmp ult i32 %80, %81
  br i1 %82, label %83, label %84

83:                                               ; preds = %59
  br label %88

84:                                               ; preds = %59
  br label %85

85:                                               ; preds = %84
  %86 = load i32, i32* %9, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %37, label %88

88:                                               ; preds = %85, %83
  %89 = load i8*, i8** %5, align 8
  %90 = load i32, i32* %9, align 4
  %91 = call i32 @memset(i8* %89, i32 0, i32 %90)
  %92 = load %struct.page*, %struct.page** %4, align 8
  %93 = call i32 @flush_dcache_page(%struct.page* %92)
  %94 = load %struct.page*, %struct.page** %4, align 8
  %95 = call i32 @SetPageUptodate(%struct.page* %94)
  store i32 0, i32* %10, align 4
  br label %96

96:                                               ; preds = %88, %58, %35
  %97 = load %struct.page*, %struct.page** %4, align 8
  %98 = call i32 @kunmap(%struct.page* %97)
  %99 = load %struct.page*, %struct.page** %4, align 8
  %100 = call i32 @unlock_page(%struct.page* %99)
  %101 = load i32, i32* %10, align 4
  ret i32 %101
}

declare dso_local i8* @kmap(%struct.page*) #1

declare dso_local %struct.smb_sb_info* @server_from_dentry(%struct.dentry*) #1

declare dso_local i32 @smb_get_rsize(%struct.smb_sb_info*) #1

declare dso_local i32 @VERBOSE(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @DENTRY_PATH(%struct.dentry*) #1

declare dso_local i32 @smb_open(%struct.dentry*, i32) #1

declare dso_local i32 @current_fs_time(i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @flush_dcache_page(%struct.page*) #1

declare dso_local i32 @SetPageUptodate(%struct.page*) #1

declare dso_local i32 @kunmap(%struct.page*) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
