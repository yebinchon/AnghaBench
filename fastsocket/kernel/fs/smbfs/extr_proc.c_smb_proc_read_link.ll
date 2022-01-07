; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/smbfs/extr_proc.c_smb_proc_read_link.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/smbfs/extr_proc.c_smb_proc_read_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smb_sb_info = type { i32 }
%struct.dentry = type { i32 }
%struct.smb_request = type { i8*, i32, i32, i8*, i32*, i32, i32, i64, i32 }

@.str = private unnamed_addr constant [19 x i8] c"readlink of %s/%s\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@SMB_QUERY_FILE_UNIX_LINK = common dso_local global i32 0, align 4
@SMB_MAXPATHLEN = common dso_local global i64 0, align 8
@TRANSACT2_QPATHINFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"for %s: result=%d, rcls=%d, err=%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @smb_proc_read_link(%struct.smb_sb_info* %0, %struct.dentry* %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.smb_sb_info*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.smb_request*, align 8
  store %struct.smb_sb_info* %0, %struct.smb_sb_info** %5, align 8
  store %struct.dentry* %1, %struct.dentry** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load %struct.dentry*, %struct.dentry** %6, align 8
  %14 = call i32 @DENTRY_PATH(%struct.dentry* %13)
  %15 = sext i32 %14 to i64
  %16 = inttoptr i64 %15 to i8*
  %17 = call i32 (i8*, i8*, ...) @DEBUG1(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8* %16)
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %11, align 4
  %20 = load %struct.smb_sb_info*, %struct.smb_sb_info** %5, align 8
  %21 = load i32, i32* @PAGE_SIZE, align 4
  %22 = call %struct.smb_request* @smb_alloc_request(%struct.smb_sb_info* %20, i32 %21)
  store %struct.smb_request* %22, %struct.smb_request** %12, align 8
  %23 = icmp ne %struct.smb_request* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %4
  br label %106

25:                                               ; preds = %4
  %26 = load %struct.smb_request*, %struct.smb_request** %12, align 8
  %27 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  store i8* %28, i8** %10, align 8
  %29 = load i8*, i8** %10, align 8
  %30 = load i32, i32* @SMB_QUERY_FILE_UNIX_LINK, align 4
  %31 = call i32 @WSET(i8* %29, i32 0, i32 %30)
  %32 = load i8*, i8** %10, align 8
  %33 = call i32 @DSET(i8* %32, i32 2, i32 0)
  %34 = load %struct.smb_sb_info*, %struct.smb_sb_info** %5, align 8
  %35 = load i8*, i8** %10, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 6
  %37 = load i64, i64* @SMB_MAXPATHLEN, align 8
  %38 = add nsw i64 %37, 1
  %39 = load %struct.dentry*, %struct.dentry** %6, align 8
  %40 = call i32 @smb_encode_path(%struct.smb_sb_info* %34, i8* %36, i64 %38, %struct.dentry* %39, i32* null)
  store i32 %40, i32* %11, align 4
  %41 = load i32, i32* %11, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %25
  br label %103

44:                                               ; preds = %25
  %45 = load i8*, i8** %10, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 6
  %47 = load i32, i32* %11, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i8, i8* %46, i64 %48
  store i8* %49, i8** %9, align 8
  %50 = load i32, i32* @TRANSACT2_QPATHINFO, align 4
  %51 = load %struct.smb_request*, %struct.smb_request** %12, align 8
  %52 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %51, i32 0, i32 8
  store i32 %50, i32* %52, align 8
  %53 = load %struct.smb_request*, %struct.smb_request** %12, align 8
  %54 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %53, i32 0, i32 1
  store i32 0, i32* %54, align 8
  %55 = load %struct.smb_request*, %struct.smb_request** %12, align 8
  %56 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %55, i32 0, i32 4
  store i32* null, i32** %56, align 8
  %57 = load i8*, i8** %9, align 8
  %58 = load i8*, i8** %10, align 8
  %59 = ptrtoint i8* %57 to i64
  %60 = ptrtoint i8* %58 to i64
  %61 = sub i64 %59, %60
  %62 = trunc i64 %61 to i32
  %63 = load %struct.smb_request*, %struct.smb_request** %12, align 8
  %64 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %63, i32 0, i32 2
  store i32 %62, i32* %64, align 4
  %65 = load i8*, i8** %10, align 8
  %66 = load %struct.smb_request*, %struct.smb_request** %12, align 8
  %67 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %66, i32 0, i32 3
  store i8* %65, i8** %67, align 8
  %68 = load %struct.smb_request*, %struct.smb_request** %12, align 8
  %69 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %68, i32 0, i32 7
  store i64 0, i64* %69, align 8
  %70 = load %struct.smb_request*, %struct.smb_request** %12, align 8
  %71 = call i32 @smb_add_request(%struct.smb_request* %70)
  store i32 %71, i32* %11, align 4
  %72 = load i32, i32* %11, align 4
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %44
  br label %103

75:                                               ; preds = %44
  %76 = load i8*, i8** %10, align 8
  %77 = getelementptr inbounds i8, i8* %76, i64 6
  %78 = load i32, i32* %11, align 4
  %79 = load %struct.smb_request*, %struct.smb_request** %12, align 8
  %80 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %79, i32 0, i32 6
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.smb_request*, %struct.smb_request** %12, align 8
  %83 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %82, i32 0, i32 5
  %84 = load i32, i32* %83, align 8
  %85 = call i32 (i8*, i8*, ...) @DEBUG1(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i8* %77, i32 %78, i32 %81, i32 %84)
  %86 = load i32, i32* %8, align 4
  store i32 %86, i32* %11, align 4
  %87 = load %struct.smb_request*, %struct.smb_request** %12, align 8
  %88 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* %8, align 4
  %91 = icmp slt i32 %89, %90
  br i1 %91, label %92, label %96

92:                                               ; preds = %75
  %93 = load %struct.smb_request*, %struct.smb_request** %12, align 8
  %94 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  store i32 %95, i32* %11, align 4
  br label %96

96:                                               ; preds = %92, %75
  %97 = load i8*, i8** %7, align 8
  %98 = load %struct.smb_request*, %struct.smb_request** %12, align 8
  %99 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %98, i32 0, i32 4
  %100 = load i32*, i32** %99, align 8
  %101 = load i32, i32* %11, align 4
  %102 = call i32 @strncpy(i8* %97, i32* %100, i32 %101)
  br label %103

103:                                              ; preds = %96, %74, %43
  %104 = load %struct.smb_request*, %struct.smb_request** %12, align 8
  %105 = call i32 @smb_rput(%struct.smb_request* %104)
  br label %106

106:                                              ; preds = %103, %24
  %107 = load i32, i32* %11, align 4
  ret i32 %107
}

declare dso_local i32 @DEBUG1(i8*, i8*, ...) #1

declare dso_local i32 @DENTRY_PATH(%struct.dentry*) #1

declare dso_local %struct.smb_request* @smb_alloc_request(%struct.smb_sb_info*, i32) #1

declare dso_local i32 @WSET(i8*, i32, i32) #1

declare dso_local i32 @DSET(i8*, i32, i32) #1

declare dso_local i32 @smb_encode_path(%struct.smb_sb_info*, i8*, i64, %struct.dentry*, i32*) #1

declare dso_local i32 @smb_add_request(%struct.smb_request*) #1

declare dso_local i32 @strncpy(i8*, i32*, i32) #1

declare dso_local i32 @smb_rput(%struct.smb_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
