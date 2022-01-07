; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dst/extr_crypto.c_dst_hash.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dst/extr_crypto.c_dst_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dst_crypto_engine = type { i32, %struct.hash_desc* }
%struct.hash_desc = type { i64, i32 }
%struct.bio = type { i32 }

@dst_hash_iterator = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dst_crypto_engine*, %struct.bio*, i8*)* @dst_hash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dst_hash(%struct.dst_crypto_engine* %0, %struct.bio* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dst_crypto_engine*, align 8
  %6 = alloca %struct.bio*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.hash_desc*, align 8
  %9 = alloca i32, align 4
  store %struct.dst_crypto_engine* %0, %struct.dst_crypto_engine** %5, align 8
  store %struct.bio* %1, %struct.bio** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load %struct.dst_crypto_engine*, %struct.dst_crypto_engine** %5, align 8
  %11 = getelementptr inbounds %struct.dst_crypto_engine, %struct.dst_crypto_engine* %10, i32 0, i32 1
  %12 = load %struct.hash_desc*, %struct.hash_desc** %11, align 8
  store %struct.hash_desc* %12, %struct.hash_desc** %8, align 8
  %13 = load %struct.dst_crypto_engine*, %struct.dst_crypto_engine** %5, align 8
  %14 = getelementptr inbounds %struct.dst_crypto_engine, %struct.dst_crypto_engine* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.hash_desc*, %struct.hash_desc** %8, align 8
  %17 = getelementptr inbounds %struct.hash_desc, %struct.hash_desc* %16, i32 0, i32 1
  store i32 %15, i32* %17, align 8
  %18 = load %struct.hash_desc*, %struct.hash_desc** %8, align 8
  %19 = getelementptr inbounds %struct.hash_desc, %struct.hash_desc* %18, i32 0, i32 0
  store i64 0, i64* %19, align 8
  %20 = load %struct.hash_desc*, %struct.hash_desc** %8, align 8
  %21 = call i32 @crypto_hash_init(%struct.hash_desc* %20)
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %9, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %3
  %25 = load i32, i32* %9, align 4
  store i32 %25, i32* %4, align 4
  br label %44

26:                                               ; preds = %3
  %27 = load %struct.bio*, %struct.bio** %6, align 8
  %28 = load %struct.dst_crypto_engine*, %struct.dst_crypto_engine** %5, align 8
  %29 = load i32, i32* @dst_hash_iterator, align 4
  %30 = call i32 @dst_trans_iter_in(%struct.bio* %27, %struct.dst_crypto_engine* %28, i32 %29)
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %9, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %26
  %34 = load i32, i32* %9, align 4
  store i32 %34, i32* %4, align 4
  br label %44

35:                                               ; preds = %26
  %36 = load %struct.hash_desc*, %struct.hash_desc** %8, align 8
  %37 = load i8*, i8** %7, align 8
  %38 = call i32 @crypto_hash_final(%struct.hash_desc* %36, i8* %37)
  store i32 %38, i32* %9, align 4
  %39 = load i32, i32* %9, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %35
  %42 = load i32, i32* %9, align 4
  store i32 %42, i32* %4, align 4
  br label %44

43:                                               ; preds = %35
  store i32 0, i32* %4, align 4
  br label %44

44:                                               ; preds = %43, %41, %33, %24
  %45 = load i32, i32* %4, align 4
  ret i32 %45
}

declare dso_local i32 @crypto_hash_init(%struct.hash_desc*) #1

declare dso_local i32 @dst_trans_iter_in(%struct.bio*, %struct.dst_crypto_engine*, i32) #1

declare dso_local i32 @crypto_hash_final(%struct.hash_desc*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
