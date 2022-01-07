; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_xdr.c_xdr_init_encode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_xdr.c_xdr_init_encode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xdr_stream = type { i32*, i32*, %struct.kvec*, %struct.xdr_buf* }
%struct.kvec = type { i32, i64 }
%struct.xdr_buf = type { i32, i32, i64, %struct.TYPE_2__*, %struct.kvec* }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xdr_init_encode(%struct.xdr_stream* %0, %struct.xdr_buf* %1, i32* %2) #0 {
  %4 = alloca %struct.xdr_stream*, align 8
  %5 = alloca %struct.xdr_buf*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.kvec*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.xdr_stream* %0, %struct.xdr_stream** %4, align 8
  store %struct.xdr_buf* %1, %struct.xdr_buf** %5, align 8
  store i32* %2, i32** %6, align 8
  %10 = load %struct.xdr_buf*, %struct.xdr_buf** %5, align 8
  %11 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %10, i32 0, i32 4
  %12 = load %struct.kvec*, %struct.kvec** %11, align 8
  store %struct.kvec* %12, %struct.kvec** %7, align 8
  %13 = load %struct.xdr_buf*, %struct.xdr_buf** %5, align 8
  %14 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.xdr_buf*, %struct.xdr_buf** %5, align 8
  %17 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = sub nsw i32 %15, %18
  %20 = load %struct.xdr_buf*, %struct.xdr_buf** %5, align 8
  %21 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %20, i32 0, i32 3
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i64 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = sub nsw i32 %19, %25
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = icmp slt i32 %27, 0
  %29 = zext i1 %28 to i32
  %30 = call i32 @BUG_ON(i32 %29)
  %31 = load %struct.xdr_buf*, %struct.xdr_buf** %5, align 8
  %32 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %33 = getelementptr inbounds %struct.xdr_stream, %struct.xdr_stream* %32, i32 0, i32 3
  store %struct.xdr_buf* %31, %struct.xdr_buf** %33, align 8
  %34 = load %struct.kvec*, %struct.kvec** %7, align 8
  %35 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %36 = getelementptr inbounds %struct.xdr_stream, %struct.xdr_stream* %35, i32 0, i32 2
  store %struct.kvec* %34, %struct.kvec** %36, align 8
  %37 = load %struct.kvec*, %struct.kvec** %7, align 8
  %38 = getelementptr inbounds %struct.kvec, %struct.kvec* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = inttoptr i64 %39 to i8*
  %41 = load %struct.kvec*, %struct.kvec** %7, align 8
  %42 = getelementptr inbounds %struct.kvec, %struct.kvec* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8, i8* %40, i64 %44
  %46 = bitcast i8* %45 to i32*
  %47 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %48 = getelementptr inbounds %struct.xdr_stream, %struct.xdr_stream* %47, i32 0, i32 0
  store i32* %46, i32** %48, align 8
  %49 = load %struct.kvec*, %struct.kvec** %7, align 8
  %50 = getelementptr inbounds %struct.kvec, %struct.kvec* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = inttoptr i64 %51 to i8*
  %53 = load i32, i32* %8, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i8, i8* %52, i64 %54
  %56 = bitcast i8* %55 to i32*
  %57 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %58 = getelementptr inbounds %struct.xdr_stream, %struct.xdr_stream* %57, i32 0, i32 1
  store i32* %56, i32** %58, align 8
  %59 = load %struct.kvec*, %struct.kvec** %7, align 8
  %60 = getelementptr inbounds %struct.kvec, %struct.kvec* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* %8, align 4
  %63 = icmp sgt i32 %61, %62
  %64 = zext i1 %63 to i32
  %65 = call i32 @BUG_ON(i32 %64)
  %66 = load i32*, i32** %6, align 8
  %67 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %68 = getelementptr inbounds %struct.xdr_stream, %struct.xdr_stream* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = icmp ne i32* %66, %69
  br i1 %70, label %71, label %114

71:                                               ; preds = %3
  %72 = load i32*, i32** %6, align 8
  %73 = icmp ne i32* %72, null
  br i1 %73, label %74, label %114

74:                                               ; preds = %71
  %75 = load i32*, i32** %6, align 8
  %76 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %77 = getelementptr inbounds %struct.xdr_stream, %struct.xdr_stream* %76, i32 0, i32 0
  %78 = load i32*, i32** %77, align 8
  %79 = icmp ult i32* %75, %78
  br i1 %79, label %86, label %80

80:                                               ; preds = %74
  %81 = load i32*, i32** %6, align 8
  %82 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %83 = getelementptr inbounds %struct.xdr_stream, %struct.xdr_stream* %82, i32 0, i32 1
  %84 = load i32*, i32** %83, align 8
  %85 = icmp ugt i32* %81, %84
  br label %86

86:                                               ; preds = %80, %74
  %87 = phi i1 [ true, %74 ], [ %85, %80 ]
  %88 = zext i1 %87 to i32
  %89 = call i32 @BUG_ON(i32 %88)
  %90 = load i32*, i32** %6, align 8
  %91 = bitcast i32* %90 to i8*
  %92 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %93 = getelementptr inbounds %struct.xdr_stream, %struct.xdr_stream* %92, i32 0, i32 0
  %94 = load i32*, i32** %93, align 8
  %95 = bitcast i32* %94 to i8*
  %96 = ptrtoint i8* %91 to i64
  %97 = ptrtoint i8* %95 to i64
  %98 = sub i64 %96, %97
  store i64 %98, i64* %9, align 8
  %99 = load i32*, i32** %6, align 8
  %100 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %101 = getelementptr inbounds %struct.xdr_stream, %struct.xdr_stream* %100, i32 0, i32 0
  store i32* %99, i32** %101, align 8
  %102 = load i64, i64* %9, align 8
  %103 = load %struct.xdr_buf*, %struct.xdr_buf** %5, align 8
  %104 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %103, i32 0, i32 2
  %105 = load i64, i64* %104, align 8
  %106 = add i64 %105, %102
  store i64 %106, i64* %104, align 8
  %107 = load i64, i64* %9, align 8
  %108 = load %struct.kvec*, %struct.kvec** %7, align 8
  %109 = getelementptr inbounds %struct.kvec, %struct.kvec* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = sext i32 %110 to i64
  %112 = add i64 %111, %107
  %113 = trunc i64 %112 to i32
  store i32 %113, i32* %109, align 8
  br label %114

114:                                              ; preds = %86, %71, %3
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
