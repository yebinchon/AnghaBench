; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/smbfs/extr_sock.c_smb_receive_drop.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/smbfs/extr_sock.c_smb_receive_drop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smb_sb_info = type { i32, i64, i32, i32 }
%struct.socket = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.kvec = type { i32, i32 }
%struct.msghdr = type { i32, i32*, i64, i32* }

@EIO = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@TCP_ESTABLISHED = common dso_local global i64 0, align 8
@MSG_DONTWAIT = common dso_local global i32 0, align 4
@MSG_NOSIGNAL = common dso_local global i32 0, align 4
@drop_buffer = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"read: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"receive error: %d\0A\00", align 1
@SMB_RECV_END = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @smb_receive_drop(%struct.smb_sb_info* %0) #0 {
  %2 = alloca %struct.smb_sb_info*, align 8
  %3 = alloca %struct.socket*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.kvec, align 4
  %6 = alloca %struct.msghdr, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.smb_sb_info* %0, %struct.smb_sb_info** %2, align 8
  %9 = load %struct.smb_sb_info*, %struct.smb_sb_info** %2, align 8
  %10 = getelementptr inbounds %struct.smb_sb_info, %struct.smb_sb_info* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @smb_len(i32 %11)
  %13 = load %struct.smb_sb_info*, %struct.smb_sb_info** %2, align 8
  %14 = getelementptr inbounds %struct.smb_sb_info, %struct.smb_sb_info* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = sub nsw i32 %12, %15
  %17 = add nsw i32 %16, 4
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* @EIO, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* @PAGE_SIZE, align 4
  %22 = icmp sgt i32 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %1
  %24 = load i32, i32* @PAGE_SIZE, align 4
  store i32 %24, i32* %7, align 4
  br label %25

25:                                               ; preds = %23, %1
  %26 = load %struct.smb_sb_info*, %struct.smb_sb_info** %2, align 8
  %27 = call %struct.socket* @server_sock(%struct.smb_sb_info* %26)
  store %struct.socket* %27, %struct.socket** %3, align 8
  %28 = load %struct.socket*, %struct.socket** %3, align 8
  %29 = icmp ne %struct.socket* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %25
  br label %83

31:                                               ; preds = %25
  %32 = load %struct.socket*, %struct.socket** %3, align 8
  %33 = getelementptr inbounds %struct.socket, %struct.socket* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @TCP_ESTABLISHED, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %31
  br label %83

40:                                               ; preds = %31
  %41 = load i32, i32* @MSG_DONTWAIT, align 4
  %42 = load i32, i32* @MSG_NOSIGNAL, align 4
  %43 = or i32 %41, %42
  store i32 %43, i32* %4, align 4
  %44 = load i32, i32* @drop_buffer, align 4
  %45 = getelementptr inbounds %struct.kvec, %struct.kvec* %5, i32 0, i32 1
  store i32 %44, i32* %45, align 4
  %46 = load i32, i32* @PAGE_SIZE, align 4
  %47 = getelementptr inbounds %struct.kvec, %struct.kvec* %5, i32 0, i32 0
  store i32 %46, i32* %47, align 4
  %48 = load i32, i32* %4, align 4
  %49 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %6, i32 0, i32 0
  store i32 %48, i32* %49, align 8
  %50 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %6, i32 0, i32 3
  store i32* null, i32** %50, align 8
  %51 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %6, i32 0, i32 2
  store i64 0, i64* %51, align 8
  %52 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %6, i32 0, i32 1
  store i32* null, i32** %52, align 8
  %53 = load %struct.socket*, %struct.socket** %3, align 8
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* %4, align 4
  %56 = call i32 @kernel_recvmsg(%struct.socket* %53, %struct.msghdr* %6, %struct.kvec* %5, i32 1, i32 %54, i32 %55)
  store i32 %56, i32* %8, align 4
  %57 = load i32, i32* %8, align 4
  %58 = call i32 @VERBOSE(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %57)
  %59 = load i32, i32* %8, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %40
  %62 = load i32, i32* %8, align 4
  %63 = call i32 @VERBOSE(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %62)
  br label %83

64:                                               ; preds = %40
  %65 = load i32, i32* %8, align 4
  %66 = load %struct.smb_sb_info*, %struct.smb_sb_info** %2, align 8
  %67 = getelementptr inbounds %struct.smb_sb_info, %struct.smb_sb_info* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = add nsw i32 %68, %65
  store i32 %69, i32* %67, align 8
  %70 = load %struct.smb_sb_info*, %struct.smb_sb_info** %2, align 8
  %71 = getelementptr inbounds %struct.smb_sb_info, %struct.smb_sb_info* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = sext i32 %72 to i64
  %74 = load %struct.smb_sb_info*, %struct.smb_sb_info** %2, align 8
  %75 = getelementptr inbounds %struct.smb_sb_info, %struct.smb_sb_info* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = icmp sge i64 %73, %76
  br i1 %77, label %78, label %82

78:                                               ; preds = %64
  %79 = load i32, i32* @SMB_RECV_END, align 4
  %80 = load %struct.smb_sb_info*, %struct.smb_sb_info** %2, align 8
  %81 = getelementptr inbounds %struct.smb_sb_info, %struct.smb_sb_info* %80, i32 0, i32 2
  store i32 %79, i32* %81, align 8
  br label %82

82:                                               ; preds = %78, %64
  br label %83

83:                                               ; preds = %82, %61, %39, %30
  %84 = load i32, i32* %8, align 4
  ret i32 %84
}

declare dso_local i32 @smb_len(i32) #1

declare dso_local %struct.socket* @server_sock(%struct.smb_sb_info*) #1

declare dso_local i32 @kernel_recvmsg(%struct.socket*, %struct.msghdr*, %struct.kvec*, i32, i32, i32) #1

declare dso_local i32 @VERBOSE(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
