; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/smbfs/extr_proc.c_smb_proc_getattr_trans2_all.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/smbfs/extr_proc.c_smb_proc_getattr_trans2_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smb_sb_info = type { i32 }
%struct.dentry = type { i32 }
%struct.smb_fattr = type { i32, i32, i8*, i8*, i8* }
%struct.smb_request = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@SMB_QUERY_FILE_ALL_INFO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smb_sb_info*, %struct.dentry*, %struct.smb_fattr*)* @smb_proc_getattr_trans2_all to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smb_proc_getattr_trans2_all(%struct.smb_sb_info* %0, %struct.dentry* %1, %struct.smb_fattr* %2) #0 {
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
  br label %62

16:                                               ; preds = %3
  %17 = load %struct.smb_sb_info*, %struct.smb_sb_info** %4, align 8
  %18 = load %struct.dentry*, %struct.dentry** %5, align 8
  %19 = load %struct.smb_request*, %struct.smb_request** %7, align 8
  %20 = load i32, i32* @SMB_QUERY_FILE_ALL_INFO, align 4
  %21 = call i32 @smb_proc_getattr_trans2(%struct.smb_sb_info* %17, %struct.dentry* %18, %struct.smb_request* %19, i32 %20)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %16
  br label %59

25:                                               ; preds = %16
  %26 = load %struct.smb_request*, %struct.smb_request** %7, align 8
  %27 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @LVAL(i32 %28, i32 0)
  %30 = call i8* @smb_ntutc2unixutc(i32 %29)
  %31 = load %struct.smb_fattr*, %struct.smb_fattr** %6, align 8
  %32 = getelementptr inbounds %struct.smb_fattr, %struct.smb_fattr* %31, i32 0, i32 4
  store i8* %30, i8** %32, align 8
  %33 = load %struct.smb_request*, %struct.smb_request** %7, align 8
  %34 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @LVAL(i32 %35, i32 8)
  %37 = call i8* @smb_ntutc2unixutc(i32 %36)
  %38 = load %struct.smb_fattr*, %struct.smb_fattr** %6, align 8
  %39 = getelementptr inbounds %struct.smb_fattr, %struct.smb_fattr* %38, i32 0, i32 3
  store i8* %37, i8** %39, align 8
  %40 = load %struct.smb_request*, %struct.smb_request** %7, align 8
  %41 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @LVAL(i32 %42, i32 16)
  %44 = call i8* @smb_ntutc2unixutc(i32 %43)
  %45 = load %struct.smb_fattr*, %struct.smb_fattr** %6, align 8
  %46 = getelementptr inbounds %struct.smb_fattr, %struct.smb_fattr* %45, i32 0, i32 2
  store i8* %44, i8** %46, align 8
  %47 = load %struct.smb_request*, %struct.smb_request** %7, align 8
  %48 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @WVAL(i32 %49, i32 32)
  %51 = load %struct.smb_fattr*, %struct.smb_fattr** %6, align 8
  %52 = getelementptr inbounds %struct.smb_fattr, %struct.smb_fattr* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 4
  %53 = load %struct.smb_request*, %struct.smb_request** %7, align 8
  %54 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @LVAL(i32 %55, i32 48)
  %57 = load %struct.smb_fattr*, %struct.smb_fattr** %6, align 8
  %58 = getelementptr inbounds %struct.smb_fattr, %struct.smb_fattr* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 8
  br label %59

59:                                               ; preds = %25, %24
  %60 = load %struct.smb_request*, %struct.smb_request** %7, align 8
  %61 = call i32 @smb_rput(%struct.smb_request* %60)
  br label %62

62:                                               ; preds = %59, %15
  %63 = load i32, i32* %8, align 4
  ret i32 %63
}

declare dso_local %struct.smb_request* @smb_alloc_request(%struct.smb_sb_info*, i32) #1

declare dso_local i32 @smb_proc_getattr_trans2(%struct.smb_sb_info*, %struct.dentry*, %struct.smb_request*, i32) #1

declare dso_local i8* @smb_ntutc2unixutc(i32) #1

declare dso_local i32 @LVAL(i32, i32) #1

declare dso_local i32 @WVAL(i32, i32) #1

declare dso_local i32 @smb_rput(%struct.smb_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
