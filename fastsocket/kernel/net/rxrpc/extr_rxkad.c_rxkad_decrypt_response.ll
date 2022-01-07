; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/rxrpc/extr_rxkad.c_rxkad_decrypt_response.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/rxrpc/extr_rxkad.c_rxkad_decrypt_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rxrpc_connection = type { i32 }
%struct.rxkad_response = type { i32 }
%struct.rxrpc_crypt = type { i32, i32* }
%struct.blkcipher_desc = type { i64, i32, i32* }
%struct.scatterlist = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c",,%08x%08x\00", align 1
@rxkad_ci = common dso_local global i32* null, align 8
@rxkad_ci_mutex = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rxrpc_connection*, %struct.rxkad_response*, %struct.rxrpc_crypt*)* @rxkad_decrypt_response to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rxkad_decrypt_response(%struct.rxrpc_connection* %0, %struct.rxkad_response* %1, %struct.rxrpc_crypt* %2) #0 {
  %4 = alloca %struct.rxrpc_connection*, align 8
  %5 = alloca %struct.rxkad_response*, align 8
  %6 = alloca %struct.rxrpc_crypt*, align 8
  %7 = alloca %struct.blkcipher_desc, align 8
  %8 = alloca [2 x %struct.scatterlist], align 4
  %9 = alloca %struct.rxrpc_crypt, align 8
  store %struct.rxrpc_connection* %0, %struct.rxrpc_connection** %4, align 8
  store %struct.rxkad_response* %1, %struct.rxkad_response** %5, align 8
  store %struct.rxrpc_crypt* %2, %struct.rxrpc_crypt** %6, align 8
  %10 = load %struct.rxrpc_crypt*, %struct.rxrpc_crypt** %6, align 8
  %11 = getelementptr inbounds %struct.rxrpc_crypt, %struct.rxrpc_crypt* %10, i32 0, i32 1
  %12 = load i32*, i32** %11, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @ntohl(i32 %14)
  %16 = load %struct.rxrpc_crypt*, %struct.rxrpc_crypt** %6, align 8
  %17 = getelementptr inbounds %struct.rxrpc_crypt, %struct.rxrpc_crypt* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @ntohl(i32 %20)
  %22 = call i32 @_enter(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %15, i32 %21)
  %23 = load i32*, i32** @rxkad_ci, align 8
  %24 = icmp ne i32* %23, null
  %25 = zext i1 %24 to i32
  %26 = call i32 @ASSERT(i32 %25)
  %27 = call i32 @mutex_lock(i32* @rxkad_ci_mutex)
  %28 = load i32*, i32** @rxkad_ci, align 8
  %29 = load %struct.rxrpc_crypt*, %struct.rxrpc_crypt** %6, align 8
  %30 = getelementptr inbounds %struct.rxrpc_crypt, %struct.rxrpc_crypt* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i64 @crypto_blkcipher_setkey(i32* %28, i32 %31, i32 16)
  %33 = icmp slt i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %3
  %35 = call i32 (...) @BUG()
  br label %36

36:                                               ; preds = %34, %3
  %37 = load %struct.rxrpc_crypt*, %struct.rxrpc_crypt** %6, align 8
  %38 = call i32 @memcpy(%struct.rxrpc_crypt* %9, %struct.rxrpc_crypt* %37, i32 16)
  %39 = load i32*, i32** @rxkad_ci, align 8
  %40 = getelementptr inbounds %struct.blkcipher_desc, %struct.blkcipher_desc* %7, i32 0, i32 2
  store i32* %39, i32** %40, align 8
  %41 = getelementptr inbounds %struct.rxrpc_crypt, %struct.rxrpc_crypt* %9, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = getelementptr inbounds %struct.blkcipher_desc, %struct.blkcipher_desc* %7, i32 0, i32 1
  store i32 %42, i32* %43, align 8
  %44 = getelementptr inbounds %struct.blkcipher_desc, %struct.blkcipher_desc* %7, i32 0, i32 0
  store i64 0, i64* %44, align 8
  %45 = getelementptr inbounds [2 x %struct.scatterlist], [2 x %struct.scatterlist]* %8, i64 0, i64 0
  %46 = load %struct.rxkad_response*, %struct.rxkad_response** %5, align 8
  %47 = getelementptr inbounds %struct.rxkad_response, %struct.rxkad_response* %46, i32 0, i32 0
  %48 = call i32 @rxkad_sg_set_buf2(%struct.scatterlist* %45, i32* %47, i32 4)
  %49 = getelementptr inbounds [2 x %struct.scatterlist], [2 x %struct.scatterlist]* %8, i64 0, i64 0
  %50 = getelementptr inbounds [2 x %struct.scatterlist], [2 x %struct.scatterlist]* %8, i64 0, i64 0
  %51 = call i32 @crypto_blkcipher_decrypt_iv(%struct.blkcipher_desc* %7, %struct.scatterlist* %49, %struct.scatterlist* %50, i32 4)
  %52 = call i32 @mutex_unlock(i32* @rxkad_ci_mutex)
  %53 = call i32 @_leave(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

declare dso_local i32 @_enter(i8*, i32, i32) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @crypto_blkcipher_setkey(i32*, i32, i32) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @memcpy(%struct.rxrpc_crypt*, %struct.rxrpc_crypt*, i32) #1

declare dso_local i32 @rxkad_sg_set_buf2(%struct.scatterlist*, i32*, i32) #1

declare dso_local i32 @crypto_blkcipher_decrypt_iv(%struct.blkcipher_desc*, %struct.scatterlist*, %struct.scatterlist*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @_leave(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
