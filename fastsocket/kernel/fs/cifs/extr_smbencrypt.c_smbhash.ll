; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_smbencrypt.c_smbhash.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_smbencrypt.c_smbhash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_blkcipher = type { i32 }
%struct.scatterlist = type { i32 }
%struct.blkcipher_desc = type { %struct.crypto_blkcipher* }

@.str = private unnamed_addr constant [9 x i8] c"ecb(des)\00", align 1
@CRYPTO_ALG_ASYNC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"could not allocate des crypto API\0A\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"could not encrypt crypt key rc: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8*)* @smbhash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smbhash(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca [8 x i8], align 1
  %9 = alloca %struct.crypto_blkcipher*, align 8
  %10 = alloca %struct.scatterlist, align 4
  %11 = alloca %struct.scatterlist, align 4
  %12 = alloca %struct.blkcipher_desc, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = getelementptr inbounds [8 x i8], [8 x i8]* %8, i64 0, i64 0
  %15 = call i32 @str_to_key(i8* %13, i8* %14)
  %16 = load i32, i32* @CRYPTO_ALG_ASYNC, align 4
  %17 = call %struct.crypto_blkcipher* @crypto_alloc_blkcipher(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 0, i32 %16)
  store %struct.crypto_blkcipher* %17, %struct.crypto_blkcipher** %9, align 8
  %18 = load %struct.crypto_blkcipher*, %struct.crypto_blkcipher** %9, align 8
  %19 = call i64 @IS_ERR(%struct.crypto_blkcipher* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %3
  %22 = load %struct.crypto_blkcipher*, %struct.crypto_blkcipher** %9, align 8
  %23 = call i32 @PTR_ERR(%struct.crypto_blkcipher* %22)
  store i32 %23, i32* %7, align 4
  %24 = call i32 (i32, i8*, ...) @cERROR(i32 1, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  br label %44

25:                                               ; preds = %3
  %26 = load %struct.crypto_blkcipher*, %struct.crypto_blkcipher** %9, align 8
  %27 = getelementptr inbounds %struct.blkcipher_desc, %struct.blkcipher_desc* %12, i32 0, i32 0
  store %struct.crypto_blkcipher* %26, %struct.crypto_blkcipher** %27, align 8
  %28 = load %struct.crypto_blkcipher*, %struct.crypto_blkcipher** %9, align 8
  %29 = getelementptr inbounds [8 x i8], [8 x i8]* %8, i64 0, i64 0
  %30 = call i32 @crypto_blkcipher_setkey(%struct.crypto_blkcipher* %28, i8* %29, i32 8)
  %31 = load i8*, i8** %5, align 8
  %32 = call i32 @sg_init_one(%struct.scatterlist* %10, i8* %31, i32 8)
  %33 = load i8*, i8** %4, align 8
  %34 = call i32 @sg_init_one(%struct.scatterlist* %11, i8* %33, i32 8)
  %35 = call i32 @crypto_blkcipher_encrypt(%struct.blkcipher_desc* %12, %struct.scatterlist* %11, %struct.scatterlist* %10, i32 8)
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %7, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %25
  %39 = load i32, i32* %7, align 4
  %40 = call i32 (i32, i8*, ...) @cERROR(i32 1, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %39)
  br label %41

41:                                               ; preds = %38, %25
  %42 = load %struct.crypto_blkcipher*, %struct.crypto_blkcipher** %9, align 8
  %43 = call i32 @crypto_free_blkcipher(%struct.crypto_blkcipher* %42)
  br label %44

44:                                               ; preds = %41, %21
  %45 = load i32, i32* %7, align 4
  ret i32 %45
}

declare dso_local i32 @str_to_key(i8*, i8*) #1

declare dso_local %struct.crypto_blkcipher* @crypto_alloc_blkcipher(i8*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.crypto_blkcipher*) #1

declare dso_local i32 @PTR_ERR(%struct.crypto_blkcipher*) #1

declare dso_local i32 @cERROR(i32, i8*, ...) #1

declare dso_local i32 @crypto_blkcipher_setkey(%struct.crypto_blkcipher*, i8*, i32) #1

declare dso_local i32 @sg_init_one(%struct.scatterlist*, i8*, i32) #1

declare dso_local i32 @crypto_blkcipher_encrypt(%struct.blkcipher_desc*, %struct.scatterlist*, %struct.scatterlist*, i32) #1

declare dso_local i32 @crypto_free_blkcipher(%struct.crypto_blkcipher*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
