; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/smbfs/extr_proc.c_smb_proc_trunc64.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/smbfs/extr_proc.c_smb_proc_trunc64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.smb_sb_info = type { i32 }
%struct.smb_request = type { i8*, i32, i8*, i32, i8*, i64, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@SMB_SET_FILE_END_OF_FILE_INFO = common dso_local global i32 0, align 4
@TRANSACT2_SETFILEINFO = common dso_local global i32 0, align 4
@SMB_REQ_NORETRY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i32)* @smb_proc_trunc64 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smb_proc_trunc64(%struct.inode* %0, i32 %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.smb_sb_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.smb_request*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.inode*, %struct.inode** %3, align 8
  %11 = call %struct.smb_sb_info* @server_from_inode(%struct.inode* %10)
  store %struct.smb_sb_info* %11, %struct.smb_sb_info** %5, align 8
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %6, align 4
  %14 = load %struct.smb_sb_info*, %struct.smb_sb_info** %5, align 8
  %15 = call %struct.smb_request* @smb_alloc_request(%struct.smb_sb_info* %14, i32 14)
  store %struct.smb_request* %15, %struct.smb_request** %9, align 8
  %16 = icmp ne %struct.smb_request* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %2
  br label %75

18:                                               ; preds = %2
  %19 = load %struct.smb_request*, %struct.smb_request** %9, align 8
  %20 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  store i8* %21, i8** %7, align 8
  %22 = load %struct.smb_request*, %struct.smb_request** %9, align 8
  %23 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 6
  store i8* %25, i8** %8, align 8
  %26 = load i8*, i8** %7, align 8
  %27 = load %struct.inode*, %struct.inode** %3, align 8
  %28 = call %struct.TYPE_2__* @SMB_I(%struct.inode* %27)
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @WSET(i8* %26, i32 0, i32 %30)
  %32 = load i8*, i8** %7, align 8
  %33 = load i32, i32* @SMB_SET_FILE_END_OF_FILE_INFO, align 4
  %34 = call i32 @WSET(i8* %32, i32 2, i32 %33)
  %35 = load i8*, i8** %7, align 8
  %36 = call i32 @WSET(i8* %35, i32 4, i32 0)
  %37 = load i8*, i8** %8, align 8
  %38 = load i32, i32* %4, align 4
  %39 = call i32 @LSET(i8* %37, i32 0, i32 %38)
  %40 = load i32, i32* @TRANSACT2_SETFILEINFO, align 4
  %41 = load %struct.smb_request*, %struct.smb_request** %9, align 8
  %42 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %41, i32 0, i32 7
  store i32 %40, i32* %42, align 4
  %43 = load %struct.smb_request*, %struct.smb_request** %9, align 8
  %44 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %43, i32 0, i32 1
  store i32 8, i32* %44, align 8
  %45 = load i8*, i8** %8, align 8
  %46 = load %struct.smb_request*, %struct.smb_request** %9, align 8
  %47 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %46, i32 0, i32 2
  store i8* %45, i8** %47, align 8
  %48 = load %struct.smb_request*, %struct.smb_request** %9, align 8
  %49 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %48, i32 0, i32 3
  store i32 6, i32* %49, align 8
  %50 = load i8*, i8** %7, align 8
  %51 = load %struct.smb_request*, %struct.smb_request** %9, align 8
  %52 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %51, i32 0, i32 4
  store i8* %50, i8** %52, align 8
  %53 = load i32, i32* @SMB_REQ_NORETRY, align 4
  %54 = load %struct.smb_request*, %struct.smb_request** %9, align 8
  %55 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %54, i32 0, i32 6
  %56 = load i32, i32* %55, align 8
  %57 = or i32 %56, %53
  store i32 %57, i32* %55, align 8
  %58 = load %struct.smb_request*, %struct.smb_request** %9, align 8
  %59 = call i32 @smb_add_request(%struct.smb_request* %58)
  store i32 %59, i32* %6, align 4
  %60 = load i32, i32* %6, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %18
  br label %72

63:                                               ; preds = %18
  store i32 0, i32* %6, align 4
  %64 = load %struct.smb_request*, %struct.smb_request** %9, align 8
  %65 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %64, i32 0, i32 5
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %63
  %69 = load %struct.smb_request*, %struct.smb_request** %9, align 8
  %70 = call i32 @smb_errno(%struct.smb_request* %69)
  store i32 %70, i32* %6, align 4
  br label %71

71:                                               ; preds = %68, %63
  br label %72

72:                                               ; preds = %71, %62
  %73 = load %struct.smb_request*, %struct.smb_request** %9, align 8
  %74 = call i32 @smb_rput(%struct.smb_request* %73)
  br label %75

75:                                               ; preds = %72, %17
  %76 = load i32, i32* %6, align 4
  ret i32 %76
}

declare dso_local %struct.smb_sb_info* @server_from_inode(%struct.inode*) #1

declare dso_local %struct.smb_request* @smb_alloc_request(%struct.smb_sb_info*, i32) #1

declare dso_local i32 @WSET(i8*, i32, i32) #1

declare dso_local %struct.TYPE_2__* @SMB_I(%struct.inode*) #1

declare dso_local i32 @LSET(i8*, i32, i32) #1

declare dso_local i32 @smb_add_request(%struct.smb_request*) #1

declare dso_local i32 @smb_errno(%struct.smb_request*) #1

declare dso_local i32 @smb_rput(%struct.smb_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
