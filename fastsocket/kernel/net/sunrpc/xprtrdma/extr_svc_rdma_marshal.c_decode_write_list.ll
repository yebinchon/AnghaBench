; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/xprtrdma/extr_svc_rdma_marshal.c_decode_write_list.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/xprtrdma/extr_svc_rdma_marshal.c_decode_write_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpcrdma_write_array = type { i64, i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i64, i32 }

@xdr_zero = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [27 x i8] c"svcrdma: ary=%p, vaend=%p\0A\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"svcrdma: ary=%p, wc_nchunks=%d, vaend=%p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*)* @decode_write_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @decode_write_list(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.rpcrdma_write_array*, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load i32*, i32** %4, align 8
  %10 = bitcast i32* %9 to %struct.rpcrdma_write_array*
  store %struct.rpcrdma_write_array* %10, %struct.rpcrdma_write_array** %7, align 8
  %11 = load %struct.rpcrdma_write_array*, %struct.rpcrdma_write_array** %7, align 8
  %12 = getelementptr inbounds %struct.rpcrdma_write_array, %struct.rpcrdma_write_array* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @xdr_zero, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %20

16:                                               ; preds = %2
  %17 = load %struct.rpcrdma_write_array*, %struct.rpcrdma_write_array** %7, align 8
  %18 = getelementptr inbounds %struct.rpcrdma_write_array, %struct.rpcrdma_write_array* %17, i32 0, i32 1
  %19 = bitcast i64* %18 to i32*
  store i32* %19, i32** %3, align 8
  br label %141

20:                                               ; preds = %2
  %21 = load %struct.rpcrdma_write_array*, %struct.rpcrdma_write_array** %7, align 8
  %22 = ptrtoint %struct.rpcrdma_write_array* %21 to i64
  %23 = add i64 %22, 24
  %24 = load i32*, i32** %5, align 8
  %25 = ptrtoint i32* %24 to i64
  %26 = icmp ugt i64 %23, %25
  br i1 %26, label %27, label %32

27:                                               ; preds = %20
  %28 = load %struct.rpcrdma_write_array*, %struct.rpcrdma_write_array** %7, align 8
  %29 = load i32*, i32** %5, align 8
  %30 = ptrtoint i32* %29 to i32
  %31 = call i32 (i8*, %struct.rpcrdma_write_array*, i32, ...) @dprintk(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), %struct.rpcrdma_write_array* %28, i32 %30)
  store i32* null, i32** %3, align 8
  br label %141

32:                                               ; preds = %20
  %33 = load %struct.rpcrdma_write_array*, %struct.rpcrdma_write_array** %7, align 8
  %34 = getelementptr inbounds %struct.rpcrdma_write_array, %struct.rpcrdma_write_array* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = call i8* @ntohl(i64 %35)
  %37 = ptrtoint i8* %36 to i64
  %38 = load %struct.rpcrdma_write_array*, %struct.rpcrdma_write_array** %7, align 8
  %39 = getelementptr inbounds %struct.rpcrdma_write_array, %struct.rpcrdma_write_array* %38, i32 0, i32 0
  store i64 %37, i64* %39, align 8
  %40 = load %struct.rpcrdma_write_array*, %struct.rpcrdma_write_array** %7, align 8
  %41 = getelementptr inbounds %struct.rpcrdma_write_array, %struct.rpcrdma_write_array* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = call i8* @ntohl(i64 %42)
  %44 = ptrtoint i8* %43 to i64
  %45 = load %struct.rpcrdma_write_array*, %struct.rpcrdma_write_array** %7, align 8
  %46 = getelementptr inbounds %struct.rpcrdma_write_array, %struct.rpcrdma_write_array* %45, i32 0, i32 1
  store i64 %44, i64* %46, align 8
  %47 = load %struct.rpcrdma_write_array*, %struct.rpcrdma_write_array** %7, align 8
  %48 = getelementptr inbounds %struct.rpcrdma_write_array, %struct.rpcrdma_write_array* %47, i32 0, i32 2
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i64 0
  %51 = ptrtoint %struct.TYPE_4__* %50 to i64
  %52 = load %struct.rpcrdma_write_array*, %struct.rpcrdma_write_array** %7, align 8
  %53 = getelementptr inbounds %struct.rpcrdma_write_array, %struct.rpcrdma_write_array* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = mul i64 4, %54
  %56 = add i64 %51, %55
  %57 = load i32*, i32** %5, align 8
  %58 = ptrtoint i32* %57 to i64
  %59 = icmp ugt i64 %56, %58
  br i1 %59, label %60, label %68

60:                                               ; preds = %32
  %61 = load %struct.rpcrdma_write_array*, %struct.rpcrdma_write_array** %7, align 8
  %62 = load %struct.rpcrdma_write_array*, %struct.rpcrdma_write_array** %7, align 8
  %63 = getelementptr inbounds %struct.rpcrdma_write_array, %struct.rpcrdma_write_array* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = trunc i64 %64 to i32
  %66 = load i32*, i32** %5, align 8
  %67 = call i32 (i8*, %struct.rpcrdma_write_array*, i32, ...) @dprintk(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), %struct.rpcrdma_write_array* %61, i32 %65, i32* %66)
  store i32* null, i32** %3, align 8
  br label %141

68:                                               ; preds = %32
  store i32 0, i32* %6, align 4
  br label %69

69:                                               ; preds = %128, %68
  %70 = load i32, i32* %6, align 4
  %71 = sext i32 %70 to i64
  %72 = load %struct.rpcrdma_write_array*, %struct.rpcrdma_write_array** %7, align 8
  %73 = getelementptr inbounds %struct.rpcrdma_write_array, %struct.rpcrdma_write_array* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = icmp slt i64 %71, %74
  br i1 %75, label %76, label %131

76:                                               ; preds = %69
  %77 = load %struct.rpcrdma_write_array*, %struct.rpcrdma_write_array** %7, align 8
  %78 = getelementptr inbounds %struct.rpcrdma_write_array, %struct.rpcrdma_write_array* %77, i32 0, i32 2
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %78, align 8
  %80 = load i32, i32* %6, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = call i8* @ntohl(i64 %85)
  %87 = ptrtoint i8* %86 to i64
  %88 = load %struct.rpcrdma_write_array*, %struct.rpcrdma_write_array** %7, align 8
  %89 = getelementptr inbounds %struct.rpcrdma_write_array, %struct.rpcrdma_write_array* %88, i32 0, i32 2
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %89, align 8
  %91 = load i32, i32* %6, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 0
  store i64 %87, i64* %95, align 8
  %96 = load %struct.rpcrdma_write_array*, %struct.rpcrdma_write_array** %7, align 8
  %97 = getelementptr inbounds %struct.rpcrdma_write_array, %struct.rpcrdma_write_array* %96, i32 0, i32 2
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** %97, align 8
  %99 = load i32, i32* %6, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = call i8* @ntohl(i64 %104)
  %106 = ptrtoint i8* %105 to i64
  %107 = load %struct.rpcrdma_write_array*, %struct.rpcrdma_write_array** %7, align 8
  %108 = getelementptr inbounds %struct.rpcrdma_write_array, %struct.rpcrdma_write_array* %107, i32 0, i32 2
  %109 = load %struct.TYPE_4__*, %struct.TYPE_4__** %108, align 8
  %110 = load i32, i32* %6, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 1
  store i64 %106, i64* %114, align 8
  %115 = load %struct.rpcrdma_write_array*, %struct.rpcrdma_write_array** %7, align 8
  %116 = getelementptr inbounds %struct.rpcrdma_write_array, %struct.rpcrdma_write_array* %115, i32 0, i32 2
  %117 = load %struct.TYPE_4__*, %struct.TYPE_4__** %116, align 8
  %118 = load i32, i32* %6, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i32 0, i32 2
  store i32* %122, i32** %4, align 8
  %123 = load i32*, i32** %4, align 8
  %124 = call i32 @xdr_decode_hyper(i32* %123, i32* %8)
  %125 = load i32, i32* %8, align 4
  %126 = load i32*, i32** %4, align 8
  %127 = call i32 @put_unaligned(i32 %125, i32* %126)
  br label %128

128:                                              ; preds = %76
  %129 = load i32, i32* %6, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %6, align 4
  br label %69

131:                                              ; preds = %69
  %132 = load %struct.rpcrdma_write_array*, %struct.rpcrdma_write_array** %7, align 8
  %133 = getelementptr inbounds %struct.rpcrdma_write_array, %struct.rpcrdma_write_array* %132, i32 0, i32 2
  %134 = load %struct.TYPE_4__*, %struct.TYPE_4__** %133, align 8
  %135 = load i32, i32* %6, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i64 %136
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %138, i32 0, i32 1
  %140 = bitcast i64* %139 to i32*
  store i32* %140, i32** %3, align 8
  br label %141

141:                                              ; preds = %131, %60, %27, %16
  %142 = load i32*, i32** %3, align 8
  ret i32* %142
}

declare dso_local i32 @dprintk(i8*, %struct.rpcrdma_write_array*, i32, ...) #1

declare dso_local i8* @ntohl(i64) #1

declare dso_local i32 @xdr_decode_hyper(i32*, i32*) #1

declare dso_local i32 @put_unaligned(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
