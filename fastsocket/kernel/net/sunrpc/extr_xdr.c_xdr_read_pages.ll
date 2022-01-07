; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_xdr.c_xdr_read_pages.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_xdr.c_xdr_read_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xdr_stream = type { i32, i32*, i32*, i32*, %struct.kvec*, %struct.xdr_buf* }
%struct.kvec = type { i32, i64 }
%struct.xdr_buf = type { i32, i32, i32, %struct.kvec*, %struct.kvec* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xdr_read_pages(%struct.xdr_stream* %0, i32 %1) #0 {
  %3 = alloca %struct.xdr_stream*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.xdr_buf*, align 8
  %6 = alloca %struct.kvec*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.xdr_stream* %0, %struct.xdr_stream** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.xdr_stream*, %struct.xdr_stream** %3, align 8
  %12 = getelementptr inbounds %struct.xdr_stream, %struct.xdr_stream* %11, i32 0, i32 5
  %13 = load %struct.xdr_buf*, %struct.xdr_buf** %12, align 8
  store %struct.xdr_buf* %13, %struct.xdr_buf** %5, align 8
  %14 = load i32, i32* %4, align 4
  %15 = call i8* @XDR_QUADLEN(i32 %14)
  %16 = ptrtoint i8* %15 to i32
  store i32 %16, i32* %8, align 4
  %17 = load %struct.xdr_stream*, %struct.xdr_stream** %3, align 8
  %18 = getelementptr inbounds %struct.xdr_stream, %struct.xdr_stream* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  br label %136

22:                                               ; preds = %2
  %23 = load i32, i32* %8, align 4
  %24 = load %struct.xdr_stream*, %struct.xdr_stream** %3, align 8
  %25 = getelementptr inbounds %struct.xdr_stream, %struct.xdr_stream* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp ugt i32 %23, %26
  br i1 %27, label %28, label %34

28:                                               ; preds = %22
  %29 = load %struct.xdr_stream*, %struct.xdr_stream** %3, align 8
  %30 = getelementptr inbounds %struct.xdr_stream, %struct.xdr_stream* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %8, align 4
  %33 = shl i32 %32, 2
  store i32 %33, i32* %4, align 4
  br label %34

34:                                               ; preds = %28, %22
  %35 = load %struct.xdr_buf*, %struct.xdr_buf** %5, align 8
  %36 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %35, i32 0, i32 4
  %37 = load %struct.kvec*, %struct.kvec** %36, align 8
  store %struct.kvec* %37, %struct.kvec** %6, align 8
  %38 = load %struct.kvec*, %struct.kvec** %6, align 8
  %39 = getelementptr inbounds %struct.kvec, %struct.kvec* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.kvec*, %struct.kvec** %6, align 8
  %42 = getelementptr inbounds %struct.kvec, %struct.kvec* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = inttoptr i64 %43 to i8*
  %45 = sext i32 %40 to i64
  %46 = getelementptr inbounds i8, i8* %44, i64 %45
  %47 = load %struct.xdr_stream*, %struct.xdr_stream** %3, align 8
  %48 = getelementptr inbounds %struct.xdr_stream, %struct.xdr_stream* %47, i32 0, i32 3
  %49 = load i32*, i32** %48, align 8
  %50 = bitcast i32* %49 to i8*
  %51 = ptrtoint i8* %46 to i64
  %52 = ptrtoint i8* %50 to i64
  %53 = sub i64 %51, %52
  %54 = trunc i64 %53 to i32
  store i32 %54, i32* %7, align 4
  %55 = load i32, i32* %7, align 4
  %56 = icmp sgt i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %34
  %58 = load %struct.xdr_buf*, %struct.xdr_buf** %5, align 8
  %59 = load i32, i32* %7, align 4
  %60 = call i32 @xdr_shrink_bufhead(%struct.xdr_buf* %58, i32 %59)
  br label %61

61:                                               ; preds = %57, %34
  %62 = load %struct.xdr_buf*, %struct.xdr_buf** %5, align 8
  %63 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* %4, align 4
  %66 = icmp ugt i32 %64, %65
  br i1 %66, label %67, label %75

67:                                               ; preds = %61
  %68 = load %struct.xdr_buf*, %struct.xdr_buf** %5, align 8
  %69 = load %struct.xdr_buf*, %struct.xdr_buf** %5, align 8
  %70 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* %4, align 4
  %73 = sub i32 %71, %72
  %74 = call i32 @xdr_shrink_pagelen(%struct.xdr_buf* %68, i32 %73)
  br label %75

75:                                               ; preds = %67, %61
  %76 = load i32, i32* %8, align 4
  %77 = shl i32 %76, 2
  %78 = load i32, i32* %4, align 4
  %79 = sub i32 %77, %78
  store i32 %79, i32* %10, align 4
  %80 = load %struct.xdr_buf*, %struct.xdr_buf** %5, align 8
  %81 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %80, i32 0, i32 3
  %82 = load %struct.kvec*, %struct.kvec** %81, align 8
  store %struct.kvec* %82, %struct.kvec** %6, align 8
  %83 = load %struct.xdr_stream*, %struct.xdr_stream** %3, align 8
  %84 = getelementptr inbounds %struct.xdr_stream, %struct.xdr_stream* %83, i32 0, i32 4
  store %struct.kvec* %82, %struct.kvec** %84, align 8
  %85 = load %struct.kvec*, %struct.kvec** %6, align 8
  %86 = getelementptr inbounds %struct.kvec, %struct.kvec* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  store i32 %87, i32* %9, align 4
  %88 = load %struct.xdr_buf*, %struct.xdr_buf** %5, align 8
  %89 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.xdr_buf*, %struct.xdr_buf** %5, align 8
  %92 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = sub nsw i32 %90, %93
  store i32 %94, i32* %7, align 4
  %95 = load i32, i32* %9, align 4
  %96 = load i32, i32* %7, align 4
  %97 = load i32, i32* %10, align 4
  %98 = add nsw i32 %96, %97
  %99 = icmp ugt i32 %95, %98
  br i1 %99, label %100, label %104

100:                                              ; preds = %75
  %101 = load i32, i32* %7, align 4
  %102 = load i32, i32* %9, align 4
  %103 = sub i32 %102, %101
  store i32 %103, i32* %9, align 4
  br label %106

104:                                              ; preds = %75
  %105 = load i32, i32* %10, align 4
  store i32 %105, i32* %9, align 4
  br label %106

106:                                              ; preds = %104, %100
  %107 = load %struct.kvec*, %struct.kvec** %6, align 8
  %108 = getelementptr inbounds %struct.kvec, %struct.kvec* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = inttoptr i64 %109 to i8*
  %111 = load i32, i32* %10, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i8, i8* %110, i64 %112
  %114 = bitcast i8* %113 to i32*
  %115 = load %struct.xdr_stream*, %struct.xdr_stream** %3, align 8
  %116 = getelementptr inbounds %struct.xdr_stream, %struct.xdr_stream* %115, i32 0, i32 3
  store i32* %114, i32** %116, align 8
  %117 = load %struct.kvec*, %struct.kvec** %6, align 8
  %118 = getelementptr inbounds %struct.kvec, %struct.kvec* %117, i32 0, i32 1
  %119 = load i64, i64* %118, align 8
  %120 = inttoptr i64 %119 to i8*
  %121 = load i32, i32* %9, align 4
  %122 = zext i32 %121 to i64
  %123 = getelementptr inbounds i8, i8* %120, i64 %122
  %124 = bitcast i8* %123 to i32*
  %125 = load %struct.xdr_stream*, %struct.xdr_stream** %3, align 8
  %126 = getelementptr inbounds %struct.xdr_stream, %struct.xdr_stream* %125, i32 0, i32 2
  store i32* %124, i32** %126, align 8
  %127 = load %struct.xdr_stream*, %struct.xdr_stream** %3, align 8
  %128 = getelementptr inbounds %struct.xdr_stream, %struct.xdr_stream* %127, i32 0, i32 1
  store i32* null, i32** %128, align 8
  %129 = load i32, i32* %9, align 4
  %130 = load i32, i32* %10, align 4
  %131 = sub i32 %129, %130
  %132 = call i8* @XDR_QUADLEN(i32 %131)
  %133 = ptrtoint i8* %132 to i32
  %134 = load %struct.xdr_stream*, %struct.xdr_stream** %3, align 8
  %135 = getelementptr inbounds %struct.xdr_stream, %struct.xdr_stream* %134, i32 0, i32 0
  store i32 %133, i32* %135, align 8
  br label %136

136:                                              ; preds = %106, %21
  ret void
}

declare dso_local i8* @XDR_QUADLEN(i32) #1

declare dso_local i32 @xdr_shrink_bufhead(%struct.xdr_buf*, i32) #1

declare dso_local i32 @xdr_shrink_pagelen(%struct.xdr_buf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
