; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/auth_gss/extr_gss_spkm3_seal.c_make_spkm3_checksum.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/auth_gss/extr_gss_spkm3_seal.c_make_spkm3_checksum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xdr_buf = type { i64 }
%struct.xdr_netobj = type { i32*, i32 }
%struct.hash_desc = type { i32, i32 }
%struct.scatterlist = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"hmac(md5)\00", align 1
@.str.1 = private unnamed_addr constant [56 x i8] c"RPC:       spkm3_make_checksum: unsupported checksum %d\00", align 1
@GSS_S_FAILURE = common dso_local global i32 0, align 4
@CRYPTO_ALG_ASYNC = common dso_local global i32 0, align 4
@CRYPTO_TFM_REQ_MAY_SLEEP = common dso_local global i32 0, align 4
@spkm3_checksummer = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @make_spkm3_checksum(i32 %0, %struct.xdr_netobj* %1, i8* %2, i32 %3, %struct.xdr_buf* %4, i32 %5, %struct.xdr_netobj* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.xdr_netobj*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.xdr_buf*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.xdr_netobj*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca %struct.hash_desc, align 4
  %18 = alloca [1 x %struct.scatterlist], align 4
  %19 = alloca i32, align 4
  store i32 %0, i32* %9, align 4
  store %struct.xdr_netobj* %1, %struct.xdr_netobj** %10, align 8
  store i8* %2, i8** %11, align 8
  store i32 %3, i32* %12, align 4
  store %struct.xdr_buf* %4, %struct.xdr_buf** %13, align 8
  store i32 %5, i32* %14, align 4
  store %struct.xdr_netobj* %6, %struct.xdr_netobj** %15, align 8
  %20 = load i32, i32* %9, align 4
  switch i32 %20, label %22 [
    i32 128, label %21
  ]

21:                                               ; preds = %7
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8** %16, align 8
  br label %26

22:                                               ; preds = %7
  %23 = load i32, i32* %9, align 4
  %24 = call i32 @dprintk(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0), i32 %23)
  %25 = load i32, i32* @GSS_S_FAILURE, align 4
  store i32 %25, i32* %8, align 4
  br label %109

26:                                               ; preds = %21
  %27 = load %struct.xdr_netobj*, %struct.xdr_netobj** %10, align 8
  %28 = getelementptr inbounds %struct.xdr_netobj, %struct.xdr_netobj* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = icmp eq i32* %29, null
  br i1 %30, label %36, label %31

31:                                               ; preds = %26
  %32 = load %struct.xdr_netobj*, %struct.xdr_netobj** %10, align 8
  %33 = getelementptr inbounds %struct.xdr_netobj, %struct.xdr_netobj* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = icmp sle i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %31, %26
  %37 = load i32, i32* @GSS_S_FAILURE, align 4
  store i32 %37, i32* %8, align 4
  br label %109

38:                                               ; preds = %31
  %39 = load i8*, i8** %16, align 8
  %40 = load i32, i32* @CRYPTO_ALG_ASYNC, align 4
  %41 = call i32 @crypto_alloc_hash(i8* %39, i32 0, i32 %40)
  %42 = getelementptr inbounds %struct.hash_desc, %struct.hash_desc* %17, i32 0, i32 0
  store i32 %41, i32* %42, align 4
  %43 = getelementptr inbounds %struct.hash_desc, %struct.hash_desc* %17, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i64 @IS_ERR(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %38
  %48 = load i32, i32* @GSS_S_FAILURE, align 4
  store i32 %48, i32* %8, align 4
  br label %109

49:                                               ; preds = %38
  %50 = getelementptr inbounds %struct.hash_desc, %struct.hash_desc* %17, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @crypto_hash_digestsize(i32 %51)
  %53 = load %struct.xdr_netobj*, %struct.xdr_netobj** %15, align 8
  %54 = getelementptr inbounds %struct.xdr_netobj, %struct.xdr_netobj* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 8
  %55 = load i32, i32* @CRYPTO_TFM_REQ_MAY_SLEEP, align 4
  %56 = getelementptr inbounds %struct.hash_desc, %struct.hash_desc* %17, i32 0, i32 1
  store i32 %55, i32* %56, align 4
  %57 = getelementptr inbounds %struct.hash_desc, %struct.hash_desc* %17, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.xdr_netobj*, %struct.xdr_netobj** %10, align 8
  %60 = getelementptr inbounds %struct.xdr_netobj, %struct.xdr_netobj* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = load %struct.xdr_netobj*, %struct.xdr_netobj** %10, align 8
  %63 = getelementptr inbounds %struct.xdr_netobj, %struct.xdr_netobj* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @crypto_hash_setkey(i32 %58, i32* %61, i32 %64)
  store i32 %65, i32* %19, align 4
  %66 = load i32, i32* %19, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %49
  br label %98

69:                                               ; preds = %49
  %70 = call i32 @crypto_hash_init(%struct.hash_desc* %17)
  store i32 %70, i32* %19, align 4
  %71 = load i32, i32* %19, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %69
  br label %98

74:                                               ; preds = %69
  %75 = getelementptr inbounds [1 x %struct.scatterlist], [1 x %struct.scatterlist]* %18, i64 0, i64 0
  %76 = load i8*, i8** %11, align 8
  %77 = load i32, i32* %12, align 4
  %78 = call i32 @sg_init_one(%struct.scatterlist* %75, i8* %76, i32 %77)
  %79 = getelementptr inbounds [1 x %struct.scatterlist], [1 x %struct.scatterlist]* %18, i64 0, i64 0
  %80 = getelementptr inbounds [1 x %struct.scatterlist], [1 x %struct.scatterlist]* %18, i64 0, i64 0
  %81 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @crypto_hash_update(%struct.hash_desc* %17, %struct.scatterlist* %79, i32 %82)
  %84 = load %struct.xdr_buf*, %struct.xdr_buf** %13, align 8
  %85 = load i32, i32* %14, align 4
  %86 = load %struct.xdr_buf*, %struct.xdr_buf** %13, align 8
  %87 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i32, i32* %14, align 4
  %90 = zext i32 %89 to i64
  %91 = sub nsw i64 %88, %90
  %92 = load i32, i32* @spkm3_checksummer, align 4
  %93 = call i32 @xdr_process_buf(%struct.xdr_buf* %84, i32 %85, i64 %91, i32 %92, %struct.hash_desc* %17)
  %94 = load %struct.xdr_netobj*, %struct.xdr_netobj** %15, align 8
  %95 = getelementptr inbounds %struct.xdr_netobj, %struct.xdr_netobj* %94, i32 0, i32 0
  %96 = load i32*, i32** %95, align 8
  %97 = call i32 @crypto_hash_final(%struct.hash_desc* %17, i32* %96)
  br label %98

98:                                               ; preds = %74, %73, %68
  %99 = getelementptr inbounds %struct.hash_desc, %struct.hash_desc* %17, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @crypto_free_hash(i32 %100)
  %102 = load i32, i32* %19, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %98
  %105 = load i32, i32* @GSS_S_FAILURE, align 4
  br label %107

106:                                              ; preds = %98
  br label %107

107:                                              ; preds = %106, %104
  %108 = phi i32 [ %105, %104 ], [ 0, %106 ]
  store i32 %108, i32* %8, align 4
  br label %109

109:                                              ; preds = %107, %47, %36, %22
  %110 = load i32, i32* %8, align 4
  ret i32 %110
}

declare dso_local i32 @dprintk(i8*, i32) #1

declare dso_local i32 @crypto_alloc_hash(i8*, i32, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @crypto_hash_digestsize(i32) #1

declare dso_local i32 @crypto_hash_setkey(i32, i32*, i32) #1

declare dso_local i32 @crypto_hash_init(%struct.hash_desc*) #1

declare dso_local i32 @sg_init_one(%struct.scatterlist*, i8*, i32) #1

declare dso_local i32 @crypto_hash_update(%struct.hash_desc*, %struct.scatterlist*, i32) #1

declare dso_local i32 @xdr_process_buf(%struct.xdr_buf*, i32, i64, i32, %struct.hash_desc*) #1

declare dso_local i32 @crypto_hash_final(%struct.hash_desc*, i32*) #1

declare dso_local i32 @crypto_free_hash(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
