; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ecryptfs/extr_crypto.c_encrypt_scatterlist.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ecryptfs/extr_crypto.c_encrypt_scatterlist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecryptfs_crypt_stat = type { i32, i32, i32, i32, i32 }
%struct.scatterlist = type { i32 }
%struct.blkcipher_desc = type { i8*, i32, i32 }

@CRYPTO_TFM_REQ_MAY_SLEEP = common dso_local global i32 0, align 4
@ECRYPTFS_STRUCT_INITIALIZED = common dso_local global i32 0, align 4
@ecryptfs_verbosity = common dso_local global i64 0, align 8
@KERN_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Key size [%d]; key:\0A\00", align 1
@ECRYPTFS_KEY_SET = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Error setting key; rc = [%d]\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"Encrypting [%d] bytes.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ecryptfs_crypt_stat*, %struct.scatterlist*, %struct.scatterlist*, i32, i8*)* @encrypt_scatterlist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @encrypt_scatterlist(%struct.ecryptfs_crypt_stat* %0, %struct.scatterlist* %1, %struct.scatterlist* %2, i32 %3, i8* %4) #0 {
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
  %19 = getelementptr inbounds %struct.ecryptfs_crypt_stat, %struct.ecryptfs_crypt_stat* %18, i32 0, i32 4
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %17, align 4
  store i32 0, i32* %12, align 4
  %21 = load %struct.ecryptfs_crypt_stat*, %struct.ecryptfs_crypt_stat** %6, align 8
  %22 = icmp ne %struct.ecryptfs_crypt_stat* %21, null
  br i1 %22, label %23, label %36

23:                                               ; preds = %5
  %24 = load %struct.ecryptfs_crypt_stat*, %struct.ecryptfs_crypt_stat** %6, align 8
  %25 = getelementptr inbounds %struct.ecryptfs_crypt_stat, %struct.ecryptfs_crypt_stat* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %23
  %29 = load %struct.ecryptfs_crypt_stat*, %struct.ecryptfs_crypt_stat** %6, align 8
  %30 = getelementptr inbounds %struct.ecryptfs_crypt_stat, %struct.ecryptfs_crypt_stat* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @ECRYPTFS_STRUCT_INITIALIZED, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  %35 = xor i1 %34, true
  br label %36

36:                                               ; preds = %28, %23, %5
  %37 = phi i1 [ true, %23 ], [ true, %5 ], [ %35, %28 ]
  %38 = zext i1 %37 to i32
  %39 = call i32 @BUG_ON(i32 %38)
  %40 = load i64, i64* @ecryptfs_verbosity, align 8
  %41 = icmp sgt i64 %40, 0
  %42 = zext i1 %41 to i32
  %43 = call i64 @unlikely(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %58

45:                                               ; preds = %36
  %46 = load i32, i32* @KERN_DEBUG, align 4
  %47 = load %struct.ecryptfs_crypt_stat*, %struct.ecryptfs_crypt_stat** %6, align 8
  %48 = getelementptr inbounds %struct.ecryptfs_crypt_stat, %struct.ecryptfs_crypt_stat* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @ecryptfs_printk(i32 %46, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %49)
  %51 = load %struct.ecryptfs_crypt_stat*, %struct.ecryptfs_crypt_stat** %6, align 8
  %52 = getelementptr inbounds %struct.ecryptfs_crypt_stat, %struct.ecryptfs_crypt_stat* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.ecryptfs_crypt_stat*, %struct.ecryptfs_crypt_stat** %6, align 8
  %55 = getelementptr inbounds %struct.ecryptfs_crypt_stat, %struct.ecryptfs_crypt_stat* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @ecryptfs_dump_hex(i32 %53, i32 %56)
  br label %58

58:                                               ; preds = %45, %36
  %59 = load %struct.ecryptfs_crypt_stat*, %struct.ecryptfs_crypt_stat** %6, align 8
  %60 = getelementptr inbounds %struct.ecryptfs_crypt_stat, %struct.ecryptfs_crypt_stat* %59, i32 0, i32 2
  %61 = call i32 @mutex_lock(i32* %60)
  %62 = load %struct.ecryptfs_crypt_stat*, %struct.ecryptfs_crypt_stat** %6, align 8
  %63 = getelementptr inbounds %struct.ecryptfs_crypt_stat, %struct.ecryptfs_crypt_stat* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @ECRYPTFS_KEY_SET, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %84, label %68

68:                                               ; preds = %58
  %69 = load %struct.ecryptfs_crypt_stat*, %struct.ecryptfs_crypt_stat** %6, align 8
  %70 = getelementptr inbounds %struct.ecryptfs_crypt_stat, %struct.ecryptfs_crypt_stat* %69, i32 0, i32 4
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.ecryptfs_crypt_stat*, %struct.ecryptfs_crypt_stat** %6, align 8
  %73 = getelementptr inbounds %struct.ecryptfs_crypt_stat, %struct.ecryptfs_crypt_stat* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.ecryptfs_crypt_stat*, %struct.ecryptfs_crypt_stat** %6, align 8
  %76 = getelementptr inbounds %struct.ecryptfs_crypt_stat, %struct.ecryptfs_crypt_stat* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @crypto_blkcipher_setkey(i32 %71, i32 %74, i32 %77)
  store i32 %78, i32* %12, align 4
  %79 = load i32, i32* @ECRYPTFS_KEY_SET, align 4
  %80 = load %struct.ecryptfs_crypt_stat*, %struct.ecryptfs_crypt_stat** %6, align 8
  %81 = getelementptr inbounds %struct.ecryptfs_crypt_stat, %struct.ecryptfs_crypt_stat* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = or i32 %82, %79
  store i32 %83, i32* %81, align 4
  br label %84

84:                                               ; preds = %68, %58
  %85 = load i32, i32* %12, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %96

87:                                               ; preds = %84
  %88 = load i32, i32* @KERN_ERR, align 4
  %89 = load i32, i32* %12, align 4
  %90 = call i32 @ecryptfs_printk(i32 %88, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %89)
  %91 = load %struct.ecryptfs_crypt_stat*, %struct.ecryptfs_crypt_stat** %6, align 8
  %92 = getelementptr inbounds %struct.ecryptfs_crypt_stat, %struct.ecryptfs_crypt_stat* %91, i32 0, i32 2
  %93 = call i32 @mutex_unlock(i32* %92)
  %94 = load i32, i32* @EINVAL, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %12, align 4
  br label %107

96:                                               ; preds = %84
  %97 = load i32, i32* @KERN_DEBUG, align 4
  %98 = load i32, i32* %9, align 4
  %99 = call i32 @ecryptfs_printk(i32 %97, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %98)
  %100 = load %struct.scatterlist*, %struct.scatterlist** %7, align 8
  %101 = load %struct.scatterlist*, %struct.scatterlist** %8, align 8
  %102 = load i32, i32* %9, align 4
  %103 = call i32 @crypto_blkcipher_encrypt_iv(%struct.blkcipher_desc* %11, %struct.scatterlist* %100, %struct.scatterlist* %101, i32 %102)
  %104 = load %struct.ecryptfs_crypt_stat*, %struct.ecryptfs_crypt_stat** %6, align 8
  %105 = getelementptr inbounds %struct.ecryptfs_crypt_stat, %struct.ecryptfs_crypt_stat* %104, i32 0, i32 2
  %106 = call i32 @mutex_unlock(i32* %105)
  br label %107

107:                                              ; preds = %96, %87
  %108 = load i32, i32* %12, align 4
  ret i32 %108
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ecryptfs_printk(i32, i8*, i32) #1

declare dso_local i32 @ecryptfs_dump_hex(i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @crypto_blkcipher_setkey(i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @crypto_blkcipher_encrypt_iv(%struct.blkcipher_desc*, %struct.scatterlist*, %struct.scatterlist*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
