; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bearssl/src/ssl/extr_ssl_hs_client.c_verify_SKE_sig.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bearssl/src/ssl/extr_ssl_hs_client.c_verify_SKE_sig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i8*, i8*, i8, i8, i8*, i32, i32, i32 (i32, i8*, i64, i32*, i32, i64)*, i32 (i32, i64, i8*, i64, i32*, i8*)*, i32, %struct.TYPE_12__** }
%struct.TYPE_12__ = type { %struct.TYPE_11__* (%struct.TYPE_12__**, i32*)* }
%struct.TYPE_11__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32 }

@BR_ERR_INVALID_ALGORITHM = common dso_local global i32 0, align 4
@br_md5_ID = common dso_local global i32 0, align 4
@br_sha1_ID = common dso_local global i32 0, align 4
@HASH_OID = common dso_local global i8** null, align 8
@BR_ERR_BAD_SIGNATURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*, i32, i32, i64)* @verify_SKE_sig to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @verify_SKE_sig(%struct.TYPE_13__* %0, i32 %1, i32 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_12__**, align 8
  %11 = alloca %struct.TYPE_11__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca [64 x i8], align 16
  %14 = alloca [4 x i8], align 1
  %15 = alloca i64, align 8
  %16 = alloca [64 x i8], align 16
  %17 = alloca i8*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  %18 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 10
  %21 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %20, align 8
  store %struct.TYPE_12__** %21, %struct.TYPE_12__*** %10, align 8
  %22 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %10, align 8
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_11__* (%struct.TYPE_12__**, i32*)*, %struct.TYPE_11__* (%struct.TYPE_12__**, i32*)** %24, align 8
  %26 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %10, align 8
  %27 = call %struct.TYPE_11__* %25(%struct.TYPE_12__** %26, i32* null)
  store %struct.TYPE_11__* %27, %struct.TYPE_11__** %11, align 8
  %28 = call i32 @br_multihash_zero(i32* %12)
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 9
  %32 = call i32 @br_multihash_copyimpl(i32* %12, i32* %31)
  %33 = call i32 @br_multihash_init(i32* %12)
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  %38 = call i32 @br_multihash_update(i32* %12, i8* %37, i32 8)
  %39 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 1
  %42 = load i8*, i8** %41, align 8
  %43 = call i32 @br_multihash_update(i32* %12, i8* %42, i32 8)
  %44 = getelementptr inbounds [4 x i8], [4 x i8]* %14, i64 0, i64 0
  store i8 3, i8* %44, align 1
  %45 = getelementptr inbounds [4 x i8], [4 x i8]* %14, i64 0, i64 1
  store i8 0, i8* %45, align 1
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 2
  %49 = load i8, i8* %48, align 8
  %50 = getelementptr inbounds [4 x i8], [4 x i8]* %14, i64 0, i64 2
  store i8 %49, i8* %50, align 1
  %51 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 3
  %54 = load i8, i8* %53, align 1
  %55 = getelementptr inbounds [4 x i8], [4 x i8]* %14, i64 0, i64 3
  store i8 %54, i8* %55, align 1
  %56 = getelementptr inbounds [4 x i8], [4 x i8]* %14, i64 0, i64 0
  %57 = call i32 @br_multihash_update(i32* %12, i8* %56, i32 4)
  %58 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 4
  %61 = load i8*, i8** %60, align 8
  %62 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 3
  %65 = load i8, i8* %64, align 1
  %66 = zext i8 %65 to i32
  %67 = call i32 @br_multihash_update(i32* %12, i8* %61, i32 %66)
  %68 = load i32, i32* %7, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %79

70:                                               ; preds = %4
  %71 = load i32, i32* %7, align 4
  %72 = getelementptr inbounds [64 x i8], [64 x i8]* %13, i64 0, i64 0
  %73 = call i64 @br_multihash_out(i32* %12, i32 %71, i8* %72)
  store i64 %73, i64* %15, align 8
  %74 = load i64, i64* %15, align 8
  %75 = icmp eq i64 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %70
  %77 = load i32, i32* @BR_ERR_INVALID_ALGORITHM, align 4
  store i32 %77, i32* %5, align 4
  br label %159

78:                                               ; preds = %70
  br label %93

79:                                               ; preds = %4
  %80 = load i32, i32* @br_md5_ID, align 4
  %81 = getelementptr inbounds [64 x i8], [64 x i8]* %13, i64 0, i64 0
  %82 = call i64 @br_multihash_out(i32* %12, i32 %80, i8* %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %90

84:                                               ; preds = %79
  %85 = load i32, i32* @br_sha1_ID, align 4
  %86 = getelementptr inbounds [64 x i8], [64 x i8]* %13, i64 0, i64 0
  %87 = getelementptr inbounds i8, i8* %86, i64 16
  %88 = call i64 @br_multihash_out(i32* %12, i32 %85, i8* %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %92, label %90

90:                                               ; preds = %84, %79
  %91 = load i32, i32* @BR_ERR_INVALID_ALGORITHM, align 4
  store i32 %91, i32* %5, align 4
  br label %159

92:                                               ; preds = %84
  store i64 36, i64* %15, align 8
  br label %93

93:                                               ; preds = %92, %78
  %94 = load i32, i32* %8, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %134

96:                                               ; preds = %93
  %97 = load i32, i32* %7, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %106

99:                                               ; preds = %96
  %100 = load i8**, i8*** @HASH_OID, align 8
  %101 = load i32, i32* %7, align 4
  %102 = sub nsw i32 %101, 2
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i8*, i8** %100, i64 %103
  %105 = load i8*, i8** %104, align 8
  store i8* %105, i8** %17, align 8
  br label %107

106:                                              ; preds = %96
  store i8* null, i8** %17, align 8
  br label %107

107:                                              ; preds = %106, %99
  %108 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %109 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %109, i32 0, i32 8
  %111 = load i32 (i32, i64, i8*, i64, i32*, i8*)*, i32 (i32, i64, i8*, i64, i32*, i8*)** %110, align 8
  %112 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %113 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %113, i32 0, i32 5
  %115 = load i32, i32* %114, align 8
  %116 = load i64, i64* %9, align 8
  %117 = load i8*, i8** %17, align 8
  %118 = load i64, i64* %15, align 8
  %119 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %120 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %120, i32 0, i32 1
  %122 = getelementptr inbounds [64 x i8], [64 x i8]* %16, i64 0, i64 0
  %123 = call i32 %111(i32 %115, i64 %116, i8* %117, i64 %118, i32* %121, i8* %122)
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %131

125:                                              ; preds = %107
  %126 = getelementptr inbounds [64 x i8], [64 x i8]* %16, i64 0, i64 0
  %127 = getelementptr inbounds [64 x i8], [64 x i8]* %13, i64 0, i64 0
  %128 = load i64, i64* %15, align 8
  %129 = call i64 @memcmp(i8* %126, i8* %127, i64 %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %133

131:                                              ; preds = %125, %107
  %132 = load i32, i32* @BR_ERR_BAD_SIGNATURE, align 4
  store i32 %132, i32* %5, align 4
  br label %159

133:                                              ; preds = %125
  br label %158

134:                                              ; preds = %93
  %135 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %136 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %136, i32 0, i32 7
  %138 = load i32 (i32, i8*, i64, i32*, i32, i64)*, i32 (i32, i8*, i64, i32*, i32, i64)** %137, align 8
  %139 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %140 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %140, i32 0, i32 6
  %142 = load i32, i32* %141, align 4
  %143 = getelementptr inbounds [64 x i8], [64 x i8]* %13, i64 0, i64 0
  %144 = load i64, i64* %15, align 8
  %145 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %146 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %146, i32 0, i32 0
  %148 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %149 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %149, i32 0, i32 5
  %151 = load i32, i32* %150, align 8
  %152 = load i64, i64* %9, align 8
  %153 = call i32 %138(i32 %142, i8* %143, i64 %144, i32* %147, i32 %151, i64 %152)
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %157, label %155

155:                                              ; preds = %134
  %156 = load i32, i32* @BR_ERR_BAD_SIGNATURE, align 4
  store i32 %156, i32* %5, align 4
  br label %159

157:                                              ; preds = %134
  br label %158

158:                                              ; preds = %157, %133
  store i32 0, i32* %5, align 4
  br label %159

159:                                              ; preds = %158, %155, %131, %90, %76
  %160 = load i32, i32* %5, align 4
  ret i32 %160
}

declare dso_local i32 @br_multihash_zero(i32*) #1

declare dso_local i32 @br_multihash_copyimpl(i32*, i32*) #1

declare dso_local i32 @br_multihash_init(i32*) #1

declare dso_local i32 @br_multihash_update(i32*, i8*, i32) #1

declare dso_local i64 @br_multihash_out(i32*, i32, i8*) #1

declare dso_local i64 @memcmp(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
