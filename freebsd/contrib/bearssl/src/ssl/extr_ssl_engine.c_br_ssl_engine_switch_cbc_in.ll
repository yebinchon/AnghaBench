; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bearssl/src/ssl/extr_ssl_engine.c_br_ssl_engine_switch_cbc_in.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bearssl/src/ssl/extr_ssl_engine.c_br_ssl_engine_switch_cbc_in.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32, %struct.TYPE_18__, %struct.TYPE_16__*, %struct.TYPE_15__ }
%struct.TYPE_18__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_16__ = type { i32 (i32*, %struct.TYPE_21__*, i8*, i64, %struct.TYPE_20__*, i8*, i64, i64, i8*)* }
%struct.TYPE_20__ = type { i64 }
%struct.TYPE_15__ = type { i64 }
%struct.TYPE_21__ = type { i64 }

@BR_HASHDESC_OUT_OFF = common dso_local global i64 0, align 8
@BR_HASHDESC_OUT_MASK = common dso_local global i64 0, align 8
@BR_TLS11 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @br_ssl_engine_switch_cbc_in(%struct.TYPE_19__* %0, i32 %1, i32 %2, i32 %3, %struct.TYPE_21__* %4, i64 %5) #0 {
  %7 = alloca %struct.TYPE_19__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_21__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca [192 x i8], align 16
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca %struct.TYPE_20__*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.TYPE_21__* %4, %struct.TYPE_21__** %11, align 8
  store i64 %5, i64* %12, align 8
  %21 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %22 = load i32, i32* %10, align 4
  %23 = call %struct.TYPE_20__* @br_ssl_engine_get_hash(%struct.TYPE_19__* %21, i32 %22)
  store %struct.TYPE_20__* %23, %struct.TYPE_20__** %17, align 8
  %24 = load %struct.TYPE_20__*, %struct.TYPE_20__** %17, align 8
  %25 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @BR_HASHDESC_OUT_OFF, align 8
  %28 = lshr i64 %26, %27
  %29 = load i64, i64* @BR_HASHDESC_OUT_MASK, align 8
  %30 = and i64 %28, %29
  store i64 %30, i64* %19, align 8
  %31 = load i64, i64* %19, align 8
  store i64 %31, i64* %18, align 8
  %32 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %32, i32 0, i32 3
  %34 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @BR_TLS11, align 8
  %37 = icmp sge i64 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %6
  store i64 0, i64* %20, align 8
  br label %43

39:                                               ; preds = %6
  %40 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %41 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  store i64 %42, i64* %20, align 8
  br label %43

43:                                               ; preds = %39, %38
  %44 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %45 = load i32, i32* %9, align 4
  %46 = load i64, i64* %18, align 8
  %47 = load i64, i64* %12, align 8
  %48 = add i64 %46, %47
  %49 = load i64, i64* %20, align 8
  %50 = add i64 %48, %49
  %51 = getelementptr inbounds [192 x i8], [192 x i8]* %13, i64 0, i64 0
  %52 = call i32 @compute_key_block(%struct.TYPE_19__* %44, i32 %45, i64 %50, i8* %51)
  %53 = load i32, i32* %8, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %70

55:                                               ; preds = %43
  %56 = load i64, i64* %18, align 8
  %57 = getelementptr inbounds [192 x i8], [192 x i8]* %13, i64 0, i64 %56
  store i8* %57, i8** %15, align 8
  %58 = load i64, i64* %18, align 8
  %59 = shl i64 %58, 1
  %60 = load i64, i64* %12, align 8
  %61 = add i64 %59, %60
  %62 = getelementptr inbounds [192 x i8], [192 x i8]* %13, i64 0, i64 %61
  store i8* %62, i8** %14, align 8
  %63 = load i64, i64* %18, align 8
  %64 = load i64, i64* %12, align 8
  %65 = add i64 %63, %64
  %66 = shl i64 %65, 1
  %67 = load i64, i64* %20, align 8
  %68 = add i64 %66, %67
  %69 = getelementptr inbounds [192 x i8], [192 x i8]* %13, i64 0, i64 %68
  store i8* %69, i8** %16, align 8
  br label %80

70:                                               ; preds = %43
  %71 = getelementptr inbounds [192 x i8], [192 x i8]* %13, i64 0, i64 0
  store i8* %71, i8** %15, align 8
  %72 = load i64, i64* %18, align 8
  %73 = shl i64 %72, 1
  %74 = getelementptr inbounds [192 x i8], [192 x i8]* %13, i64 0, i64 %73
  store i8* %74, i8** %14, align 8
  %75 = load i64, i64* %18, align 8
  %76 = load i64, i64* %12, align 8
  %77 = add i64 %75, %76
  %78 = shl i64 %77, 1
  %79 = getelementptr inbounds [192 x i8], [192 x i8]* %13, i64 0, i64 %78
  store i8* %79, i8** %16, align 8
  br label %80

80:                                               ; preds = %70, %55
  %81 = load i64, i64* %20, align 8
  %82 = icmp eq i64 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %80
  store i8* null, i8** %16, align 8
  br label %84

84:                                               ; preds = %83, %80
  %85 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %86 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %85, i32 0, i32 2
  %87 = load %struct.TYPE_16__*, %struct.TYPE_16__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %87, i32 0, i32 0
  %89 = load i32 (i32*, %struct.TYPE_21__*, i8*, i64, %struct.TYPE_20__*, i8*, i64, i64, i8*)*, i32 (i32*, %struct.TYPE_21__*, i8*, i64, %struct.TYPE_20__*, i8*, i64, i64, i8*)** %88, align 8
  %90 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %91 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %92, i32 0, i32 0
  %94 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %95 = load i8*, i8** %14, align 8
  %96 = load i64, i64* %12, align 8
  %97 = load %struct.TYPE_20__*, %struct.TYPE_20__** %17, align 8
  %98 = load i8*, i8** %15, align 8
  %99 = load i64, i64* %18, align 8
  %100 = load i64, i64* %19, align 8
  %101 = load i8*, i8** %16, align 8
  %102 = call i32 %89(i32* %93, %struct.TYPE_21__* %94, i8* %95, i64 %96, %struct.TYPE_20__* %97, i8* %98, i64 %99, i64 %100, i8* %101)
  %103 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %104 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %103, i32 0, i32 0
  store i32 1, i32* %104, align 8
  ret void
}

declare dso_local %struct.TYPE_20__* @br_ssl_engine_get_hash(%struct.TYPE_19__*, i32) #1

declare dso_local i32 @compute_key_block(%struct.TYPE_19__*, i32, i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
