; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bearssl/src/ssl/extr_ssl_hs_client.c_make_pms_rsa.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bearssl/src/ssl/extr_ssl_hs_client.c_make_pms_rsa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_15__, i32 (i8*, i64, %struct.TYPE_14__*)* }
%struct.TYPE_15__ = type { i8*, i32, i32, %struct.TYPE_12__** }
%struct.TYPE_12__ = type { %struct.TYPE_11__* (%struct.TYPE_12__**, i32*)* }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i8*, i64 }

@BR_ERR_X509_WEAK_PUBLIC_KEY = common dso_local global i32 0, align 4
@BR_ERR_LIMIT_EXCEEDED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*, i32)* @make_pms_rsa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @make_pms_rsa(%struct.TYPE_13__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_12__**, align 8
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 3
  %15 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %14, align 8
  store %struct.TYPE_12__** %15, %struct.TYPE_12__*** %6, align 8
  %16 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %6, align 8
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_11__* (%struct.TYPE_12__**, i32*)*, %struct.TYPE_11__* (%struct.TYPE_12__**, i32*)** %18, align 8
  %20 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %6, align 8
  %21 = call %struct.TYPE_11__* %19(%struct.TYPE_12__** %20, i32* null)
  store %struct.TYPE_11__* %21, %struct.TYPE_11__** %7, align 8
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  store i8* %26, i8** %8, align 8
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  store i64 %31, i64* %10, align 8
  br label %32

32:                                               ; preds = %42, %2
  %33 = load i64, i64* %10, align 8
  %34 = icmp ugt i64 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %32
  %36 = load i8*, i8** %8, align 8
  %37 = load i8, i8* %36, align 1
  %38 = zext i8 %37 to i32
  %39 = icmp eq i32 %38, 0
  br label %40

40:                                               ; preds = %35, %32
  %41 = phi i1 [ false, %32 ], [ %39, %35 ]
  br i1 %41, label %42, label %47

42:                                               ; preds = %40
  %43 = load i8*, i8** %8, align 8
  %44 = getelementptr inbounds i8, i8* %43, i32 1
  store i8* %44, i8** %8, align 8
  %45 = load i64, i64* %10, align 8
  %46 = add i64 %45, -1
  store i64 %46, i64* %10, align 8
  br label %32

47:                                               ; preds = %40
  %48 = load i64, i64* %10, align 8
  %49 = icmp ult i64 %48, 59
  br i1 %49, label %50, label %53

50:                                               ; preds = %47
  %51 = load i32, i32* @BR_ERR_X509_WEAK_PUBLIC_KEY, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %3, align 4
  br label %164

53:                                               ; preds = %47
  %54 = load i64, i64* %10, align 8
  %55 = icmp ugt i64 %54, 8
  br i1 %55, label %56, label %59

56:                                               ; preds = %53
  %57 = load i32, i32* @BR_ERR_LIMIT_EXCEEDED, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %3, align 4
  br label %164

59:                                               ; preds = %53
  %60 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %61, i32 0, i32 0
  %63 = load i8*, i8** %62, align 8
  %64 = load i64, i64* %10, align 8
  %65 = getelementptr inbounds i8, i8* %63, i64 %64
  %66 = getelementptr inbounds i8, i8* %65, i64 -48
  store i8* %66, i8** %9, align 8
  %67 = load i8*, i8** %9, align 8
  %68 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @br_enc16be(i8* %67, i32 %71)
  %73 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %74, i32 0, i32 1
  %76 = load i8*, i8** %9, align 8
  %77 = getelementptr inbounds i8, i8* %76, i64 2
  %78 = call i32 @br_hmac_drbg_generate(i32* %75, i8* %77, i32 46)
  %79 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %79, i32 0, i32 0
  %81 = load i32, i32* %5, align 4
  %82 = load i8*, i8** %9, align 8
  %83 = call i32 @br_ssl_engine_compute_master(%struct.TYPE_15__* %80, i32 %81, i8* %82, i32 48)
  %84 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %85, i32 0, i32 0
  %87 = load i8*, i8** %86, align 8
  %88 = getelementptr inbounds i8, i8* %87, i64 0
  store i8 0, i8* %88, align 1
  %89 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %90, i32 0, i32 0
  %92 = load i8*, i8** %91, align 8
  %93 = getelementptr inbounds i8, i8* %92, i64 1
  store i8 2, i8* %93, align 1
  %94 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %95, i32 0, i32 0
  %97 = load i8*, i8** %96, align 8
  %98 = load i64, i64* %10, align 8
  %99 = sub i64 %98, 49
  %100 = getelementptr inbounds i8, i8* %97, i64 %99
  store i8 0, i8* %100, align 1
  %101 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %102 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %102, i32 0, i32 1
  %104 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %105, i32 0, i32 0
  %107 = load i8*, i8** %106, align 8
  %108 = getelementptr inbounds i8, i8* %107, i64 2
  %109 = load i64, i64* %10, align 8
  %110 = sub i64 %109, 51
  %111 = trunc i64 %110 to i32
  %112 = call i32 @br_hmac_drbg_generate(i32* %103, i8* %108, i32 %111)
  store i64 2, i64* %11, align 8
  br label %113

113:                                              ; preds = %141, %59
  %114 = load i64, i64* %11, align 8
  %115 = load i64, i64* %10, align 8
  %116 = sub i64 %115, 49
  %117 = icmp ult i64 %114, %116
  br i1 %117, label %118, label %144

118:                                              ; preds = %113
  br label %119

119:                                              ; preds = %129, %118
  %120 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %121 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %121, i32 0, i32 0
  %123 = load i8*, i8** %122, align 8
  %124 = load i64, i64* %11, align 8
  %125 = getelementptr inbounds i8, i8* %123, i64 %124
  %126 = load i8, i8* %125, align 1
  %127 = zext i8 %126 to i32
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %129, label %140

129:                                              ; preds = %119
  %130 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %131 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %131, i32 0, i32 1
  %133 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %134 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %134, i32 0, i32 0
  %136 = load i8*, i8** %135, align 8
  %137 = load i64, i64* %11, align 8
  %138 = getelementptr inbounds i8, i8* %136, i64 %137
  %139 = call i32 @br_hmac_drbg_generate(i32* %132, i8* %138, i32 1)
  br label %119

140:                                              ; preds = %119
  br label %141

141:                                              ; preds = %140
  %142 = load i64, i64* %11, align 8
  %143 = add i64 %142, 1
  store i64 %143, i64* %11, align 8
  br label %113

144:                                              ; preds = %113
  %145 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %146 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %145, i32 0, i32 1
  %147 = load i32 (i8*, i64, %struct.TYPE_14__*)*, i32 (i8*, i64, %struct.TYPE_14__*)** %146, align 8
  %148 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %149 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %149, i32 0, i32 0
  %151 = load i8*, i8** %150, align 8
  %152 = load i64, i64* %10, align 8
  %153 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %154 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %154, i32 0, i32 0
  %156 = call i32 %147(i8* %151, i64 %152, %struct.TYPE_14__* %155)
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %161, label %158

158:                                              ; preds = %144
  %159 = load i32, i32* @BR_ERR_LIMIT_EXCEEDED, align 4
  %160 = sub nsw i32 0, %159
  store i32 %160, i32* %3, align 4
  br label %164

161:                                              ; preds = %144
  %162 = load i64, i64* %10, align 8
  %163 = trunc i64 %162 to i32
  store i32 %163, i32* %3, align 4
  br label %164

164:                                              ; preds = %161, %158, %56, %50
  %165 = load i32, i32* %3, align 4
  ret i32 %165
}

declare dso_local i32 @br_enc16be(i8*, i32) #1

declare dso_local i32 @br_hmac_drbg_generate(i32*, i8*, i32) #1

declare dso_local i32 @br_ssl_engine_compute_master(%struct.TYPE_15__*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
