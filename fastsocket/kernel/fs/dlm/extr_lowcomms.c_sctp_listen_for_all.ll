; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/dlm/extr_lowcomms.c_sctp_listen_for_all.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/dlm/extr_lowcomms.c_sctp_listen_for_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.socket = type { %struct.TYPE_7__*, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { i32 (%struct.socket*, i32)* }
%struct.TYPE_6__ = type { i32, %struct.connection* }
%struct.connection = type { %struct.socket*, i32, i32 }
%struct.sockaddr_storage = type { i32 }
%struct.sctp_event_subscribe = type { i32, i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@NEEDED_RMEM = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Using SCTP for communications\00", align 1
@dlm_local_addr = common dso_local global %struct.TYPE_8__** null, align 8
@SOCK_SEQPACKET = common dso_local global i32 0, align 4
@IPPROTO_SCTP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"Can't create comms socket, check SCTP is loaded\00", align 1
@SOL_SOCKET = common dso_local global i32 0, align 4
@SO_RCVBUFFORCE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [43 x i8] c"Error increasing buffer space on socket %d\00", align 1
@SOL_SCTP = common dso_local global i32 0, align 4
@SCTP_EVENTS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [47 x i8] c"Failed to set SCTP_EVENTS on socket: result=%d\00", align 1
@lowcomms_data_ready = common dso_local global i32 0, align 4
@receive_from_sock = common dso_local global i32 0, align 4
@sctp_init_assoc = common dso_local global i32 0, align 4
@dlm_local_count = common dso_local global i32 0, align 4
@dlm_config = common dso_local global %struct.TYPE_9__ zeroinitializer, align 4
@.str.4 = private unnamed_addr constant [27 x i8] c"Can't set socket listening\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @sctp_listen_for_all to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sctp_listen_for_all() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.socket*, align 8
  %3 = alloca %struct.sockaddr_storage, align 4
  %4 = alloca %struct.sctp_event_subscribe, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.connection*, align 8
  %10 = alloca i32, align 4
  store %struct.socket* null, %struct.socket** %2, align 8
  %11 = load i32, i32* @EINVAL, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %5, align 4
  store i32 1, i32* %6, align 4
  %13 = load i32, i32* @GFP_NOFS, align 4
  %14 = call %struct.connection* @nodeid2con(i32 0, i32 %13)
  store %struct.connection* %14, %struct.connection** %9, align 8
  %15 = load i32, i32* @NEEDED_RMEM, align 4
  store i32 %15, i32* %10, align 4
  %16 = load %struct.connection*, %struct.connection** %9, align 8
  %17 = icmp ne %struct.connection* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %0
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %1, align 4
  br label %131

21:                                               ; preds = %0
  %22 = call i32 (i8*, ...) @log_print(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %23 = load %struct.TYPE_8__**, %struct.TYPE_8__*** @dlm_local_addr, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %23, i64 0
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @SOCK_SEQPACKET, align 4
  %29 = load i32, i32* @IPPROTO_SCTP, align 4
  %30 = call i32 @sock_create_kern(i32 %27, i32 %28, i32 %29, %struct.socket** %2)
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %5, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %21
  %34 = call i32 (i8*, ...) @log_print(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0))
  br label %129

35:                                               ; preds = %21
  %36 = call i32 @memset(%struct.sctp_event_subscribe* %4, i32 0, i32 20)
  %37 = getelementptr inbounds %struct.sctp_event_subscribe, %struct.sctp_event_subscribe* %4, i32 0, i32 0
  store i32 1, i32* %37, align 4
  %38 = getelementptr inbounds %struct.sctp_event_subscribe, %struct.sctp_event_subscribe* %4, i32 0, i32 1
  store i32 1, i32* %38, align 4
  %39 = getelementptr inbounds %struct.sctp_event_subscribe, %struct.sctp_event_subscribe* %4, i32 0, i32 2
  store i32 1, i32* %39, align 4
  %40 = getelementptr inbounds %struct.sctp_event_subscribe, %struct.sctp_event_subscribe* %4, i32 0, i32 3
  store i32 1, i32* %40, align 4
  %41 = getelementptr inbounds %struct.sctp_event_subscribe, %struct.sctp_event_subscribe* %4, i32 0, i32 4
  store i32 1, i32* %41, align 4
  %42 = load %struct.socket*, %struct.socket** %2, align 8
  %43 = load i32, i32* @SOL_SOCKET, align 4
  %44 = load i32, i32* @SO_RCVBUFFORCE, align 4
  %45 = bitcast i32* %10 to i8*
  %46 = call i32 @kernel_setsockopt(%struct.socket* %42, i32 %43, i32 %44, i8* %45, i32 4)
  store i32 %46, i32* %5, align 4
  %47 = load i32, i32* %5, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %35
  %50 = load i32, i32* %5, align 4
  %51 = call i32 (i8*, ...) @log_print(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i32 %50)
  br label %52

52:                                               ; preds = %49, %35
  %53 = load %struct.socket*, %struct.socket** %2, align 8
  %54 = load i32, i32* @SOL_SCTP, align 4
  %55 = load i32, i32* @SCTP_EVENTS, align 4
  %56 = bitcast %struct.sctp_event_subscribe* %4 to i8*
  %57 = call i32 @kernel_setsockopt(%struct.socket* %53, i32 %54, i32 %55, i8* %56, i32 20)
  store i32 %57, i32* %5, align 4
  %58 = load i32, i32* %5, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %52
  %61 = load i32, i32* %5, align 4
  %62 = call i32 (i8*, ...) @log_print(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0), i32 %61)
  br label %124

63:                                               ; preds = %52
  %64 = load %struct.connection*, %struct.connection** %9, align 8
  %65 = load %struct.socket*, %struct.socket** %2, align 8
  %66 = getelementptr inbounds %struct.socket, %struct.socket* %65, i32 0, i32 1
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 1
  store %struct.connection* %64, %struct.connection** %68, align 8
  %69 = load %struct.socket*, %struct.socket** %2, align 8
  %70 = load %struct.connection*, %struct.connection** %9, align 8
  %71 = getelementptr inbounds %struct.connection, %struct.connection* %70, i32 0, i32 0
  store %struct.socket* %69, %struct.socket** %71, align 8
  %72 = load i32, i32* @lowcomms_data_ready, align 4
  %73 = load %struct.connection*, %struct.connection** %9, align 8
  %74 = getelementptr inbounds %struct.connection, %struct.connection* %73, i32 0, i32 0
  %75 = load %struct.socket*, %struct.socket** %74, align 8
  %76 = getelementptr inbounds %struct.socket, %struct.socket* %75, i32 0, i32 1
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 0
  store i32 %72, i32* %78, align 8
  %79 = load i32, i32* @receive_from_sock, align 4
  %80 = load %struct.connection*, %struct.connection** %9, align 8
  %81 = getelementptr inbounds %struct.connection, %struct.connection* %80, i32 0, i32 2
  store i32 %79, i32* %81, align 4
  %82 = load i32, i32* @sctp_init_assoc, align 4
  %83 = load %struct.connection*, %struct.connection** %9, align 8
  %84 = getelementptr inbounds %struct.connection, %struct.connection* %83, i32 0, i32 1
  store i32 %82, i32* %84, align 8
  store i32 0, i32* %7, align 4
  br label %85

85:                                               ; preds = %108, %63
  %86 = load i32, i32* %7, align 4
  %87 = load i32, i32* @dlm_local_count, align 4
  %88 = icmp slt i32 %86, %87
  br i1 %88, label %89, label %111

89:                                               ; preds = %85
  %90 = load %struct.TYPE_8__**, %struct.TYPE_8__*** @dlm_local_addr, align 8
  %91 = load i32, i32* %7, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %90, i64 %92
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** %93, align 8
  %95 = call i32 @memcpy(%struct.sockaddr_storage* %3, %struct.TYPE_8__* %94, i32 4)
  %96 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @dlm_config, i32 0, i32 0), align 4
  %97 = call i32 @make_sockaddr(%struct.sockaddr_storage* %3, i32 %96, i32* %8)
  %98 = load %struct.connection*, %struct.connection** %9, align 8
  %99 = load i32, i32* %8, align 4
  %100 = load i32, i32* %6, align 4
  %101 = call i32 @add_sctp_bind_addr(%struct.connection* %98, %struct.sockaddr_storage* %3, i32 %99, i32 %100)
  store i32 %101, i32* %5, align 4
  %102 = load i32, i32* %5, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %89
  br label %124

105:                                              ; preds = %89
  %106 = load i32, i32* %6, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %6, align 4
  br label %108

108:                                              ; preds = %105
  %109 = load i32, i32* %7, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %7, align 4
  br label %85

111:                                              ; preds = %85
  %112 = load %struct.socket*, %struct.socket** %2, align 8
  %113 = getelementptr inbounds %struct.socket, %struct.socket* %112, i32 0, i32 0
  %114 = load %struct.TYPE_7__*, %struct.TYPE_7__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i32 0, i32 0
  %116 = load i32 (%struct.socket*, i32)*, i32 (%struct.socket*, i32)** %115, align 8
  %117 = load %struct.socket*, %struct.socket** %2, align 8
  %118 = call i32 %116(%struct.socket* %117, i32 5)
  store i32 %118, i32* %5, align 4
  %119 = load i32, i32* %5, align 4
  %120 = icmp slt i32 %119, 0
  br i1 %120, label %121, label %123

121:                                              ; preds = %111
  %122 = call i32 (i8*, ...) @log_print(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  br label %124

123:                                              ; preds = %111
  store i32 0, i32* %1, align 4
  br label %131

124:                                              ; preds = %121, %104, %60
  %125 = load %struct.socket*, %struct.socket** %2, align 8
  %126 = call i32 @sock_release(%struct.socket* %125)
  %127 = load %struct.connection*, %struct.connection** %9, align 8
  %128 = getelementptr inbounds %struct.connection, %struct.connection* %127, i32 0, i32 0
  store %struct.socket* null, %struct.socket** %128, align 8
  br label %129

129:                                              ; preds = %124, %33
  %130 = load i32, i32* %5, align 4
  store i32 %130, i32* %1, align 4
  br label %131

131:                                              ; preds = %129, %123, %18
  %132 = load i32, i32* %1, align 4
  ret i32 %132
}

declare dso_local %struct.connection* @nodeid2con(i32, i32) #1

declare dso_local i32 @log_print(i8*, ...) #1

declare dso_local i32 @sock_create_kern(i32, i32, i32, %struct.socket**) #1

declare dso_local i32 @memset(%struct.sctp_event_subscribe*, i32, i32) #1

declare dso_local i32 @kernel_setsockopt(%struct.socket*, i32, i32, i8*, i32) #1

declare dso_local i32 @memcpy(%struct.sockaddr_storage*, %struct.TYPE_8__*, i32) #1

declare dso_local i32 @make_sockaddr(%struct.sockaddr_storage*, i32, i32*) #1

declare dso_local i32 @add_sctp_bind_addr(%struct.connection*, %struct.sockaddr_storage*, i32, i32) #1

declare dso_local i32 @sock_release(%struct.socket*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
