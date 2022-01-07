; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/smbfs/extr_proc.c_smb_proc_getattr_trans2.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/smbfs/extr_proc.c_smb_proc_getattr_trans2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smb_sb_info = type { i32 }
%struct.dentry = type { i32 }
%struct.smb_request = type { i8*, i32, i32, i8*, i32, i32, i64, i32*, i32 }

@SMB_MAXPATHLEN = common dso_local global i64 0, align 8
@TRANSACT2_QPATHINFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"for %s: result=%d, rcls=%d, err=%d\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"not enough data for %s, len=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smb_sb_info*, %struct.dentry*, %struct.smb_request*, i32)* @smb_proc_getattr_trans2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smb_proc_getattr_trans2(%struct.smb_sb_info* %0, %struct.dentry* %1, %struct.smb_request* %2, i32 %3) #0 {
  %5 = alloca %struct.smb_sb_info*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca %struct.smb_request*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store %struct.smb_sb_info* %0, %struct.smb_sb_info** %5, align 8
  store %struct.dentry* %1, %struct.dentry** %6, align 8
  store %struct.smb_request* %2, %struct.smb_request** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load %struct.smb_request*, %struct.smb_request** %7, align 8
  %13 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %12, i32 0, i32 0
  %14 = load i8*, i8** %13, align 8
  store i8* %14, i8** %10, align 8
  %15 = load i8*, i8** %10, align 8
  %16 = load i32, i32* %8, align 4
  %17 = call i32 @WSET(i8* %15, i32 0, i32 %16)
  %18 = load i8*, i8** %10, align 8
  %19 = call i32 @DSET(i8* %18, i32 2, i32 0)
  %20 = load %struct.smb_sb_info*, %struct.smb_sb_info** %5, align 8
  %21 = load i8*, i8** %10, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 6
  %23 = load i64, i64* @SMB_MAXPATHLEN, align 8
  %24 = add nsw i64 %23, 1
  %25 = load %struct.dentry*, %struct.dentry** %6, align 8
  %26 = call i32 @smb_encode_path(%struct.smb_sb_info* %20, i8* %22, i64 %24, %struct.dentry* %25, i32* null)
  store i32 %26, i32* %11, align 4
  %27 = load i32, i32* %11, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %4
  br label %94

30:                                               ; preds = %4
  %31 = load i8*, i8** %10, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 6
  %33 = load i32, i32* %11, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i8, i8* %32, i64 %34
  store i8* %35, i8** %9, align 8
  %36 = load i32, i32* @TRANSACT2_QPATHINFO, align 4
  %37 = load %struct.smb_request*, %struct.smb_request** %7, align 8
  %38 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %37, i32 0, i32 8
  store i32 %36, i32* %38, align 8
  %39 = load %struct.smb_request*, %struct.smb_request** %7, align 8
  %40 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %39, i32 0, i32 1
  store i32 0, i32* %40, align 8
  %41 = load %struct.smb_request*, %struct.smb_request** %7, align 8
  %42 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %41, i32 0, i32 7
  store i32* null, i32** %42, align 8
  %43 = load i8*, i8** %9, align 8
  %44 = load i8*, i8** %10, align 8
  %45 = ptrtoint i8* %43 to i64
  %46 = ptrtoint i8* %44 to i64
  %47 = sub i64 %45, %46
  %48 = trunc i64 %47 to i32
  %49 = load %struct.smb_request*, %struct.smb_request** %7, align 8
  %50 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %49, i32 0, i32 2
  store i32 %48, i32* %50, align 4
  %51 = load i8*, i8** %10, align 8
  %52 = load %struct.smb_request*, %struct.smb_request** %7, align 8
  %53 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %52, i32 0, i32 3
  store i8* %51, i8** %53, align 8
  %54 = load %struct.smb_request*, %struct.smb_request** %7, align 8
  %55 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %54, i32 0, i32 6
  store i64 0, i64* %55, align 8
  %56 = load %struct.smb_request*, %struct.smb_request** %7, align 8
  %57 = call i32 @smb_add_request(%struct.smb_request* %56)
  store i32 %57, i32* %11, align 4
  %58 = load i32, i32* %11, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %30
  br label %94

61:                                               ; preds = %30
  %62 = load %struct.smb_request*, %struct.smb_request** %7, align 8
  %63 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %62, i32 0, i32 5
  %64 = load i32, i32* %63, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %79

66:                                               ; preds = %61
  %67 = load i8*, i8** %10, align 8
  %68 = getelementptr inbounds i8, i8* %67, i64 6
  %69 = load i32, i32* %11, align 4
  %70 = load %struct.smb_request*, %struct.smb_request** %7, align 8
  %71 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %70, i32 0, i32 5
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.smb_request*, %struct.smb_request** %7, align 8
  %74 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %73, i32 0, i32 4
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @VERBOSE(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i8* %68, i32 %69, i32 %72, i32 %75)
  %77 = load %struct.smb_request*, %struct.smb_request** %7, align 8
  %78 = call i32 @smb_errno(%struct.smb_request* %77)
  store i32 %78, i32* %11, align 4
  br label %94

79:                                               ; preds = %61
  %80 = load i32, i32* @ENOENT, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %11, align 4
  %82 = load %struct.smb_request*, %struct.smb_request** %7, align 8
  %83 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = icmp slt i32 %84, 22
  br i1 %85, label %86, label %93

86:                                               ; preds = %79
  %87 = load i8*, i8** %10, align 8
  %88 = getelementptr inbounds i8, i8* %87, i64 6
  %89 = load %struct.smb_request*, %struct.smb_request** %7, align 8
  %90 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @PARANOIA(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i8* %88, i32 %91)
  br label %94

93:                                               ; preds = %79
  store i32 0, i32* %11, align 4
  br label %94

94:                                               ; preds = %93, %86, %66, %60, %29
  %95 = load i32, i32* %11, align 4
  ret i32 %95
}

declare dso_local i32 @WSET(i8*, i32, i32) #1

declare dso_local i32 @DSET(i8*, i32, i32) #1

declare dso_local i32 @smb_encode_path(%struct.smb_sb_info*, i8*, i64, %struct.dentry*, i32*) #1

declare dso_local i32 @smb_add_request(%struct.smb_request*) #1

declare dso_local i32 @VERBOSE(i8*, i8*, i32, i32, i32) #1

declare dso_local i32 @smb_errno(%struct.smb_request*) #1

declare dso_local i32 @PARANOIA(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
