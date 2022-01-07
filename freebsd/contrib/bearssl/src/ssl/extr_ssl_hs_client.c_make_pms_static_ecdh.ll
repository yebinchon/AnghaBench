; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bearssl/src/ssl/extr_ssl_hs_client.c_make_pms_static_ecdh.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bearssl/src/ssl/extr_ssl_hs_client.c_make_pms_static_ecdh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_11__, %struct.TYPE_17__** }
%struct.TYPE_11__ = type { %struct.TYPE_15__** }
%struct.TYPE_15__ = type { %struct.TYPE_14__* (%struct.TYPE_15__**, i32*)* }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i64, i32 }
%struct.TYPE_17__ = type { i32 (%struct.TYPE_17__**, i8*, i64*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_16__*, i32)* @make_pms_static_ecdh to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @make_pms_static_ecdh(%struct.TYPE_16__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [133 x i8], align 16
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_15__**, align 8
  %9 = alloca %struct.TYPE_14__*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %12, align 8
  store %struct.TYPE_15__** %13, %struct.TYPE_15__*** %8, align 8
  %14 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %8, align 8
  %15 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_14__* (%struct.TYPE_15__**, i32*)*, %struct.TYPE_14__* (%struct.TYPE_15__**, i32*)** %16, align 8
  %18 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %8, align 8
  %19 = call %struct.TYPE_14__* %17(%struct.TYPE_15__** %18, i32* null)
  store %struct.TYPE_14__* %19, %struct.TYPE_14__** %9, align 8
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %21 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  store i64 %24, i64* %7, align 8
  %25 = load i64, i64* %7, align 8
  %26 = icmp ugt i64 %25, 133
  br i1 %26, label %27, label %28

27:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %57

28:                                               ; preds = %2
  %29 = getelementptr inbounds [133 x i8], [133 x i8]* %6, i64 0, i64 0
  %30 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %31 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = load i64, i64* %7, align 8
  %36 = call i32 @memcpy(i8* %29, i32 %34, i64 %35)
  %37 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %37, i32 0, i32 1
  %39 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %38, align 8
  %40 = load %struct.TYPE_17__*, %struct.TYPE_17__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %40, i32 0, i32 0
  %42 = load i32 (%struct.TYPE_17__**, i8*, i64*)*, i32 (%struct.TYPE_17__**, i8*, i64*)** %41, align 8
  %43 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %43, i32 0, i32 1
  %45 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %44, align 8
  %46 = getelementptr inbounds [133 x i8], [133 x i8]* %6, i64 0, i64 0
  %47 = call i32 %42(%struct.TYPE_17__** %45, i8* %46, i64* %7)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %28
  store i32 -1, i32* %3, align 4
  br label %57

50:                                               ; preds = %28
  %51 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %51, i32 0, i32 0
  %53 = load i32, i32* %5, align 4
  %54 = getelementptr inbounds [133 x i8], [133 x i8]* %6, i64 0, i64 0
  %55 = load i64, i64* %7, align 8
  %56 = call i32 @br_ssl_engine_compute_master(%struct.TYPE_11__* %52, i32 %53, i8* %54, i64 %55)
  store i32 0, i32* %3, align 4
  br label %57

57:                                               ; preds = %50, %49, %27
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local i32 @memcpy(i8*, i32, i64) #1

declare dso_local i32 @br_ssl_engine_compute_master(%struct.TYPE_11__*, i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
