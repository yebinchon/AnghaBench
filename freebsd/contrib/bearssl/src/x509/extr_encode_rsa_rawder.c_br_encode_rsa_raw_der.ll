; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bearssl/src/x509/extr_encode_rsa_rawder.c_br_encode_rsa_raw_der.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bearssl/src/x509/extr_encode_rsa_rawder.c_br_encode_rsa_raw_der.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i8*, i64, i8*, i64, i8*, i64, i8*, i64, i8*, i64 }
%struct.TYPE_8__ = type { i8*, i64, i8*, i64 }
%struct.TYPE_10__ = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @br_encode_rsa_raw_der(i8* %0, %struct.TYPE_9__* %1, %struct.TYPE_8__* %2, i8* %3, i64 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca %struct.TYPE_8__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca [9 x %struct.TYPE_10__], align 16
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.TYPE_10__, align 8
  %16 = alloca %struct.TYPE_10__, align 8
  %17 = alloca %struct.TYPE_10__, align 8
  %18 = alloca %struct.TYPE_10__, align 8
  %19 = alloca %struct.TYPE_10__, align 8
  %20 = alloca %struct.TYPE_10__, align 8
  %21 = alloca %struct.TYPE_10__, align 8
  %22 = alloca %struct.TYPE_10__, align 8
  %23 = alloca %struct.TYPE_10__, align 8
  %24 = alloca i64, align 8
  %25 = alloca i8*, align 8
  %26 = alloca i64, align 8
  store i8* %0, i8** %7, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %8, align 8
  store %struct.TYPE_8__* %2, %struct.TYPE_8__** %9, align 8
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  %27 = getelementptr inbounds [9 x %struct.TYPE_10__], [9 x %struct.TYPE_10__]* %12, i64 0, i64 0
  %28 = call i64 @br_asn1_uint_prepare(i8* null, i64 0)
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 0
  store i64 %28, i64* %29, align 8
  %30 = bitcast %struct.TYPE_10__* %27 to i8*
  %31 = bitcast %struct.TYPE_10__* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %30, i8* align 8 %31, i64 8, i1 false)
  %32 = getelementptr inbounds [9 x %struct.TYPE_10__], [9 x %struct.TYPE_10__]* %12, i64 0, i64 1
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = call i64 @br_asn1_uint_prepare(i8* %35, i64 %38)
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 0
  store i64 %39, i64* %40, align 8
  %41 = bitcast %struct.TYPE_10__* %32 to i8*
  %42 = bitcast %struct.TYPE_10__* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %41, i8* align 8 %42, i64 8, i1 false)
  %43 = getelementptr inbounds [9 x %struct.TYPE_10__], [9 x %struct.TYPE_10__]* %12, i64 0, i64 2
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 2
  %46 = load i8*, i8** %45, align 8
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 3
  %49 = load i64, i64* %48, align 8
  %50 = call i64 @br_asn1_uint_prepare(i8* %46, i64 %49)
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 0
  store i64 %50, i64* %51, align 8
  %52 = bitcast %struct.TYPE_10__* %43 to i8*
  %53 = bitcast %struct.TYPE_10__* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %52, i8* align 8 %53, i64 8, i1 false)
  %54 = getelementptr inbounds [9 x %struct.TYPE_10__], [9 x %struct.TYPE_10__]* %12, i64 0, i64 3
  %55 = load i8*, i8** %10, align 8
  %56 = load i64, i64* %11, align 8
  %57 = call i64 @br_asn1_uint_prepare(i8* %55, i64 %56)
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 0
  store i64 %57, i64* %58, align 8
  %59 = bitcast %struct.TYPE_10__* %54 to i8*
  %60 = bitcast %struct.TYPE_10__* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %59, i8* align 8 %60, i64 8, i1 false)
  %61 = getelementptr inbounds [9 x %struct.TYPE_10__], [9 x %struct.TYPE_10__]* %12, i64 0, i64 4
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 0
  %64 = load i8*, i8** %63, align 8
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = call i64 @br_asn1_uint_prepare(i8* %64, i64 %67)
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 0
  store i64 %68, i64* %69, align 8
  %70 = bitcast %struct.TYPE_10__* %61 to i8*
  %71 = bitcast %struct.TYPE_10__* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %70, i8* align 8 %71, i64 8, i1 false)
  %72 = getelementptr inbounds [9 x %struct.TYPE_10__], [9 x %struct.TYPE_10__]* %12, i64 0, i64 5
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 2
  %75 = load i8*, i8** %74, align 8
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 3
  %78 = load i64, i64* %77, align 8
  %79 = call i64 @br_asn1_uint_prepare(i8* %75, i64 %78)
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 0
  store i64 %79, i64* %80, align 8
  %81 = bitcast %struct.TYPE_10__* %72 to i8*
  %82 = bitcast %struct.TYPE_10__* %20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %81, i8* align 8 %82, i64 8, i1 false)
  %83 = getelementptr inbounds [9 x %struct.TYPE_10__], [9 x %struct.TYPE_10__]* %12, i64 0, i64 6
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 4
  %86 = load i8*, i8** %85, align 8
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i32 0, i32 5
  %89 = load i64, i64* %88, align 8
  %90 = call i64 @br_asn1_uint_prepare(i8* %86, i64 %89)
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 0
  store i64 %90, i64* %91, align 8
  %92 = bitcast %struct.TYPE_10__* %83 to i8*
  %93 = bitcast %struct.TYPE_10__* %21 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %92, i8* align 8 %93, i64 8, i1 false)
  %94 = getelementptr inbounds [9 x %struct.TYPE_10__], [9 x %struct.TYPE_10__]* %12, i64 0, i64 7
  %95 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 6
  %97 = load i8*, i8** %96, align 8
  %98 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i32 0, i32 7
  %100 = load i64, i64* %99, align 8
  %101 = call i64 @br_asn1_uint_prepare(i8* %97, i64 %100)
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 0
  store i64 %101, i64* %102, align 8
  %103 = bitcast %struct.TYPE_10__* %94 to i8*
  %104 = bitcast %struct.TYPE_10__* %22 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %103, i8* align 8 %104, i64 8, i1 false)
  %105 = getelementptr inbounds [9 x %struct.TYPE_10__], [9 x %struct.TYPE_10__]* %12, i64 0, i64 8
  %106 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %107 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %106, i32 0, i32 8
  %108 = load i8*, i8** %107, align 8
  %109 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %110 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %109, i32 0, i32 9
  %111 = load i64, i64* %110, align 8
  %112 = call i64 @br_asn1_uint_prepare(i8* %108, i64 %111)
  %113 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 0
  store i64 %112, i64* %113, align 8
  %114 = bitcast %struct.TYPE_10__* %105 to i8*
  %115 = bitcast %struct.TYPE_10__* %23 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %114, i8* align 8 %115, i64 8, i1 false)
  store i64 0, i64* %14, align 8
  store i64 0, i64* %13, align 8
  br label %116

116:                                              ; preds = %131, %5
  %117 = load i64, i64* %13, align 8
  %118 = icmp ult i64 %117, 9
  br i1 %118, label %119, label %134

119:                                              ; preds = %116
  %120 = load i64, i64* %13, align 8
  %121 = getelementptr inbounds [9 x %struct.TYPE_10__], [9 x %struct.TYPE_10__]* %12, i64 0, i64 %120
  %122 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  store i64 %123, i64* %24, align 8
  %124 = load i64, i64* %24, align 8
  %125 = call i64 @len_of_len(i64 %124)
  %126 = add i64 1, %125
  %127 = load i64, i64* %24, align 8
  %128 = add i64 %126, %127
  %129 = load i64, i64* %14, align 8
  %130 = add i64 %129, %128
  store i64 %130, i64* %14, align 8
  br label %131

131:                                              ; preds = %119
  %132 = load i64, i64* %13, align 8
  %133 = add i64 %132, 1
  store i64 %133, i64* %13, align 8
  br label %116

134:                                              ; preds = %116
  %135 = load i8*, i8** %7, align 8
  %136 = icmp eq i8* %135, null
  br i1 %136, label %137, label %143

137:                                              ; preds = %134
  %138 = load i64, i64* %14, align 8
  %139 = call i64 @len_of_len(i64 %138)
  %140 = add i64 1, %139
  %141 = load i64, i64* %14, align 8
  %142 = add i64 %140, %141
  store i64 %142, i64* %6, align 8
  br label %174

143:                                              ; preds = %134
  %144 = load i8*, i8** %7, align 8
  store i8* %144, i8** %25, align 8
  %145 = load i8*, i8** %25, align 8
  %146 = getelementptr inbounds i8, i8* %145, i32 1
  store i8* %146, i8** %25, align 8
  store i8 48, i8* %145, align 1
  %147 = load i8*, i8** %25, align 8
  %148 = load i64, i64* %14, align 8
  %149 = call i64 @br_asn1_encode_length(i8* %147, i64 %148)
  store i64 %149, i64* %26, align 8
  %150 = load i64, i64* %26, align 8
  %151 = load i8*, i8** %25, align 8
  %152 = getelementptr inbounds i8, i8* %151, i64 %150
  store i8* %152, i8** %25, align 8
  store i64 0, i64* %13, align 8
  br label %153

153:                                              ; preds = %166, %143
  %154 = load i64, i64* %13, align 8
  %155 = icmp ult i64 %154, 9
  br i1 %155, label %156, label %169

156:                                              ; preds = %153
  %157 = load i8*, i8** %25, align 8
  %158 = load i64, i64* %13, align 8
  %159 = getelementptr inbounds [9 x %struct.TYPE_10__], [9 x %struct.TYPE_10__]* %12, i64 0, i64 %158
  %160 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %159, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  %162 = call i32 @br_asn1_encode_uint(i8* %157, i64 %161)
  %163 = load i8*, i8** %25, align 8
  %164 = sext i32 %162 to i64
  %165 = getelementptr inbounds i8, i8* %163, i64 %164
  store i8* %165, i8** %25, align 8
  br label %166

166:                                              ; preds = %156
  %167 = load i64, i64* %13, align 8
  %168 = add i64 %167, 1
  store i64 %168, i64* %13, align 8
  br label %153

169:                                              ; preds = %153
  %170 = load i64, i64* %26, align 8
  %171 = add i64 1, %170
  %172 = load i64, i64* %14, align 8
  %173 = add i64 %171, %172
  store i64 %173, i64* %6, align 8
  br label %174

174:                                              ; preds = %169, %137
  %175 = load i64, i64* %6, align 8
  ret i64 %175
}

declare dso_local i64 @br_asn1_uint_prepare(i8*, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @len_of_len(i64) #1

declare dso_local i64 @br_asn1_encode_length(i8*, i64) #1

declare dso_local i32 @br_asn1_encode_uint(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
