; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_transport.c_smb_send_rqst.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_transport.c_smb_send_rqst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TCP_Server_Info = type { i32, %struct.socket* }
%struct.socket = type { i32 }
%struct.smb_rqst = type { i32, i32, i32*, %struct.kvec* }
%struct.kvec = type { i32, i32 }

@ENOTSOCK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"Send length mismatch(send_length=%lu smb_buf_length=%u)\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"Sending smb: smb_len=%u\00", align 1
@SOL_TCP = common dso_local global i32 0, align 4
@TCP_CORK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [55 x i8] c"partial send (wanted=%u sent=%zu): terminating session\00", align 1
@CifsNeedReconnect = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [42 x i8] c"Error %d sending data on socket to server\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TCP_Server_Info*, %struct.smb_rqst*)* @smb_send_rqst to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smb_send_rqst(%struct.TCP_Server_Info* %0, %struct.smb_rqst* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TCP_Server_Info*, align 8
  %5 = alloca %struct.smb_rqst*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.kvec*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.socket*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.kvec, align 4
  store %struct.TCP_Server_Info* %0, %struct.TCP_Server_Info** %4, align 8
  store %struct.smb_rqst* %1, %struct.smb_rqst** %5, align 8
  %17 = load %struct.smb_rqst*, %struct.smb_rqst** %5, align 8
  %18 = getelementptr inbounds %struct.smb_rqst, %struct.smb_rqst* %17, i32 0, i32 3
  %19 = load %struct.kvec*, %struct.kvec** %18, align 8
  store %struct.kvec* %19, %struct.kvec** %7, align 8
  %20 = load %struct.smb_rqst*, %struct.smb_rqst** %5, align 8
  %21 = getelementptr inbounds %struct.smb_rqst, %struct.smb_rqst* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %8, align 4
  %23 = load %struct.kvec*, %struct.kvec** %7, align 8
  %24 = getelementptr inbounds %struct.kvec, %struct.kvec* %23, i64 0
  %25 = getelementptr inbounds %struct.kvec, %struct.kvec* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @get_rfc1002_length(i32 %26)
  store i32 %27, i32* %9, align 4
  store i64 0, i64* %12, align 8
  %28 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %4, align 8
  %29 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %28, i32 0, i32 1
  %30 = load %struct.socket*, %struct.socket** %29, align 8
  store %struct.socket* %30, %struct.socket** %14, align 8
  store i32 1, i32* %15, align 4
  %31 = load %struct.socket*, %struct.socket** %14, align 8
  %32 = icmp eq %struct.socket* %31, null
  br i1 %32, label %33, label %36

33:                                               ; preds = %2
  %34 = load i32, i32* @ENOTSOCK, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %3, align 4
  br label %145

36:                                               ; preds = %2
  %37 = load %struct.smb_rqst*, %struct.smb_rqst** %5, align 8
  %38 = call i64 @rqst_len(%struct.smb_rqst* %37)
  store i64 %38, i64* %10, align 8
  %39 = load i64, i64* %10, align 8
  %40 = load i32, i32* %9, align 4
  %41 = add i32 %40, 4
  %42 = zext i32 %41 to i64
  %43 = icmp ne i64 %39, %42
  br i1 %43, label %44, label %50

44:                                               ; preds = %36
  %45 = load i64, i64* %10, align 8
  %46 = load i32, i32* %9, align 4
  %47 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i64 %45, i32 %46)
  %48 = load i32, i32* @EIO, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %3, align 4
  br label %145

50:                                               ; preds = %36
  %51 = load i32, i32* %9, align 4
  %52 = call i32 (i32, i8*, i32, ...) @cFYI(i32 1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %51)
  %53 = load %struct.kvec*, %struct.kvec** %7, align 8
  %54 = getelementptr inbounds %struct.kvec, %struct.kvec* %53, i64 0
  %55 = getelementptr inbounds %struct.kvec, %struct.kvec* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.kvec*, %struct.kvec** %7, align 8
  %58 = getelementptr inbounds %struct.kvec, %struct.kvec* %57, i64 0
  %59 = getelementptr inbounds %struct.kvec, %struct.kvec* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @dump_smb(i32 %56, i32 %60)
  %62 = load %struct.socket*, %struct.socket** %14, align 8
  %63 = load i32, i32* @SOL_TCP, align 4
  %64 = load i32, i32* @TCP_CORK, align 4
  %65 = bitcast i32* %15 to i8*
  %66 = call i32 @kernel_setsockopt(%struct.socket* %62, i32 %63, i32 %64, i8* %65, i32 4)
  %67 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %4, align 8
  %68 = load %struct.kvec*, %struct.kvec** %7, align 8
  %69 = load i32, i32* %8, align 4
  %70 = call i32 @smb_send_kvec(%struct.TCP_Server_Info* %67, %struct.kvec* %68, i32 %69, i64* %13)
  store i32 %70, i32* %6, align 4
  %71 = load i32, i32* %6, align 4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %50
  br label %109

74:                                               ; preds = %50
  %75 = load i64, i64* %13, align 8
  %76 = load i64, i64* %12, align 8
  %77 = add i64 %76, %75
  store i64 %77, i64* %12, align 8
  store i32 0, i32* %11, align 4
  br label %78

78:                                               ; preds = %105, %74
  %79 = load i32, i32* %11, align 4
  %80 = load %struct.smb_rqst*, %struct.smb_rqst** %5, align 8
  %81 = getelementptr inbounds %struct.smb_rqst, %struct.smb_rqst* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = icmp ult i32 %79, %82
  br i1 %83, label %84, label %108

84:                                               ; preds = %78
  %85 = load %struct.smb_rqst*, %struct.smb_rqst** %5, align 8
  %86 = load i32, i32* %11, align 4
  %87 = call i32 @cifs_rqst_page_to_kvec(%struct.smb_rqst* %85, i32 %86, %struct.kvec* %16)
  %88 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %4, align 8
  %89 = call i32 @smb_send_kvec(%struct.TCP_Server_Info* %88, %struct.kvec* %16, i32 1, i64* %13)
  store i32 %89, i32* %6, align 4
  %90 = load %struct.smb_rqst*, %struct.smb_rqst** %5, align 8
  %91 = getelementptr inbounds %struct.smb_rqst, %struct.smb_rqst* %90, i32 0, i32 2
  %92 = load i32*, i32** %91, align 8
  %93 = load i32, i32* %11, align 4
  %94 = zext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %92, i64 %94
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @kunmap(i32 %96)
  %98 = load i32, i32* %6, align 4
  %99 = icmp slt i32 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %84
  br label %108

101:                                              ; preds = %84
  %102 = load i64, i64* %13, align 8
  %103 = load i64, i64* %12, align 8
  %104 = add i64 %103, %102
  store i64 %104, i64* %12, align 8
  br label %105

105:                                              ; preds = %101
  %106 = load i32, i32* %11, align 4
  %107 = add i32 %106, 1
  store i32 %107, i32* %11, align 4
  br label %78

108:                                              ; preds = %100, %78
  br label %109

109:                                              ; preds = %108, %73
  store i32 0, i32* %15, align 4
  %110 = load %struct.socket*, %struct.socket** %14, align 8
  %111 = load i32, i32* @SOL_TCP, align 4
  %112 = load i32, i32* @TCP_CORK, align 4
  %113 = bitcast i32* %15 to i8*
  %114 = call i32 @kernel_setsockopt(%struct.socket* %110, i32 %111, i32 %112, i8* %113, i32 4)
  %115 = load i64, i64* %12, align 8
  %116 = icmp ugt i64 %115, 0
  br i1 %116, label %117, label %131

117:                                              ; preds = %109
  %118 = load i64, i64* %12, align 8
  %119 = load i32, i32* %9, align 4
  %120 = add i32 %119, 4
  %121 = zext i32 %120 to i64
  %122 = icmp ne i64 %118, %121
  br i1 %122, label %123, label %131

123:                                              ; preds = %117
  %124 = load i32, i32* %9, align 4
  %125 = add i32 %124, 4
  %126 = load i64, i64* %12, align 8
  %127 = call i32 (i32, i8*, i32, ...) @cFYI(i32 1, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.2, i64 0, i64 0), i32 %125, i64 %126)
  %128 = load i32, i32* @CifsNeedReconnect, align 4
  %129 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %4, align 8
  %130 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %129, i32 0, i32 0
  store i32 %128, i32* %130, align 8
  br label %131

131:                                              ; preds = %123, %117, %109
  %132 = load i32, i32* %6, align 4
  %133 = icmp slt i32 %132, 0
  br i1 %133, label %134, label %142

134:                                              ; preds = %131
  %135 = load i32, i32* %6, align 4
  %136 = load i32, i32* @EINTR, align 4
  %137 = sub nsw i32 0, %136
  %138 = icmp ne i32 %135, %137
  br i1 %138, label %139, label %142

139:                                              ; preds = %134
  %140 = load i32, i32* %6, align 4
  %141 = call i32 @cERROR(i32 1, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i32 %140)
  br label %143

142:                                              ; preds = %134, %131
  store i32 0, i32* %6, align 4
  br label %143

143:                                              ; preds = %142, %139
  %144 = load i32, i32* %6, align 4
  store i32 %144, i32* %3, align 4
  br label %145

145:                                              ; preds = %143, %44, %33
  %146 = load i32, i32* %3, align 4
  ret i32 %146
}

declare dso_local i32 @get_rfc1002_length(i32) #1

declare dso_local i64 @rqst_len(%struct.smb_rqst*) #1

declare dso_local i32 @WARN(i32, i8*, i64, i32) #1

declare dso_local i32 @cFYI(i32, i8*, i32, ...) #1

declare dso_local i32 @dump_smb(i32, i32) #1

declare dso_local i32 @kernel_setsockopt(%struct.socket*, i32, i32, i8*, i32) #1

declare dso_local i32 @smb_send_kvec(%struct.TCP_Server_Info*, %struct.kvec*, i32, i64*) #1

declare dso_local i32 @cifs_rqst_page_to_kvec(%struct.smb_rqst*, i32, %struct.kvec*) #1

declare dso_local i32 @kunmap(i32) #1

declare dso_local i32 @cERROR(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
