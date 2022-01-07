; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_xdr.c_xdr_copy_to_scratch.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_xdr.c_xdr_copy_to_scratch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xdr_stream = type { %struct.TYPE_2__, i32*, i64 }
%struct.TYPE_2__ = type { i64, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.xdr_stream*, i64)* @xdr_copy_to_scratch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @xdr_copy_to_scratch(%struct.xdr_stream* %0, i64 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.xdr_stream*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store %struct.xdr_stream* %0, %struct.xdr_stream** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %10 = getelementptr inbounds %struct.xdr_stream, %struct.xdr_stream* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 1
  %12 = load i32*, i32** %11, align 8
  %13 = bitcast i32* %12 to i8*
  store i8* %13, i8** %7, align 8
  %14 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %15 = getelementptr inbounds %struct.xdr_stream, %struct.xdr_stream* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to i8*
  %18 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %19 = getelementptr inbounds %struct.xdr_stream, %struct.xdr_stream* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  %21 = bitcast i32* %20 to i8*
  %22 = ptrtoint i8* %17 to i64
  %23 = ptrtoint i8* %21 to i64
  %24 = sub i64 %22, %23
  store i64 %24, i64* %8, align 8
  %25 = load i64, i64* %5, align 8
  %26 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %27 = getelementptr inbounds %struct.xdr_stream, %struct.xdr_stream* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ugt i64 %25, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %2
  store i32* null, i32** %3, align 8
  br label %65

32:                                               ; preds = %2
  %33 = load i8*, i8** %7, align 8
  %34 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %35 = getelementptr inbounds %struct.xdr_stream, %struct.xdr_stream* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = load i64, i64* %8, align 8
  %38 = call i32 @memcpy(i8* %33, i32* %36, i64 %37)
  %39 = load i64, i64* %8, align 8
  %40 = load i8*, i8** %7, align 8
  %41 = getelementptr i8, i8* %40, i64 %39
  store i8* %41, i8** %7, align 8
  %42 = load i64, i64* %8, align 8
  %43 = load i64, i64* %5, align 8
  %44 = sub i64 %43, %42
  store i64 %44, i64* %5, align 8
  %45 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %46 = call i32 @xdr_set_next_buffer(%struct.xdr_stream* %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %32
  store i32* null, i32** %3, align 8
  br label %65

49:                                               ; preds = %32
  %50 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %51 = load i64, i64* %5, align 8
  %52 = call i32* @__xdr_inline_decode(%struct.xdr_stream* %50, i64 %51)
  store i32* %52, i32** %6, align 8
  %53 = load i32*, i32** %6, align 8
  %54 = icmp eq i32* %53, null
  br i1 %54, label %55, label %56

55:                                               ; preds = %49
  store i32* null, i32** %3, align 8
  br label %65

56:                                               ; preds = %49
  %57 = load i8*, i8** %7, align 8
  %58 = load i32*, i32** %6, align 8
  %59 = load i64, i64* %5, align 8
  %60 = call i32 @memcpy(i8* %57, i32* %58, i64 %59)
  %61 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %62 = getelementptr inbounds %struct.xdr_stream, %struct.xdr_stream* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 1
  %64 = load i32*, i32** %63, align 8
  store i32* %64, i32** %3, align 8
  br label %65

65:                                               ; preds = %56, %55, %48, %31
  %66 = load i32*, i32** %3, align 8
  ret i32* %66
}

declare dso_local i32 @memcpy(i8*, i32*, i64) #1

declare dso_local i32 @xdr_set_next_buffer(%struct.xdr_stream*) #1

declare dso_local i32* @__xdr_inline_decode(%struct.xdr_stream*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
