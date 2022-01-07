; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/auth_gss/extr_gss_spkm3_seal.c_spkm3_make_token.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/auth_gss/extr_gss_spkm3_seal.c_spkm3_make_token.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spkm3_ctx = type { i32, i32, %struct.xdr_netobj, i32, i32 }
%struct.xdr_netobj = type { i32, i8* }
%struct.xdr_buf = type { i32 }

@jiffies = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"RPC:       spkm3_make_token BAD ctx_id.len %d\0A\00", align 1
@hmac_md5_oid = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [87 x i8] c"RPC:       gss_spkm3_seal: unsupported I-ALG algorithm.  only support hmac-md5 I-ALG.\0A\00", align 1
@CKSUMTYPE_HMAC_MD5 = common dso_local global i32 0, align 4
@cast5_cbc_oid = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [56 x i8] c"RPC:       gss_spkm3_seal: unsupported C-ALG algorithm\0A\00", align 1
@SPKM_MIC_TOK = common dso_local global i32 0, align 4
@SPKM_WRAP_TOK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [56 x i8] c"RPC:       gss_spkm3_seal: SPKM_WRAP_TOK not supported\0A\00", align 1
@GSS_S_COMPLETE = common dso_local global i32 0, align 4
@GSS_S_FAILURE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @spkm3_make_token(%struct.spkm3_ctx* %0, %struct.xdr_buf* %1, %struct.xdr_netobj* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.spkm3_ctx*, align 8
  %7 = alloca %struct.xdr_buf*, align 8
  %8 = alloca %struct.xdr_netobj*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [25 x i8], align 16
  %12 = alloca [16 x i8], align 16
  %13 = alloca %struct.xdr_netobj, align 8
  %14 = alloca %struct.xdr_netobj, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.spkm3_ctx* %0, %struct.spkm3_ctx** %6, align 8
  store %struct.xdr_buf* %1, %struct.xdr_buf** %7, align 8
  store %struct.xdr_netobj* %2, %struct.xdr_netobj** %8, align 8
  store i32 %3, i32* %9, align 4
  %22 = getelementptr inbounds %struct.xdr_netobj, %struct.xdr_netobj* %13, i32 0, i32 0
  store i32 0, i32* %22, align 8
  %23 = getelementptr inbounds %struct.xdr_netobj, %struct.xdr_netobj* %13, i32 0, i32 1
  %24 = getelementptr inbounds [16 x i8], [16 x i8]* %12, i64 0, i64 0
  store i8* %24, i8** %23, align 8
  %25 = getelementptr inbounds %struct.xdr_netobj, %struct.xdr_netobj* %14, i32 0, i32 0
  store i32 0, i32* %25, align 8
  %26 = getelementptr inbounds %struct.xdr_netobj, %struct.xdr_netobj* %14, i32 0, i32 1
  %27 = getelementptr inbounds [25 x i8], [25 x i8]* %11, i64 0, i64 0
  store i8* %27, i8** %26, align 8
  store i32 0, i32* %15, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  store i32 0, i32* %21, align 4
  %28 = load i32, i32* @jiffies, align 4
  store i32 %28, i32* %17, align 4
  %29 = load %struct.spkm3_ctx*, %struct.spkm3_ctx** %6, align 8
  %30 = getelementptr inbounds %struct.spkm3_ctx, %struct.spkm3_ctx* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.xdr_netobj, %struct.xdr_netobj* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp ne i32 %32, 16
  br i1 %33, label %34, label %40

34:                                               ; preds = %4
  %35 = load %struct.spkm3_ctx*, %struct.spkm3_ctx** %6, align 8
  %36 = getelementptr inbounds %struct.spkm3_ctx, %struct.spkm3_ctx* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.xdr_netobj, %struct.xdr_netobj* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %38)
  br label %120

40:                                               ; preds = %4
  %41 = load %struct.spkm3_ctx*, %struct.spkm3_ctx** %6, align 8
  %42 = getelementptr inbounds %struct.spkm3_ctx, %struct.spkm3_ctx* %41, i32 0, i32 4
  %43 = call i32 @g_OID_equal(i32* %42, i32* @hmac_md5_oid)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %47, label %45

45:                                               ; preds = %40
  %46 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.1, i64 0, i64 0))
  br label %120

47:                                               ; preds = %40
  %48 = load i32, i32* @CKSUMTYPE_HMAC_MD5, align 4
  store i32 %48, i32* %10, align 4
  br label %49

49:                                               ; preds = %47
  %50 = load %struct.spkm3_ctx*, %struct.spkm3_ctx** %6, align 8
  %51 = getelementptr inbounds %struct.spkm3_ctx, %struct.spkm3_ctx* %50, i32 0, i32 3
  %52 = call i32 @g_OID_equal(i32* %51, i32* @cast5_cbc_oid)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %56, label %54

54:                                               ; preds = %49
  %55 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.2, i64 0, i64 0))
  br label %120

56:                                               ; preds = %49
  %57 = load i32, i32* %9, align 4
  %58 = load i32, i32* @SPKM_MIC_TOK, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %111

60:                                               ; preds = %56
  %61 = load %struct.spkm3_ctx*, %struct.spkm3_ctx** %6, align 8
  %62 = getelementptr inbounds %struct.spkm3_ctx, %struct.spkm3_ctx* %61, i32 0, i32 2
  %63 = call i32 @asn1_bitstring_len(%struct.xdr_netobj* %62, i32* %18, i32* %19)
  %64 = getelementptr inbounds %struct.xdr_netobj, %struct.xdr_netobj* %14, i32 0, i32 1
  %65 = getelementptr inbounds %struct.xdr_netobj, %struct.xdr_netobj* %14, i32 0, i32 0
  %66 = load %struct.spkm3_ctx*, %struct.spkm3_ctx** %6, align 8
  %67 = getelementptr inbounds %struct.spkm3_ctx, %struct.spkm3_ctx* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.xdr_netobj, %struct.xdr_netobj* %67, i32 0, i32 1
  %69 = load i8*, i8** %68, align 8
  %70 = load i32, i32* %18, align 4
  %71 = load i32, i32* %19, align 4
  %72 = call i32 @spkm3_mic_header(i8** %64, i32* %65, i8* %69, i32 %70, i32 %71)
  %73 = load i32, i32* %10, align 4
  %74 = load %struct.spkm3_ctx*, %struct.spkm3_ctx** %6, align 8
  %75 = getelementptr inbounds %struct.spkm3_ctx, %struct.spkm3_ctx* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.xdr_netobj, %struct.xdr_netobj* %14, i32 0, i32 1
  %77 = load i8*, i8** %76, align 8
  %78 = getelementptr inbounds %struct.xdr_netobj, %struct.xdr_netobj* %14, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.xdr_buf*, %struct.xdr_buf** %7, align 8
  %81 = call i64 @make_spkm3_checksum(i32 %73, i32* %75, i8* %77, i32 %79, %struct.xdr_buf* %80, i32 0, %struct.xdr_netobj* %13)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %60
  br label %120

84:                                               ; preds = %60
  %85 = call i32 @asn1_bitstring_len(%struct.xdr_netobj* %13, i32* %20, i32* %21)
  %86 = load i32, i32* %18, align 4
  %87 = add nsw i32 10, %86
  %88 = add nsw i32 %87, 1
  %89 = load i32, i32* %20, align 4
  %90 = add nsw i32 %88, %89
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %15, align 4
  %92 = load %struct.spkm3_ctx*, %struct.spkm3_ctx** %6, align 8
  %93 = getelementptr inbounds %struct.spkm3_ctx, %struct.spkm3_ctx* %92, i32 0, i32 0
  %94 = load i32, i32* %15, align 4
  %95 = add nsw i32 %94, 2
  %96 = call i32 @g_token_size(i32* %93, i32 %95)
  %97 = load %struct.xdr_netobj*, %struct.xdr_netobj** %8, align 8
  %98 = getelementptr inbounds %struct.xdr_netobj, %struct.xdr_netobj* %97, i32 0, i32 0
  store i32 %96, i32* %98, align 8
  %99 = load %struct.xdr_netobj*, %struct.xdr_netobj** %8, align 8
  %100 = getelementptr inbounds %struct.xdr_netobj, %struct.xdr_netobj* %99, i32 0, i32 1
  %101 = load i8*, i8** %100, align 8
  store i8* %101, i8** %16, align 8
  %102 = load %struct.spkm3_ctx*, %struct.spkm3_ctx** %6, align 8
  %103 = getelementptr inbounds %struct.spkm3_ctx, %struct.spkm3_ctx* %102, i32 0, i32 0
  %104 = load i32, i32* %15, align 4
  %105 = add nsw i32 %104, 2
  %106 = call i32 @g_make_token_header(i32* %103, i32 %105, i8** %16)
  %107 = load i32, i32* %15, align 4
  %108 = load i32, i32* %20, align 4
  %109 = load i32, i32* %21, align 4
  %110 = call i32 @spkm3_make_mic_token(i8** %16, i32 %107, %struct.xdr_netobj* %14, %struct.xdr_netobj* %13, i32 %108, i32 %109)
  br label %118

111:                                              ; preds = %56
  %112 = load i32, i32* %9, align 4
  %113 = load i32, i32* @SPKM_WRAP_TOK, align 4
  %114 = icmp eq i32 %112, %113
  br i1 %114, label %115, label %117

115:                                              ; preds = %111
  %116 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.3, i64 0, i64 0))
  br label %120

117:                                              ; preds = %111
  br label %118

118:                                              ; preds = %117, %84
  %119 = load i32, i32* @GSS_S_COMPLETE, align 4
  store i32 %119, i32* %5, align 4
  br label %126

120:                                              ; preds = %115, %83, %54, %45, %34
  %121 = load %struct.xdr_netobj*, %struct.xdr_netobj** %8, align 8
  %122 = getelementptr inbounds %struct.xdr_netobj, %struct.xdr_netobj* %121, i32 0, i32 1
  store i8* null, i8** %122, align 8
  %123 = load %struct.xdr_netobj*, %struct.xdr_netobj** %8, align 8
  %124 = getelementptr inbounds %struct.xdr_netobj, %struct.xdr_netobj* %123, i32 0, i32 0
  store i32 0, i32* %124, align 8
  %125 = load i32, i32* @GSS_S_FAILURE, align 4
  store i32 %125, i32* %5, align 4
  br label %126

126:                                              ; preds = %120, %118
  %127 = load i32, i32* %5, align 4
  ret i32 %127
}

declare dso_local i32 @dprintk(i8*, ...) #1

declare dso_local i32 @g_OID_equal(i32*, i32*) #1

declare dso_local i32 @asn1_bitstring_len(%struct.xdr_netobj*, i32*, i32*) #1

declare dso_local i32 @spkm3_mic_header(i8**, i32*, i8*, i32, i32) #1

declare dso_local i64 @make_spkm3_checksum(i32, i32*, i8*, i32, %struct.xdr_buf*, i32, %struct.xdr_netobj*) #1

declare dso_local i32 @g_token_size(i32*, i32) #1

declare dso_local i32 @g_make_token_header(i32*, i32, i8**) #1

declare dso_local i32 @spkm3_make_mic_token(i8**, i32, %struct.xdr_netobj*, %struct.xdr_netobj*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
