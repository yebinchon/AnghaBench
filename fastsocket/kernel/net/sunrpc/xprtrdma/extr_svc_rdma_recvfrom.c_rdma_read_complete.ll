; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/xprtrdma/extr_svc_rdma_recvfrom.c_rdma_read_complete.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/xprtrdma/extr_svc_rdma_recvfrom.c_rdma_read_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { %struct.TYPE_8__, i32, i32, i64, i32*, i32* }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__*, i32, %struct.TYPE_6__*, i32, i32*, i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.svc_rdma_op_ctxt = type { i32, i64, %struct.TYPE_5__, i32* }
%struct.TYPE_5__ = type { i32, i32, i32, %struct.TYPE_6__*, %struct.TYPE_7__*, i32 }

@IPPROTO_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [105 x i8] c"svcrdma: deferred read ret=%d, rq_arg.len =%d, rq_arg.head[0].iov_base=%p, rq_arg.head[0].iov_len = %zd\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.svc_rqst*, %struct.svc_rdma_op_ctxt*)* @rdma_read_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rdma_read_complete(%struct.svc_rqst* %0, %struct.svc_rdma_op_ctxt* %1) #0 {
  %3 = alloca %struct.svc_rqst*, align 8
  %4 = alloca %struct.svc_rdma_op_ctxt*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.svc_rqst* %0, %struct.svc_rqst** %3, align 8
  store %struct.svc_rdma_op_ctxt* %1, %struct.svc_rdma_op_ctxt** %4, align 8
  %7 = load %struct.svc_rdma_op_ctxt*, %struct.svc_rdma_op_ctxt** %4, align 8
  %8 = icmp ne %struct.svc_rdma_op_ctxt* %7, null
  %9 = xor i1 %8, true
  %10 = zext i1 %9 to i32
  %11 = call i32 @BUG_ON(i32 %10)
  store i32 0, i32* %5, align 4
  br label %12

12:                                               ; preds = %40, %2
  %13 = load i32, i32* %5, align 4
  %14 = load %struct.svc_rdma_op_ctxt*, %struct.svc_rdma_op_ctxt** %4, align 8
  %15 = getelementptr inbounds %struct.svc_rdma_op_ctxt, %struct.svc_rdma_op_ctxt* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp slt i32 %13, %16
  br i1 %17, label %18, label %43

18:                                               ; preds = %12
  %19 = load %struct.svc_rqst*, %struct.svc_rqst** %3, align 8
  %20 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %19, i32 0, i32 5
  %21 = load i32*, i32** %20, align 8
  %22 = load i32, i32* %5, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @put_page(i32 %25)
  %27 = load %struct.svc_rdma_op_ctxt*, %struct.svc_rdma_op_ctxt** %4, align 8
  %28 = getelementptr inbounds %struct.svc_rdma_op_ctxt, %struct.svc_rdma_op_ctxt* %27, i32 0, i32 3
  %29 = load i32*, i32** %28, align 8
  %30 = load i32, i32* %5, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.svc_rqst*, %struct.svc_rqst** %3, align 8
  %35 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %34, i32 0, i32 5
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* %5, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  store i32 %33, i32* %39, align 4
  br label %40

40:                                               ; preds = %18
  %41 = load i32, i32* %5, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %5, align 4
  br label %12

43:                                               ; preds = %12
  %44 = load %struct.svc_rqst*, %struct.svc_rqst** %3, align 8
  %45 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %44, i32 0, i32 5
  %46 = load i32*, i32** %45, align 8
  %47 = load %struct.svc_rdma_op_ctxt*, %struct.svc_rdma_op_ctxt** %4, align 8
  %48 = getelementptr inbounds %struct.svc_rdma_op_ctxt, %struct.svc_rdma_op_ctxt* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = getelementptr inbounds i32, i32* %46, i64 %49
  %51 = load %struct.svc_rqst*, %struct.svc_rqst** %3, align 8
  %52 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 5
  store i32* %50, i32** %53, align 8
  %54 = load %struct.svc_rdma_op_ctxt*, %struct.svc_rdma_op_ctxt** %4, align 8
  %55 = getelementptr inbounds %struct.svc_rdma_op_ctxt, %struct.svc_rdma_op_ctxt* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.svc_rqst*, %struct.svc_rqst** %3, align 8
  %59 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 0
  store i32 %57, i32* %60, align 8
  %61 = load %struct.svc_rdma_op_ctxt*, %struct.svc_rdma_op_ctxt** %4, align 8
  %62 = getelementptr inbounds %struct.svc_rdma_op_ctxt, %struct.svc_rdma_op_ctxt* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 5
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.svc_rqst*, %struct.svc_rqst** %3, align 8
  %66 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 6
  store i32 %64, i32* %67, align 8
  %68 = load %struct.svc_rqst*, %struct.svc_rqst** %3, align 8
  %69 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 5
  %71 = load i32*, i32** %70, align 8
  %72 = load i32, i32* %5, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  %75 = load %struct.svc_rqst*, %struct.svc_rqst** %3, align 8
  %76 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %75, i32 0, i32 4
  store i32* %74, i32** %76, align 8
  %77 = load %struct.svc_rqst*, %struct.svc_rqst** %3, align 8
  %78 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %77, i32 0, i32 3
  store i64 0, i64* %78, align 8
  %79 = load %struct.svc_rqst*, %struct.svc_rqst** %3, align 8
  %80 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 1
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i64 0
  %84 = load %struct.svc_rdma_op_ctxt*, %struct.svc_rdma_op_ctxt** %4, align 8
  %85 = getelementptr inbounds %struct.svc_rdma_op_ctxt, %struct.svc_rdma_op_ctxt* %84, i32 0, i32 2
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 4
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i64 0
  %89 = bitcast %struct.TYPE_7__* %83 to i8*
  %90 = bitcast %struct.TYPE_7__* %88 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %89, i8* align 4 %90, i64 8, i1 false)
  %91 = load %struct.svc_rqst*, %struct.svc_rqst** %3, align 8
  %92 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 3
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i64 0
  %96 = load %struct.svc_rdma_op_ctxt*, %struct.svc_rdma_op_ctxt** %4, align 8
  %97 = getelementptr inbounds %struct.svc_rdma_op_ctxt, %struct.svc_rdma_op_ctxt* %96, i32 0, i32 2
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 3
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i64 0
  %101 = bitcast %struct.TYPE_6__* %95 to i8*
  %102 = bitcast %struct.TYPE_6__* %100 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %101, i8* align 4 %102, i64 4, i1 false)
  %103 = load %struct.svc_rdma_op_ctxt*, %struct.svc_rdma_op_ctxt** %4, align 8
  %104 = getelementptr inbounds %struct.svc_rdma_op_ctxt, %struct.svc_rdma_op_ctxt* %103, i32 0, i32 2
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 8
  %107 = load %struct.svc_rqst*, %struct.svc_rqst** %3, align 8
  %108 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 2
  store i32 %106, i32* %109, align 8
  %110 = load %struct.svc_rdma_op_ctxt*, %struct.svc_rdma_op_ctxt** %4, align 8
  %111 = getelementptr inbounds %struct.svc_rdma_op_ctxt, %struct.svc_rdma_op_ctxt* %110, i32 0, i32 2
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.svc_rqst*, %struct.svc_rqst** %3, align 8
  %115 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 4
  store i32 %113, i32* %116, align 8
  %117 = load %struct.svc_rdma_op_ctxt*, %struct.svc_rdma_op_ctxt** %4, align 8
  %118 = call i32 @svc_rdma_put_context(%struct.svc_rdma_op_ctxt* %117, i32 0)
  %119 = load i32, i32* @IPPROTO_MAX, align 4
  %120 = load %struct.svc_rqst*, %struct.svc_rqst** %3, align 8
  %121 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %120, i32 0, i32 2
  store i32 %119, i32* %121, align 4
  %122 = load %struct.svc_rqst*, %struct.svc_rqst** %3, align 8
  %123 = load %struct.svc_rqst*, %struct.svc_rqst** %3, align 8
  %124 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 8
  %126 = call i32 @svc_xprt_copy_addrs(%struct.svc_rqst* %122, i32 %125)
  %127 = load %struct.svc_rqst*, %struct.svc_rqst** %3, align 8
  %128 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %128, i32 0, i32 1
  %130 = load %struct.TYPE_7__*, %struct.TYPE_7__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %130, i64 0
  %132 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.svc_rqst*, %struct.svc_rqst** %3, align 8
  %135 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = add nsw i32 %133, %137
  %139 = load %struct.svc_rqst*, %struct.svc_rqst** %3, align 8
  %140 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %140, i32 0, i32 3
  %142 = load %struct.TYPE_6__*, %struct.TYPE_6__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %142, i64 0
  %144 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = add nsw i32 %138, %145
  store i32 %146, i32* %6, align 4
  %147 = load i32, i32* %6, align 4
  %148 = load %struct.svc_rqst*, %struct.svc_rqst** %3, align 8
  %149 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %149, i32 0, i32 2
  %151 = load i32, i32* %150, align 8
  %152 = load %struct.svc_rqst*, %struct.svc_rqst** %3, align 8
  %153 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %153, i32 0, i32 1
  %155 = load %struct.TYPE_7__*, %struct.TYPE_7__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %155, i64 0
  %157 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = load %struct.svc_rqst*, %struct.svc_rqst** %3, align 8
  %160 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %160, i32 0, i32 1
  %162 = load %struct.TYPE_7__*, %struct.TYPE_7__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %162, i64 0
  %164 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = call i32 @dprintk(i8* getelementptr inbounds ([105 x i8], [105 x i8]* @.str, i64 0, i64 0), i32 %147, i32 %151, i32 %158, i32 %165)
  %167 = load i32, i32* %6, align 4
  ret i32 %167
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @put_page(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @svc_rdma_put_context(%struct.svc_rdma_op_ctxt*, i32) #1

declare dso_local i32 @svc_xprt_copy_addrs(%struct.svc_rqst*, i32) #1

declare dso_local i32 @dprintk(i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
