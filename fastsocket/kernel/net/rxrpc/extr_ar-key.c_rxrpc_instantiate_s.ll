; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/rxrpc/extr_ar-key.c_rxrpc_instantiate_s.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/rxrpc/extr_ar-key.c_rxrpc_instantiate_s.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.key = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { %struct.crypto_blkcipher* }
%struct.crypto_blkcipher = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"{%x},,%zu\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"pcbc(des)\00", align 1
@CRYPTO_ALG_ASYNC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c" = %ld\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c" = 0\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.key*, i8*, i64)* @rxrpc_instantiate_s to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rxrpc_instantiate_s(%struct.key* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.key*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.crypto_blkcipher*, align 8
  store %struct.key* %0, %struct.key** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load %struct.key*, %struct.key** %5, align 8
  %10 = call i32 @key_serial(%struct.key* %9)
  %11 = load i64, i64* %7, align 8
  %12 = call i32 @_enter(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %10, i64 %11)
  %13 = load i64, i64* %7, align 8
  %14 = icmp ne i64 %13, 8
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %47

18:                                               ; preds = %3
  %19 = load %struct.key*, %struct.key** %5, align 8
  %20 = getelementptr inbounds %struct.key, %struct.key* %19, i32 0, i32 1
  %21 = load i8*, i8** %6, align 8
  %22 = call i32 @memcpy(i32* %20, i8* %21, i32 8)
  %23 = load i32, i32* @CRYPTO_ALG_ASYNC, align 4
  %24 = call %struct.crypto_blkcipher* @crypto_alloc_blkcipher(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 0, i32 %23)
  store %struct.crypto_blkcipher* %24, %struct.crypto_blkcipher** %8, align 8
  %25 = load %struct.crypto_blkcipher*, %struct.crypto_blkcipher** %8, align 8
  %26 = call i64 @IS_ERR(%struct.crypto_blkcipher* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %18
  %29 = load %struct.crypto_blkcipher*, %struct.crypto_blkcipher** %8, align 8
  %30 = call i32 @PTR_ERR(%struct.crypto_blkcipher* %29)
  %31 = call i32 (i8*, ...) @_leave(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %30)
  %32 = load %struct.crypto_blkcipher*, %struct.crypto_blkcipher** %8, align 8
  %33 = call i32 @PTR_ERR(%struct.crypto_blkcipher* %32)
  store i32 %33, i32* %4, align 4
  br label %47

34:                                               ; preds = %18
  %35 = load %struct.crypto_blkcipher*, %struct.crypto_blkcipher** %8, align 8
  %36 = load i8*, i8** %6, align 8
  %37 = call i64 @crypto_blkcipher_setkey(%struct.crypto_blkcipher* %35, i8* %36, i32 8)
  %38 = icmp slt i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %34
  %40 = call i32 (...) @BUG()
  br label %41

41:                                               ; preds = %39, %34
  %42 = load %struct.crypto_blkcipher*, %struct.crypto_blkcipher** %8, align 8
  %43 = load %struct.key*, %struct.key** %5, align 8
  %44 = getelementptr inbounds %struct.key, %struct.key* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  store %struct.crypto_blkcipher* %42, %struct.crypto_blkcipher** %45, align 8
  %46 = call i32 (i8*, ...) @_leave(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %47

47:                                               ; preds = %41, %28, %15
  %48 = load i32, i32* %4, align 4
  ret i32 %48
}

declare dso_local i32 @_enter(i8*, i32, i64) #1

declare dso_local i32 @key_serial(%struct.key*) #1

declare dso_local i32 @memcpy(i32*, i8*, i32) #1

declare dso_local %struct.crypto_blkcipher* @crypto_alloc_blkcipher(i8*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.crypto_blkcipher*) #1

declare dso_local i32 @_leave(i8*, ...) #1

declare dso_local i32 @PTR_ERR(%struct.crypto_blkcipher*) #1

declare dso_local i64 @crypto_blkcipher_setkey(%struct.crypto_blkcipher*, i8*, i32) #1

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
