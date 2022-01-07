; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/smbfs/extr_proc.c_smb_proc_unlink.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/smbfs/extr_proc.c_smb_proc_unlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.smb_sb_info = type { i32 }
%struct.smb_request = type { i64, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@SMBunlink = common dso_local global i32 0, align 4
@smb_vwv0 = common dso_local global i32 0, align 4
@aSYSTEM = common dso_local global i32 0, align 4
@aHIDDEN = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @smb_proc_unlink(%struct.dentry* %0) #0 {
  %2 = alloca %struct.dentry*, align 8
  %3 = alloca %struct.smb_sb_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.smb_request*, align 8
  store %struct.dentry* %0, %struct.dentry** %2, align 8
  %8 = load %struct.dentry*, %struct.dentry** %2, align 8
  %9 = call %struct.smb_sb_info* @server_from_dentry(%struct.dentry* %8)
  store %struct.smb_sb_info* %9, %struct.smb_sb_info** %3, align 8
  store i32 0, i32* %4, align 4
  %10 = load i32, i32* @ENOMEM, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %6, align 4
  %12 = load %struct.smb_sb_info*, %struct.smb_sb_info** %3, align 8
  %13 = load i32, i32* @PAGE_SIZE, align 4
  %14 = call %struct.smb_request* @smb_alloc_request(%struct.smb_sb_info* %12, i32 %13)
  store %struct.smb_request* %14, %struct.smb_request** %7, align 8
  %15 = icmp ne %struct.smb_request* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %1
  br label %49

17:                                               ; preds = %1
  br label %18

18:                                               ; preds = %17
  %19 = load %struct.smb_request*, %struct.smb_request** %7, align 8
  %20 = load i32, i32* @SMBunlink, align 4
  %21 = call i8* @smb_setup_header(%struct.smb_request* %19, i32 %20, i32 1, i32 0)
  store i8* %21, i8** %5, align 8
  %22 = load %struct.smb_request*, %struct.smb_request** %7, align 8
  %23 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @smb_vwv0, align 4
  %26 = load i32, i32* @aSYSTEM, align 4
  %27 = load i32, i32* @aHIDDEN, align 4
  %28 = or i32 %26, %27
  %29 = call i32 @WSET(i32 %24, i32 %25, i32 %28)
  %30 = load %struct.smb_request*, %struct.smb_request** %7, align 8
  %31 = load %struct.dentry*, %struct.dentry** %2, align 8
  %32 = call i32 @smb_simple_encode_path(%struct.smb_request* %30, i8** %5, %struct.dentry* %31, i32* null)
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %18
  br label %46

36:                                               ; preds = %18
  %37 = load %struct.smb_request*, %struct.smb_request** %7, align 8
  %38 = load i8*, i8** %5, align 8
  %39 = call i32 @smb_setup_bcc(%struct.smb_request* %37, i8* %38)
  %40 = load %struct.smb_request*, %struct.smb_request** %7, align 8
  %41 = load i32, i32* @SMBunlink, align 4
  %42 = call i32 @smb_request_ok(%struct.smb_request* %40, i32 %41, i32 0, i32 0)
  store i32 %42, i32* %6, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %36
  br label %46

45:                                               ; preds = %36
  store i32 0, i32* %6, align 4
  br label %46

46:                                               ; preds = %45, %44, %35
  %47 = load %struct.smb_request*, %struct.smb_request** %7, align 8
  %48 = call i32 @smb_rput(%struct.smb_request* %47)
  br label %49

49:                                               ; preds = %46, %16
  %50 = load i32, i32* %6, align 4
  ret i32 %50
}

declare dso_local %struct.smb_sb_info* @server_from_dentry(%struct.dentry*) #1

declare dso_local %struct.smb_request* @smb_alloc_request(%struct.smb_sb_info*, i32) #1

declare dso_local i8* @smb_setup_header(%struct.smb_request*, i32, i32, i32) #1

declare dso_local i32 @WSET(i32, i32, i32) #1

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
