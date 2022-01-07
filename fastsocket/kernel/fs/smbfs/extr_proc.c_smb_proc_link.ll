; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/smbfs/extr_proc.c_smb_proc_link.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/smbfs/extr_proc.c_smb_proc_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smb_sb_info = type { i32 }
%struct.dentry = type { i32 }
%struct.smb_request = type { i8*, i8*, i32, i8*, i32, i32, i64, i32, i8* }

@ENOMEM = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@SMB_SET_FILE_UNIX_HLINK = common dso_local global i32 0, align 4
@SMB_MAXPATHLEN = common dso_local global i64 0, align 8
@TRANSACT2_SETPATHINFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"for %s: result=%d, rcls=%d, err=%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @smb_proc_link(%struct.smb_sb_info* %0, %struct.dentry* %1, %struct.dentry* %2) #0 {
  %4 = alloca %struct.smb_sb_info*, align 8
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.smb_request*, align 8
  store %struct.smb_sb_info* %0, %struct.smb_sb_info** %4, align 8
  store %struct.dentry* %1, %struct.dentry** %5, align 8
  store %struct.dentry* %2, %struct.dentry** %6, align 8
  %11 = load i32, i32* @ENOMEM, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %9, align 4
  %13 = load %struct.smb_sb_info*, %struct.smb_sb_info** %4, align 8
  %14 = load i32, i32* @PAGE_SIZE, align 4
  %15 = call %struct.smb_request* @smb_alloc_request(%struct.smb_sb_info* %13, i32 %14)
  store %struct.smb_request* %15, %struct.smb_request** %10, align 8
  %16 = icmp ne %struct.smb_request* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %3
  br label %90

18:                                               ; preds = %3
  %19 = load %struct.smb_request*, %struct.smb_request** %10, align 8
  %20 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  store i8* %21, i8** %8, align 8
  %22 = load i8*, i8** %8, align 8
  %23 = load i32, i32* @SMB_SET_FILE_UNIX_HLINK, align 4
  %24 = call i32 @WSET(i8* %22, i32 0, i32 %23)
  %25 = load i8*, i8** %8, align 8
  %26 = call i32 @DSET(i8* %25, i32 2, i32 0)
  %27 = load %struct.smb_sb_info*, %struct.smb_sb_info** %4, align 8
  %28 = load i8*, i8** %8, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 6
  %30 = load i64, i64* @SMB_MAXPATHLEN, align 8
  %31 = add nsw i64 %30, 1
  %32 = load %struct.dentry*, %struct.dentry** %6, align 8
  %33 = call i8* @smb_encode_path(%struct.smb_sb_info* %27, i8* %29, i64 %31, %struct.dentry* %32, i32* null)
  %34 = ptrtoint i8* %33 to i32
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* %9, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %18
  br label %87

38:                                               ; preds = %18
  %39 = load i8*, i8** %8, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 6
  %41 = load i32, i32* %9, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i8, i8* %40, i64 %42
  store i8* %43, i8** %7, align 8
  %44 = load i8*, i8** %7, align 8
  %45 = load %struct.smb_request*, %struct.smb_request** %10, align 8
  %46 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %45, i32 0, i32 1
  store i8* %44, i8** %46, align 8
  %47 = load %struct.smb_sb_info*, %struct.smb_sb_info** %4, align 8
  %48 = load i8*, i8** %7, align 8
  %49 = load i64, i64* @SMB_MAXPATHLEN, align 8
  %50 = add nsw i64 %49, 1
  %51 = load %struct.dentry*, %struct.dentry** %5, align 8
  %52 = call i8* @smb_encode_path(%struct.smb_sb_info* %47, i8* %48, i64 %50, %struct.dentry* %51, i32* null)
  %53 = load %struct.smb_request*, %struct.smb_request** %10, align 8
  %54 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %53, i32 0, i32 8
  store i8* %52, i8** %54, align 8
  %55 = load i32, i32* @TRANSACT2_SETPATHINFO, align 4
  %56 = load %struct.smb_request*, %struct.smb_request** %10, align 8
  %57 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %56, i32 0, i32 7
  store i32 %55, i32* %57, align 8
  %58 = load i8*, i8** %7, align 8
  %59 = load i8*, i8** %8, align 8
  %60 = ptrtoint i8* %58 to i64
  %61 = ptrtoint i8* %59 to i64
  %62 = sub i64 %60, %61
  %63 = trunc i64 %62 to i32
  %64 = load %struct.smb_request*, %struct.smb_request** %10, align 8
  %65 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %64, i32 0, i32 2
  store i32 %63, i32* %65, align 8
  %66 = load i8*, i8** %8, align 8
  %67 = load %struct.smb_request*, %struct.smb_request** %10, align 8
  %68 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %67, i32 0, i32 3
  store i8* %66, i8** %68, align 8
  %69 = load %struct.smb_request*, %struct.smb_request** %10, align 8
  %70 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %69, i32 0, i32 6
  store i64 0, i64* %70, align 8
  %71 = load %struct.smb_request*, %struct.smb_request** %10, align 8
  %72 = call i32 @smb_add_request(%struct.smb_request* %71)
  store i32 %72, i32* %9, align 4
  %73 = load i32, i32* %9, align 4
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %38
  br label %87

76:                                               ; preds = %38
  %77 = load i8*, i8** %8, align 8
  %78 = getelementptr inbounds i8, i8* %77, i64 6
  %79 = load i32, i32* %9, align 4
  %80 = load %struct.smb_request*, %struct.smb_request** %10, align 8
  %81 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %80, i32 0, i32 5
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.smb_request*, %struct.smb_request** %10, align 8
  %84 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %83, i32 0, i32 4
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @DEBUG1(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i8* %78, i32 %79, i32 %82, i32 %85)
  store i32 0, i32* %9, align 4
  br label %87

87:                                               ; preds = %76, %75, %37
  %88 = load %struct.smb_request*, %struct.smb_request** %10, align 8
  %89 = call i32 @smb_rput(%struct.smb_request* %88)
  br label %90

90:                                               ; preds = %87, %17
  %91 = load i32, i32* %9, align 4
  ret i32 %91
}

declare dso_local %struct.smb_request* @smb_alloc_request(%struct.smb_sb_info*, i32) #1

declare dso_local i32 @WSET(i8*, i32, i32) #1

declare dso_local i32 @DSET(i8*, i32, i32) #1

declare dso_local i8* @smb_encode_path(%struct.smb_sb_info*, i8*, i64, %struct.dentry*, i32*) #1

declare dso_local i32 @smb_add_request(%struct.smb_request*) #1

declare dso_local i32 @DEBUG1(i8*, i8*, i32, i32, i32) #1

declare dso_local i32 @smb_rput(%struct.smb_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
