; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_rpcb_clnt.c_rpcb_enc_mapping.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_rpcb_clnt.c_rpcb_enc_mapping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_rqst = type { i32, %struct.rpc_task* }
%struct.rpc_task = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.rpcbind_args = type { i32, i32, i32, i32 }
%struct.xdr_stream = type { i32 }

@.str = private unnamed_addr constant [49 x i8] c"RPC: %5u encoding PMAP_%s call (%u, %u, %d, %u)\0A\00", align 1
@RPCB_mappingargs_sz = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rpc_rqst*, i8**, %struct.rpcbind_args*)* @rpcb_enc_mapping to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rpcb_enc_mapping(%struct.rpc_rqst* %0, i8** %1, %struct.rpcbind_args* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rpc_rqst*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca %struct.rpcbind_args*, align 8
  %8 = alloca %struct.rpc_task*, align 8
  %9 = alloca %struct.xdr_stream, align 4
  store %struct.rpc_rqst* %0, %struct.rpc_rqst** %5, align 8
  store i8** %1, i8*** %6, align 8
  store %struct.rpcbind_args* %2, %struct.rpcbind_args** %7, align 8
  %10 = load %struct.rpc_rqst*, %struct.rpc_rqst** %5, align 8
  %11 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %10, i32 0, i32 1
  %12 = load %struct.rpc_task*, %struct.rpc_task** %11, align 8
  store %struct.rpc_task* %12, %struct.rpc_task** %8, align 8
  %13 = load %struct.rpc_task*, %struct.rpc_task** %8, align 8
  %14 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.rpc_task*, %struct.rpc_task** %8, align 8
  %17 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.rpcbind_args*, %struct.rpcbind_args** %7, align 8
  %23 = getelementptr inbounds %struct.rpcbind_args, %struct.rpcbind_args* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.rpcbind_args*, %struct.rpcbind_args** %7, align 8
  %26 = getelementptr inbounds %struct.rpcbind_args, %struct.rpcbind_args* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.rpcbind_args*, %struct.rpcbind_args** %7, align 8
  %29 = getelementptr inbounds %struct.rpcbind_args, %struct.rpcbind_args* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.rpcbind_args*, %struct.rpcbind_args** %7, align 8
  %32 = getelementptr inbounds %struct.rpcbind_args, %struct.rpcbind_args* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @dprintk(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %15, i32 %21, i32 %24, i32 %27, i32 %30, i32 %33)
  %35 = load %struct.rpc_rqst*, %struct.rpc_rqst** %5, align 8
  %36 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %35, i32 0, i32 0
  %37 = load i8**, i8*** %6, align 8
  %38 = call i32 @xdr_init_encode(%struct.xdr_stream* %9, i32* %36, i8** %37)
  %39 = load i32, i32* @RPCB_mappingargs_sz, align 4
  %40 = sext i32 %39 to i64
  %41 = mul i64 8, %40
  %42 = trunc i64 %41 to i32
  %43 = call i8** @xdr_reserve_space(%struct.xdr_stream* %9, i32 %42)
  store i8** %43, i8*** %6, align 8
  %44 = load i8**, i8*** %6, align 8
  %45 = icmp eq i8** %44, null
  %46 = zext i1 %45 to i32
  %47 = call i64 @unlikely(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %3
  %50 = load i32, i32* @EIO, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %4, align 4
  br label %76

52:                                               ; preds = %3
  %53 = load %struct.rpcbind_args*, %struct.rpcbind_args** %7, align 8
  %54 = getelementptr inbounds %struct.rpcbind_args, %struct.rpcbind_args* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = call i8* @htonl(i32 %55)
  %57 = load i8**, i8*** %6, align 8
  %58 = getelementptr inbounds i8*, i8** %57, i32 1
  store i8** %58, i8*** %6, align 8
  store i8* %56, i8** %57, align 8
  %59 = load %struct.rpcbind_args*, %struct.rpcbind_args** %7, align 8
  %60 = getelementptr inbounds %struct.rpcbind_args, %struct.rpcbind_args* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = call i8* @htonl(i32 %61)
  %63 = load i8**, i8*** %6, align 8
  %64 = getelementptr inbounds i8*, i8** %63, i32 1
  store i8** %64, i8*** %6, align 8
  store i8* %62, i8** %63, align 8
  %65 = load %struct.rpcbind_args*, %struct.rpcbind_args** %7, align 8
  %66 = getelementptr inbounds %struct.rpcbind_args, %struct.rpcbind_args* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = call i8* @htonl(i32 %67)
  %69 = load i8**, i8*** %6, align 8
  %70 = getelementptr inbounds i8*, i8** %69, i32 1
  store i8** %70, i8*** %6, align 8
  store i8* %68, i8** %69, align 8
  %71 = load %struct.rpcbind_args*, %struct.rpcbind_args** %7, align 8
  %72 = getelementptr inbounds %struct.rpcbind_args, %struct.rpcbind_args* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i8* @htonl(i32 %73)
  %75 = load i8**, i8*** %6, align 8
  store i8* %74, i8** %75, align 8
  store i32 0, i32* %4, align 4
  br label %76

76:                                               ; preds = %52, %49
  %77 = load i32, i32* %4, align 4
  ret i32 %77
}

declare dso_local i32 @dprintk(i8*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @xdr_init_encode(%struct.xdr_stream*, i32*, i8**) #1

declare dso_local i8** @xdr_reserve_space(%struct.xdr_stream*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i8* @htonl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
