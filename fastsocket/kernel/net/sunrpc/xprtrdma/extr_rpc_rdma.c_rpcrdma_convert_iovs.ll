; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/xprtrdma/extr_rpc_rdma.c_rpcrdma_convert_iovs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/xprtrdma/extr_rpc_rdma.c_rpcrdma_convert_iovs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xdr_buf = type { i32, %struct.TYPE_4__*, i32**, i64, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32* }
%struct.TYPE_3__ = type { i32, i32* }
%struct.rpcrdma_mr_seg = type { i32, i32*, i32* }

@u32 = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@xprt_rdma_pad_optimize = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xdr_buf*, i32, i32, %struct.rpcrdma_mr_seg*, i32)* @rpcrdma_convert_iovs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rpcrdma_convert_iovs(%struct.xdr_buf* %0, i32 %1, i32 %2, %struct.rpcrdma_mr_seg* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.xdr_buf*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.rpcrdma_mr_seg*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.xdr_buf* %0, %struct.xdr_buf** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store %struct.rpcrdma_mr_seg* %3, %struct.rpcrdma_mr_seg** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %13, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %55

17:                                               ; preds = %5
  %18 = load %struct.xdr_buf*, %struct.xdr_buf** %7, align 8
  %19 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %18, i32 0, i32 4
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i64 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %55

25:                                               ; preds = %17
  %26 = load %struct.rpcrdma_mr_seg*, %struct.rpcrdma_mr_seg** %10, align 8
  %27 = load i32, i32* %13, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.rpcrdma_mr_seg, %struct.rpcrdma_mr_seg* %26, i64 %28
  %30 = getelementptr inbounds %struct.rpcrdma_mr_seg, %struct.rpcrdma_mr_seg* %29, i32 0, i32 2
  store i32* null, i32** %30, align 8
  %31 = load %struct.xdr_buf*, %struct.xdr_buf** %7, align 8
  %32 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %31, i32 0, i32 4
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i64 0
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = load %struct.rpcrdma_mr_seg*, %struct.rpcrdma_mr_seg** %10, align 8
  %38 = load i32, i32* %13, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.rpcrdma_mr_seg, %struct.rpcrdma_mr_seg* %37, i64 %39
  %41 = getelementptr inbounds %struct.rpcrdma_mr_seg, %struct.rpcrdma_mr_seg* %40, i32 0, i32 1
  store i32* %36, i32** %41, align 8
  %42 = load %struct.xdr_buf*, %struct.xdr_buf** %7, align 8
  %43 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %42, i32 0, i32 4
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i64 0
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.rpcrdma_mr_seg*, %struct.rpcrdma_mr_seg** %10, align 8
  %49 = load i32, i32* %13, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.rpcrdma_mr_seg, %struct.rpcrdma_mr_seg* %48, i64 %50
  %52 = getelementptr inbounds %struct.rpcrdma_mr_seg, %struct.rpcrdma_mr_seg* %51, i32 0, i32 0
  store i32 %47, i32* %52, align 8
  %53 = load i32, i32* %13, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %13, align 4
  br label %55

55:                                               ; preds = %25, %17, %5
  %56 = load %struct.xdr_buf*, %struct.xdr_buf** %7, align 8
  %57 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %170

60:                                               ; preds = %55
  %61 = load %struct.xdr_buf*, %struct.xdr_buf** %7, align 8
  %62 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %61, i32 0, i32 2
  %63 = load i32**, i32*** %62, align 8
  %64 = getelementptr inbounds i32*, i32** %63, i64 0
  %65 = load i32*, i32** %64, align 8
  %66 = icmp ne i32* %65, null
  br i1 %66, label %67, label %170

67:                                               ; preds = %60
  %68 = load i32, i32* %13, align 4
  %69 = load i32, i32* %11, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %67
  store i32 0, i32* %6, align 4
  br label %228

72:                                               ; preds = %67
  %73 = load %struct.xdr_buf*, %struct.xdr_buf** %7, align 8
  %74 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %73, i32 0, i32 2
  %75 = load i32**, i32*** %74, align 8
  %76 = getelementptr inbounds i32*, i32** %75, i64 0
  %77 = load i32*, i32** %76, align 8
  %78 = load %struct.rpcrdma_mr_seg*, %struct.rpcrdma_mr_seg** %10, align 8
  %79 = load i32, i32* %13, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.rpcrdma_mr_seg, %struct.rpcrdma_mr_seg* %78, i64 %80
  %82 = getelementptr inbounds %struct.rpcrdma_mr_seg, %struct.rpcrdma_mr_seg* %81, i32 0, i32 2
  store i32* %77, i32** %82, align 8
  %83 = load %struct.xdr_buf*, %struct.xdr_buf** %7, align 8
  %84 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %83, i32 0, i32 3
  %85 = load i64, i64* %84, align 8
  %86 = inttoptr i64 %85 to i8*
  %87 = bitcast i8* %86 to i32*
  %88 = load %struct.rpcrdma_mr_seg*, %struct.rpcrdma_mr_seg** %10, align 8
  %89 = load i32, i32* %13, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.rpcrdma_mr_seg, %struct.rpcrdma_mr_seg* %88, i64 %90
  %92 = getelementptr inbounds %struct.rpcrdma_mr_seg, %struct.rpcrdma_mr_seg* %91, i32 0, i32 1
  store i32* %87, i32** %92, align 8
  %93 = load i32, i32* @u32, align 4
  %94 = load i64, i64* @PAGE_SIZE, align 8
  %95 = load %struct.xdr_buf*, %struct.xdr_buf** %7, align 8
  %96 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %95, i32 0, i32 3
  %97 = load i64, i64* %96, align 8
  %98 = sub nsw i64 %94, %97
  %99 = load %struct.xdr_buf*, %struct.xdr_buf** %7, align 8
  %100 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = call i8* @min_t(i32 %93, i64 %98, i32 %101)
  %103 = ptrtoint i8* %102 to i32
  %104 = load %struct.rpcrdma_mr_seg*, %struct.rpcrdma_mr_seg** %10, align 8
  %105 = load i32, i32* %13, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.rpcrdma_mr_seg, %struct.rpcrdma_mr_seg* %104, i64 %106
  %108 = getelementptr inbounds %struct.rpcrdma_mr_seg, %struct.rpcrdma_mr_seg* %107, i32 0, i32 0
  store i32 %103, i32* %108, align 8
  %109 = load %struct.xdr_buf*, %struct.xdr_buf** %7, align 8
  %110 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.rpcrdma_mr_seg*, %struct.rpcrdma_mr_seg** %10, align 8
  %113 = load i32, i32* %13, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.rpcrdma_mr_seg, %struct.rpcrdma_mr_seg* %112, i64 %114
  %116 = getelementptr inbounds %struct.rpcrdma_mr_seg, %struct.rpcrdma_mr_seg* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = sub nsw i32 %111, %117
  store i32 %118, i32* %12, align 4
  %119 = load i32, i32* %13, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %13, align 4
  store i32 1, i32* %14, align 4
  br label %121

121:                                              ; preds = %129, %72
  %122 = load i32, i32* %12, align 4
  %123 = icmp sgt i32 %122, 0
  br i1 %123, label %124, label %169

124:                                              ; preds = %121
  %125 = load i32, i32* %13, align 4
  %126 = load i32, i32* %11, align 4
  %127 = icmp eq i32 %125, %126
  br i1 %127, label %128, label %129

128:                                              ; preds = %124
  store i32 0, i32* %6, align 4
  br label %228

129:                                              ; preds = %124
  %130 = load %struct.xdr_buf*, %struct.xdr_buf** %7, align 8
  %131 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %130, i32 0, i32 2
  %132 = load i32**, i32*** %131, align 8
  %133 = load i32, i32* %14, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i32*, i32** %132, i64 %134
  %136 = load i32*, i32** %135, align 8
  %137 = load %struct.rpcrdma_mr_seg*, %struct.rpcrdma_mr_seg** %10, align 8
  %138 = load i32, i32* %13, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds %struct.rpcrdma_mr_seg, %struct.rpcrdma_mr_seg* %137, i64 %139
  %141 = getelementptr inbounds %struct.rpcrdma_mr_seg, %struct.rpcrdma_mr_seg* %140, i32 0, i32 2
  store i32* %136, i32** %141, align 8
  %142 = load %struct.rpcrdma_mr_seg*, %struct.rpcrdma_mr_seg** %10, align 8
  %143 = load i32, i32* %13, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds %struct.rpcrdma_mr_seg, %struct.rpcrdma_mr_seg* %142, i64 %144
  %146 = getelementptr inbounds %struct.rpcrdma_mr_seg, %struct.rpcrdma_mr_seg* %145, i32 0, i32 1
  store i32* null, i32** %146, align 8
  %147 = load i32, i32* @u32, align 4
  %148 = load i64, i64* @PAGE_SIZE, align 8
  %149 = load i32, i32* %12, align 4
  %150 = call i8* @min_t(i32 %147, i64 %148, i32 %149)
  %151 = ptrtoint i8* %150 to i32
  %152 = load %struct.rpcrdma_mr_seg*, %struct.rpcrdma_mr_seg** %10, align 8
  %153 = load i32, i32* %13, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds %struct.rpcrdma_mr_seg, %struct.rpcrdma_mr_seg* %152, i64 %154
  %156 = getelementptr inbounds %struct.rpcrdma_mr_seg, %struct.rpcrdma_mr_seg* %155, i32 0, i32 0
  store i32 %151, i32* %156, align 8
  %157 = load %struct.rpcrdma_mr_seg*, %struct.rpcrdma_mr_seg** %10, align 8
  %158 = load i32, i32* %13, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds %struct.rpcrdma_mr_seg, %struct.rpcrdma_mr_seg* %157, i64 %159
  %161 = getelementptr inbounds %struct.rpcrdma_mr_seg, %struct.rpcrdma_mr_seg* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = load i32, i32* %12, align 4
  %164 = sub nsw i32 %163, %162
  store i32 %164, i32* %12, align 4
  %165 = load i32, i32* %13, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %13, align 4
  %167 = load i32, i32* %14, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %14, align 4
  br label %121

169:                                              ; preds = %121
  br label %170

170:                                              ; preds = %169, %60, %55
  %171 = load %struct.xdr_buf*, %struct.xdr_buf** %7, align 8
  %172 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %171, i32 0, i32 1
  %173 = load %struct.TYPE_4__*, %struct.TYPE_4__** %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %173, i64 0
  %175 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %226

178:                                              ; preds = %170
  %179 = load %struct.xdr_buf*, %struct.xdr_buf** %7, align 8
  %180 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %179, i32 0, i32 1
  %181 = load %struct.TYPE_4__*, %struct.TYPE_4__** %180, align 8
  %182 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %181, i64 0
  %183 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 8
  %185 = icmp slt i32 %184, 4
  br i1 %185, label %186, label %191

186:                                              ; preds = %178
  %187 = load i64, i64* @xprt_rdma_pad_optimize, align 8
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %189, label %191

189:                                              ; preds = %186
  %190 = load i32, i32* %13, align 4
  store i32 %190, i32* %6, align 4
  br label %228

191:                                              ; preds = %186, %178
  %192 = load i32, i32* %13, align 4
  %193 = load i32, i32* %11, align 4
  %194 = icmp eq i32 %192, %193
  br i1 %194, label %195, label %196

195:                                              ; preds = %191
  store i32 0, i32* %6, align 4
  br label %228

196:                                              ; preds = %191
  %197 = load %struct.rpcrdma_mr_seg*, %struct.rpcrdma_mr_seg** %10, align 8
  %198 = load i32, i32* %13, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds %struct.rpcrdma_mr_seg, %struct.rpcrdma_mr_seg* %197, i64 %199
  %201 = getelementptr inbounds %struct.rpcrdma_mr_seg, %struct.rpcrdma_mr_seg* %200, i32 0, i32 2
  store i32* null, i32** %201, align 8
  %202 = load %struct.xdr_buf*, %struct.xdr_buf** %7, align 8
  %203 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %202, i32 0, i32 1
  %204 = load %struct.TYPE_4__*, %struct.TYPE_4__** %203, align 8
  %205 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %204, i64 0
  %206 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %205, i32 0, i32 1
  %207 = load i32*, i32** %206, align 8
  %208 = load %struct.rpcrdma_mr_seg*, %struct.rpcrdma_mr_seg** %10, align 8
  %209 = load i32, i32* %13, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds %struct.rpcrdma_mr_seg, %struct.rpcrdma_mr_seg* %208, i64 %210
  %212 = getelementptr inbounds %struct.rpcrdma_mr_seg, %struct.rpcrdma_mr_seg* %211, i32 0, i32 1
  store i32* %207, i32** %212, align 8
  %213 = load %struct.xdr_buf*, %struct.xdr_buf** %7, align 8
  %214 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %213, i32 0, i32 1
  %215 = load %struct.TYPE_4__*, %struct.TYPE_4__** %214, align 8
  %216 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %215, i64 0
  %217 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 8
  %219 = load %struct.rpcrdma_mr_seg*, %struct.rpcrdma_mr_seg** %10, align 8
  %220 = load i32, i32* %13, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds %struct.rpcrdma_mr_seg, %struct.rpcrdma_mr_seg* %219, i64 %221
  %223 = getelementptr inbounds %struct.rpcrdma_mr_seg, %struct.rpcrdma_mr_seg* %222, i32 0, i32 0
  store i32 %218, i32* %223, align 8
  %224 = load i32, i32* %13, align 4
  %225 = add nsw i32 %224, 1
  store i32 %225, i32* %13, align 4
  br label %226

226:                                              ; preds = %196, %170
  %227 = load i32, i32* %13, align 4
  store i32 %227, i32* %6, align 4
  br label %228

228:                                              ; preds = %226, %195, %189, %128, %71
  %229 = load i32, i32* %6, align 4
  ret i32 %229
}

declare dso_local i8* @min_t(i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
