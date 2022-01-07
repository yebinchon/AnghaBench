; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_rpcb_clnt.c_rpcb_dec_getport.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_rpcb_clnt.c_rpcb_dec_getport.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_rqst = type { i32, %struct.rpc_task* }
%struct.rpc_task = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.rpcbind_args = type { i64 }
%struct.xdr_stream = type { i32 }

@EIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"RPC: %5u PMAP_%s result: %lu\0A\00", align 1
@USHORT_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rpc_rqst*, i32*, %struct.rpcbind_args*)* @rpcb_dec_getport to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rpcb_dec_getport(%struct.rpc_rqst* %0, i32* %1, %struct.rpcbind_args* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rpc_rqst*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.rpcbind_args*, align 8
  %8 = alloca %struct.rpc_task*, align 8
  %9 = alloca %struct.xdr_stream, align 4
  %10 = alloca i64, align 8
  store %struct.rpc_rqst* %0, %struct.rpc_rqst** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.rpcbind_args* %2, %struct.rpcbind_args** %7, align 8
  %11 = load %struct.rpc_rqst*, %struct.rpc_rqst** %5, align 8
  %12 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %11, i32 0, i32 1
  %13 = load %struct.rpc_task*, %struct.rpc_task** %12, align 8
  store %struct.rpc_task* %13, %struct.rpc_task** %8, align 8
  %14 = load %struct.rpc_rqst*, %struct.rpc_rqst** %5, align 8
  %15 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %14, i32 0, i32 0
  %16 = load i32*, i32** %6, align 8
  %17 = call i32 @xdr_init_decode(%struct.xdr_stream* %9, i32* %15, i32* %16)
  %18 = load %struct.rpcbind_args*, %struct.rpcbind_args** %7, align 8
  %19 = getelementptr inbounds %struct.rpcbind_args, %struct.rpcbind_args* %18, i32 0, i32 0
  store i64 0, i64* %19, align 8
  %20 = call i32* @xdr_inline_decode(%struct.xdr_stream* %9, i32 4)
  store i32* %20, i32** %6, align 8
  %21 = load i32*, i32** %6, align 8
  %22 = icmp eq i32* %21, null
  %23 = zext i1 %22 to i32
  %24 = call i64 @unlikely(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %3
  %27 = load i32, i32* @EIO, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %57

29:                                               ; preds = %3
  %30 = load i32*, i32** %6, align 8
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @ntohl(i32 %31)
  store i64 %32, i64* %10, align 8
  %33 = load %struct.rpc_task*, %struct.rpc_task** %8, align 8
  %34 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.rpc_task*, %struct.rpc_task** %8, align 8
  %37 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i64, i64* %10, align 8
  %43 = call i32 @dprintk(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %35, i32 %41, i64 %42)
  %44 = load i64, i64* %10, align 8
  %45 = load i64, i64* @USHORT_MAX, align 8
  %46 = icmp ugt i64 %44, %45
  %47 = zext i1 %46 to i32
  %48 = call i64 @unlikely(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %29
  %51 = load i32, i32* @EIO, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %4, align 4
  br label %57

53:                                               ; preds = %29
  %54 = load i64, i64* %10, align 8
  %55 = load %struct.rpcbind_args*, %struct.rpcbind_args** %7, align 8
  %56 = getelementptr inbounds %struct.rpcbind_args, %struct.rpcbind_args* %55, i32 0, i32 0
  store i64 %54, i64* %56, align 8
  store i32 0, i32* %4, align 4
  br label %57

57:                                               ; preds = %53, %50, %26
  %58 = load i32, i32* %4, align 4
  ret i32 %58
}

declare dso_local i32 @xdr_init_decode(%struct.xdr_stream*, i32*, i32*) #1

declare dso_local i32* @xdr_inline_decode(%struct.xdr_stream*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @ntohl(i32) #1

declare dso_local i32 @dprintk(i8*, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
