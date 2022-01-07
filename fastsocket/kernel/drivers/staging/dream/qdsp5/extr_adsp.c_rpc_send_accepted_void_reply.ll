; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/qdsp5/extr_adsp.c_rpc_send_accepted_void_reply.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/qdsp5/extr_adsp.c_rpc_send_accepted_void_reply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msm_rpc_endpoint = type { i32 }
%struct.rpc_reply_hdr = type { %struct.TYPE_4__, i8*, i8*, i8* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i64, i8* }

@RPCMSG_REPLYSTAT_ACCEPTED = common dso_local global i32 0, align 4
@rpc_cb_server_client = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"adsp: could not write RPC response: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.msm_rpc_endpoint*, i32, i32)* @rpc_send_accepted_void_reply to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rpc_send_accepted_void_reply(%struct.msm_rpc_endpoint* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.msm_rpc_endpoint*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [48 x i32], align 16
  %9 = alloca %struct.rpc_reply_hdr*, align 8
  store %struct.msm_rpc_endpoint* %0, %struct.msm_rpc_endpoint** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %10 = getelementptr inbounds [48 x i32], [48 x i32]* %8, i64 0, i64 0
  %11 = bitcast i32* %10 to %struct.rpc_reply_hdr*
  store %struct.rpc_reply_hdr* %11, %struct.rpc_reply_hdr** %9, align 8
  %12 = load i32, i32* %5, align 4
  %13 = call i8* @cpu_to_be32(i32 %12)
  %14 = load %struct.rpc_reply_hdr*, %struct.rpc_reply_hdr** %9, align 8
  %15 = getelementptr inbounds %struct.rpc_reply_hdr, %struct.rpc_reply_hdr* %14, i32 0, i32 3
  store i8* %13, i8** %15, align 8
  %16 = call i8* @cpu_to_be32(i32 1)
  %17 = load %struct.rpc_reply_hdr*, %struct.rpc_reply_hdr** %9, align 8
  %18 = getelementptr inbounds %struct.rpc_reply_hdr, %struct.rpc_reply_hdr* %17, i32 0, i32 2
  store i8* %16, i8** %18, align 8
  %19 = load i32, i32* @RPCMSG_REPLYSTAT_ACCEPTED, align 4
  %20 = call i8* @cpu_to_be32(i32 %19)
  %21 = load %struct.rpc_reply_hdr*, %struct.rpc_reply_hdr** %9, align 8
  %22 = getelementptr inbounds %struct.rpc_reply_hdr, %struct.rpc_reply_hdr* %21, i32 0, i32 1
  store i8* %20, i8** %22, align 8
  %23 = load i32, i32* %6, align 4
  %24 = call i8* @cpu_to_be32(i32 %23)
  %25 = load %struct.rpc_reply_hdr*, %struct.rpc_reply_hdr** %9, align 8
  %26 = getelementptr inbounds %struct.rpc_reply_hdr, %struct.rpc_reply_hdr* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 2
  store i8* %24, i8** %28, align 8
  %29 = load %struct.rpc_reply_hdr*, %struct.rpc_reply_hdr** %9, align 8
  %30 = getelementptr inbounds %struct.rpc_reply_hdr, %struct.rpc_reply_hdr* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 1
  store i64 0, i64* %32, align 8
  %33 = load %struct.rpc_reply_hdr*, %struct.rpc_reply_hdr** %9, align 8
  %34 = getelementptr inbounds %struct.rpc_reply_hdr, %struct.rpc_reply_hdr* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  store i64 0, i64* %36, align 8
  %37 = load i32, i32* @rpc_cb_server_client, align 4
  %38 = getelementptr inbounds [48 x i32], [48 x i32]* %8, i64 0, i64 0
  %39 = call i32 @msm_rpc_write(i32 %37, i32* %38, i32 192)
  store i32 %39, i32* %7, align 4
  %40 = load i32, i32* %7, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %3
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @pr_err(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %43)
  br label %45

45:                                               ; preds = %42, %3
  %46 = load i32, i32* %7, align 4
  ret i32 %46
}

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @msm_rpc_write(i32, i32*, i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
