; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/integrity/ima/extr_ima_crypto.c_init_desc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/integrity/ima/extr_ima_crypto.c_init_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hash_desc = type { i32, i64 }

@ima_hash = common dso_local global i32 0, align 4
@CRYPTO_ALG_ASYNC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"IMA: failed to load %s transform: %ld\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hash_desc*)* @init_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_desc(%struct.hash_desc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hash_desc*, align 8
  %4 = alloca i32, align 4
  store %struct.hash_desc* %0, %struct.hash_desc** %3, align 8
  %5 = load i32, i32* @ima_hash, align 4
  %6 = load i32, i32* @CRYPTO_ALG_ASYNC, align 4
  %7 = call i32 @crypto_alloc_hash(i32 %5, i32 0, i32 %6)
  %8 = load %struct.hash_desc*, %struct.hash_desc** %3, align 8
  %9 = getelementptr inbounds %struct.hash_desc, %struct.hash_desc* %8, i32 0, i32 0
  store i32 %7, i32* %9, align 8
  %10 = load %struct.hash_desc*, %struct.hash_desc** %3, align 8
  %11 = getelementptr inbounds %struct.hash_desc, %struct.hash_desc* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = call i64 @IS_ERR(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %27

15:                                               ; preds = %1
  %16 = load i32, i32* @ima_hash, align 4
  %17 = load %struct.hash_desc*, %struct.hash_desc** %3, align 8
  %18 = getelementptr inbounds %struct.hash_desc, %struct.hash_desc* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @PTR_ERR(i32 %19)
  %21 = call i32 @pr_info(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %16, i32 %20)
  %22 = load %struct.hash_desc*, %struct.hash_desc** %3, align 8
  %23 = getelementptr inbounds %struct.hash_desc, %struct.hash_desc* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @PTR_ERR(i32 %24)
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* %4, align 4
  store i32 %26, i32* %2, align 4
  br label %41

27:                                               ; preds = %1
  %28 = load %struct.hash_desc*, %struct.hash_desc** %3, align 8
  %29 = getelementptr inbounds %struct.hash_desc, %struct.hash_desc* %28, i32 0, i32 1
  store i64 0, i64* %29, align 8
  %30 = load %struct.hash_desc*, %struct.hash_desc** %3, align 8
  %31 = call i32 @crypto_hash_init(%struct.hash_desc* %30)
  store i32 %31, i32* %4, align 4
  %32 = load i32, i32* %4, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %27
  %35 = load %struct.hash_desc*, %struct.hash_desc** %3, align 8
  %36 = getelementptr inbounds %struct.hash_desc, %struct.hash_desc* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @crypto_free_hash(i32 %37)
  br label %39

39:                                               ; preds = %34, %27
  %40 = load i32, i32* %4, align 4
  store i32 %40, i32* %2, align 4
  br label %41

41:                                               ; preds = %39, %15
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local i32 @crypto_alloc_hash(i32, i32, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @pr_info(i8*, i32, i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @crypto_hash_init(%struct.hash_desc*) #1

declare dso_local i32 @crypto_free_hash(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
