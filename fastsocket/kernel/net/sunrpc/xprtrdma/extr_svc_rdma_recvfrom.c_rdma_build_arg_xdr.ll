; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/xprtrdma/extr_svc_rdma_recvfrom.c_rdma_build_arg_xdr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/xprtrdma/extr_svc_rdma_recvfrom.c_rdma_build_arg_xdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { %struct.TYPE_8__, %struct.page**, %struct.page** }
%struct.TYPE_8__ = type { i64, i64, %struct.TYPE_7__*, %struct.TYPE_6__*, i64, %struct.page**, i64 }
%struct.TYPE_7__ = type { i64, i32* }
%struct.TYPE_6__ = type { i64, i32 }
%struct.page = type { i32 }
%struct.svc_rdma_op_ctxt = type { i32, %struct.page**, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.svc_rqst*, %struct.svc_rdma_op_ctxt*, i64)* @rdma_build_arg_xdr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rdma_build_arg_xdr(%struct.svc_rqst* %0, %struct.svc_rdma_op_ctxt* %1, i64 %2) #0 {
  %4 = alloca %struct.svc_rqst*, align 8
  %5 = alloca %struct.svc_rdma_op_ctxt*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.page*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.svc_rqst* %0, %struct.svc_rqst** %4, align 8
  store %struct.svc_rdma_op_ctxt* %1, %struct.svc_rdma_op_ctxt** %5, align 8
  store i64 %2, i64* %6, align 8
  %10 = load %struct.svc_rdma_op_ctxt*, %struct.svc_rdma_op_ctxt** %5, align 8
  %11 = getelementptr inbounds %struct.svc_rdma_op_ctxt, %struct.svc_rdma_op_ctxt* %10, i32 0, i32 1
  %12 = load %struct.page**, %struct.page*** %11, align 8
  %13 = getelementptr inbounds %struct.page*, %struct.page** %12, i64 0
  %14 = load %struct.page*, %struct.page** %13, align 8
  store %struct.page* %14, %struct.page** %7, align 8
  %15 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %16 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %15, i32 0, i32 1
  %17 = load %struct.page**, %struct.page*** %16, align 8
  %18 = getelementptr inbounds %struct.page*, %struct.page** %17, i64 0
  %19 = load %struct.page*, %struct.page** %18, align 8
  %20 = call i32 @put_page(%struct.page* %19)
  %21 = load %struct.page*, %struct.page** %7, align 8
  %22 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %23 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %22, i32 0, i32 1
  %24 = load %struct.page**, %struct.page*** %23, align 8
  %25 = getelementptr inbounds %struct.page*, %struct.page** %24, i64 0
  store %struct.page* %21, %struct.page** %25, align 8
  %26 = load %struct.page*, %struct.page** %7, align 8
  %27 = call i32 @page_address(%struct.page* %26)
  %28 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %29 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 3
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i64 0
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 1
  store i32 %27, i32* %33, align 8
  %34 = load i64, i64* %6, align 8
  %35 = load %struct.svc_rdma_op_ctxt*, %struct.svc_rdma_op_ctxt** %5, align 8
  %36 = getelementptr inbounds %struct.svc_rdma_op_ctxt, %struct.svc_rdma_op_ctxt* %35, i32 0, i32 2
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i64 0
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = call i64 @min(i64 %34, i64 %40)
  %42 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %43 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 3
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i64 0
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  store i64 %41, i64* %47, align 8
  %48 = load i64, i64* %6, align 8
  %49 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %50 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  store i64 %48, i64* %51, align 8
  %52 = load i64, i64* %6, align 8
  %53 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %54 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 4
  store i64 %52, i64* %55, align 8
  %56 = load i64, i64* %6, align 8
  %57 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %58 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 3
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i64 0
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = sub nsw i64 %56, %63
  store i64 %64, i64* %8, align 8
  %65 = load i64, i64* %8, align 8
  %66 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %67 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 1
  store i64 %65, i64* %68, align 8
  %69 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %70 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 6
  store i64 0, i64* %71, align 8
  %72 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %73 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %72, i32 0, i32 1
  %74 = load %struct.page**, %struct.page*** %73, align 8
  %75 = getelementptr inbounds %struct.page*, %struct.page** %74, i64 1
  %76 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %77 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 5
  store %struct.page** %75, %struct.page*** %78, align 8
  store i32 1, i32* %9, align 4
  br label %79

79:                                               ; preds = %90, %3
  %80 = load i64, i64* %8, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %88

82:                                               ; preds = %79
  %83 = load i32, i32* %9, align 4
  %84 = load %struct.svc_rdma_op_ctxt*, %struct.svc_rdma_op_ctxt** %5, align 8
  %85 = getelementptr inbounds %struct.svc_rdma_op_ctxt, %struct.svc_rdma_op_ctxt* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = icmp slt i32 %83, %86
  br label %88

88:                                               ; preds = %82, %79
  %89 = phi i1 [ false, %79 ], [ %87, %82 ]
  br i1 %89, label %90, label %140

90:                                               ; preds = %88
  %91 = load %struct.svc_rdma_op_ctxt*, %struct.svc_rdma_op_ctxt** %5, align 8
  %92 = getelementptr inbounds %struct.svc_rdma_op_ctxt, %struct.svc_rdma_op_ctxt* %91, i32 0, i32 1
  %93 = load %struct.page**, %struct.page*** %92, align 8
  %94 = load i32, i32* %9, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.page*, %struct.page** %93, i64 %95
  %97 = load %struct.page*, %struct.page** %96, align 8
  store %struct.page* %97, %struct.page** %7, align 8
  %98 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %99 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %98, i32 0, i32 1
  %100 = load %struct.page**, %struct.page*** %99, align 8
  %101 = load i32, i32* %9, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.page*, %struct.page** %100, i64 %102
  %104 = load %struct.page*, %struct.page** %103, align 8
  %105 = call i32 @put_page(%struct.page* %104)
  %106 = load %struct.page*, %struct.page** %7, align 8
  %107 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %108 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %107, i32 0, i32 1
  %109 = load %struct.page**, %struct.page*** %108, align 8
  %110 = load i32, i32* %9, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.page*, %struct.page** %109, i64 %111
  store %struct.page* %106, %struct.page** %112, align 8
  %113 = load i64, i64* %8, align 8
  %114 = load %struct.svc_rdma_op_ctxt*, %struct.svc_rdma_op_ctxt** %5, align 8
  %115 = getelementptr inbounds %struct.svc_rdma_op_ctxt, %struct.svc_rdma_op_ctxt* %114, i32 0, i32 2
  %116 = load %struct.TYPE_5__*, %struct.TYPE_5__** %115, align 8
  %117 = load i32, i32* %9, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i64 %118
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = call i64 @min(i64 %113, i64 %121)
  %123 = load i64, i64* %8, align 8
  %124 = sub nsw i64 %123, %122
  store i64 %124, i64* %8, align 8
  %125 = load %struct.svc_rdma_op_ctxt*, %struct.svc_rdma_op_ctxt** %5, align 8
  %126 = getelementptr inbounds %struct.svc_rdma_op_ctxt, %struct.svc_rdma_op_ctxt* %125, i32 0, i32 2
  %127 = load %struct.TYPE_5__*, %struct.TYPE_5__** %126, align 8
  %128 = load i32, i32* %9, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %127, i64 %129
  %131 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %134 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %134, i32 0, i32 4
  %136 = load i64, i64* %135, align 8
  %137 = add nsw i64 %136, %132
  store i64 %137, i64* %135, align 8
  %138 = load i32, i32* %9, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %9, align 4
  br label %79

140:                                              ; preds = %88
  %141 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %142 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %141, i32 0, i32 1
  %143 = load %struct.page**, %struct.page*** %142, align 8
  %144 = load i32, i32* %9, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds %struct.page*, %struct.page** %143, i64 %145
  %147 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %148 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %147, i32 0, i32 2
  store %struct.page** %146, %struct.page*** %148, align 8
  %149 = load i64, i64* %8, align 8
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %157

151:                                              ; preds = %140
  %152 = load i32, i32* %9, align 4
  %153 = load %struct.svc_rdma_op_ctxt*, %struct.svc_rdma_op_ctxt** %5, align 8
  %154 = getelementptr inbounds %struct.svc_rdma_op_ctxt, %struct.svc_rdma_op_ctxt* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = icmp eq i32 %152, %155
  br label %157

157:                                              ; preds = %151, %140
  %158 = phi i1 [ false, %140 ], [ %156, %151 ]
  %159 = zext i1 %158 to i32
  %160 = call i32 @BUG_ON(i32 %159)
  %161 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %162 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %162, i32 0, i32 3
  %164 = load %struct.TYPE_6__*, %struct.TYPE_6__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %164, i64 0
  %166 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %165, i32 0, i32 0
  %167 = load i64, i64* %166, align 8
  %168 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %169 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %169, i32 0, i32 1
  %171 = load i64, i64* %170, align 8
  %172 = add nsw i64 %167, %171
  %173 = load i64, i64* %6, align 8
  %174 = icmp ne i64 %172, %173
  %175 = zext i1 %174 to i32
  %176 = call i32 @BUG_ON(i32 %175)
  %177 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %178 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %178, i32 0, i32 0
  %180 = load i64, i64* %179, align 8
  %181 = load i64, i64* %6, align 8
  %182 = icmp ne i64 %180, %181
  %183 = zext i1 %182 to i32
  %184 = call i32 @BUG_ON(i32 %183)
  %185 = load i32, i32* %9, align 4
  %186 = sext i32 %185 to i64
  store i64 %186, i64* %8, align 8
  br label %187

187:                                              ; preds = %193, %157
  %188 = load i32, i32* %9, align 4
  %189 = load %struct.svc_rdma_op_ctxt*, %struct.svc_rdma_op_ctxt** %5, align 8
  %190 = getelementptr inbounds %struct.svc_rdma_op_ctxt, %struct.svc_rdma_op_ctxt* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 8
  %192 = icmp slt i32 %188, %191
  br i1 %192, label %193, label %204

193:                                              ; preds = %187
  %194 = load %struct.svc_rdma_op_ctxt*, %struct.svc_rdma_op_ctxt** %5, align 8
  %195 = getelementptr inbounds %struct.svc_rdma_op_ctxt, %struct.svc_rdma_op_ctxt* %194, i32 0, i32 1
  %196 = load %struct.page**, %struct.page*** %195, align 8
  %197 = load i32, i32* %9, align 4
  %198 = add nsw i32 %197, 1
  store i32 %198, i32* %9, align 4
  %199 = sext i32 %197 to i64
  %200 = getelementptr inbounds %struct.page*, %struct.page** %196, i64 %199
  %201 = load %struct.page*, %struct.page** %200, align 8
  store %struct.page* %201, %struct.page** %7, align 8
  %202 = load %struct.page*, %struct.page** %7, align 8
  %203 = call i32 @put_page(%struct.page* %202)
  br label %187

204:                                              ; preds = %187
  %205 = load i64, i64* %8, align 8
  %206 = trunc i64 %205 to i32
  %207 = load %struct.svc_rdma_op_ctxt*, %struct.svc_rdma_op_ctxt** %5, align 8
  %208 = getelementptr inbounds %struct.svc_rdma_op_ctxt, %struct.svc_rdma_op_ctxt* %207, i32 0, i32 0
  store i32 %206, i32* %208, align 8
  %209 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %210 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %209, i32 0, i32 0
  %211 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %210, i32 0, i32 2
  %212 = load %struct.TYPE_7__*, %struct.TYPE_7__** %211, align 8
  %213 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %212, i64 0
  %214 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %213, i32 0, i32 1
  store i32* null, i32** %214, align 8
  %215 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %216 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %215, i32 0, i32 0
  %217 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %216, i32 0, i32 2
  %218 = load %struct.TYPE_7__*, %struct.TYPE_7__** %217, align 8
  %219 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %218, i64 0
  %220 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %219, i32 0, i32 0
  store i64 0, i64* %220, align 8
  ret void
}

declare dso_local i32 @put_page(%struct.page*) #1

declare dso_local i32 @page_address(%struct.page*) #1

declare dso_local i64 @min(i64, i64) #1

declare dso_local i32 @BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
