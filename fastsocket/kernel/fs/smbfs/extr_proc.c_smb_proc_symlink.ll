; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/smbfs/extr_proc.c_smb_proc_symlink.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/smbfs/extr_proc.c_smb_proc_symlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smb_sb_info = type { i32 }
%struct.dentry = type { i32 }
%struct.smb_request = type { i8*, i8*, i32, i8*, i32, i32, i64, i64, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@SMB_SET_FILE_UNIX_LINK = common dso_local global i32 0, align 4
@SMB_MAXPATHLEN = common dso_local global i64 0, align 8
@TRANSACT2_SETPATHINFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"for %s: result=%d, rcls=%d, err=%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @smb_proc_symlink(%struct.smb_sb_info* %0, %struct.dentry* %1, i8* %2) #0 {
  %4 = alloca %struct.smb_sb_info*, align 8
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.smb_request*, align 8
  store %struct.smb_sb_info* %0, %struct.smb_sb_info** %4, align 8
  store %struct.dentry* %1, %struct.dentry** %5, align 8
  store i8* %2, i8** %6, align 8
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
  br label %86

18:                                               ; preds = %3
  %19 = load %struct.smb_request*, %struct.smb_request** %10, align 8
  %20 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  store i8* %21, i8** %8, align 8
  %22 = load i8*, i8** %8, align 8
  %23 = load i32, i32* @SMB_SET_FILE_UNIX_LINK, align 4
  %24 = call i32 @WSET(i8* %22, i32 0, i32 %23)
  %25 = load i8*, i8** %8, align 8
  %26 = call i32 @DSET(i8* %25, i32 2, i32 0)
  %27 = load %struct.smb_sb_info*, %struct.smb_sb_info** %4, align 8
  %28 = load i8*, i8** %8, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 6
  %30 = load i64, i64* @SMB_MAXPATHLEN, align 8
  %31 = add nsw i64 %30, 1
  %32 = load %struct.dentry*, %struct.dentry** %5, align 8
  %33 = call i32 @smb_encode_path(%struct.smb_sb_info* %27, i8* %29, i64 %31, %struct.dentry* %32, i32* null)
  store i32 %33, i32* %9, align 4
  %34 = load i32, i32* %9, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %18
  br label %83

37:                                               ; preds = %18
  %38 = load i8*, i8** %8, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 6
  %40 = load i32, i32* %9, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i8, i8* %39, i64 %41
  store i8* %42, i8** %7, align 8
  %43 = load i32, i32* @TRANSACT2_SETPATHINFO, align 4
  %44 = load %struct.smb_request*, %struct.smb_request** %10, align 8
  %45 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %44, i32 0, i32 8
  store i32 %43, i32* %45, align 8
  %46 = load i8*, i8** %6, align 8
  %47 = call i64 @strlen(i8* %46)
  %48 = add nsw i64 %47, 1
  %49 = load %struct.smb_request*, %struct.smb_request** %10, align 8
  %50 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %49, i32 0, i32 7
  store i64 %48, i64* %50, align 8
  %51 = load i8*, i8** %6, align 8
  %52 = load %struct.smb_request*, %struct.smb_request** %10, align 8
  %53 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %52, i32 0, i32 1
  store i8* %51, i8** %53, align 8
  %54 = load i8*, i8** %7, align 8
  %55 = load i8*, i8** %8, align 8
  %56 = ptrtoint i8* %54 to i64
  %57 = ptrtoint i8* %55 to i64
  %58 = sub i64 %56, %57
  %59 = trunc i64 %58 to i32
  %60 = load %struct.smb_request*, %struct.smb_request** %10, align 8
  %61 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %60, i32 0, i32 2
  store i32 %59, i32* %61, align 8
  %62 = load i8*, i8** %8, align 8
  %63 = load %struct.smb_request*, %struct.smb_request** %10, align 8
  %64 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %63, i32 0, i32 3
  store i8* %62, i8** %64, align 8
  %65 = load %struct.smb_request*, %struct.smb_request** %10, align 8
  %66 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %65, i32 0, i32 6
  store i64 0, i64* %66, align 8
  %67 = load %struct.smb_request*, %struct.smb_request** %10, align 8
  %68 = call i32 @smb_add_request(%struct.smb_request* %67)
  store i32 %68, i32* %9, align 4
  %69 = load i32, i32* %9, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %37
  br label %83

72:                                               ; preds = %37
  %73 = load i8*, i8** %8, align 8
  %74 = getelementptr inbounds i8, i8* %73, i64 6
  %75 = load i32, i32* %9, align 4
  %76 = load %struct.smb_request*, %struct.smb_request** %10, align 8
  %77 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %76, i32 0, i32 5
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.smb_request*, %struct.smb_request** %10, align 8
  %80 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %79, i32 0, i32 4
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @DEBUG1(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i8* %74, i32 %75, i32 %78, i32 %81)
  store i32 0, i32* %9, align 4
  br label %83

83:                                               ; preds = %72, %71, %36
  %84 = load %struct.smb_request*, %struct.smb_request** %10, align 8
  %85 = call i32 @smb_rput(%struct.smb_request* %84)
  br label %86

86:                                               ; preds = %83, %17
  %87 = load i32, i32* %9, align 4
  ret i32 %87
}

declare dso_local %struct.smb_request* @smb_alloc_request(%struct.smb_sb_info*, i32) #1

declare dso_local i32 @WSET(i8*, i32, i32) #1

declare dso_local i32 @DSET(i8*, i32, i32) #1

declare dso_local i32 @smb_encode_path(%struct.smb_sb_info*, i8*, i64, %struct.dentry*, i32*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @smb_add_request(%struct.smb_request*) #1

declare dso_local i32 @DEBUG1(i8*, i8*, i32, i32, i32) #1

declare dso_local i32 @smb_rput(%struct.smb_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
