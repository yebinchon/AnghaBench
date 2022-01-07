; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/qdsp5/extr_audmgr.c_audmgr_rpc_thread.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/qdsp5/extr_audmgr.c_audmgr_rpc_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.audmgr = type { i32, i32*, i32 }
%struct.rpc_request_hdr = type { i32, i32, i32 }
%struct.rpc_reply_hdr = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"audmgr_rpc_thread() start\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"audmgr: rpc read failed (%d)\0A\00", align 1
@RPC_COMMON_HDR_SZ = common dso_local global i32 0, align 4
@RPC_TYPE_REPLY = common dso_local global i64 0, align 8
@RPC_REPLY_HDR_SZ = common dso_local global i32 0, align 4
@RPCMSG_REPLYSTAT_ACCEPTED = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [29 x i8] c"audmgr: rpc_reply status %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"audmgr: rpc_reply denied!\0A\00", align 1
@RPC_REQUEST_HDR_SZ = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [26 x i8] c"audmgr_rpc_thread() exit\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @audmgr_rpc_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @audmgr_rpc_thread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.audmgr*, align 8
  %4 = alloca %struct.rpc_request_hdr*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.rpc_reply_hdr*, align 8
  %8 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %9 = load i8*, i8** %2, align 8
  %10 = bitcast i8* %9 to %struct.audmgr*
  store %struct.audmgr* %10, %struct.audmgr** %3, align 8
  store %struct.rpc_request_hdr* null, %struct.rpc_request_hdr** %4, align 8
  %11 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %12

12:                                               ; preds = %79, %78, %73, %53, %37, %1
  %13 = call i32 (...) @kthread_should_stop()
  %14 = icmp ne i32 %13, 0
  %15 = xor i1 %14, true
  br i1 %15, label %16, label %97

16:                                               ; preds = %12
  %17 = load %struct.rpc_request_hdr*, %struct.rpc_request_hdr** %4, align 8
  %18 = icmp ne %struct.rpc_request_hdr* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %16
  %20 = load %struct.rpc_request_hdr*, %struct.rpc_request_hdr** %4, align 8
  %21 = call i32 @kfree(%struct.rpc_request_hdr* %20)
  store %struct.rpc_request_hdr* null, %struct.rpc_request_hdr** %4, align 8
  br label %22

22:                                               ; preds = %19, %16
  %23 = load %struct.audmgr*, %struct.audmgr** %3, align 8
  %24 = getelementptr inbounds %struct.audmgr, %struct.audmgr* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = bitcast %struct.rpc_request_hdr** %4 to i8**
  %27 = call i32 @msm_rpc_read(i32 %25, i8** %26, i32 -1, i32 -1)
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %22
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @pr_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %31)
  br label %97

33:                                               ; preds = %22
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* @RPC_COMMON_HDR_SZ, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %33
  br label %12

38:                                               ; preds = %33
  %39 = load %struct.rpc_request_hdr*, %struct.rpc_request_hdr** %4, align 8
  %40 = getelementptr inbounds %struct.rpc_request_hdr, %struct.rpc_request_hdr* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = call i64 @be32_to_cpu(i32 %41)
  store i64 %42, i64* %5, align 8
  %43 = load i64, i64* %5, align 8
  %44 = load i64, i64* @RPC_TYPE_REPLY, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %74

46:                                               ; preds = %38
  %47 = load %struct.rpc_request_hdr*, %struct.rpc_request_hdr** %4, align 8
  %48 = bitcast %struct.rpc_request_hdr* %47 to i8*
  %49 = bitcast i8* %48 to %struct.rpc_reply_hdr*
  store %struct.rpc_reply_hdr* %49, %struct.rpc_reply_hdr** %7, align 8
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* @RPC_REPLY_HDR_SZ, align 4
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %46
  br label %12

54:                                               ; preds = %46
  %55 = load %struct.rpc_reply_hdr*, %struct.rpc_reply_hdr** %7, align 8
  %56 = getelementptr inbounds %struct.rpc_reply_hdr, %struct.rpc_reply_hdr* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i64 @be32_to_cpu(i32 %57)
  store i64 %58, i64* %8, align 8
  %59 = load i64, i64* %8, align 8
  %60 = load i64, i64* @RPCMSG_REPLYSTAT_ACCEPTED, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %71

62:                                               ; preds = %54
  %63 = load %struct.rpc_reply_hdr*, %struct.rpc_reply_hdr** %7, align 8
  %64 = getelementptr inbounds %struct.rpc_reply_hdr, %struct.rpc_reply_hdr* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i64 @be32_to_cpu(i32 %67)
  store i64 %68, i64* %8, align 8
  %69 = load i64, i64* %8, align 8
  %70 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i64 %69)
  br label %73

71:                                               ; preds = %54
  %72 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  br label %73

73:                                               ; preds = %71, %62
  br label %12

74:                                               ; preds = %38
  %75 = load i32, i32* %6, align 4
  %76 = load i32, i32* @RPC_REQUEST_HDR_SZ, align 4
  %77 = icmp slt i32 %75, %76
  br i1 %77, label %78, label %79

78:                                               ; preds = %74
  br label %12

79:                                               ; preds = %74
  %80 = load %struct.rpc_request_hdr*, %struct.rpc_request_hdr** %4, align 8
  %81 = getelementptr inbounds %struct.rpc_request_hdr, %struct.rpc_request_hdr* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = call i64 @be32_to_cpu(i32 %82)
  %84 = load %struct.rpc_request_hdr*, %struct.rpc_request_hdr** %4, align 8
  %85 = getelementptr inbounds %struct.rpc_request_hdr, %struct.rpc_request_hdr* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i64 @be32_to_cpu(i32 %86)
  %88 = load %struct.rpc_request_hdr*, %struct.rpc_request_hdr** %4, align 8
  %89 = getelementptr inbounds %struct.rpc_request_hdr, %struct.rpc_request_hdr* %88, i64 1
  %90 = bitcast %struct.rpc_request_hdr* %89 to i8*
  %91 = load i32, i32* %6, align 4
  %92 = sext i32 %91 to i64
  %93 = sub i64 %92, 12
  %94 = trunc i64 %93 to i32
  %95 = load i8*, i8** %2, align 8
  %96 = call i32 @process_rpc_request(i64 %83, i64 %87, i8* %90, i32 %94, i8* %95)
  br label %12

97:                                               ; preds = %30, %12
  %98 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  %99 = load %struct.rpc_request_hdr*, %struct.rpc_request_hdr** %4, align 8
  %100 = icmp ne %struct.rpc_request_hdr* %99, null
  br i1 %100, label %101, label %104

101:                                              ; preds = %97
  %102 = load %struct.rpc_request_hdr*, %struct.rpc_request_hdr** %4, align 8
  %103 = call i32 @kfree(%struct.rpc_request_hdr* %102)
  store %struct.rpc_request_hdr* null, %struct.rpc_request_hdr** %4, align 8
  br label %104

104:                                              ; preds = %101, %97
  %105 = load %struct.audmgr*, %struct.audmgr** %3, align 8
  %106 = getelementptr inbounds %struct.audmgr, %struct.audmgr* %105, i32 0, i32 1
  store i32* null, i32** %106, align 8
  %107 = load %struct.audmgr*, %struct.audmgr** %3, align 8
  %108 = getelementptr inbounds %struct.audmgr, %struct.audmgr* %107, i32 0, i32 0
  %109 = call i32 @wake_up(i32* %108)
  ret i32 0
}

declare dso_local i32 @pr_info(i8*, ...) #1

declare dso_local i32 @kthread_should_stop(...) #1

declare dso_local i32 @kfree(%struct.rpc_request_hdr*) #1

declare dso_local i32 @msm_rpc_read(i32, i8**, i32, i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i64 @be32_to_cpu(i32) #1

declare dso_local i32 @process_rpc_request(i64, i64, i8*, i32, i8*) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
