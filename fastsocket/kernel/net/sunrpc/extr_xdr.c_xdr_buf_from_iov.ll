; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_xdr.c_xdr_buf_from_iov.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_xdr.c_xdr_buf_from_iov.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvec = type { i32 }
%struct.xdr_buf = type { i32, i32, i64, i32*, %struct.kvec* }

@empty_iov = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xdr_buf_from_iov(%struct.kvec* %0, %struct.xdr_buf* %1) #0 {
  %3 = alloca %struct.kvec*, align 8
  %4 = alloca %struct.xdr_buf*, align 8
  store %struct.kvec* %0, %struct.kvec** %3, align 8
  store %struct.xdr_buf* %1, %struct.xdr_buf** %4, align 8
  %5 = load %struct.xdr_buf*, %struct.xdr_buf** %4, align 8
  %6 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %5, i32 0, i32 4
  %7 = load %struct.kvec*, %struct.kvec** %6, align 8
  %8 = getelementptr inbounds %struct.kvec, %struct.kvec* %7, i64 0
  %9 = load %struct.kvec*, %struct.kvec** %3, align 8
  %10 = bitcast %struct.kvec* %8 to i8*
  %11 = bitcast %struct.kvec* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %10, i8* align 4 %11, i64 4, i1 false)
  %12 = load i32, i32* @empty_iov, align 4
  %13 = load %struct.xdr_buf*, %struct.xdr_buf** %4, align 8
  %14 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %13, i32 0, i32 3
  %15 = load i32*, i32** %14, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 0
  store i32 %12, i32* %16, align 4
  %17 = load %struct.xdr_buf*, %struct.xdr_buf** %4, align 8
  %18 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %17, i32 0, i32 2
  store i64 0, i64* %18, align 8
  %19 = load %struct.kvec*, %struct.kvec** %3, align 8
  %20 = getelementptr inbounds %struct.kvec, %struct.kvec* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.xdr_buf*, %struct.xdr_buf** %4, align 8
  %23 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 8
  %24 = load %struct.xdr_buf*, %struct.xdr_buf** %4, align 8
  %25 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %24, i32 0, i32 1
  store i32 %21, i32* %25, align 4
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
