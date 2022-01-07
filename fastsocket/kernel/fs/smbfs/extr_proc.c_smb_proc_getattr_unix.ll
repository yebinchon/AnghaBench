; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/smbfs/extr_proc.c_smb_proc_getattr_unix.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/smbfs/extr_proc.c_smb_proc_getattr_unix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smb_sb_info = type { i32 }
%struct.dentry = type { i32 }
%struct.smb_fattr = type { i32 }
%struct.smb_request = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@SMB_QUERY_FILE_UNIX_BASIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smb_sb_info*, %struct.dentry*, %struct.smb_fattr*)* @smb_proc_getattr_unix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smb_proc_getattr_unix(%struct.smb_sb_info* %0, %struct.dentry* %1, %struct.smb_fattr* %2) #0 {
  %4 = alloca %struct.smb_sb_info*, align 8
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.smb_fattr*, align 8
  %7 = alloca %struct.smb_request*, align 8
  %8 = alloca i32, align 4
  store %struct.smb_sb_info* %0, %struct.smb_sb_info** %4, align 8
  store %struct.dentry* %1, %struct.dentry** %5, align 8
  store %struct.smb_fattr* %2, %struct.smb_fattr** %6, align 8
  %9 = load i32, i32* @ENOMEM, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %8, align 4
  %11 = load %struct.smb_sb_info*, %struct.smb_sb_info** %4, align 8
  %12 = load i32, i32* @PAGE_SIZE, align 4
  %13 = call %struct.smb_request* @smb_alloc_request(%struct.smb_sb_info* %11, i32 %12)
  store %struct.smb_request* %13, %struct.smb_request** %7, align 8
  %14 = icmp ne %struct.smb_request* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %3
  br label %35

16:                                               ; preds = %3
  %17 = load %struct.smb_sb_info*, %struct.smb_sb_info** %4, align 8
  %18 = load %struct.dentry*, %struct.dentry** %5, align 8
  %19 = load %struct.smb_request*, %struct.smb_request** %7, align 8
  %20 = load i32, i32* @SMB_QUERY_FILE_UNIX_BASIC, align 4
  %21 = call i32 @smb_proc_getattr_trans2(%struct.smb_sb_info* %17, %struct.dentry* %18, %struct.smb_request* %19, i32 %20)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %16
  br label %32

25:                                               ; preds = %16
  %26 = load %struct.smb_fattr*, %struct.smb_fattr** %6, align 8
  %27 = load %struct.smb_sb_info*, %struct.smb_sb_info** %4, align 8
  %28 = load %struct.smb_request*, %struct.smb_request** %7, align 8
  %29 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @smb_decode_unix_basic(%struct.smb_fattr* %26, %struct.smb_sb_info* %27, i32 %30)
  br label %32

32:                                               ; preds = %25, %24
  %33 = load %struct.smb_request*, %struct.smb_request** %7, align 8
  %34 = call i32 @smb_rput(%struct.smb_request* %33)
  br label %35

35:                                               ; preds = %32, %15
  %36 = load i32, i32* %8, align 4
  ret i32 %36
}

declare dso_local %struct.smb_request* @smb_alloc_request(%struct.smb_sb_info*, i32) #1

declare dso_local i32 @smb_proc_getattr_trans2(%struct.smb_sb_info*, %struct.dentry*, %struct.smb_request*, i32) #1

declare dso_local i32 @smb_decode_unix_basic(%struct.smb_fattr*, %struct.smb_sb_info*, i32) #1

declare dso_local i32 @smb_rput(%struct.smb_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
