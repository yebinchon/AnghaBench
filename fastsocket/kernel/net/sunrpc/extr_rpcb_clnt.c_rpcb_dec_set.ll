; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_rpcb_clnt.c_rpcb_dec_set.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_rpcb_clnt.c_rpcb_dec_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_rqst = type { i32, %struct.rpc_task* }
%struct.rpc_task = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.xdr_stream = type { i32 }

@EIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"RPC: %5u RPCB_%s call %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"succeeded\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rpc_rqst*, i64*, i32*)* @rpcb_dec_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rpcb_dec_set(%struct.rpc_rqst* %0, i64* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rpc_rqst*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.rpc_task*, align 8
  %9 = alloca %struct.xdr_stream, align 4
  store %struct.rpc_rqst* %0, %struct.rpc_rqst** %5, align 8
  store i64* %1, i64** %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = load %struct.rpc_rqst*, %struct.rpc_rqst** %5, align 8
  %11 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %10, i32 0, i32 1
  %12 = load %struct.rpc_task*, %struct.rpc_task** %11, align 8
  store %struct.rpc_task* %12, %struct.rpc_task** %8, align 8
  %13 = load %struct.rpc_rqst*, %struct.rpc_rqst** %5, align 8
  %14 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %13, i32 0, i32 0
  %15 = load i64*, i64** %6, align 8
  %16 = call i32 @xdr_init_decode(%struct.xdr_stream* %9, i32* %14, i64* %15)
  %17 = call i64* @xdr_inline_decode(%struct.xdr_stream* %9, i32 8)
  store i64* %17, i64** %6, align 8
  %18 = load i64*, i64** %6, align 8
  %19 = icmp eq i64* %18, null
  %20 = zext i1 %19 to i32
  %21 = call i64 @unlikely(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %3
  %24 = load i32, i32* @EIO, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %49

26:                                               ; preds = %3
  %27 = load i32*, i32** %7, align 8
  store i32 0, i32* %27, align 4
  %28 = load i64*, i64** %6, align 8
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %26
  %32 = load i32*, i32** %7, align 8
  store i32 1, i32* %32, align 4
  br label %33

33:                                               ; preds = %31, %26
  %34 = load %struct.rpc_task*, %struct.rpc_task** %8, align 8
  %35 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.rpc_task*, %struct.rpc_task** %8, align 8
  %38 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32*, i32** %7, align 8
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %44, 0
  %46 = zext i1 %45 to i64
  %47 = select i1 %45, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0)
  %48 = call i32 @dprintk(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %36, i32 %42, i8* %47)
  store i32 0, i32* %4, align 4
  br label %49

49:                                               ; preds = %33, %23
  %50 = load i32, i32* %4, align 4
  ret i32 %50
}

declare dso_local i32 @xdr_init_decode(%struct.xdr_stream*, i32*, i64*) #1

declare dso_local i64* @xdr_inline_decode(%struct.xdr_stream*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dprintk(i8*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
