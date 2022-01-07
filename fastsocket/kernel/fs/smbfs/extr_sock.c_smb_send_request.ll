; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/smbfs/extr_sock.c_smb_send_request.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/smbfs/extr_sock.c_smb_send_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smb_request = type { i32, i32, i64, i32, %struct.kvec*, %struct.smb_sb_info* }
%struct.kvec = type { i32 }
%struct.smb_sb_info = type { i32 }
%struct.socket = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.msghdr = type { i32 }

@MSG_NOSIGNAL = common dso_local global i32 0, align 4
@MSG_DONTWAIT = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@TCP_ESTABLISHED = common dso_local global i64 0, align 8
@SMB_REQ_TRANSMITTED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @smb_send_request(%struct.smb_request* %0) #0 {
  %2 = alloca %struct.smb_request*, align 8
  %3 = alloca %struct.smb_sb_info*, align 8
  %4 = alloca %struct.socket*, align 8
  %5 = alloca %struct.msghdr, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [4 x %struct.kvec], align 16
  %9 = alloca %struct.kvec*, align 8
  %10 = alloca i64, align 8
  store %struct.smb_request* %0, %struct.smb_request** %2, align 8
  %11 = load %struct.smb_request*, %struct.smb_request** %2, align 8
  %12 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %11, i32 0, i32 5
  %13 = load %struct.smb_sb_info*, %struct.smb_sb_info** %12, align 8
  store %struct.smb_sb_info* %13, %struct.smb_sb_info** %3, align 8
  %14 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %5, i32 0, i32 0
  %15 = load i32, i32* @MSG_NOSIGNAL, align 4
  %16 = load i32, i32* @MSG_DONTWAIT, align 4
  %17 = or i32 %15, %16
  store i32 %17, i32* %14, align 4
  %18 = load %struct.smb_request*, %struct.smb_request** %2, align 8
  %19 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.smb_request*, %struct.smb_request** %2, align 8
  %22 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = sub nsw i32 %20, %23
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* @EIO, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %7, align 4
  %27 = load %struct.smb_request*, %struct.smb_request** %2, align 8
  %28 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %27, i32 0, i32 4
  %29 = load %struct.kvec*, %struct.kvec** %28, align 8
  store %struct.kvec* %29, %struct.kvec** %9, align 8
  %30 = load %struct.smb_request*, %struct.smb_request** %2, align 8
  %31 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  store i64 %32, i64* %10, align 8
  %33 = load %struct.smb_sb_info*, %struct.smb_sb_info** %3, align 8
  %34 = call %struct.socket* @server_sock(%struct.smb_sb_info* %33)
  store %struct.socket* %34, %struct.socket** %4, align 8
  %35 = load %struct.socket*, %struct.socket** %4, align 8
  %36 = icmp ne %struct.socket* %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %1
  br label %87

38:                                               ; preds = %1
  %39 = load %struct.socket*, %struct.socket** %4, align 8
  %40 = getelementptr inbounds %struct.socket, %struct.socket* %39, i32 0, i32 0
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @TCP_ESTABLISHED, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %38
  br label %87

47:                                               ; preds = %38
  %48 = load %struct.smb_request*, %struct.smb_request** %2, align 8
  %49 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %47
  %53 = getelementptr inbounds [4 x %struct.kvec], [4 x %struct.kvec]* %8, i64 0, i64 0
  %54 = load %struct.smb_request*, %struct.smb_request** %2, align 8
  %55 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @smb_move_iov(%struct.kvec** %9, i64* %10, %struct.kvec* %53, i32 %56)
  br label %58

58:                                               ; preds = %52, %47
  %59 = load %struct.socket*, %struct.socket** %4, align 8
  %60 = load %struct.kvec*, %struct.kvec** %9, align 8
  %61 = load i64, i64* %10, align 8
  %62 = load i32, i32* %6, align 4
  %63 = call i32 @kernel_sendmsg(%struct.socket* %59, %struct.msghdr* %5, %struct.kvec* %60, i64 %61, i32 %62)
  store i32 %63, i32* %7, align 4
  %64 = load i32, i32* %7, align 4
  %65 = icmp sge i32 %64, 0
  br i1 %65, label %66, label %86

66:                                               ; preds = %58
  %67 = load i32, i32* %7, align 4
  %68 = load %struct.smb_request*, %struct.smb_request** %2, align 8
  %69 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = add nsw i32 %70, %67
  store i32 %71, i32* %69, align 4
  %72 = load %struct.smb_request*, %struct.smb_request** %2, align 8
  %73 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.smb_request*, %struct.smb_request** %2, align 8
  %76 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = icmp sge i32 %74, %77
  br i1 %78, label %79, label %85

79:                                               ; preds = %66
  %80 = load i32, i32* @SMB_REQ_TRANSMITTED, align 4
  %81 = load %struct.smb_request*, %struct.smb_request** %2, align 8
  %82 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 8
  %84 = or i32 %83, %80
  store i32 %84, i32* %82, align 8
  br label %85

85:                                               ; preds = %79, %66
  br label %86

86:                                               ; preds = %85, %58
  br label %87

87:                                               ; preds = %86, %46, %37
  %88 = load i32, i32* %7, align 4
  ret i32 %88
}

declare dso_local %struct.socket* @server_sock(%struct.smb_sb_info*) #1

declare dso_local i32 @smb_move_iov(%struct.kvec**, i64*, %struct.kvec*, i32) #1

declare dso_local i32 @kernel_sendmsg(%struct.socket*, %struct.msghdr*, %struct.kvec*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
