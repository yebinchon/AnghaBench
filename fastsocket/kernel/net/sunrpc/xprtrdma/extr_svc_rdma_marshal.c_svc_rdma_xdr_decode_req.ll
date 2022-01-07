; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/xprtrdma/extr_svc_rdma_marshal.c_svc_rdma_xdr_decode_req.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/xprtrdma/extr_svc_rdma_marshal.c_svc_rdma_xdr_decode_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpcrdma_msg = type { i64, i64, i64, i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32*, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i64, i32* }
%struct.svc_rqst = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32*, i32 }

@RPCRDMA_HDRLEN_MIN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [32 x i8] c"svcrdma: header too short = %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@RPCRDMA_VERSION = common dso_local global i64 0, align 8
@ENOSYS = common dso_local global i32 0, align 4
@RDMA_MSGP = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @svc_rdma_xdr_decode_req(%struct.rpcrdma_msg** %0, %struct.svc_rqst* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rpcrdma_msg**, align 8
  %5 = alloca %struct.svc_rqst*, align 8
  %6 = alloca %struct.rpcrdma_msg*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.rpcrdma_msg** %0, %struct.rpcrdma_msg*** %4, align 8
  store %struct.svc_rqst* %1, %struct.svc_rqst** %5, align 8
  store %struct.rpcrdma_msg* null, %struct.rpcrdma_msg** %6, align 8
  %11 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %12 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 1
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i64 0
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = bitcast i32* %17 to %struct.rpcrdma_msg*
  store %struct.rpcrdma_msg* %18, %struct.rpcrdma_msg** %6, align 8
  %19 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %20 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @RPCRDMA_HDRLEN_MIN, align 8
  %24 = icmp sle i64 %22, %23
  br i1 %24, label %25, label %33

25:                                               ; preds = %2
  %26 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %27 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = call i32 @dprintk(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i64 %29)
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %205

33:                                               ; preds = %2
  %34 = load %struct.rpcrdma_msg*, %struct.rpcrdma_msg** %6, align 8
  %35 = getelementptr inbounds %struct.rpcrdma_msg, %struct.rpcrdma_msg* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = call i8* @ntohl(i64 %36)
  %38 = ptrtoint i8* %37 to i64
  %39 = load %struct.rpcrdma_msg*, %struct.rpcrdma_msg** %6, align 8
  %40 = getelementptr inbounds %struct.rpcrdma_msg, %struct.rpcrdma_msg* %39, i32 0, i32 0
  store i64 %38, i64* %40, align 8
  %41 = load %struct.rpcrdma_msg*, %struct.rpcrdma_msg** %6, align 8
  %42 = getelementptr inbounds %struct.rpcrdma_msg, %struct.rpcrdma_msg* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = call i8* @ntohl(i64 %43)
  %45 = ptrtoint i8* %44 to i64
  %46 = load %struct.rpcrdma_msg*, %struct.rpcrdma_msg** %6, align 8
  %47 = getelementptr inbounds %struct.rpcrdma_msg, %struct.rpcrdma_msg* %46, i32 0, i32 1
  store i64 %45, i64* %47, align 8
  %48 = load %struct.rpcrdma_msg*, %struct.rpcrdma_msg** %6, align 8
  %49 = getelementptr inbounds %struct.rpcrdma_msg, %struct.rpcrdma_msg* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = call i8* @ntohl(i64 %50)
  %52 = ptrtoint i8* %51 to i64
  %53 = load %struct.rpcrdma_msg*, %struct.rpcrdma_msg** %6, align 8
  %54 = getelementptr inbounds %struct.rpcrdma_msg, %struct.rpcrdma_msg* %53, i32 0, i32 2
  store i64 %52, i64* %54, align 8
  %55 = load %struct.rpcrdma_msg*, %struct.rpcrdma_msg** %6, align 8
  %56 = getelementptr inbounds %struct.rpcrdma_msg, %struct.rpcrdma_msg* %55, i32 0, i32 3
  %57 = load i64, i64* %56, align 8
  %58 = call i8* @ntohl(i64 %57)
  %59 = ptrtoint i8* %58 to i64
  %60 = load %struct.rpcrdma_msg*, %struct.rpcrdma_msg** %6, align 8
  %61 = getelementptr inbounds %struct.rpcrdma_msg, %struct.rpcrdma_msg* %60, i32 0, i32 3
  store i64 %59, i64* %61, align 8
  %62 = load %struct.rpcrdma_msg*, %struct.rpcrdma_msg** %6, align 8
  %63 = getelementptr inbounds %struct.rpcrdma_msg, %struct.rpcrdma_msg* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @RPCRDMA_VERSION, align 8
  %66 = icmp ne i64 %64, %65
  br i1 %66, label %67, label %70

67:                                               ; preds = %33
  %68 = load i32, i32* @ENOSYS, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %3, align 4
  br label %205

70:                                               ; preds = %33
  %71 = load %struct.rpcrdma_msg*, %struct.rpcrdma_msg** %6, align 8
  %72 = getelementptr inbounds %struct.rpcrdma_msg, %struct.rpcrdma_msg* %71, i32 0, i32 3
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @RDMA_MSGP, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %139

76:                                               ; preds = %70
  %77 = load %struct.rpcrdma_msg*, %struct.rpcrdma_msg** %6, align 8
  %78 = getelementptr inbounds %struct.rpcrdma_msg, %struct.rpcrdma_msg* %77, i32 0, i32 4
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = call i8* @ntohl(i64 %81)
  %83 = ptrtoint i8* %82 to i64
  %84 = load %struct.rpcrdma_msg*, %struct.rpcrdma_msg** %6, align 8
  %85 = getelementptr inbounds %struct.rpcrdma_msg, %struct.rpcrdma_msg* %84, i32 0, i32 4
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 0
  store i64 %83, i64* %87, align 8
  %88 = load %struct.rpcrdma_msg*, %struct.rpcrdma_msg** %6, align 8
  %89 = getelementptr inbounds %struct.rpcrdma_msg, %struct.rpcrdma_msg* %88, i32 0, i32 4
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = call i8* @ntohl(i64 %92)
  %94 = ptrtoint i8* %93 to i64
  %95 = load %struct.rpcrdma_msg*, %struct.rpcrdma_msg** %6, align 8
  %96 = getelementptr inbounds %struct.rpcrdma_msg, %struct.rpcrdma_msg* %95, i32 0, i32 4
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 1
  store i64 %94, i64* %98, align 8
  %99 = load %struct.rpcrdma_msg*, %struct.rpcrdma_msg** %6, align 8
  %100 = getelementptr inbounds %struct.rpcrdma_msg, %struct.rpcrdma_msg* %99, i32 0, i32 4
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 2
  %103 = load i32*, i32** %102, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 4
  store i32* %104, i32** %7, align 8
  %105 = load i32*, i32** %7, align 8
  %106 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %107 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 1
  %109 = load %struct.TYPE_7__*, %struct.TYPE_7__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i64 0
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 0
  store i32* %105, i32** %111, align 8
  %112 = load i32*, i32** %7, align 8
  %113 = ptrtoint i32* %112 to i64
  %114 = load %struct.rpcrdma_msg*, %struct.rpcrdma_msg** %6, align 8
  %115 = ptrtoint %struct.rpcrdma_msg* %114 to i64
  %116 = sub i64 %113, %115
  %117 = trunc i64 %116 to i32
  store i32 %117, i32* %10, align 4
  %118 = load i32, i32* %10, align 4
  %119 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %120 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %120, i32 0, i32 1
  %122 = load %struct.TYPE_7__*, %struct.TYPE_7__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %122, i64 0
  %124 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 8
  %126 = sub nsw i32 %125, %118
  store i32 %126, i32* %124, align 8
  %127 = load i32, i32* %10, align 4
  %128 = sext i32 %127 to i64
  %129 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %130 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = icmp sgt i64 %128, %132
  br i1 %133, label %134, label %137

134:                                              ; preds = %76
  %135 = load i32, i32* @EINVAL, align 4
  %136 = sub nsw i32 0, %135
  store i32 %136, i32* %3, align 4
  br label %205

137:                                              ; preds = %76
  %138 = load i32, i32* %10, align 4
  store i32 %138, i32* %3, align 4
  br label %205

139:                                              ; preds = %70
  %140 = load %struct.rpcrdma_msg*, %struct.rpcrdma_msg** %6, align 8
  %141 = getelementptr inbounds %struct.rpcrdma_msg, %struct.rpcrdma_msg* %140, i32 0, i32 4
  %142 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %141, i32 0, i32 0
  %143 = load i32*, i32** %142, align 8
  %144 = getelementptr inbounds i32, i32* %143, i64 0
  store i32* %144, i32** %7, align 8
  %145 = load %struct.rpcrdma_msg*, %struct.rpcrdma_msg** %6, align 8
  %146 = ptrtoint %struct.rpcrdma_msg* %145 to i64
  %147 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %148 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = add i64 %146, %150
  %152 = inttoptr i64 %151 to i32*
  store i32* %152, i32** %8, align 8
  %153 = load i32*, i32** %7, align 8
  %154 = load i32*, i32** %8, align 8
  %155 = call i32* @decode_read_list(i32* %153, i32* %154)
  store i32* %155, i32** %7, align 8
  %156 = load i32*, i32** %7, align 8
  %157 = icmp ne i32* %156, null
  br i1 %157, label %161, label %158

158:                                              ; preds = %139
  %159 = load i32, i32* @EINVAL, align 4
  %160 = sub nsw i32 0, %159
  store i32 %160, i32* %3, align 4
  br label %205

161:                                              ; preds = %139
  %162 = load i32*, i32** %7, align 8
  %163 = load i32*, i32** %8, align 8
  %164 = call i32* @decode_write_list(i32* %162, i32* %163)
  store i32* %164, i32** %7, align 8
  %165 = load i32*, i32** %7, align 8
  %166 = icmp ne i32* %165, null
  br i1 %166, label %170, label %167

167:                                              ; preds = %161
  %168 = load i32, i32* @EINVAL, align 4
  %169 = sub nsw i32 0, %168
  store i32 %169, i32* %3, align 4
  br label %205

170:                                              ; preds = %161
  %171 = load i32*, i32** %7, align 8
  %172 = load i32*, i32** %8, align 8
  %173 = call i32* @decode_reply_array(i32* %171, i32* %172)
  store i32* %173, i32** %7, align 8
  %174 = load i32*, i32** %7, align 8
  %175 = icmp ne i32* %174, null
  br i1 %175, label %179, label %176

176:                                              ; preds = %170
  %177 = load i32, i32* @EINVAL, align 4
  %178 = sub nsw i32 0, %177
  store i32 %178, i32* %3, align 4
  br label %205

179:                                              ; preds = %170
  %180 = load i32*, i32** %7, align 8
  %181 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %182 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %182, i32 0, i32 1
  %184 = load %struct.TYPE_7__*, %struct.TYPE_7__** %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %184, i64 0
  %186 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %185, i32 0, i32 0
  store i32* %180, i32** %186, align 8
  %187 = load i32*, i32** %7, align 8
  %188 = ptrtoint i32* %187 to i64
  %189 = load %struct.rpcrdma_msg*, %struct.rpcrdma_msg** %6, align 8
  %190 = ptrtoint %struct.rpcrdma_msg* %189 to i64
  %191 = sub i64 %188, %190
  %192 = trunc i64 %191 to i32
  store i32 %192, i32* %9, align 4
  %193 = load i32, i32* %9, align 4
  %194 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %195 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %194, i32 0, i32 0
  %196 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %195, i32 0, i32 1
  %197 = load %struct.TYPE_7__*, %struct.TYPE_7__** %196, align 8
  %198 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %197, i64 0
  %199 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %198, i32 0, i32 1
  %200 = load i32, i32* %199, align 8
  %201 = sub nsw i32 %200, %193
  store i32 %201, i32* %199, align 8
  %202 = load %struct.rpcrdma_msg*, %struct.rpcrdma_msg** %6, align 8
  %203 = load %struct.rpcrdma_msg**, %struct.rpcrdma_msg*** %4, align 8
  store %struct.rpcrdma_msg* %202, %struct.rpcrdma_msg** %203, align 8
  %204 = load i32, i32* %9, align 4
  store i32 %204, i32* %3, align 4
  br label %205

205:                                              ; preds = %179, %176, %167, %158, %137, %134, %67, %25
  %206 = load i32, i32* %3, align 4
  ret i32 %206
}

declare dso_local i32 @dprintk(i8*, i64) #1

declare dso_local i8* @ntohl(i64) #1

declare dso_local i32* @decode_read_list(i32*, i32*) #1

declare dso_local i32* @decode_write_list(i32*, i32*) #1

declare dso_local i32* @decode_reply_array(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
