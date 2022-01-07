; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/smbfs/extr_request.c_smb_request_send_req.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/smbfs/extr_request.c_smb_request_send_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smb_request = type { i64, i32, i32, i32, %struct.smb_sb_info* }
%struct.smb_sb_info = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@smb_tid = common dso_local global i32 0, align 4
@smb_pid = common dso_local global i32 0, align 4
@smb_uid = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@SMB_REQ_TRANSMITTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smb_request*)* @smb_request_send_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smb_request_send_req(%struct.smb_request* %0) #0 {
  %2 = alloca %struct.smb_request*, align 8
  %3 = alloca %struct.smb_sb_info*, align 8
  %4 = alloca i32, align 4
  store %struct.smb_request* %0, %struct.smb_request** %2, align 8
  %5 = load %struct.smb_request*, %struct.smb_request** %2, align 8
  %6 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %5, i32 0, i32 4
  %7 = load %struct.smb_sb_info*, %struct.smb_sb_info** %6, align 8
  store %struct.smb_sb_info* %7, %struct.smb_sb_info** %3, align 8
  %8 = load %struct.smb_request*, %struct.smb_request** %2, align 8
  %9 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %36

12:                                               ; preds = %1
  %13 = load %struct.smb_request*, %struct.smb_request** %2, align 8
  %14 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @smb_tid, align 4
  %17 = load %struct.smb_sb_info*, %struct.smb_sb_info** %3, align 8
  %18 = getelementptr inbounds %struct.smb_sb_info, %struct.smb_sb_info* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @WSET(i32 %15, i32 %16, i32 %20)
  %22 = load %struct.smb_request*, %struct.smb_request** %2, align 8
  %23 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @smb_pid, align 4
  %26 = call i32 @WSET(i32 %24, i32 %25, i32 1)
  %27 = load %struct.smb_request*, %struct.smb_request** %2, align 8
  %28 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @smb_uid, align 4
  %31 = load %struct.smb_sb_info*, %struct.smb_sb_info** %3, align 8
  %32 = getelementptr inbounds %struct.smb_sb_info, %struct.smb_sb_info* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @WSET(i32 %29, i32 %30, i32 %34)
  br label %36

36:                                               ; preds = %12, %1
  %37 = load %struct.smb_request*, %struct.smb_request** %2, align 8
  %38 = call i32 @smb_send_request(%struct.smb_request* %37)
  store i32 %38, i32* %4, align 4
  %39 = load i32, i32* %4, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %36
  %42 = load i32, i32* %4, align 4
  %43 = load i32, i32* @EAGAIN, align 4
  %44 = sub nsw i32 0, %43
  %45 = icmp ne i32 %42, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %41
  br label %61

47:                                               ; preds = %41, %36
  store i32 0, i32* %4, align 4
  %48 = load %struct.smb_request*, %struct.smb_request** %2, align 8
  %49 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @SMB_REQ_TRANSMITTED, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %47
  br label %61

55:                                               ; preds = %47
  %56 = load %struct.smb_request*, %struct.smb_request** %2, align 8
  %57 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %56, i32 0, i32 2
  %58 = load %struct.smb_sb_info*, %struct.smb_sb_info** %3, align 8
  %59 = getelementptr inbounds %struct.smb_sb_info, %struct.smb_sb_info* %58, i32 0, i32 0
  %60 = call i32 @list_move_tail(i32* %57, i32* %59)
  store i32 1, i32* %4, align 4
  br label %61

61:                                               ; preds = %55, %54, %46
  %62 = load i32, i32* %4, align 4
  ret i32 %62
}

declare dso_local i32 @WSET(i32, i32, i32) #1

declare dso_local i32 @smb_send_request(%struct.smb_request*) #1

declare dso_local i32 @list_move_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
