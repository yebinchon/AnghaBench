; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bearssl/src/ssl/extr_ssl_engine.c_br_ssl_engine_switch_ccm_out.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bearssl/src/ssl/extr_ssl_engine.c_br_ssl_engine_switch_ccm_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_11__, %struct.TYPE_8__* }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32 (i32*, i32*, i8*, i64, i8*, i64)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @br_ssl_engine_switch_ccm_out(%struct.TYPE_12__* %0, i32 %1, i32 %2, i32* %3, i64 %4, i64 %5) #0 {
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca [72 x i8], align 16
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  store i64 %5, i64* %12, align 8
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %17 = load i32, i32* %9, align 4
  %18 = load i64, i64* %11, align 8
  %19 = add i64 %18, 4
  %20 = getelementptr inbounds [72 x i8], [72 x i8]* %13, i64 0, i64 0
  %21 = call i32 @compute_key_block(%struct.TYPE_12__* %16, i32 %17, i64 %19, i8* %20)
  %22 = load i32, i32* %8, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %6
  %25 = getelementptr inbounds [72 x i8], [72 x i8]* %13, i64 0, i64 0
  store i8* %25, i8** %14, align 8
  %26 = load i64, i64* %11, align 8
  %27 = shl i64 %26, 1
  %28 = getelementptr inbounds [72 x i8], [72 x i8]* %13, i64 0, i64 %27
  store i8* %28, i8** %15, align 8
  br label %36

29:                                               ; preds = %6
  %30 = load i64, i64* %11, align 8
  %31 = getelementptr inbounds [72 x i8], [72 x i8]* %13, i64 0, i64 %30
  store i8* %31, i8** %14, align 8
  %32 = load i64, i64* %11, align 8
  %33 = shl i64 %32, 1
  %34 = add i64 %33, 4
  %35 = getelementptr inbounds [72 x i8], [72 x i8]* %13, i64 0, i64 %34
  store i8* %35, i8** %15, align 8
  br label %36

36:                                               ; preds = %29, %24
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 1
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  %41 = load i32 (i32*, i32*, i8*, i64, i8*, i64)*, i32 (i32*, i32*, i8*, i64, i8*, i64)** %40, align 8
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 0
  %47 = load i32*, i32** %10, align 8
  %48 = load i8*, i8** %14, align 8
  %49 = load i64, i64* %11, align 8
  %50 = load i8*, i8** %15, align 8
  %51 = load i64, i64* %12, align 8
  %52 = call i32 %41(i32* %46, i32* %47, i8* %48, i64 %49, i8* %50, i64 %51)
  ret void
}

declare dso_local i32 @compute_key_block(%struct.TYPE_12__*, i32, i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
