; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/smbfs/extr_proc.c_smb_proc_close.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/smbfs/extr_proc.c_smb_proc_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smb_sb_info = type { i32 }
%struct.smb_request = type { i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@SMBclose = common dso_local global i32 0, align 4
@smb_vwv0 = common dso_local global i32 0, align 4
@smb_vwv1 = common dso_local global i32 0, align 4
@SMB_REQ_NORETRY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smb_sb_info*, i32, i32)* @smb_proc_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smb_proc_close(%struct.smb_sb_info* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.smb_sb_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.smb_request*, align 8
  %8 = alloca i32, align 4
  store %struct.smb_sb_info* %0, %struct.smb_sb_info** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* @ENOMEM, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %8, align 4
  %11 = load %struct.smb_sb_info*, %struct.smb_sb_info** %4, align 8
  %12 = call %struct.smb_request* @smb_alloc_request(%struct.smb_sb_info* %11, i32 0)
  store %struct.smb_request* %12, %struct.smb_request** %7, align 8
  %13 = icmp ne %struct.smb_request* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %3
  br label %43

15:                                               ; preds = %3
  %16 = load %struct.smb_request*, %struct.smb_request** %7, align 8
  %17 = load i32, i32* @SMBclose, align 4
  %18 = call i32 @smb_setup_header(%struct.smb_request* %16, i32 %17, i32 3, i32 0)
  %19 = load %struct.smb_request*, %struct.smb_request** %7, align 8
  %20 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @smb_vwv0, align 4
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @WSET(i32 %21, i32 %22, i32 %23)
  %25 = load %struct.smb_request*, %struct.smb_request** %7, align 8
  %26 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @smb_vwv1, align 4
  %29 = load %struct.smb_sb_info*, %struct.smb_sb_info** %4, align 8
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @utc2local(%struct.smb_sb_info* %29, i32 %30)
  %32 = call i32 @DSET(i32 %27, i32 %28, i32 %31)
  %33 = load i32, i32* @SMB_REQ_NORETRY, align 4
  %34 = load %struct.smb_request*, %struct.smb_request** %7, align 8
  %35 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = or i32 %36, %33
  store i32 %37, i32* %35, align 4
  %38 = load %struct.smb_request*, %struct.smb_request** %7, align 8
  %39 = load i32, i32* @SMBclose, align 4
  %40 = call i32 @smb_request_ok(%struct.smb_request* %38, i32 %39, i32 0, i32 0)
  store i32 %40, i32* %8, align 4
  %41 = load %struct.smb_request*, %struct.smb_request** %7, align 8
  %42 = call i32 @smb_rput(%struct.smb_request* %41)
  br label %43

43:                                               ; preds = %15, %14
  %44 = load i32, i32* %8, align 4
  ret i32 %44
}

declare dso_local %struct.smb_request* @smb_alloc_request(%struct.smb_sb_info*, i32) #1

declare dso_local i32 @smb_setup_header(%struct.smb_request*, i32, i32, i32) #1

declare dso_local i32 @WSET(i32, i32, i32) #1

declare dso_local i32 @DSET(i32, i32, i32) #1

declare dso_local i32 @utc2local(%struct.smb_sb_info*, i32) #1

declare dso_local i32 @smb_request_ok(%struct.smb_request*, i32, i32, i32) #1

declare dso_local i32 @smb_rput(%struct.smb_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
