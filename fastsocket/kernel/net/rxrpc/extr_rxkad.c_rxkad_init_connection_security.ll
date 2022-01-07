; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/rxrpc/extr_rxkad.c_rxkad_init_connection_security.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/rxrpc/extr_rxkad.c_rxkad_init_connection_security.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rxrpc_connection = type { i32, i32, i32, i32, %struct.crypto_blkcipher*, i32, %struct.TYPE_6__*, i32 }
%struct.crypto_blkcipher = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.rxrpc_key_token* }
%struct.rxrpc_key_token = type { %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"{%d},{%x}\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"pcbc(fcrypt)\00", align 1
@CRYPTO_ALG_ASYNC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"no cipher\00", align 1
@EKEYREJECTED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c" = %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rxrpc_connection*)* @rxkad_init_connection_security to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rxkad_init_connection_security(%struct.rxrpc_connection* %0) #0 {
  %2 = alloca %struct.rxrpc_connection*, align 8
  %3 = alloca %struct.crypto_blkcipher*, align 8
  %4 = alloca %struct.rxrpc_key_token*, align 8
  %5 = alloca i32, align 4
  store %struct.rxrpc_connection* %0, %struct.rxrpc_connection** %2, align 8
  %6 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %2, align 8
  %7 = getelementptr inbounds %struct.rxrpc_connection, %struct.rxrpc_connection* %6, i32 0, i32 7
  %8 = load i32, i32* %7, align 8
  %9 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %2, align 8
  %10 = getelementptr inbounds %struct.rxrpc_connection, %struct.rxrpc_connection* %9, i32 0, i32 6
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %12 = call i32 @key_serial(%struct.TYPE_6__* %11)
  %13 = call i32 @_enter(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %8, i32 %12)
  %14 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %2, align 8
  %15 = getelementptr inbounds %struct.rxrpc_connection, %struct.rxrpc_connection* %14, i32 0, i32 6
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load %struct.rxrpc_key_token*, %struct.rxrpc_key_token** %18, align 8
  store %struct.rxrpc_key_token* %19, %struct.rxrpc_key_token** %4, align 8
  %20 = load %struct.rxrpc_key_token*, %struct.rxrpc_key_token** %4, align 8
  %21 = getelementptr inbounds %struct.rxrpc_key_token, %struct.rxrpc_key_token* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %2, align 8
  %24 = getelementptr inbounds %struct.rxrpc_connection, %struct.rxrpc_connection* %23, i32 0, i32 5
  store i32 %22, i32* %24, align 8
  %25 = load i32, i32* @CRYPTO_ALG_ASYNC, align 4
  %26 = call %struct.crypto_blkcipher* @crypto_alloc_blkcipher(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 0, i32 %25)
  store %struct.crypto_blkcipher* %26, %struct.crypto_blkcipher** %3, align 8
  %27 = load %struct.crypto_blkcipher*, %struct.crypto_blkcipher** %3, align 8
  %28 = call i64 @IS_ERR(%struct.crypto_blkcipher* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %1
  %31 = call i32 @_debug(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %32 = load %struct.crypto_blkcipher*, %struct.crypto_blkcipher** %3, align 8
  %33 = call i32 @PTR_ERR(%struct.crypto_blkcipher* %32)
  store i32 %33, i32* %5, align 4
  br label %79

34:                                               ; preds = %1
  %35 = load %struct.crypto_blkcipher*, %struct.crypto_blkcipher** %3, align 8
  %36 = load %struct.rxrpc_key_token*, %struct.rxrpc_key_token** %4, align 8
  %37 = getelementptr inbounds %struct.rxrpc_key_token, %struct.rxrpc_key_token* %36, i32 0, i32 0
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i64 @crypto_blkcipher_setkey(%struct.crypto_blkcipher* %35, i32 %40, i32 4)
  %42 = icmp slt i64 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %34
  %44 = call i32 (...) @BUG()
  br label %45

45:                                               ; preds = %43, %34
  %46 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %2, align 8
  %47 = getelementptr inbounds %struct.rxrpc_connection, %struct.rxrpc_connection* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  switch i32 %48, label %72 [
    i32 128, label %49
    i32 130, label %50
    i32 129, label %61
  ]

49:                                               ; preds = %45
  br label %75

50:                                               ; preds = %45
  %51 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %2, align 8
  %52 = getelementptr inbounds %struct.rxrpc_connection, %struct.rxrpc_connection* %51, i32 0, i32 1
  store i32 8, i32* %52, align 4
  %53 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %2, align 8
  %54 = getelementptr inbounds %struct.rxrpc_connection, %struct.rxrpc_connection* %53, i32 0, i32 2
  store i32 4, i32* %54, align 8
  %55 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %2, align 8
  %56 = getelementptr inbounds %struct.rxrpc_connection, %struct.rxrpc_connection* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = sext i32 %57 to i64
  %59 = add i64 %58, 4
  %60 = trunc i64 %59 to i32
  store i32 %60, i32* %56, align 4
  br label %75

61:                                               ; preds = %45
  %62 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %2, align 8
  %63 = getelementptr inbounds %struct.rxrpc_connection, %struct.rxrpc_connection* %62, i32 0, i32 1
  store i32 8, i32* %63, align 4
  %64 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %2, align 8
  %65 = getelementptr inbounds %struct.rxrpc_connection, %struct.rxrpc_connection* %64, i32 0, i32 2
  store i32 4, i32* %65, align 8
  %66 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %2, align 8
  %67 = getelementptr inbounds %struct.rxrpc_connection, %struct.rxrpc_connection* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 4
  %69 = sext i32 %68 to i64
  %70 = add i64 %69, 4
  %71 = trunc i64 %70 to i32
  store i32 %71, i32* %67, align 4
  br label %75

72:                                               ; preds = %45
  %73 = load i32, i32* @EKEYREJECTED, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %5, align 4
  br label %79

75:                                               ; preds = %61, %50, %49
  %76 = load %struct.crypto_blkcipher*, %struct.crypto_blkcipher** %3, align 8
  %77 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %2, align 8
  %78 = getelementptr inbounds %struct.rxrpc_connection, %struct.rxrpc_connection* %77, i32 0, i32 4
  store %struct.crypto_blkcipher* %76, %struct.crypto_blkcipher** %78, align 8
  store i32 0, i32* %5, align 4
  br label %79

79:                                               ; preds = %75, %72, %30
  %80 = load i32, i32* %5, align 4
  %81 = call i32 @_leave(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 %80)
  %82 = load i32, i32* %5, align 4
  ret i32 %82
}

declare dso_local i32 @_enter(i8*, i32, i32) #1

declare dso_local i32 @key_serial(%struct.TYPE_6__*) #1

declare dso_local %struct.crypto_blkcipher* @crypto_alloc_blkcipher(i8*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.crypto_blkcipher*) #1

declare dso_local i32 @_debug(i8*) #1

declare dso_local i32 @PTR_ERR(%struct.crypto_blkcipher*) #1

declare dso_local i64 @crypto_blkcipher_setkey(%struct.crypto_blkcipher*, i32, i32) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @_leave(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
