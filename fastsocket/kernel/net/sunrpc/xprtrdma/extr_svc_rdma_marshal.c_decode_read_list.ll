; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/xprtrdma/extr_svc_rdma_marshal.c_decode_read_list.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/xprtrdma/extr_svc_rdma_marshal.c_decode_read_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpcrdma_read_chunk = type { i64, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, i32 }

@xdr_zero = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"svcrdma: vaend=%p, ch=%p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*)* @decode_read_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @decode_read_list(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.rpcrdma_read_chunk*, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = bitcast i32* %8 to %struct.rpcrdma_read_chunk*
  store %struct.rpcrdma_read_chunk* %9, %struct.rpcrdma_read_chunk** %6, align 8
  br label %10

10:                                               ; preds = %27, %2
  %11 = load %struct.rpcrdma_read_chunk*, %struct.rpcrdma_read_chunk** %6, align 8
  %12 = getelementptr inbounds %struct.rpcrdma_read_chunk, %struct.rpcrdma_read_chunk* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @xdr_zero, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %70

16:                                               ; preds = %10
  %17 = load %struct.rpcrdma_read_chunk*, %struct.rpcrdma_read_chunk** %6, align 8
  %18 = ptrtoint %struct.rpcrdma_read_chunk* %17 to i64
  %19 = add i64 %18, 40
  %20 = load i32*, i32** %5, align 8
  %21 = ptrtoint i32* %20 to i64
  %22 = icmp ugt i64 %19, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %16
  %24 = load i32*, i32** %5, align 8
  %25 = load %struct.rpcrdma_read_chunk*, %struct.rpcrdma_read_chunk** %6, align 8
  %26 = call i32 @dprintk(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32* %24, %struct.rpcrdma_read_chunk* %25)
  store i32* null, i32** %3, align 8
  br label %74

27:                                               ; preds = %16
  %28 = load %struct.rpcrdma_read_chunk*, %struct.rpcrdma_read_chunk** %6, align 8
  %29 = getelementptr inbounds %struct.rpcrdma_read_chunk, %struct.rpcrdma_read_chunk* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = call i8* @ntohl(i64 %30)
  %32 = ptrtoint i8* %31 to i64
  %33 = load %struct.rpcrdma_read_chunk*, %struct.rpcrdma_read_chunk** %6, align 8
  %34 = getelementptr inbounds %struct.rpcrdma_read_chunk, %struct.rpcrdma_read_chunk* %33, i32 0, i32 0
  store i64 %32, i64* %34, align 8
  %35 = load %struct.rpcrdma_read_chunk*, %struct.rpcrdma_read_chunk** %6, align 8
  %36 = getelementptr inbounds %struct.rpcrdma_read_chunk, %struct.rpcrdma_read_chunk* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = call i8* @ntohl(i64 %37)
  %39 = ptrtoint i8* %38 to i64
  %40 = load %struct.rpcrdma_read_chunk*, %struct.rpcrdma_read_chunk** %6, align 8
  %41 = getelementptr inbounds %struct.rpcrdma_read_chunk, %struct.rpcrdma_read_chunk* %40, i32 0, i32 1
  store i64 %39, i64* %41, align 8
  %42 = load %struct.rpcrdma_read_chunk*, %struct.rpcrdma_read_chunk** %6, align 8
  %43 = getelementptr inbounds %struct.rpcrdma_read_chunk, %struct.rpcrdma_read_chunk* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = call i8* @ntohl(i64 %45)
  %47 = ptrtoint i8* %46 to i64
  %48 = load %struct.rpcrdma_read_chunk*, %struct.rpcrdma_read_chunk** %6, align 8
  %49 = getelementptr inbounds %struct.rpcrdma_read_chunk, %struct.rpcrdma_read_chunk* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  store i64 %47, i64* %50, align 8
  %51 = load %struct.rpcrdma_read_chunk*, %struct.rpcrdma_read_chunk** %6, align 8
  %52 = getelementptr inbounds %struct.rpcrdma_read_chunk, %struct.rpcrdma_read_chunk* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = call i8* @ntohl(i64 %54)
  %56 = ptrtoint i8* %55 to i64
  %57 = load %struct.rpcrdma_read_chunk*, %struct.rpcrdma_read_chunk** %6, align 8
  %58 = getelementptr inbounds %struct.rpcrdma_read_chunk, %struct.rpcrdma_read_chunk* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 1
  store i64 %56, i64* %59, align 8
  %60 = load %struct.rpcrdma_read_chunk*, %struct.rpcrdma_read_chunk** %6, align 8
  %61 = getelementptr inbounds %struct.rpcrdma_read_chunk, %struct.rpcrdma_read_chunk* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 2
  store i32* %62, i32** %4, align 8
  %63 = load i32*, i32** %4, align 8
  %64 = call i32 @xdr_decode_hyper(i32* %63, i32* %7)
  %65 = load i32, i32* %7, align 4
  %66 = load i32*, i32** %4, align 8
  %67 = call i32 @put_unaligned(i32 %65, i32* %66)
  %68 = load %struct.rpcrdma_read_chunk*, %struct.rpcrdma_read_chunk** %6, align 8
  %69 = getelementptr inbounds %struct.rpcrdma_read_chunk, %struct.rpcrdma_read_chunk* %68, i32 1
  store %struct.rpcrdma_read_chunk* %69, %struct.rpcrdma_read_chunk** %6, align 8
  br label %10

70:                                               ; preds = %10
  %71 = load %struct.rpcrdma_read_chunk*, %struct.rpcrdma_read_chunk** %6, align 8
  %72 = getelementptr inbounds %struct.rpcrdma_read_chunk, %struct.rpcrdma_read_chunk* %71, i32 0, i32 1
  %73 = bitcast i64* %72 to i32*
  store i32* %73, i32** %3, align 8
  br label %74

74:                                               ; preds = %70, %23
  %75 = load i32*, i32** %3, align 8
  ret i32* %75
}

declare dso_local i32 @dprintk(i8*, i32*, %struct.rpcrdma_read_chunk*) #1

declare dso_local i8* @ntohl(i64) #1

declare dso_local i32 @xdr_decode_hyper(i32*, i32*) #1

declare dso_local i32 @put_unaligned(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
