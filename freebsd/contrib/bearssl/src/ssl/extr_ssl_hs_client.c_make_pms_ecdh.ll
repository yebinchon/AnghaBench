; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bearssl/src/ssl/extr_ssl_hs_client.c_make_pms_ecdh.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bearssl/src/ssl/extr_ssl_hs_client.c_make_pms_ecdh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i8*, i64, i8*, %struct.TYPE_14__*, i32, %struct.TYPE_16__** }
%struct.TYPE_14__ = type { i32, i8* (i32, i64*)*, i64 (i32, i64*)*, i32 (i8*, i8*, i64, i32)*, i32 (i8*, i64, i8*, i64, i32)*, i32 (i32, i64*)* }
%struct.TYPE_16__ = type { %struct.TYPE_15__* (%struct.TYPE_16__**, i32*)* }
%struct.TYPE_15__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32, i8*, i64 }

@BR_ERR_INVALID_ALGORITHM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_17__*, i32, i32)* @make_pms_ecdh to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @make_pms_ecdh(%struct.TYPE_17__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [66 x i8], align 16
  %10 = alloca [133 x i8], align 16
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i8, align 1
  %19 = alloca %struct.TYPE_16__**, align 8
  %20 = alloca %struct.TYPE_15__*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %36

23:                                               ; preds = %3
  %24 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %8, align 4
  %28 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 1
  %31 = load i8*, i8** %30, align 8
  store i8* %31, i8** %12, align 8
  %32 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  store i64 %35, i64* %15, align 8
  br label %62

36:                                               ; preds = %3
  %37 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 6
  %40 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %39, align 8
  store %struct.TYPE_16__** %40, %struct.TYPE_16__*** %19, align 8
  %41 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %19, align 8
  %42 = load %struct.TYPE_16__*, %struct.TYPE_16__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_15__* (%struct.TYPE_16__**, i32*)*, %struct.TYPE_15__* (%struct.TYPE_16__**, i32*)** %43, align 8
  %45 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %19, align 8
  %46 = call %struct.TYPE_15__* %44(%struct.TYPE_16__** %45, i32* null)
  store %struct.TYPE_15__* %46, %struct.TYPE_15__** %20, align 8
  %47 = load %struct.TYPE_15__*, %struct.TYPE_15__** %20, align 8
  %48 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  store i32 %51, i32* %8, align 4
  %52 = load %struct.TYPE_15__*, %struct.TYPE_15__** %20, align 8
  %53 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 1
  %56 = load i8*, i8** %55, align 8
  store i8* %56, i8** %12, align 8
  %57 = load %struct.TYPE_15__*, %struct.TYPE_15__** %20, align 8
  %58 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  store i64 %61, i64* %15, align 8
  br label %62

62:                                               ; preds = %36, %23
  %63 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 4
  %66 = load %struct.TYPE_14__*, %struct.TYPE_14__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* %8, align 4
  %70 = shl i32 1, %69
  %71 = and i32 %68, %70
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %62
  %74 = load i32, i32* @BR_ERR_INVALID_ALGORITHM, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %4, align 4
  br label %191

76:                                               ; preds = %62
  %77 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %78, i32 0, i32 4
  %80 = load %struct.TYPE_14__*, %struct.TYPE_14__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %80, i32 0, i32 1
  %82 = load i8* (i32, i64*)*, i8* (i32, i64*)** %81, align 8
  %83 = load i32, i32* %8, align 4
  %84 = call i8* %82(i32 %83, i64* %14)
  store i8* %84, i8** %11, align 8
  store i8 -1, i8* %18, align 1
  br label %85

85:                                               ; preds = %93, %76
  %86 = load i8, i8* %18, align 1
  %87 = zext i8 %86 to i32
  %88 = load i8*, i8** %11, align 8
  %89 = getelementptr inbounds i8, i8* %88, i64 0
  %90 = load i8, i8* %89, align 1
  %91 = zext i8 %90 to i32
  %92 = icmp sge i32 %87, %91
  br i1 %92, label %93, label %98

93:                                               ; preds = %85
  %94 = load i8, i8* %18, align 1
  %95 = zext i8 %94 to i32
  %96 = ashr i32 %95, 1
  %97 = trunc i32 %96 to i8
  store i8 %97, i8* %18, align 1
  br label %85

98:                                               ; preds = %85
  %99 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %100, i32 0, i32 5
  %102 = getelementptr inbounds [66 x i8], [66 x i8]* %9, i64 0, i64 0
  %103 = load i64, i64* %14, align 8
  %104 = call i32 @br_hmac_drbg_generate(i32* %101, i8* %102, i64 %103)
  %105 = load i8, i8* %18, align 1
  %106 = zext i8 %105 to i32
  %107 = getelementptr inbounds [66 x i8], [66 x i8]* %9, i64 0, i64 0
  %108 = load i8, i8* %107, align 16
  %109 = zext i8 %108 to i32
  %110 = and i32 %109, %106
  %111 = trunc i32 %110 to i8
  store i8 %111, i8* %107, align 16
  %112 = load i64, i64* %14, align 8
  %113 = sub i64 %112, 1
  %114 = getelementptr inbounds [66 x i8], [66 x i8]* %9, i64 0, i64 %113
  %115 = load i8, i8* %114, align 1
  %116 = zext i8 %115 to i32
  %117 = or i32 %116, 1
  %118 = trunc i32 %117 to i8
  store i8 %118, i8* %114, align 1
  %119 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %120 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %120, i32 0, i32 4
  %122 = load %struct.TYPE_14__*, %struct.TYPE_14__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %122, i32 0, i32 5
  %124 = load i32 (i32, i64*)*, i32 (i32, i64*)** %123, align 8
  %125 = load i32, i32* %8, align 4
  %126 = call i32 %124(i32 %125, i64* %13)
  %127 = load i64, i64* %13, align 8
  %128 = load i64, i64* %15, align 8
  %129 = icmp ne i64 %127, %128
  br i1 %129, label %130, label %133

130:                                              ; preds = %98
  %131 = load i32, i32* @BR_ERR_INVALID_ALGORITHM, align 4
  %132 = sub nsw i32 0, %131
  store i32 %132, i32* %4, align 4
  br label %191

133:                                              ; preds = %98
  %134 = getelementptr inbounds [133 x i8], [133 x i8]* %10, i64 0, i64 0
  %135 = load i8*, i8** %12, align 8
  %136 = load i64, i64* %13, align 8
  %137 = call i32 @memcpy(i8* %134, i8* %135, i64 %136)
  %138 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %139 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %139, i32 0, i32 4
  %141 = load %struct.TYPE_14__*, %struct.TYPE_14__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %141, i32 0, i32 4
  %143 = load i32 (i8*, i64, i8*, i64, i32)*, i32 (i8*, i64, i8*, i64, i32)** %142, align 8
  %144 = getelementptr inbounds [133 x i8], [133 x i8]* %10, i64 0, i64 0
  %145 = load i64, i64* %13, align 8
  %146 = getelementptr inbounds [66 x i8], [66 x i8]* %9, i64 0, i64 0
  %147 = load i64, i64* %14, align 8
  %148 = load i32, i32* %8, align 4
  %149 = call i32 %143(i8* %144, i64 %145, i8* %146, i64 %147, i32 %148)
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %154, label %151

151:                                              ; preds = %133
  %152 = load i32, i32* @BR_ERR_INVALID_ALGORITHM, align 4
  %153 = sub nsw i32 0, %152
  store i32 %153, i32* %4, align 4
  br label %191

154:                                              ; preds = %133
  %155 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %156 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %156, i32 0, i32 4
  %158 = load %struct.TYPE_14__*, %struct.TYPE_14__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %158, i32 0, i32 2
  %160 = load i64 (i32, i64*)*, i64 (i32, i64*)** %159, align 8
  %161 = load i32, i32* %8, align 4
  %162 = call i64 %160(i32 %161, i64* %17)
  store i64 %162, i64* %16, align 8
  %163 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %164 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %163, i32 0, i32 0
  %165 = load i32, i32* %7, align 4
  %166 = getelementptr inbounds [133 x i8], [133 x i8]* %10, i64 0, i64 0
  %167 = load i64, i64* %16, align 8
  %168 = getelementptr inbounds i8, i8* %166, i64 %167
  %169 = load i64, i64* %17, align 8
  %170 = call i32 @br_ssl_engine_compute_master(%struct.TYPE_11__* %164, i32 %165, i8* %168, i64 %169)
  %171 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %172 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %172, i32 0, i32 4
  %174 = load %struct.TYPE_14__*, %struct.TYPE_14__** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %174, i32 0, i32 3
  %176 = load i32 (i8*, i8*, i64, i32)*, i32 (i8*, i8*, i64, i32)** %175, align 8
  %177 = getelementptr inbounds [133 x i8], [133 x i8]* %10, i64 0, i64 0
  %178 = getelementptr inbounds [66 x i8], [66 x i8]* %9, i64 0, i64 0
  %179 = load i64, i64* %14, align 8
  %180 = load i32, i32* %8, align 4
  %181 = call i32 %176(i8* %177, i8* %178, i64 %179, i32 %180)
  %182 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %183 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %182, i32 0, i32 0
  %184 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %183, i32 0, i32 3
  %185 = load i8*, i8** %184, align 8
  %186 = getelementptr inbounds [133 x i8], [133 x i8]* %10, i64 0, i64 0
  %187 = load i64, i64* %13, align 8
  %188 = call i32 @memcpy(i8* %185, i8* %186, i64 %187)
  %189 = load i64, i64* %13, align 8
  %190 = trunc i64 %189 to i32
  store i32 %190, i32* %4, align 4
  br label %191

191:                                              ; preds = %154, %151, %130, %73
  %192 = load i32, i32* %4, align 4
  ret i32 %192
}

declare dso_local i32 @br_hmac_drbg_generate(i32*, i8*, i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @br_ssl_engine_compute_master(%struct.TYPE_11__*, i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
