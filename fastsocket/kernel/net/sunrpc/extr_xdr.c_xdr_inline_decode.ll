; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_xdr.c_xdr_inline_decode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_xdr.c_xdr_inline_decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xdr_stream = type { i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @xdr_inline_decode(%struct.xdr_stream* %0, i64 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.xdr_stream*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  store %struct.xdr_stream* %0, %struct.xdr_stream** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load i64, i64* %5, align 8
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %2
  %10 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %11 = getelementptr inbounds %struct.xdr_stream, %struct.xdr_stream* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to i32*
  store i32* %13, i32** %3, align 8
  br label %39

14:                                               ; preds = %2
  %15 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %16 = getelementptr inbounds %struct.xdr_stream, %struct.xdr_stream* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %19 = getelementptr inbounds %struct.xdr_stream, %struct.xdr_stream* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp eq i64 %17, %20
  br i1 %21, label %22, label %27

22:                                               ; preds = %14
  %23 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %24 = call i32 @xdr_set_next_buffer(%struct.xdr_stream* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %22
  store i32* null, i32** %3, align 8
  br label %39

27:                                               ; preds = %22, %14
  %28 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %29 = load i64, i64* %5, align 8
  %30 = call i32* @__xdr_inline_decode(%struct.xdr_stream* %28, i64 %29)
  store i32* %30, i32** %6, align 8
  %31 = load i32*, i32** %6, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %33, label %35

33:                                               ; preds = %27
  %34 = load i32*, i32** %6, align 8
  store i32* %34, i32** %3, align 8
  br label %39

35:                                               ; preds = %27
  %36 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %37 = load i64, i64* %5, align 8
  %38 = call i32* @xdr_copy_to_scratch(%struct.xdr_stream* %36, i64 %37)
  store i32* %38, i32** %3, align 8
  br label %39

39:                                               ; preds = %35, %33, %26, %9
  %40 = load i32*, i32** %3, align 8
  ret i32* %40
}

declare dso_local i32 @xdr_set_next_buffer(%struct.xdr_stream*) #1

declare dso_local i32* @__xdr_inline_decode(%struct.xdr_stream*, i64) #1

declare dso_local i32* @xdr_copy_to_scratch(%struct.xdr_stream*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
