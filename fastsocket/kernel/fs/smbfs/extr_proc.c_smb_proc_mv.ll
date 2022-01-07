; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/smbfs/extr_proc.c_smb_proc_mv.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/smbfs/extr_proc.c_smb_proc_mv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.smb_sb_info = type { i32 }
%struct.smb_request = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@SMBmv = common dso_local global i32 0, align 4
@smb_vwv0 = common dso_local global i32 0, align 4
@aSYSTEM = common dso_local global i32 0, align 4
@aHIDDEN = common dso_local global i32 0, align 4
@aDIR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @smb_proc_mv(%struct.dentry* %0, %struct.dentry* %1) #0 {
  %3 = alloca %struct.dentry*, align 8
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca %struct.smb_sb_info*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.smb_request*, align 8
  store %struct.dentry* %0, %struct.dentry** %3, align 8
  store %struct.dentry* %1, %struct.dentry** %4, align 8
  %9 = load %struct.dentry*, %struct.dentry** %3, align 8
  %10 = call %struct.smb_sb_info* @server_from_dentry(%struct.dentry* %9)
  store %struct.smb_sb_info* %10, %struct.smb_sb_info** %5, align 8
  %11 = load i32, i32* @ENOMEM, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %7, align 4
  %13 = load %struct.smb_sb_info*, %struct.smb_sb_info** %5, align 8
  %14 = load i32, i32* @PAGE_SIZE, align 4
  %15 = call %struct.smb_request* @smb_alloc_request(%struct.smb_sb_info* %13, i32 %14)
  store %struct.smb_request* %15, %struct.smb_request** %8, align 8
  %16 = icmp ne %struct.smb_request* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %2
  br label %58

18:                                               ; preds = %2
  %19 = load %struct.smb_request*, %struct.smb_request** %8, align 8
  %20 = load i32, i32* @SMBmv, align 4
  %21 = call i8* @smb_setup_header(%struct.smb_request* %19, i32 %20, i32 1, i32 0)
  store i8* %21, i8** %6, align 8
  %22 = load %struct.smb_request*, %struct.smb_request** %8, align 8
  %23 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @smb_vwv0, align 4
  %26 = load i32, i32* @aSYSTEM, align 4
  %27 = load i32, i32* @aHIDDEN, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @aDIR, align 4
  %30 = or i32 %28, %29
  %31 = call i32 @WSET(i32 %24, i32 %25, i32 %30)
  %32 = load %struct.smb_request*, %struct.smb_request** %8, align 8
  %33 = load %struct.dentry*, %struct.dentry** %3, align 8
  %34 = call i32 @smb_simple_encode_path(%struct.smb_request* %32, i8** %6, %struct.dentry* %33, i32* null)
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %7, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %18
  br label %55

38:                                               ; preds = %18
  %39 = load %struct.smb_request*, %struct.smb_request** %8, align 8
  %40 = load %struct.dentry*, %struct.dentry** %4, align 8
  %41 = call i32 @smb_simple_encode_path(%struct.smb_request* %39, i8** %6, %struct.dentry* %40, i32* null)
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %7, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %38
  br label %55

45:                                               ; preds = %38
  %46 = load %struct.smb_request*, %struct.smb_request** %8, align 8
  %47 = load i8*, i8** %6, align 8
  %48 = call i32 @smb_setup_bcc(%struct.smb_request* %46, i8* %47)
  %49 = load %struct.smb_request*, %struct.smb_request** %8, align 8
  %50 = load i32, i32* @SMBmv, align 4
  %51 = call i32 @smb_request_ok(%struct.smb_request* %49, i32 %50, i32 0, i32 0)
  store i32 %51, i32* %7, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %45
  br label %55

54:                                               ; preds = %45
  store i32 0, i32* %7, align 4
  br label %55

55:                                               ; preds = %54, %53, %44, %37
  %56 = load %struct.smb_request*, %struct.smb_request** %8, align 8
  %57 = call i32 @smb_rput(%struct.smb_request* %56)
  br label %58

58:                                               ; preds = %55, %17
  %59 = load i32, i32* %7, align 4
  ret i32 %59
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
