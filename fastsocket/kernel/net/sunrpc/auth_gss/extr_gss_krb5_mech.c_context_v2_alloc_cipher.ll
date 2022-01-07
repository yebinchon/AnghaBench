; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/auth_gss/extr_gss_krb5_mech.c_context_v2_alloc_cipher.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/auth_gss/extr_gss_krb5_mech.c_context_v2_alloc_cipher.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_blkcipher = type { i32 }
%struct.krb5_ctx = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@CRYPTO_ALG_ASYNC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [61 x i8] c"gss_kerberos_mech: unable to initialize crypto algorithm %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [62 x i8] c"gss_kerberos_mech: error setting key for crypto algorithm %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.crypto_blkcipher* @context_v2_alloc_cipher(%struct.krb5_ctx* %0, i8* %1, i32* %2) #0 {
  %4 = alloca %struct.crypto_blkcipher*, align 8
  %5 = alloca %struct.krb5_ctx*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.crypto_blkcipher*, align 8
  store %struct.krb5_ctx* %0, %struct.krb5_ctx** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = load i32, i32* @CRYPTO_ALG_ASYNC, align 4
  %11 = call %struct.crypto_blkcipher* @crypto_alloc_blkcipher(i8* %9, i32 0, i32 %10)
  store %struct.crypto_blkcipher* %11, %struct.crypto_blkcipher** %8, align 8
  %12 = load %struct.crypto_blkcipher*, %struct.crypto_blkcipher** %8, align 8
  %13 = call i64 @IS_ERR(%struct.crypto_blkcipher* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load i8*, i8** %6, align 8
  %17 = call i32 @dprintk(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), i8* %16)
  store %struct.crypto_blkcipher* null, %struct.crypto_blkcipher** %4, align 8
  br label %35

18:                                               ; preds = %3
  %19 = load %struct.crypto_blkcipher*, %struct.crypto_blkcipher** %8, align 8
  %20 = load i32*, i32** %7, align 8
  %21 = load %struct.krb5_ctx*, %struct.krb5_ctx** %5, align 8
  %22 = getelementptr inbounds %struct.krb5_ctx, %struct.krb5_ctx* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @crypto_blkcipher_setkey(%struct.crypto_blkcipher* %19, i32* %20, i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %18
  %29 = load i8*, i8** %6, align 8
  %30 = call i32 @dprintk(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.1, i64 0, i64 0), i8* %29)
  %31 = load %struct.crypto_blkcipher*, %struct.crypto_blkcipher** %8, align 8
  %32 = call i32 @crypto_free_blkcipher(%struct.crypto_blkcipher* %31)
  store %struct.crypto_blkcipher* null, %struct.crypto_blkcipher** %4, align 8
  br label %35

33:                                               ; preds = %18
  %34 = load %struct.crypto_blkcipher*, %struct.crypto_blkcipher** %8, align 8
  store %struct.crypto_blkcipher* %34, %struct.crypto_blkcipher** %4, align 8
  br label %35

35:                                               ; preds = %33, %28, %15
  %36 = load %struct.crypto_blkcipher*, %struct.crypto_blkcipher** %4, align 8
  ret %struct.crypto_blkcipher* %36
}

declare dso_local %struct.crypto_blkcipher* @crypto_alloc_blkcipher(i8*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.crypto_blkcipher*) #1

declare dso_local i32 @dprintk(i8*, i8*) #1

declare dso_local i64 @crypto_blkcipher_setkey(%struct.crypto_blkcipher*, i32*, i32) #1

declare dso_local i32 @crypto_free_blkcipher(%struct.crypto_blkcipher*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
