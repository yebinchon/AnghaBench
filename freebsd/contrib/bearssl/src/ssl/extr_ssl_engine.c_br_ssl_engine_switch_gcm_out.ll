; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bearssl/src/ssl/extr_ssl_engine.c_br_ssl_engine_switch_gcm_out.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bearssl/src/ssl/extr_ssl_engine.c_br_ssl_engine_switch_gcm_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, %struct.TYPE_11__, %struct.TYPE_8__* }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32 (i32*, i32*, i8*, i64, i32, i8*)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @br_ssl_engine_switch_gcm_out(%struct.TYPE_12__* %0, i32 %1, i32 %2, i32* %3, i64 %4) #0 {
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca [72 x i8], align 16
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i64 %4, i64* %10, align 8
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %15 = load i32, i32* %8, align 4
  %16 = load i64, i64* %10, align 8
  %17 = add i64 %16, 4
  %18 = getelementptr inbounds [72 x i8], [72 x i8]* %11, i64 0, i64 0
  %19 = call i32 @compute_key_block(%struct.TYPE_12__* %14, i32 %15, i64 %17, i8* %18)
  %20 = load i32, i32* %7, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %5
  %23 = getelementptr inbounds [72 x i8], [72 x i8]* %11, i64 0, i64 0
  store i8* %23, i8** %12, align 8
  %24 = load i64, i64* %10, align 8
  %25 = shl i64 %24, 1
  %26 = getelementptr inbounds [72 x i8], [72 x i8]* %11, i64 0, i64 %25
  store i8* %26, i8** %13, align 8
  br label %34

27:                                               ; preds = %5
  %28 = load i64, i64* %10, align 8
  %29 = getelementptr inbounds [72 x i8], [72 x i8]* %11, i64 0, i64 %28
  store i8* %29, i8** %12, align 8
  %30 = load i64, i64* %10, align 8
  %31 = shl i64 %30, 1
  %32 = add i64 %31, 4
  %33 = getelementptr inbounds [72 x i8], [72 x i8]* %11, i64 0, i64 %32
  store i8* %33, i8** %13, align 8
  br label %34

34:                                               ; preds = %27, %22
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 2
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  %39 = load i32 (i32*, i32*, i8*, i64, i32, i8*)*, i32 (i32*, i32*, i8*, i64, i32, i8*)** %38, align 8
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 0
  %45 = load i32*, i32** %9, align 8
  %46 = load i8*, i8** %12, align 8
  %47 = load i64, i64* %10, align 8
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i8*, i8** %13, align 8
  %52 = call i32 %39(i32* %44, i32* %45, i8* %46, i64 %47, i32 %50, i8* %51)
  ret void
}

declare dso_local i32 @compute_key_block(%struct.TYPE_12__*, i32, i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
