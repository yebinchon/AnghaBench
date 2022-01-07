; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ecryptfs/extr_crypto.c_decrypt_scatterlist.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ecryptfs/extr_crypto.c_decrypt_scatterlist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecryptfs_crypt_stat = type { i32, i32, i32, i32 }
%struct.scatterlist = type { i32 }
%struct.blkcipher_desc = type { i8*, i32, i32 }

@CRYPTO_TFM_REQ_MAY_SLEEP = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Error setting key; rc = [%d]\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@KERN_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"Decrypting [%d] bytes.\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"Error decrypting; rc = [%d]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ecryptfs_crypt_stat*, %struct.scatterlist*, %struct.scatterlist*, i32, i8*)* @decrypt_scatterlist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decrypt_scatterlist(%struct.ecryptfs_crypt_stat* %0, %struct.scatterlist* %1, %struct.scatterlist* %2, i32 %3, i8* %4) #0 {
  %6 = alloca %struct.ecryptfs_crypt_stat*, align 8
  %7 = alloca %struct.scatterlist*, align 8
  %8 = alloca %struct.scatterlist*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.blkcipher_desc, align 8
  %12 = alloca i32, align 4
  store %struct.ecryptfs_crypt_stat* %0, %struct.ecryptfs_crypt_stat** %6, align 8
  store %struct.scatterlist* %1, %struct.scatterlist** %7, align 8
  store %struct.scatterlist* %2, %struct.scatterlist** %8, align 8
  store i32 %3, i32* %9, align 4
  store i8* %4, i8** %10, align 8
  %13 = getelementptr inbounds %struct.blkcipher_desc, %struct.blkcipher_desc* %11, i32 0, i32 0
  %14 = load i8*, i8** %10, align 8
  store i8* %14, i8** %13, align 8
  %15 = getelementptr inbounds %struct.blkcipher_desc, %struct.blkcipher_desc* %11, i32 0, i32 1
  %16 = load i32, i32* @CRYPTO_TFM_REQ_MAY_SLEEP, align 4
  store i32 %16, i32* %15, align 8
  %17 = getelementptr inbounds %struct.blkcipher_desc, %struct.blkcipher_desc* %11, i32 0, i32 2
  %18 = load %struct.ecryptfs_crypt_stat*, %struct.ecryptfs_crypt_stat** %6, align 8
  %19 = getelementptr inbounds %struct.ecryptfs_crypt_stat, %struct.ecryptfs_crypt_stat* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %17, align 4
  store i32 0, i32* %12, align 4
  %21 = load %struct.ecryptfs_crypt_stat*, %struct.ecryptfs_crypt_stat** %6, align 8
  %22 = getelementptr inbounds %struct.ecryptfs_crypt_stat, %struct.ecryptfs_crypt_stat* %21, i32 0, i32 0
  %23 = call i32 @mutex_lock(i32* %22)
  %24 = load %struct.ecryptfs_crypt_stat*, %struct.ecryptfs_crypt_stat** %6, align 8
  %25 = getelementptr inbounds %struct.ecryptfs_crypt_stat, %struct.ecryptfs_crypt_stat* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.ecryptfs_crypt_stat*, %struct.ecryptfs_crypt_stat** %6, align 8
  %28 = getelementptr inbounds %struct.ecryptfs_crypt_stat, %struct.ecryptfs_crypt_stat* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.ecryptfs_crypt_stat*, %struct.ecryptfs_crypt_stat** %6, align 8
  %31 = getelementptr inbounds %struct.ecryptfs_crypt_stat, %struct.ecryptfs_crypt_stat* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @crypto_blkcipher_setkey(i32 %26, i32 %29, i32 %32)
  store i32 %33, i32* %12, align 4
  %34 = load i32, i32* %12, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %45

36:                                               ; preds = %5
  %37 = load i32, i32* @KERN_ERR, align 4
  %38 = load i32, i32* %12, align 4
  %39 = call i32 @ecryptfs_printk(i32 %37, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %38)
  %40 = load %struct.ecryptfs_crypt_stat*, %struct.ecryptfs_crypt_stat** %6, align 8
  %41 = getelementptr inbounds %struct.ecryptfs_crypt_stat, %struct.ecryptfs_crypt_stat* %40, i32 0, i32 0
  %42 = call i32 @mutex_unlock(i32* %41)
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %12, align 4
  br label %64

45:                                               ; preds = %5
  %46 = load i32, i32* @KERN_DEBUG, align 4
  %47 = load i32, i32* %9, align 4
  %48 = call i32 @ecryptfs_printk(i32 %46, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %47)
  %49 = load %struct.scatterlist*, %struct.scatterlist** %7, align 8
  %50 = load %struct.scatterlist*, %struct.scatterlist** %8, align 8
  %51 = load i32, i32* %9, align 4
  %52 = call i32 @crypto_blkcipher_decrypt_iv(%struct.blkcipher_desc* %11, %struct.scatterlist* %49, %struct.scatterlist* %50, i32 %51)
  store i32 %52, i32* %12, align 4
  %53 = load %struct.ecryptfs_crypt_stat*, %struct.ecryptfs_crypt_stat** %6, align 8
  %54 = getelementptr inbounds %struct.ecryptfs_crypt_stat, %struct.ecryptfs_crypt_stat* %53, i32 0, i32 0
  %55 = call i32 @mutex_unlock(i32* %54)
  %56 = load i32, i32* %12, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %45
  %59 = load i32, i32* @KERN_ERR, align 4
  %60 = load i32, i32* %12, align 4
  %61 = call i32 @ecryptfs_printk(i32 %59, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %60)
  br label %64

62:                                               ; preds = %45
  %63 = load i32, i32* %9, align 4
  store i32 %63, i32* %12, align 4
  br label %64

64:                                               ; preds = %62, %58, %36
  %65 = load i32, i32* %12, align 4
  ret i32 %65
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @crypto_blkcipher_setkey(i32, i32, i32) #1

declare dso_local i32 @ecryptfs_printk(i32, i8*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @crypto_blkcipher_decrypt_iv(%struct.blkcipher_desc*, %struct.scatterlist*, %struct.scatterlist*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
