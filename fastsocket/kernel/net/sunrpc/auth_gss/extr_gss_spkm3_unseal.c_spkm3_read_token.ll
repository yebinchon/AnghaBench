; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/auth_gss/extr_gss_spkm3_unseal.c_spkm3_read_token.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/auth_gss/extr_gss_spkm3_unseal.c_spkm3_read_token.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spkm3_ctx = type { i32, i32, i32 }
%struct.xdr_netobj = type { i8*, i32 }
%struct.xdr_buf = type { i32 }

@GSS_S_DEFECTIVE_TOKEN = common dso_local global i32 0, align 4
@SPKM_MIC_TOK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"RPC:       BAD SPKM3 token type: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"RPC:       spkm3_read_token BAD checksum type\0A\00", align 1
@hmac_md5_oid = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [56 x i8] c"RPC:       gss_spkm3_seal: unsupported I-ALG algorithm\0A\00", align 1
@CKSUMTYPE_HMAC_MD5 = common dso_local global i64 0, align 8
@GSS_S_BAD_SIG = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"RPC:       bad MIC checksum\0A\00", align 1
@GSS_S_COMPLETE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @spkm3_read_token(%struct.spkm3_ctx* %0, %struct.xdr_netobj* %1, %struct.xdr_buf* %2, i32 %3) #0 {
  %5 = alloca %struct.spkm3_ctx*, align 8
  %6 = alloca %struct.xdr_netobj*, align 8
  %7 = alloca %struct.xdr_buf*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.xdr_netobj, align 8
  %12 = alloca [16 x i8], align 16
  %13 = alloca %struct.xdr_netobj, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.spkm3_ctx* %0, %struct.spkm3_ctx** %5, align 8
  store %struct.xdr_netobj* %1, %struct.xdr_netobj** %6, align 8
  store %struct.xdr_buf* %2, %struct.xdr_buf** %7, align 8
  store i32 %3, i32* %8, align 4
  %20 = bitcast %struct.xdr_netobj* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %20, i8 0, i64 16, i1 false)
  %21 = getelementptr inbounds %struct.xdr_netobj, %struct.xdr_netobj* %13, i32 0, i32 0
  %22 = getelementptr inbounds [16 x i8], [16 x i8]* %12, i64 0, i64 0
  store i8* %22, i8** %21, align 8
  %23 = getelementptr inbounds %struct.xdr_netobj, %struct.xdr_netobj* %13, i32 0, i32 1
  store i32 0, i32* %23, align 8
  %24 = load %struct.xdr_netobj*, %struct.xdr_netobj** %6, align 8
  %25 = getelementptr inbounds %struct.xdr_netobj, %struct.xdr_netobj* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  store i8* %26, i8** %14, align 8
  %27 = load i32, i32* @GSS_S_DEFECTIVE_TOKEN, align 4
  store i32 %27, i32* %19, align 4
  %28 = load %struct.spkm3_ctx*, %struct.spkm3_ctx** %5, align 8
  %29 = getelementptr inbounds %struct.spkm3_ctx, %struct.spkm3_ctx* %28, i32 0, i32 2
  %30 = bitcast i32* %29 to %struct.xdr_netobj*
  %31 = load %struct.xdr_netobj*, %struct.xdr_netobj** %6, align 8
  %32 = getelementptr inbounds %struct.xdr_netobj, %struct.xdr_netobj* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = call i64 @g_verify_token_header(%struct.xdr_netobj* %30, i32* %16, i8** %14, i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %4
  br label %106

37:                                               ; preds = %4
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* @SPKM_MIC_TOK, align 4
  %40 = icmp ne i32 %38, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %37
  %42 = load i32, i32* %8, align 4
  %43 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %42)
  br label %106

44:                                               ; preds = %37
  %45 = call i32 @spkm3_verify_mic_token(i8** %14, i32* %18, i8** %15)
  store i32 %45, i32* %19, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %44
  br label %106

48:                                               ; preds = %44
  %49 = load i8*, i8** %15, align 8
  %50 = getelementptr inbounds i8, i8* %49, i32 1
  store i8* %50, i8** %15, align 8
  %51 = load i8, i8* %49, align 1
  %52 = zext i8 %51 to i32
  %53 = icmp ne i32 %52, 3
  br i1 %53, label %54, label %56

54:                                               ; preds = %48
  %55 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  br label %106

56:                                               ; preds = %48
  %57 = load i8*, i8** %15, align 8
  %58 = getelementptr inbounds i8, i8* %57, i32 1
  store i8* %58, i8** %15, align 8
  %59 = load i8, i8* %57, align 1
  %60 = zext i8 %59 to i32
  store i32 %60, i32* %17, align 4
  %61 = load i8*, i8** %15, align 8
  %62 = getelementptr inbounds i8, i8* %61, i32 1
  store i8* %62, i8** %15, align 8
  %63 = load i8*, i8** %15, align 8
  %64 = load i32, i32* %17, align 4
  %65 = sub nsw i32 %64, 1
  %66 = call i32 @decode_asn1_bitstring(%struct.xdr_netobj* %11, i8* %63, i32 %65, i32 16)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %69, label %68

68:                                               ; preds = %56
  br label %106

69:                                               ; preds = %56
  %70 = load i32, i32* @GSS_S_DEFECTIVE_TOKEN, align 4
  store i32 %70, i32* %19, align 4
  %71 = load %struct.spkm3_ctx*, %struct.spkm3_ctx** %5, align 8
  %72 = getelementptr inbounds %struct.spkm3_ctx, %struct.spkm3_ctx* %71, i32 0, i32 1
  %73 = call i32 @g_OID_equal(i32* %72, i32* @hmac_md5_oid)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %77, label %75

75:                                               ; preds = %69
  %76 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.2, i64 0, i64 0))
  br label %106

77:                                               ; preds = %69
  %78 = load i64, i64* @CKSUMTYPE_HMAC_MD5, align 8
  store i64 %78, i64* %9, align 8
  %79 = load i64, i64* %9, align 8
  %80 = load %struct.spkm3_ctx*, %struct.spkm3_ctx** %5, align 8
  %81 = getelementptr inbounds %struct.spkm3_ctx, %struct.spkm3_ctx* %80, i32 0, i32 0
  %82 = load i8*, i8** %14, align 8
  %83 = getelementptr inbounds i8, i8* %82, i64 2
  %84 = load i32, i32* %18, align 4
  %85 = add nsw i32 %84, 2
  %86 = load %struct.xdr_buf*, %struct.xdr_buf** %7, align 8
  %87 = call i64 @make_spkm3_checksum(i64 %79, i32* %81, i8* %83, i32 %85, %struct.xdr_buf* %86, i32 0, %struct.xdr_netobj* %13)
  store i64 %87, i64* %10, align 8
  %88 = load i64, i64* %10, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %77
  br label %106

91:                                               ; preds = %77
  %92 = load i32, i32* @GSS_S_BAD_SIG, align 4
  store i32 %92, i32* %19, align 4
  %93 = getelementptr inbounds %struct.xdr_netobj, %struct.xdr_netobj* %13, i32 0, i32 0
  %94 = load i8*, i8** %93, align 8
  %95 = getelementptr inbounds %struct.xdr_netobj, %struct.xdr_netobj* %11, i32 0, i32 0
  %96 = load i8*, i8** %95, align 8
  %97 = getelementptr inbounds %struct.xdr_netobj, %struct.xdr_netobj* %11, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = call i64 @memcmp(i8* %94, i8* %96, i32 %98)
  store i64 %99, i64* %10, align 8
  %100 = load i64, i64* %10, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %91
  %103 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  br label %106

104:                                              ; preds = %91
  %105 = load i32, i32* @GSS_S_COMPLETE, align 4
  store i32 %105, i32* %19, align 4
  br label %106

106:                                              ; preds = %104, %102, %90, %75, %68, %54, %47, %41, %36
  %107 = getelementptr inbounds %struct.xdr_netobj, %struct.xdr_netobj* %11, i32 0, i32 0
  %108 = load i8*, i8** %107, align 8
  %109 = call i32 @kfree(i8* %108)
  %110 = load i32, i32* %19, align 4
  ret i32 %110
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @g_verify_token_header(%struct.xdr_netobj*, i32*, i8**, i32) #2

declare dso_local i32 @dprintk(i8*, ...) #2

declare dso_local i32 @spkm3_verify_mic_token(i8**, i32*, i8**) #2

declare dso_local i32 @decode_asn1_bitstring(%struct.xdr_netobj*, i8*, i32, i32) #2

declare dso_local i32 @g_OID_equal(i32*, i32*) #2

declare dso_local i64 @make_spkm3_checksum(i64, i32*, i8*, i32, %struct.xdr_buf*, i32, %struct.xdr_netobj*) #2

declare dso_local i64 @memcmp(i8*, i8*, i32) #2

declare dso_local i32 @kfree(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
