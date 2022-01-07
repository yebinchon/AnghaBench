; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/smbfs/extr_proc.c_smb_proc_setattr_core.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/smbfs/extr_proc.c_smb_proc_setattr_core.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smb_sb_info = type { i32 }
%struct.dentry = type { i32 }
%struct.smb_request = type { i32, i64, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@SMBsetatr = common dso_local global i32 0, align 4
@smb_vwv0 = common dso_local global i32 0, align 4
@smb_vwv1 = common dso_local global i32 0, align 4
@smb_vwv3 = common dso_local global i32 0, align 4
@smb_vwv4 = common dso_local global i32 0, align 4
@smb_vwv5 = common dso_local global i32 0, align 4
@smb_vwv6 = common dso_local global i32 0, align 4
@smb_vwv7 = common dso_local global i32 0, align 4
@ENAMETOOLONG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smb_sb_info*, %struct.dentry*, i32)* @smb_proc_setattr_core to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smb_proc_setattr_core(%struct.smb_sb_info* %0, %struct.dentry* %1, i32 %2) #0 {
  %4 = alloca %struct.smb_sb_info*, align 8
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.smb_request*, align 8
  store %struct.smb_sb_info* %0, %struct.smb_sb_info** %4, align 8
  store %struct.dentry* %1, %struct.dentry** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* @ENOMEM, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %8, align 4
  %12 = load %struct.smb_sb_info*, %struct.smb_sb_info** %4, align 8
  %13 = load i32, i32* @PAGE_SIZE, align 4
  %14 = call %struct.smb_request* @smb_alloc_request(%struct.smb_sb_info* %12, i32 %13)
  store %struct.smb_request* %14, %struct.smb_request** %9, align 8
  %15 = icmp ne %struct.smb_request* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %3
  br label %97

17:                                               ; preds = %3
  %18 = load %struct.smb_request*, %struct.smb_request** %9, align 8
  %19 = load i32, i32* @SMBsetatr, align 4
  %20 = call i8* @smb_setup_header(%struct.smb_request* %18, i32 %19, i32 8, i32 0)
  store i8* %20, i8** %7, align 8
  %21 = load %struct.smb_request*, %struct.smb_request** %9, align 8
  %22 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @smb_vwv0, align 4
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @WSET(i32 %23, i32 %24, i32 %25)
  %27 = load %struct.smb_request*, %struct.smb_request** %9, align 8
  %28 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @smb_vwv1, align 4
  %31 = call i32 @DSET(i32 %29, i32 %30, i32 0)
  %32 = load %struct.smb_request*, %struct.smb_request** %9, align 8
  %33 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @smb_vwv3, align 4
  %36 = call i32 @WSET(i32 %34, i32 %35, i32 0)
  %37 = load %struct.smb_request*, %struct.smb_request** %9, align 8
  %38 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @smb_vwv4, align 4
  %41 = call i32 @WSET(i32 %39, i32 %40, i32 0)
  %42 = load %struct.smb_request*, %struct.smb_request** %9, align 8
  %43 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @smb_vwv5, align 4
  %46 = call i32 @WSET(i32 %44, i32 %45, i32 0)
  %47 = load %struct.smb_request*, %struct.smb_request** %9, align 8
  %48 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @smb_vwv6, align 4
  %51 = call i32 @WSET(i32 %49, i32 %50, i32 0)
  %52 = load %struct.smb_request*, %struct.smb_request** %9, align 8
  %53 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @smb_vwv7, align 4
  %56 = call i32 @WSET(i32 %54, i32 %55, i32 0)
  %57 = load %struct.smb_request*, %struct.smb_request** %9, align 8
  %58 = load %struct.dentry*, %struct.dentry** %5, align 8
  %59 = call i32 @smb_simple_encode_path(%struct.smb_request* %57, i8** %7, %struct.dentry* %58, i32* null)
  store i32 %59, i32* %8, align 4
  %60 = load i32, i32* %8, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %17
  br label %94

63:                                               ; preds = %17
  %64 = load i8*, i8** %7, align 8
  %65 = getelementptr inbounds i8, i8* %64, i64 2
  %66 = load %struct.smb_request*, %struct.smb_request** %9, align 8
  %67 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = inttoptr i64 %68 to i8*
  %70 = load %struct.smb_request*, %struct.smb_request** %9, align 8
  %71 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i8, i8* %69, i64 %73
  %75 = icmp ugt i8* %65, %74
  br i1 %75, label %76, label %79

76:                                               ; preds = %63
  %77 = load i32, i32* @ENAMETOOLONG, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %8, align 4
  br label %94

79:                                               ; preds = %63
  %80 = load i8*, i8** %7, align 8
  %81 = getelementptr inbounds i8, i8* %80, i32 1
  store i8* %81, i8** %7, align 8
  store i8 4, i8* %80, align 1
  %82 = load i8*, i8** %7, align 8
  %83 = getelementptr inbounds i8, i8* %82, i32 1
  store i8* %83, i8** %7, align 8
  store i8 0, i8* %82, align 1
  %84 = load %struct.smb_request*, %struct.smb_request** %9, align 8
  %85 = load i8*, i8** %7, align 8
  %86 = call i32 @smb_setup_bcc(%struct.smb_request* %84, i8* %85)
  %87 = load %struct.smb_request*, %struct.smb_request** %9, align 8
  %88 = load i32, i32* @SMBsetatr, align 4
  %89 = call i32 @smb_request_ok(%struct.smb_request* %87, i32 %88, i32 0, i32 0)
  store i32 %89, i32* %8, align 4
  %90 = load i32, i32* %8, align 4
  %91 = icmp slt i32 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %79
  br label %94

93:                                               ; preds = %79
  store i32 0, i32* %8, align 4
  br label %94

94:                                               ; preds = %93, %92, %76, %62
  %95 = load %struct.smb_request*, %struct.smb_request** %9, align 8
  %96 = call i32 @smb_rput(%struct.smb_request* %95)
  br label %97

97:                                               ; preds = %94, %16
  %98 = load i32, i32* %8, align 4
  ret i32 %98
}

declare dso_local %struct.smb_request* @smb_alloc_request(%struct.smb_sb_info*, i32) #1

declare dso_local i8* @smb_setup_header(%struct.smb_request*, i32, i32, i32) #1

declare dso_local i32 @WSET(i32, i32, i32) #1

declare dso_local i32 @DSET(i32, i32, i32) #1

declare dso_local i32 @smb_simple_encode_path(%struct.smb_request*, i8**, %struct.dentry*, i32*) #1

declare dso_local i32 @smb_setup_bcc(%struct.smb_request*, i8*) #1

declare dso_local i32 @smb_request_ok(%struct.smb_request*, i32, i32, i32) #1

declare dso_local i32 @smb_rput(%struct.smb_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
