; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_sm_make_chunk.c_sctp_pack_cookie.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_sm_make_chunk.c_sctp_pack_cookie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_14__, i64 }
%struct.TYPE_14__ = type { i32, i32 }
%struct.sctp_endpoint = type { i64, %struct.TYPE_16__, i64* }
%struct.TYPE_16__ = type { i32 }
%struct.sctp_association = type { i32, %struct.TYPE_15__, %struct.TYPE_19__ }
%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_19__ = type { i32, %struct.TYPE_18__*, i32, i32, i32 }
%struct.sctp_chunk = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i32 }
%struct.sctp_signed_cookie = type { i32, %struct.TYPE_19__ }
%struct.scatterlist = type { i32 }
%struct.hash_desc = type { i64, i64 }
%struct.TYPE_20__ = type { i64 }

@SCTP_COOKIE_MULTIPLE = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@SCTP_PARAM_STATE_COOKIE = common dso_local global i32 0, align 4
@SCTP_SECRET_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_17__* (%struct.sctp_endpoint*, %struct.sctp_association*, %struct.sctp_chunk*, i32*, %struct.TYPE_18__*, i32)* @sctp_pack_cookie to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_17__* @sctp_pack_cookie(%struct.sctp_endpoint* %0, %struct.sctp_association* %1, %struct.sctp_chunk* %2, i32* %3, %struct.TYPE_18__* %4, i32 %5) #0 {
  %7 = alloca %struct.TYPE_17__*, align 8
  %8 = alloca %struct.sctp_endpoint*, align 8
  %9 = alloca %struct.sctp_association*, align 8
  %10 = alloca %struct.sctp_chunk*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_18__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_17__*, align 8
  %15 = alloca %struct.sctp_signed_cookie*, align 8
  %16 = alloca %struct.scatterlist, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca %struct.hash_desc, align 8
  store %struct.sctp_endpoint* %0, %struct.sctp_endpoint** %8, align 8
  store %struct.sctp_association* %1, %struct.sctp_association** %9, align 8
  store %struct.sctp_chunk* %2, %struct.sctp_chunk** %10, align 8
  store i32* %3, i32** %11, align 8
  store %struct.TYPE_18__* %4, %struct.TYPE_18__** %12, align 8
  store i32 %5, i32* %13, align 4
  store i32 40, i32* %17, align 4
  %22 = load %struct.sctp_chunk*, %struct.sctp_chunk** %10, align 8
  %23 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %22, i32 0, i32 0
  %24 = load %struct.TYPE_18__*, %struct.TYPE_18__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @ntohs(i32 %26)
  %28 = sext i32 %27 to i64
  %29 = add i64 4, %28
  %30 = load i32, i32* %13, align 4
  %31 = sext i32 %30 to i64
  %32 = add i64 %29, %31
  %33 = trunc i64 %32 to i32
  store i32 %33, i32* %18, align 4
  %34 = load i32, i32* %18, align 4
  %35 = load i32, i32* @SCTP_COOKIE_MULTIPLE, align 4
  %36 = srem i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %46

38:                                               ; preds = %6
  %39 = load i32, i32* @SCTP_COOKIE_MULTIPLE, align 4
  %40 = load i32, i32* %18, align 4
  %41 = load i32, i32* @SCTP_COOKIE_MULTIPLE, align 4
  %42 = srem i32 %40, %41
  %43 = sub nsw i32 %39, %42
  %44 = load i32, i32* %18, align 4
  %45 = add nsw i32 %44, %43
  store i32 %45, i32* %18, align 4
  br label %46

46:                                               ; preds = %38, %6
  %47 = load i32, i32* %17, align 4
  %48 = load i32, i32* %18, align 4
  %49 = add nsw i32 %47, %48
  %50 = load i32*, i32** %11, align 8
  store i32 %49, i32* %50, align 4
  %51 = load i32*, i32** %11, align 8
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @GFP_ATOMIC, align 4
  %54 = call %struct.TYPE_17__* @kzalloc(i32 %52, i32 %53)
  store %struct.TYPE_17__* %54, %struct.TYPE_17__** %14, align 8
  %55 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %56 = icmp ne %struct.TYPE_17__* %55, null
  br i1 %56, label %58, label %57

57:                                               ; preds = %46
  br label %192

58:                                               ; preds = %46
  %59 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %60 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = inttoptr i64 %61 to %struct.sctp_signed_cookie*
  store %struct.sctp_signed_cookie* %62, %struct.sctp_signed_cookie** %15, align 8
  %63 = load i32, i32* @SCTP_PARAM_STATE_COOKIE, align 4
  %64 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %65 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %65, i32 0, i32 1
  store i32 %63, i32* %66, align 4
  %67 = load i32*, i32** %11, align 8
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @htons(i32 %68)
  %70 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %71 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %71, i32 0, i32 0
  store i32 %69, i32* %72, align 8
  %73 = load %struct.sctp_signed_cookie*, %struct.sctp_signed_cookie** %15, align 8
  %74 = getelementptr inbounds %struct.sctp_signed_cookie, %struct.sctp_signed_cookie* %73, i32 0, i32 1
  %75 = load %struct.sctp_association*, %struct.sctp_association** %9, align 8
  %76 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %75, i32 0, i32 2
  %77 = bitcast %struct.TYPE_19__* %74 to i8*
  %78 = bitcast %struct.TYPE_19__* %76 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %77, i8* align 8 %78, i64 32, i1 false)
  %79 = load i32, i32* %13, align 4
  %80 = load %struct.sctp_signed_cookie*, %struct.sctp_signed_cookie** %15, align 8
  %81 = getelementptr inbounds %struct.sctp_signed_cookie, %struct.sctp_signed_cookie* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %81, i32 0, i32 0
  store i32 %79, i32* %82, align 8
  %83 = load %struct.sctp_association*, %struct.sctp_association** %9, align 8
  %84 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.sctp_signed_cookie*, %struct.sctp_signed_cookie** %15, align 8
  %88 = getelementptr inbounds %struct.sctp_signed_cookie, %struct.sctp_signed_cookie* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %88, i32 0, i32 4
  store i32 %86, i32* %89, align 8
  %90 = load %struct.sctp_association*, %struct.sctp_association** %9, align 8
  %91 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.sctp_signed_cookie*, %struct.sctp_signed_cookie** %15, align 8
  %95 = getelementptr inbounds %struct.sctp_signed_cookie, %struct.sctp_signed_cookie* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %95, i32 0, i32 3
  store i32 %93, i32* %96, align 4
  %97 = load %struct.sctp_signed_cookie*, %struct.sctp_signed_cookie** %15, align 8
  %98 = getelementptr inbounds %struct.sctp_signed_cookie, %struct.sctp_signed_cookie* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %98, i32 0, i32 2
  %100 = call i32 @do_gettimeofday(i32* %99)
  %101 = load %struct.sctp_association*, %struct.sctp_association** %9, align 8
  %102 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = load %struct.sctp_signed_cookie*, %struct.sctp_signed_cookie** %15, align 8
  %105 = getelementptr inbounds %struct.sctp_signed_cookie, %struct.sctp_signed_cookie* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 8
  %108 = call i32 @TIMEVAL_ADD(i32 %103, i32 %107)
  %109 = load %struct.sctp_signed_cookie*, %struct.sctp_signed_cookie** %15, align 8
  %110 = getelementptr inbounds %struct.sctp_signed_cookie, %struct.sctp_signed_cookie* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %110, i32 0, i32 1
  %112 = load %struct.TYPE_18__*, %struct.TYPE_18__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %112, i64 0
  %114 = load %struct.sctp_chunk*, %struct.sctp_chunk** %10, align 8
  %115 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %114, i32 0, i32 0
  %116 = load %struct.TYPE_18__*, %struct.TYPE_18__** %115, align 8
  %117 = load %struct.sctp_chunk*, %struct.sctp_chunk** %10, align 8
  %118 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %117, i32 0, i32 0
  %119 = load %struct.TYPE_18__*, %struct.TYPE_18__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @ntohs(i32 %121)
  %123 = call i32 @memcpy(%struct.TYPE_18__* %113, %struct.TYPE_18__* %116, i32 %122)
  %124 = load %struct.sctp_signed_cookie*, %struct.sctp_signed_cookie** %15, align 8
  %125 = getelementptr inbounds %struct.sctp_signed_cookie, %struct.sctp_signed_cookie* %124, i32 0, i32 1
  %126 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %125, i32 0, i32 1
  %127 = load %struct.TYPE_18__*, %struct.TYPE_18__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %127, i64 0
  %129 = load %struct.sctp_chunk*, %struct.sctp_chunk** %10, align 8
  %130 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %129, i32 0, i32 0
  %131 = load %struct.TYPE_18__*, %struct.TYPE_18__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @ntohs(i32 %133)
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %128, i64 %135
  %137 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %138 = load i32, i32* %13, align 4
  %139 = call i32 @memcpy(%struct.TYPE_18__* %136, %struct.TYPE_18__* %137, i32 %138)
  %140 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %8, align 8
  %141 = getelementptr inbounds %struct.sctp_endpoint, %struct.sctp_endpoint* %140, i32 0, i32 1
  %142 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = call %struct.TYPE_20__* @sctp_sk(i32 %143)
  %145 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %187

148:                                              ; preds = %58
  %149 = load %struct.sctp_signed_cookie*, %struct.sctp_signed_cookie** %15, align 8
  %150 = getelementptr inbounds %struct.sctp_signed_cookie, %struct.sctp_signed_cookie* %149, i32 0, i32 1
  %151 = load i32, i32* %18, align 4
  %152 = call i32 @sg_init_one(%struct.scatterlist* %16, %struct.TYPE_19__* %150, i32 %151)
  %153 = load i32, i32* @SCTP_SECRET_SIZE, align 4
  store i32 %153, i32* %19, align 4
  %154 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %8, align 8
  %155 = getelementptr inbounds %struct.sctp_endpoint, %struct.sctp_endpoint* %154, i32 0, i32 2
  %156 = load i64*, i64** %155, align 8
  %157 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %8, align 8
  %158 = getelementptr inbounds %struct.sctp_endpoint, %struct.sctp_endpoint* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = getelementptr inbounds i64, i64* %156, i64 %159
  %161 = load i64, i64* %160, align 8
  %162 = inttoptr i64 %161 to i8*
  store i8* %162, i8** %20, align 8
  %163 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %8, align 8
  %164 = getelementptr inbounds %struct.sctp_endpoint, %struct.sctp_endpoint* %163, i32 0, i32 1
  %165 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = call %struct.TYPE_20__* @sctp_sk(i32 %166)
  %168 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %167, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  %170 = getelementptr inbounds %struct.hash_desc, %struct.hash_desc* %21, i32 0, i32 0
  store i64 %169, i64* %170, align 8
  %171 = getelementptr inbounds %struct.hash_desc, %struct.hash_desc* %21, i32 0, i32 1
  store i64 0, i64* %171, align 8
  %172 = getelementptr inbounds %struct.hash_desc, %struct.hash_desc* %21, i32 0, i32 0
  %173 = load i64, i64* %172, align 8
  %174 = load i8*, i8** %20, align 8
  %175 = load i32, i32* %19, align 4
  %176 = call i64 @crypto_hash_setkey(i64 %173, i8* %174, i32 %175)
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %185, label %178

178:                                              ; preds = %148
  %179 = load i32, i32* %18, align 4
  %180 = load %struct.sctp_signed_cookie*, %struct.sctp_signed_cookie** %15, align 8
  %181 = getelementptr inbounds %struct.sctp_signed_cookie, %struct.sctp_signed_cookie* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 8
  %183 = call i64 @crypto_hash_digest(%struct.hash_desc* %21, %struct.scatterlist* %16, i32 %179, i32 %182)
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %186

185:                                              ; preds = %178, %148
  br label %189

186:                                              ; preds = %178
  br label %187

187:                                              ; preds = %186, %58
  %188 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  store %struct.TYPE_17__* %188, %struct.TYPE_17__** %7, align 8
  br label %194

189:                                              ; preds = %185
  %190 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %191 = call i32 @kfree(%struct.TYPE_17__* %190)
  br label %192

192:                                              ; preds = %189, %57
  %193 = load i32*, i32** %11, align 8
  store i32 0, i32* %193, align 4
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %7, align 8
  br label %194

194:                                              ; preds = %192, %187
  %195 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  ret %struct.TYPE_17__* %195
}

declare dso_local i32 @ntohs(i32) #1

declare dso_local %struct.TYPE_17__* @kzalloc(i32, i32) #1

declare dso_local i32 @htons(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @do_gettimeofday(i32*) #1

declare dso_local i32 @TIMEVAL_ADD(i32, i32) #1

declare dso_local i32 @memcpy(%struct.TYPE_18__*, %struct.TYPE_18__*, i32) #1

declare dso_local %struct.TYPE_20__* @sctp_sk(i32) #1

declare dso_local i32 @sg_init_one(%struct.scatterlist*, %struct.TYPE_19__*, i32) #1

declare dso_local i64 @crypto_hash_setkey(i64, i8*, i32) #1

declare dso_local i64 @crypto_hash_digest(%struct.hash_desc*, %struct.scatterlist*, i32, i32) #1

declare dso_local i32 @kfree(%struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
