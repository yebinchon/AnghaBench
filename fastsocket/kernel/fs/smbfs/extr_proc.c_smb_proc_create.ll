; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/smbfs/extr_proc.c_smb_proc_create.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/smbfs/extr_proc.c_smb_proc_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.smb_sb_info = type { i32 }
%struct.smb_request = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@SMBcreate = common dso_local global i32 0, align 4
@smb_vwv0 = common dso_local global i32 0, align 4
@smb_vwv1 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @smb_proc_create(%struct.dentry* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.smb_sb_info*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.smb_request*, align 8
  store %struct.dentry* %0, %struct.dentry** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %13 = load %struct.dentry*, %struct.dentry** %5, align 8
  %14 = call %struct.smb_sb_info* @server_from_dentry(%struct.dentry* %13)
  store %struct.smb_sb_info* %14, %struct.smb_sb_info** %9, align 8
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %11, align 4
  %17 = load %struct.smb_sb_info*, %struct.smb_sb_info** %9, align 8
  %18 = load i32, i32* @PAGE_SIZE, align 4
  %19 = call %struct.smb_request* @smb_alloc_request(%struct.smb_sb_info* %17, i32 %18)
  store %struct.smb_request* %19, %struct.smb_request** %12, align 8
  %20 = icmp ne %struct.smb_request* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %4
  br label %66

22:                                               ; preds = %4
  %23 = load %struct.smb_request*, %struct.smb_request** %12, align 8
  %24 = load i32, i32* @SMBcreate, align 4
  %25 = call i8* @smb_setup_header(%struct.smb_request* %23, i32 %24, i32 3, i32 0)
  store i8* %25, i8** %10, align 8
  %26 = load %struct.smb_request*, %struct.smb_request** %12, align 8
  %27 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @smb_vwv0, align 4
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @WSET(i32 %28, i32 %29, i32 %30)
  %32 = load %struct.smb_request*, %struct.smb_request** %12, align 8
  %33 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @smb_vwv1, align 4
  %36 = load %struct.smb_sb_info*, %struct.smb_sb_info** %9, align 8
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @utc2local(%struct.smb_sb_info* %36, i32 %37)
  %39 = call i32 @DSET(i32 %34, i32 %35, i32 %38)
  %40 = load %struct.smb_request*, %struct.smb_request** %12, align 8
  %41 = load %struct.dentry*, %struct.dentry** %5, align 8
  %42 = call i32 @smb_simple_encode_path(%struct.smb_request* %40, i8** %10, %struct.dentry* %41, i32* null)
  store i32 %42, i32* %11, align 4
  %43 = load i32, i32* %11, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %22
  br label %63

46:                                               ; preds = %22
  %47 = load %struct.smb_request*, %struct.smb_request** %12, align 8
  %48 = load i8*, i8** %10, align 8
  %49 = call i32 @smb_setup_bcc(%struct.smb_request* %47, i8* %48)
  %50 = load %struct.smb_request*, %struct.smb_request** %12, align 8
  %51 = load i32, i32* @SMBcreate, align 4
  %52 = call i32 @smb_request_ok(%struct.smb_request* %50, i32 %51, i32 1, i32 0)
  store i32 %52, i32* %11, align 4
  %53 = load i32, i32* %11, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %46
  br label %63

56:                                               ; preds = %46
  %57 = load %struct.smb_request*, %struct.smb_request** %12, align 8
  %58 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @smb_vwv0, align 4
  %61 = call i32 @WVAL(i32 %59, i32 %60)
  %62 = load i32*, i32** %8, align 8
  store i32 %61, i32* %62, align 4
  store i32 0, i32* %11, align 4
  br label %63

63:                                               ; preds = %56, %55, %45
  %64 = load %struct.smb_request*, %struct.smb_request** %12, align 8
  %65 = call i32 @smb_rput(%struct.smb_request* %64)
  br label %66

66:                                               ; preds = %63, %21
  %67 = load i32, i32* %11, align 4
  ret i32 %67
}

declare dso_local %struct.smb_sb_info* @server_from_dentry(%struct.dentry*) #1

declare dso_local %struct.smb_request* @smb_alloc_request(%struct.smb_sb_info*, i32) #1

declare dso_local i8* @smb_setup_header(%struct.smb_request*, i32, i32, i32) #1

declare dso_local i32 @WSET(i32, i32, i32) #1

declare dso_local i32 @DSET(i32, i32, i32) #1

declare dso_local i32 @utc2local(%struct.smb_sb_info*, i32) #1

declare dso_local i32 @smb_simple_encode_path(%struct.smb_request*, i8**, %struct.dentry*, i32*) #1

declare dso_local i32 @smb_setup_bcc(%struct.smb_request*, i8*) #1

declare dso_local i32 @smb_request_ok(%struct.smb_request*, i32, i32, i32) #1

declare dso_local i32 @WVAL(i32, i32) #1

declare dso_local i32 @smb_rput(%struct.smb_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
