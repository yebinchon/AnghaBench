; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/smbfs/extr_proc.c_smb_proc_flush.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/smbfs/extr_proc.c_smb_proc_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smb_sb_info = type { i32 }
%struct.smb_request = type { i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@SMBflush = common dso_local global i32 0, align 4
@smb_vwv0 = common dso_local global i32 0, align 4
@SMB_REQ_NORETRY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @smb_proc_flush(%struct.smb_sb_info* %0, i32 %1) #0 {
  %3 = alloca %struct.smb_sb_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.smb_request*, align 8
  store %struct.smb_sb_info* %0, %struct.smb_sb_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* @ENOMEM, align 4
  %8 = sub nsw i32 0, %7
  store i32 %8, i32* %5, align 4
  %9 = load %struct.smb_sb_info*, %struct.smb_sb_info** %3, align 8
  %10 = call %struct.smb_request* @smb_alloc_request(%struct.smb_sb_info* %9, i32 0)
  store %struct.smb_request* %10, %struct.smb_request** %6, align 8
  %11 = icmp ne %struct.smb_request* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  br label %33

13:                                               ; preds = %2
  %14 = load %struct.smb_request*, %struct.smb_request** %6, align 8
  %15 = load i32, i32* @SMBflush, align 4
  %16 = call i32 @smb_setup_header(%struct.smb_request* %14, i32 %15, i32 1, i32 0)
  %17 = load %struct.smb_request*, %struct.smb_request** %6, align 8
  %18 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @smb_vwv0, align 4
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @WSET(i32 %19, i32 %20, i32 %21)
  %23 = load i32, i32* @SMB_REQ_NORETRY, align 4
  %24 = load %struct.smb_request*, %struct.smb_request** %6, align 8
  %25 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = or i32 %26, %23
  store i32 %27, i32* %25, align 4
  %28 = load %struct.smb_request*, %struct.smb_request** %6, align 8
  %29 = load i32, i32* @SMBflush, align 4
  %30 = call i32 @smb_request_ok(%struct.smb_request* %28, i32 %29, i32 0, i32 0)
  store i32 %30, i32* %5, align 4
  %31 = load %struct.smb_request*, %struct.smb_request** %6, align 8
  %32 = call i32 @smb_rput(%struct.smb_request* %31)
  br label %33

33:                                               ; preds = %13, %12
  %34 = load i32, i32* %5, align 4
  ret i32 %34
}

declare dso_local %struct.smb_request* @smb_alloc_request(%struct.smb_sb_info*, i32) #1

declare dso_local i32 @smb_setup_header(%struct.smb_request*, i32, i32, i32) #1

declare dso_local i32 @WSET(i32, i32, i32) #1

declare dso_local i32 @smb_request_ok(%struct.smb_request*, i32, i32, i32) #1

declare dso_local i32 @smb_rput(%struct.smb_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
