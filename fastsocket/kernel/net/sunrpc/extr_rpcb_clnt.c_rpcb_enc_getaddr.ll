; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_rpcb_clnt.c_rpcb_enc_getaddr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_rpcb_clnt.c_rpcb_enc_getaddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_rqst = type { i32, %struct.rpc_task* }
%struct.rpc_task = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.rpcbind_args = type { i32, i32, i32, i32, i32 }
%struct.xdr_stream = type { i32 }

@.str = private unnamed_addr constant [53 x i8] c"RPC: %5u encoding RPCB_%s call (%u, %u, '%s', '%s')\0A\00", align 1
@RPCB_program_sz = common dso_local global i32 0, align 4
@RPCB_version_sz = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@RPCBIND_MAXNETIDLEN = common dso_local global i32 0, align 4
@RPCBIND_MAXUADDRLEN = common dso_local global i32 0, align 4
@RPCB_MAXOWNERLEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rpc_rqst*, i8**, %struct.rpcbind_args*)* @rpcb_enc_getaddr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rpcb_enc_getaddr(%struct.rpc_rqst* %0, i8** %1, %struct.rpcbind_args* %2) #0 {
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
  %23 = getelementptr inbounds %struct.rpcbind_args, %struct.rpcbind_args* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.rpcbind_args*, %struct.rpcbind_args** %7, align 8
  %26 = getelementptr inbounds %struct.rpcbind_args, %struct.rpcbind_args* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.rpcbind_args*, %struct.rpcbind_args** %7, align 8
  %29 = getelementptr inbounds %struct.rpcbind_args, %struct.rpcbind_args* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.rpcbind_args*, %struct.rpcbind_args** %7, align 8
  %32 = getelementptr inbounds %struct.rpcbind_args, %struct.rpcbind_args* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @dprintk(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %15, i32 %21, i32 %24, i32 %27, i32 %30, i32 %33)
  %35 = load %struct.rpc_rqst*, %struct.rpc_rqst** %5, align 8
  %36 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %35, i32 0, i32 0
  %37 = load i8**, i8*** %6, align 8
  %38 = call i32 @xdr_init_encode(%struct.xdr_stream* %9, i32* %36, i8** %37)
  %39 = load i32, i32* @RPCB_program_sz, align 4
  %40 = load i32, i32* @RPCB_version_sz, align 4
  %41 = add nsw i32 %39, %40
  %42 = sext i32 %41 to i64
  %43 = mul i64 8, %42
  %44 = trunc i64 %43 to i32
  %45 = call i8** @xdr_reserve_space(%struct.xdr_stream* %9, i32 %44)
  store i8** %45, i8*** %6, align 8
  %46 = load i8**, i8*** %6, align 8
  %47 = icmp eq i8** %46, null
  %48 = zext i1 %47 to i32
  %49 = call i64 @unlikely(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %3
  %52 = load i32, i32* @EIO, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %4, align 4
  br label %96

54:                                               ; preds = %3
  %55 = load %struct.rpcbind_args*, %struct.rpcbind_args** %7, align 8
  %56 = getelementptr inbounds %struct.rpcbind_args, %struct.rpcbind_args* %55, i32 0, i32 4
  %57 = load i32, i32* %56, align 4
  %58 = call i8* @htonl(i32 %57)
  %59 = load i8**, i8*** %6, align 8
  %60 = getelementptr inbounds i8*, i8** %59, i32 1
  store i8** %60, i8*** %6, align 8
  store i8* %58, i8** %59, align 8
  %61 = load %struct.rpcbind_args*, %struct.rpcbind_args** %7, align 8
  %62 = getelementptr inbounds %struct.rpcbind_args, %struct.rpcbind_args* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 4
  %64 = call i8* @htonl(i32 %63)
  %65 = load i8**, i8*** %6, align 8
  store i8* %64, i8** %65, align 8
  %66 = load %struct.rpcbind_args*, %struct.rpcbind_args** %7, align 8
  %67 = getelementptr inbounds %struct.rpcbind_args, %struct.rpcbind_args* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @RPCBIND_MAXNETIDLEN, align 4
  %70 = call i64 @encode_rpcb_string(%struct.xdr_stream* %9, i32 %68, i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %54
  %73 = load i32, i32* @EIO, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %4, align 4
  br label %96

75:                                               ; preds = %54
  %76 = load %struct.rpcbind_args*, %struct.rpcbind_args** %7, align 8
  %77 = getelementptr inbounds %struct.rpcbind_args, %struct.rpcbind_args* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @RPCBIND_MAXUADDRLEN, align 4
  %80 = call i64 @encode_rpcb_string(%struct.xdr_stream* %9, i32 %78, i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %75
  %83 = load i32, i32* @EIO, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %4, align 4
  br label %96

85:                                               ; preds = %75
  %86 = load %struct.rpcbind_args*, %struct.rpcbind_args** %7, align 8
  %87 = getelementptr inbounds %struct.rpcbind_args, %struct.rpcbind_args* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @RPCB_MAXOWNERLEN, align 4
  %90 = call i64 @encode_rpcb_string(%struct.xdr_stream* %9, i32 %88, i32 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %85
  %93 = load i32, i32* @EIO, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %4, align 4
  br label %96

95:                                               ; preds = %85
  store i32 0, i32* %4, align 4
  br label %96

96:                                               ; preds = %95, %92, %82, %72, %51
  %97 = load i32, i32* %4, align 4
  ret i32 %97
}

declare dso_local i32 @dprintk(i8*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @xdr_init_encode(%struct.xdr_stream*, i32*, i8**) #1

declare dso_local i8** @xdr_reserve_space(%struct.xdr_stream*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i8* @htonl(i32) #1

declare dso_local i64 @encode_rpcb_string(%struct.xdr_stream*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
