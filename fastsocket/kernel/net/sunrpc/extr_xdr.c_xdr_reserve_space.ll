; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_xdr.c_xdr_reserve_space.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_xdr.c_xdr_reserve_space.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xdr_stream = type { %struct.TYPE_4__*, %struct.TYPE_3__*, i32*, i32* }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @xdr_reserve_space(%struct.xdr_stream* %0, i64 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.xdr_stream*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  store %struct.xdr_stream* %0, %struct.xdr_stream** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %9 = getelementptr inbounds %struct.xdr_stream, %struct.xdr_stream* %8, i32 0, i32 2
  %10 = load i32*, i32** %9, align 8
  store i32* %10, i32** %6, align 8
  %11 = load i64, i64* %5, align 8
  %12 = add i64 %11, 3
  store i64 %12, i64* %5, align 8
  %13 = load i64, i64* %5, align 8
  %14 = and i64 %13, -4
  store i64 %14, i64* %5, align 8
  %15 = load i32*, i32** %6, align 8
  %16 = load i64, i64* %5, align 8
  %17 = lshr i64 %16, 2
  %18 = getelementptr inbounds i32, i32* %15, i64 %17
  store i32* %18, i32** %7, align 8
  %19 = load i32*, i32** %7, align 8
  %20 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %21 = getelementptr inbounds %struct.xdr_stream, %struct.xdr_stream* %20, i32 0, i32 3
  %22 = load i32*, i32** %21, align 8
  %23 = icmp ugt i32* %19, %22
  br i1 %23, label %28, label %24

24:                                               ; preds = %2
  %25 = load i32*, i32** %7, align 8
  %26 = load i32*, i32** %6, align 8
  %27 = icmp ult i32* %25, %26
  br label %28

28:                                               ; preds = %24, %2
  %29 = phi i1 [ true, %2 ], [ %27, %24 ]
  %30 = zext i1 %29 to i32
  %31 = call i64 @unlikely(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %28
  store i32* null, i32** %3, align 8
  br label %53

34:                                               ; preds = %28
  %35 = load i32*, i32** %7, align 8
  %36 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %37 = getelementptr inbounds %struct.xdr_stream, %struct.xdr_stream* %36, i32 0, i32 2
  store i32* %35, i32** %37, align 8
  %38 = load i64, i64* %5, align 8
  %39 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %40 = getelementptr inbounds %struct.xdr_stream, %struct.xdr_stream* %39, i32 0, i32 1
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = add i64 %43, %38
  store i64 %44, i64* %42, align 8
  %45 = load i64, i64* %5, align 8
  %46 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %47 = getelementptr inbounds %struct.xdr_stream, %struct.xdr_stream* %46, i32 0, i32 0
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = add i64 %50, %45
  store i64 %51, i64* %49, align 8
  %52 = load i32*, i32** %6, align 8
  store i32* %52, i32** %3, align 8
  br label %53

53:                                               ; preds = %34, %33
  %54 = load i32*, i32** %3, align 8
  ret i32* %54
}

declare dso_local i64 @unlikely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
