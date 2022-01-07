; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/smbfs/extr_proc.c_smb_proc_dskattr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/smbfs/extr_proc.c_smb_proc_dskattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.kstatfs = type { i64, i64, i64, i32 }
%struct.smb_sb_info = type { i32 }
%struct.smb_request = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@SMBdskattr = common dso_local global i32 0, align 4
@SMB_ST_BLKSHIFT = common dso_local global i64 0, align 8
@SMB_ST_BLKSIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @smb_proc_dskattr(%struct.dentry* %0, %struct.kstatfs* %1) #0 {
  %3 = alloca %struct.dentry*, align 8
  %4 = alloca %struct.kstatfs*, align 8
  %5 = alloca %struct.smb_sb_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.smb_request*, align 8
  store %struct.dentry* %0, %struct.dentry** %3, align 8
  store %struct.kstatfs* %1, %struct.kstatfs** %4, align 8
  %10 = load %struct.dentry*, %struct.dentry** %3, align 8
  %11 = getelementptr inbounds %struct.dentry, %struct.dentry* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.smb_sb_info* @SMB_SB(i32 %12)
  store %struct.smb_sb_info* %13, %struct.smb_sb_info** %5, align 8
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %6, align 4
  %16 = load %struct.smb_sb_info*, %struct.smb_sb_info** %5, align 8
  %17 = call %struct.smb_request* @smb_alloc_request(%struct.smb_sb_info* %16, i32 0)
  store %struct.smb_request* %17, %struct.smb_request** %9, align 8
  %18 = icmp ne %struct.smb_request* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %2
  br label %61

20:                                               ; preds = %2
  %21 = load %struct.smb_request*, %struct.smb_request** %9, align 8
  %22 = load i32, i32* @SMBdskattr, align 4
  %23 = call i32 @smb_setup_header(%struct.smb_request* %21, i32 %22, i32 0, i32 0)
  %24 = load %struct.smb_request*, %struct.smb_request** %9, align 8
  %25 = load i32, i32* @SMBdskattr, align 4
  %26 = call i32 @smb_request_ok(%struct.smb_request* %24, i32 %25, i32 5, i32 0)
  store i32 %26, i32* %6, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %20
  br label %58

29:                                               ; preds = %20
  %30 = load %struct.smb_request*, %struct.smb_request** %9, align 8
  %31 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i8* @SMB_VWV(i32 %32)
  store i8* %33, i8** %7, align 8
  %34 = load i8*, i8** %7, align 8
  %35 = call i64 @WVAL(i8* %34, i32 2)
  %36 = load i8*, i8** %7, align 8
  %37 = call i64 @WVAL(i8* %36, i32 4)
  %38 = mul nsw i64 %35, %37
  %39 = load i64, i64* @SMB_ST_BLKSHIFT, align 8
  %40 = ashr i64 %38, %39
  store i64 %40, i64* %8, align 8
  %41 = load i8*, i8** %7, align 8
  %42 = call i64 @WVAL(i8* %41, i32 0)
  %43 = load i64, i64* %8, align 8
  %44 = mul nsw i64 %42, %43
  %45 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %46 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %45, i32 0, i32 0
  store i64 %44, i64* %46, align 8
  %47 = load i32, i32* @SMB_ST_BLKSIZE, align 4
  %48 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %49 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %48, i32 0, i32 3
  store i32 %47, i32* %49, align 8
  %50 = load i8*, i8** %7, align 8
  %51 = call i64 @WVAL(i8* %50, i32 6)
  %52 = load i64, i64* %8, align 8
  %53 = mul nsw i64 %51, %52
  %54 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %55 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %54, i32 0, i32 2
  store i64 %53, i64* %55, align 8
  %56 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %57 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %56, i32 0, i32 1
  store i64 %53, i64* %57, align 8
  store i32 0, i32* %6, align 4
  br label %58

58:                                               ; preds = %29, %28
  %59 = load %struct.smb_request*, %struct.smb_request** %9, align 8
  %60 = call i32 @smb_rput(%struct.smb_request* %59)
  br label %61

61:                                               ; preds = %58, %19
  %62 = load i32, i32* %6, align 4
  ret i32 %62
}

declare dso_local %struct.smb_sb_info* @SMB_SB(i32) #1

declare dso_local %struct.smb_request* @smb_alloc_request(%struct.smb_sb_info*, i32) #1

declare dso_local i32 @smb_setup_header(%struct.smb_request*, i32, i32, i32) #1

declare dso_local i32 @smb_request_ok(%struct.smb_request*, i32, i32, i32) #1

declare dso_local i8* @SMB_VWV(i32) #1

declare dso_local i64 @WVAL(i8*, i32) #1

declare dso_local i32 @smb_rput(%struct.smb_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
