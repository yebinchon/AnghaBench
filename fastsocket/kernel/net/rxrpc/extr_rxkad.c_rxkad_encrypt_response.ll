; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/rxrpc/extr_rxkad.c_rxkad_encrypt_response.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/rxrpc/extr_rxkad.c_rxkad_encrypt_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rxrpc_connection = type { i32 }
%struct.rxkad_response = type { i32 }
%struct.rxkad_key = type { i32 }
%struct.blkcipher_desc = type { i64, i32, i32 }
%struct.rxrpc_crypt = type { i32 }
%struct.scatterlist = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rxrpc_connection*, %struct.rxkad_response*, %struct.rxkad_key*)* @rxkad_encrypt_response to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rxkad_encrypt_response(%struct.rxrpc_connection* %0, %struct.rxkad_response* %1, %struct.rxkad_key* %2) #0 {
  %4 = alloca %struct.rxrpc_connection*, align 8
  %5 = alloca %struct.rxkad_response*, align 8
  %6 = alloca %struct.rxkad_key*, align 8
  %7 = alloca %struct.blkcipher_desc, align 8
  %8 = alloca %struct.rxrpc_crypt, align 4
  %9 = alloca [2 x %struct.scatterlist], align 4
  store %struct.rxrpc_connection* %0, %struct.rxrpc_connection** %4, align 8
  store %struct.rxkad_response* %1, %struct.rxkad_response** %5, align 8
  store %struct.rxkad_key* %2, %struct.rxkad_key** %6, align 8
  %10 = load %struct.rxkad_key*, %struct.rxkad_key** %6, align 8
  %11 = getelementptr inbounds %struct.rxkad_key, %struct.rxkad_key* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @memcpy(%struct.rxrpc_crypt* %8, i32 %12, i32 4)
  %14 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %4, align 8
  %15 = getelementptr inbounds %struct.rxrpc_connection, %struct.rxrpc_connection* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = getelementptr inbounds %struct.blkcipher_desc, %struct.blkcipher_desc* %7, i32 0, i32 2
  store i32 %16, i32* %17, align 4
  %18 = getelementptr inbounds %struct.rxrpc_crypt, %struct.rxrpc_crypt* %8, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = getelementptr inbounds %struct.blkcipher_desc, %struct.blkcipher_desc* %7, i32 0, i32 1
  store i32 %19, i32* %20, align 8
  %21 = getelementptr inbounds %struct.blkcipher_desc, %struct.blkcipher_desc* %7, i32 0, i32 0
  store i64 0, i64* %21, align 8
  %22 = getelementptr inbounds [2 x %struct.scatterlist], [2 x %struct.scatterlist]* %9, i64 0, i64 0
  %23 = load %struct.rxkad_response*, %struct.rxkad_response** %5, align 8
  %24 = getelementptr inbounds %struct.rxkad_response, %struct.rxkad_response* %23, i32 0, i32 0
  %25 = call i32 @rxkad_sg_set_buf2(%struct.scatterlist* %22, i32* %24, i32 4)
  %26 = getelementptr inbounds [2 x %struct.scatterlist], [2 x %struct.scatterlist]* %9, i64 0, i64 0
  %27 = getelementptr inbounds [2 x %struct.scatterlist], [2 x %struct.scatterlist]* %9, i64 0, i64 0
  %28 = call i32 @crypto_blkcipher_encrypt_iv(%struct.blkcipher_desc* %7, %struct.scatterlist* %26, %struct.scatterlist* %27, i32 4)
  ret void
}

declare dso_local i32 @memcpy(%struct.rxrpc_crypt*, i32, i32) #1

declare dso_local i32 @rxkad_sg_set_buf2(%struct.scatterlist*, i32*, i32) #1

declare dso_local i32 @crypto_blkcipher_encrypt_iv(%struct.blkcipher_desc*, %struct.scatterlist*, %struct.scatterlist*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
