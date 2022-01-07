; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/smbfs/extr_proc.c_smb_proc_seek.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/smbfs/extr_proc.c_smb_proc_seek.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smb_sb_info = type { i32 }
%struct.smb_request = type { i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@SMBlseek = common dso_local global i32 0, align 4
@smb_vwv0 = common dso_local global i32 0, align 4
@smb_vwv1 = common dso_local global i32 0, align 4
@smb_vwv2 = common dso_local global i32 0, align 4
@SMB_REQ_NORETRY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smb_sb_info*, i32, i32, i32)* @smb_proc_seek to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smb_proc_seek(%struct.smb_sb_info* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.smb_sb_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.smb_request*, align 8
  store %struct.smb_sb_info* %0, %struct.smb_sb_info** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load i32, i32* @ENOMEM, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %9, align 4
  %13 = load %struct.smb_sb_info*, %struct.smb_sb_info** %5, align 8
  %14 = call %struct.smb_request* @smb_alloc_request(%struct.smb_sb_info* %13, i32 0)
  store %struct.smb_request* %14, %struct.smb_request** %10, align 8
  %15 = icmp ne %struct.smb_request* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %4
  br label %59

17:                                               ; preds = %4
  %18 = load %struct.smb_request*, %struct.smb_request** %10, align 8
  %19 = load i32, i32* @SMBlseek, align 4
  %20 = call i32 @smb_setup_header(%struct.smb_request* %18, i32 %19, i32 4, i32 0)
  %21 = load %struct.smb_request*, %struct.smb_request** %10, align 8
  %22 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @smb_vwv0, align 4
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @WSET(i32 %23, i32 %24, i32 %25)
  %27 = load %struct.smb_request*, %struct.smb_request** %10, align 8
  %28 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @smb_vwv1, align 4
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @WSET(i32 %29, i32 %30, i32 %31)
  %33 = load %struct.smb_request*, %struct.smb_request** %10, align 8
  %34 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @smb_vwv2, align 4
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @DSET(i32 %35, i32 %36, i32 %37)
  %39 = load i32, i32* @SMB_REQ_NORETRY, align 4
  %40 = load %struct.smb_request*, %struct.smb_request** %10, align 8
  %41 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = or i32 %42, %39
  store i32 %43, i32* %41, align 4
  %44 = load %struct.smb_request*, %struct.smb_request** %10, align 8
  %45 = load i32, i32* @SMBlseek, align 4
  %46 = call i32 @smb_request_ok(%struct.smb_request* %44, i32 %45, i32 2, i32 0)
  store i32 %46, i32* %9, align 4
  %47 = load i32, i32* %9, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %17
  store i32 0, i32* %9, align 4
  br label %56

50:                                               ; preds = %17
  %51 = load %struct.smb_request*, %struct.smb_request** %10, align 8
  %52 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @smb_vwv0, align 4
  %55 = call i32 @DVAL(i32 %53, i32 %54)
  store i32 %55, i32* %9, align 4
  br label %56

56:                                               ; preds = %50, %49
  %57 = load %struct.smb_request*, %struct.smb_request** %10, align 8
  %58 = call i32 @smb_rput(%struct.smb_request* %57)
  br label %59

59:                                               ; preds = %56, %16
  %60 = load i32, i32* %9, align 4
  ret i32 %60
}

declare dso_local %struct.smb_request* @smb_alloc_request(%struct.smb_sb_info*, i32) #1

declare dso_local i32 @smb_setup_header(%struct.smb_request*, i32, i32, i32) #1

declare dso_local i32 @WSET(i32, i32, i32) #1

declare dso_local i32 @DSET(i32, i32, i32) #1

declare dso_local i32 @smb_request_ok(%struct.smb_request*, i32, i32, i32) #1

declare dso_local i32 @DVAL(i32, i32) #1

declare dso_local i32 @smb_rput(%struct.smb_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
