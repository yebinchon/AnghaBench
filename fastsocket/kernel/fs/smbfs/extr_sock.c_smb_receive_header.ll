; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/smbfs/extr_sock.c_smb_receive_header.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/smbfs/extr_sock.c_smb_receive_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smb_sb_info = type { i64, i32, i64, i8* }
%struct.socket = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@EIO = common dso_local global i32 0, align 4
@TCP_ESTABLISHED = common dso_local global i64 0, align 8
@ENODATA = common dso_local global i32 0, align 4
@SMB_HEADER_LEN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [18 x i8] c"short packet: %d\0A\00", align 1
@SMB_RECV_DROP = common dso_local global i8* null, align 8
@SMB_MAX_PACKET_SIZE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [17 x i8] c"long packet: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"_recvfrom: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"receive error: %d\0A\00", align 1
@SMB_RECV_HCOMPLETE = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @smb_receive_header(%struct.smb_sb_info* %0) #0 {
  %2 = alloca %struct.smb_sb_info*, align 8
  %3 = alloca %struct.socket*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [4 x i8], align 1
  store %struct.smb_sb_info* %0, %struct.smb_sb_info** %2, align 8
  store i32 0, i32* %4, align 4
  %6 = load i32, i32* @EIO, align 4
  %7 = sub nsw i32 0, %6
  store i32 %7, i32* %4, align 4
  %8 = load %struct.smb_sb_info*, %struct.smb_sb_info** %2, align 8
  %9 = call %struct.socket* @server_sock(%struct.smb_sb_info* %8)
  store %struct.socket* %9, %struct.socket** %3, align 8
  %10 = load %struct.socket*, %struct.socket** %3, align 8
  %11 = icmp ne %struct.socket* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  br label %114

13:                                               ; preds = %1
  %14 = load %struct.socket*, %struct.socket** %3, align 8
  %15 = getelementptr inbounds %struct.socket, %struct.socket* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @TCP_ESTABLISHED, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %13
  br label %114

22:                                               ; preds = %13
  %23 = load %struct.smb_sb_info*, %struct.smb_sb_info** %2, align 8
  %24 = getelementptr inbounds %struct.smb_sb_info, %struct.smb_sb_info* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %75, label %27

27:                                               ; preds = %22
  %28 = load %struct.socket*, %struct.socket** %3, align 8
  %29 = getelementptr inbounds [4 x i8], [4 x i8]* %5, i64 0, i64 0
  %30 = call i32 @smb_get_length(%struct.socket* %28, i8* %29)
  store i32 %30, i32* %4, align 4
  %31 = load i32, i32* %4, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %27
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* @ENODATA, align 4
  %36 = sub nsw i32 0, %35
  %37 = icmp eq i32 %34, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  store i32 0, i32* %4, align 4
  br label %39

39:                                               ; preds = %38, %33
  br label %114

40:                                               ; preds = %27
  %41 = load i32, i32* %4, align 4
  %42 = add nsw i32 %41, 4
  %43 = load %struct.smb_sb_info*, %struct.smb_sb_info** %2, align 8
  %44 = getelementptr inbounds %struct.smb_sb_info, %struct.smb_sb_info* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 8
  %45 = load %struct.smb_sb_info*, %struct.smb_sb_info** %2, align 8
  %46 = getelementptr inbounds %struct.smb_sb_info, %struct.smb_sb_info* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = sext i32 %47 to i64
  %49 = load i64, i64* @SMB_HEADER_LEN, align 8
  %50 = icmp slt i64 %48, %49
  br i1 %50, label %51, label %59

51:                                               ; preds = %40
  %52 = load i32, i32* %4, align 4
  %53 = call i32 @PARANOIA(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %52)
  %54 = load i8*, i8** @SMB_RECV_DROP, align 8
  %55 = load %struct.smb_sb_info*, %struct.smb_sb_info** %2, align 8
  %56 = getelementptr inbounds %struct.smb_sb_info, %struct.smb_sb_info* %55, i32 0, i32 3
  store i8* %54, i8** %56, align 8
  %57 = load i32, i32* @EIO, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %4, align 4
  br label %114

59:                                               ; preds = %40
  %60 = load %struct.smb_sb_info*, %struct.smb_sb_info** %2, align 8
  %61 = getelementptr inbounds %struct.smb_sb_info, %struct.smb_sb_info* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = sext i32 %62 to i64
  %64 = load i64, i64* @SMB_MAX_PACKET_SIZE, align 8
  %65 = icmp sgt i64 %63, %64
  br i1 %65, label %66, label %74

66:                                               ; preds = %59
  %67 = load i32, i32* %4, align 4
  %68 = call i32 @PARANOIA(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %67)
  %69 = load i8*, i8** @SMB_RECV_DROP, align 8
  %70 = load %struct.smb_sb_info*, %struct.smb_sb_info** %2, align 8
  %71 = getelementptr inbounds %struct.smb_sb_info, %struct.smb_sb_info* %70, i32 0, i32 3
  store i8* %69, i8** %71, align 8
  %72 = load i32, i32* @EIO, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %4, align 4
  br label %114

74:                                               ; preds = %59
  br label %75

75:                                               ; preds = %74, %22
  %76 = load %struct.socket*, %struct.socket** %3, align 8
  %77 = load %struct.smb_sb_info*, %struct.smb_sb_info** %2, align 8
  %78 = getelementptr inbounds %struct.smb_sb_info, %struct.smb_sb_info* %77, i32 0, i32 2
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.smb_sb_info*, %struct.smb_sb_info** %2, align 8
  %81 = getelementptr inbounds %struct.smb_sb_info, %struct.smb_sb_info* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = add nsw i64 %79, %82
  %84 = load i64, i64* @SMB_HEADER_LEN, align 8
  %85 = load %struct.smb_sb_info*, %struct.smb_sb_info** %2, align 8
  %86 = getelementptr inbounds %struct.smb_sb_info, %struct.smb_sb_info* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = sub nsw i64 %84, %87
  %89 = call i32 @_recvfrom(%struct.socket* %76, i64 %83, i64 %88, i32 0)
  store i32 %89, i32* %4, align 4
  %90 = load i32, i32* %4, align 4
  %91 = call i32 @VERBOSE(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 %90)
  %92 = load i32, i32* %4, align 4
  %93 = icmp slt i32 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %75
  %95 = load i32, i32* %4, align 4
  %96 = call i32 @VERBOSE(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i32 %95)
  br label %114

97:                                               ; preds = %75
  %98 = load i32, i32* %4, align 4
  %99 = sext i32 %98 to i64
  %100 = load %struct.smb_sb_info*, %struct.smb_sb_info** %2, align 8
  %101 = getelementptr inbounds %struct.smb_sb_info, %struct.smb_sb_info* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = add nsw i64 %102, %99
  store i64 %103, i64* %101, align 8
  %104 = load %struct.smb_sb_info*, %struct.smb_sb_info** %2, align 8
  %105 = getelementptr inbounds %struct.smb_sb_info, %struct.smb_sb_info* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* @SMB_HEADER_LEN, align 8
  %108 = icmp eq i64 %106, %107
  br i1 %108, label %109, label %113

109:                                              ; preds = %97
  %110 = load i8*, i8** @SMB_RECV_HCOMPLETE, align 8
  %111 = load %struct.smb_sb_info*, %struct.smb_sb_info** %2, align 8
  %112 = getelementptr inbounds %struct.smb_sb_info, %struct.smb_sb_info* %111, i32 0, i32 3
  store i8* %110, i8** %112, align 8
  br label %113

113:                                              ; preds = %109, %97
  br label %114

114:                                              ; preds = %113, %94, %66, %51, %39, %21, %12
  %115 = load i32, i32* %4, align 4
  ret i32 %115
}

declare dso_local %struct.socket* @server_sock(%struct.smb_sb_info*) #1

declare dso_local i32 @smb_get_length(%struct.socket*, i8*) #1

declare dso_local i32 @PARANOIA(i8*, i32) #1

declare dso_local i32 @_recvfrom(%struct.socket*, i64, i64, i32) #1

declare dso_local i32 @VERBOSE(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
