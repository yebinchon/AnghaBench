; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs4recover.c_nfs4_make_rec_clidname.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs4recover.c_nfs4_make_rec_clidname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xdr_netobj = type { i32*, i32 }
%struct.hash_desc = type { i32, i32 }
%struct.scatterlist = type { i32 }

@nfserr_resource = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"NFSD: nfs4_make_rec_clidname for %.*s\0A\00", align 1
@CRYPTO_TFM_REQ_MAY_SLEEP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"md5\00", align 1
@CRYPTO_ALG_ASYNC = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@nfs_ok = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfs4_make_rec_clidname(i8* %0, %struct.xdr_netobj* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.xdr_netobj*, align 8
  %5 = alloca %struct.xdr_netobj, align 8
  %6 = alloca %struct.hash_desc, align 4
  %7 = alloca %struct.scatterlist, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store %struct.xdr_netobj* %1, %struct.xdr_netobj** %4, align 8
  %9 = load i32, i32* @nfserr_resource, align 4
  store i32 %9, i32* %8, align 4
  %10 = load %struct.xdr_netobj*, %struct.xdr_netobj** %4, align 8
  %11 = getelementptr inbounds %struct.xdr_netobj, %struct.xdr_netobj* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.xdr_netobj*, %struct.xdr_netobj** %4, align 8
  %14 = getelementptr inbounds %struct.xdr_netobj, %struct.xdr_netobj* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = call i32 @dprintk(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %12, i32* %15)
  %17 = load i32, i32* @CRYPTO_TFM_REQ_MAY_SLEEP, align 4
  %18 = getelementptr inbounds %struct.hash_desc, %struct.hash_desc* %6, i32 0, i32 1
  store i32 %17, i32* %18, align 4
  %19 = load i32, i32* @CRYPTO_ALG_ASYNC, align 4
  %20 = call i32 @crypto_alloc_hash(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 0, i32 %19)
  %21 = getelementptr inbounds %struct.hash_desc, %struct.hash_desc* %6, i32 0, i32 0
  store i32 %20, i32* %21, align 4
  %22 = getelementptr inbounds %struct.hash_desc, %struct.hash_desc* %6, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @IS_ERR(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %2
  br label %69

27:                                               ; preds = %2
  %28 = getelementptr inbounds %struct.hash_desc, %struct.hash_desc* %6, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @crypto_hash_digestsize(i32 %29)
  %31 = getelementptr inbounds %struct.xdr_netobj, %struct.xdr_netobj* %5, i32 0, i32 1
  store i32 %30, i32* %31, align 8
  %32 = getelementptr inbounds %struct.xdr_netobj, %struct.xdr_netobj* %5, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @GFP_KERNEL, align 4
  %35 = call i32* @kmalloc(i32 %33, i32 %34)
  %36 = getelementptr inbounds %struct.xdr_netobj, %struct.xdr_netobj* %5, i32 0, i32 0
  store i32* %35, i32** %36, align 8
  %37 = getelementptr inbounds %struct.xdr_netobj, %struct.xdr_netobj* %5, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = icmp eq i32* %38, null
  br i1 %39, label %40, label %41

40:                                               ; preds = %27
  br label %62

41:                                               ; preds = %27
  %42 = load %struct.xdr_netobj*, %struct.xdr_netobj** %4, align 8
  %43 = getelementptr inbounds %struct.xdr_netobj, %struct.xdr_netobj* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = load %struct.xdr_netobj*, %struct.xdr_netobj** %4, align 8
  %46 = getelementptr inbounds %struct.xdr_netobj, %struct.xdr_netobj* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @sg_init_one(%struct.scatterlist* %7, i32* %44, i32 %47)
  %49 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %7, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = getelementptr inbounds %struct.xdr_netobj, %struct.xdr_netobj* %5, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = call i64 @crypto_hash_digest(%struct.hash_desc* %6, %struct.scatterlist* %7, i32 %50, i32* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %41
  br label %62

56:                                               ; preds = %41
  %57 = load i8*, i8** %3, align 8
  %58 = getelementptr inbounds %struct.xdr_netobj, %struct.xdr_netobj* %5, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = call i32 @md5_to_hex(i8* %57, i32* %59)
  %61 = load i32, i32* @nfs_ok, align 4
  store i32 %61, i32* %8, align 4
  br label %62

62:                                               ; preds = %56, %55, %40
  %63 = getelementptr inbounds %struct.xdr_netobj, %struct.xdr_netobj* %5, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = call i32 @kfree(i32* %64)
  %66 = getelementptr inbounds %struct.hash_desc, %struct.hash_desc* %6, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @crypto_free_hash(i32 %67)
  br label %69

69:                                               ; preds = %62, %26
  %70 = load i32, i32* %8, align 4
  ret i32 %70
}

declare dso_local i32 @dprintk(i8*, i32, i32*) #1

declare dso_local i32 @crypto_alloc_hash(i8*, i32, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @crypto_hash_digestsize(i32) #1

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i32 @sg_init_one(%struct.scatterlist*, i32*, i32) #1

declare dso_local i64 @crypto_hash_digest(%struct.hash_desc*, %struct.scatterlist*, i32, i32*) #1

declare dso_local i32 @md5_to_hex(i8*, i32*) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @crypto_free_hash(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
