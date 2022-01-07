; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/rxrpc/extr_rxkad.c_rxkad_verify_packet_auth.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/rxrpc/extr_rxkad.c_rxkad_verify_packet_auth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rxrpc_call = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.sk_buff = type { i32 }
%struct.rxkad_level1_hdr = type { i32 }
%struct.rxrpc_skb_priv = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.blkcipher_desc = type { i64, i32, i32 }
%struct.rxrpc_crypt = type { i32 }
%struct.scatterlist = type { i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@RXKADSEALEDINCON = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c" = 0 [dlen=%x]\00", align 1
@RXKADDATALEN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c" = -EPROTO\00", align 1
@EPROTO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [11 x i8] c" = -ENOMEM\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rxrpc_call*, %struct.sk_buff*, i32*)* @rxkad_verify_packet_auth to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rxkad_verify_packet_auth(%struct.rxrpc_call* %0, %struct.sk_buff* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rxrpc_call*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.rxkad_level1_hdr, align 4
  %9 = alloca %struct.rxrpc_skb_priv*, align 8
  %10 = alloca %struct.blkcipher_desc, align 8
  %11 = alloca %struct.rxrpc_crypt, align 4
  %12 = alloca [16 x %struct.scatterlist], align 16
  %13 = alloca %struct.sk_buff*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.rxrpc_call* %0, %struct.rxrpc_call** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store i32* %2, i32** %7, align 8
  %18 = call i32 @_enter(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %19 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %20 = call %struct.rxrpc_skb_priv* @rxrpc_skb(%struct.sk_buff* %19)
  store %struct.rxrpc_skb_priv* %20, %struct.rxrpc_skb_priv** %9, align 8
  %21 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %22 = call i32 @skb_cow_data(%struct.sk_buff* %21, i32 0, %struct.sk_buff** %13)
  store i32 %22, i32* %17, align 4
  %23 = load i32, i32* %17, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %3
  %26 = load i32, i32* %17, align 4
  %27 = icmp sgt i32 %26, 16
  br i1 %27, label %28, label %29

28:                                               ; preds = %25, %3
  br label %115

29:                                               ; preds = %25
  %30 = getelementptr inbounds [16 x %struct.scatterlist], [16 x %struct.scatterlist]* %12, i64 0, i64 0
  %31 = load i32, i32* %17, align 4
  %32 = call i32 @sg_init_table(%struct.scatterlist* %30, i32 %31)
  %33 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %34 = getelementptr inbounds [16 x %struct.scatterlist], [16 x %struct.scatterlist]* %12, i64 0, i64 0
  %35 = call i32 @skb_to_sgvec(%struct.sk_buff* %33, %struct.scatterlist* %34, i32 0, i32 8)
  %36 = call i32 @memset(%struct.rxrpc_crypt* %11, i32 0, i32 4)
  %37 = load %struct.rxrpc_call*, %struct.rxrpc_call** %5, align 8
  %38 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %37, i32 0, i32 0
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = getelementptr inbounds %struct.blkcipher_desc, %struct.blkcipher_desc* %10, i32 0, i32 2
  store i32 %41, i32* %42, align 4
  %43 = getelementptr inbounds %struct.rxrpc_crypt, %struct.rxrpc_crypt* %11, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = getelementptr inbounds %struct.blkcipher_desc, %struct.blkcipher_desc* %10, i32 0, i32 1
  store i32 %44, i32* %45, align 8
  %46 = getelementptr inbounds %struct.blkcipher_desc, %struct.blkcipher_desc* %10, i32 0, i32 0
  store i64 0, i64* %46, align 8
  %47 = getelementptr inbounds [16 x %struct.scatterlist], [16 x %struct.scatterlist]* %12, i64 0, i64 0
  %48 = getelementptr inbounds [16 x %struct.scatterlist], [16 x %struct.scatterlist]* %12, i64 0, i64 0
  %49 = call i32 @crypto_blkcipher_decrypt_iv(%struct.blkcipher_desc* %10, %struct.scatterlist* %47, %struct.scatterlist* %48, i32 8)
  %50 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %51 = call i64 @skb_copy_bits(%struct.sk_buff* %50, i32 0, %struct.rxkad_level1_hdr* %8, i32 4)
  %52 = icmp slt i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %29
  br label %108

54:                                               ; preds = %29
  %55 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %56 = call i32 @skb_pull(%struct.sk_buff* %55, i32 4)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %60, label %58

58:                                               ; preds = %54
  %59 = call i32 (...) @BUG()
  br label %60

60:                                               ; preds = %58, %54
  %61 = getelementptr inbounds %struct.rxkad_level1_hdr, %struct.rxkad_level1_hdr* %8, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @ntohl(i32 %62)
  store i32 %63, i32* %15, align 4
  %64 = load i32, i32* %15, align 4
  %65 = and i32 %64, 65535
  store i32 %65, i32* %14, align 4
  %66 = load i32, i32* %15, align 4
  %67 = ashr i32 %66, 16
  store i32 %67, i32* %16, align 4
  %68 = load %struct.rxrpc_skb_priv*, %struct.rxrpc_skb_priv** %9, align 8
  %69 = getelementptr inbounds %struct.rxrpc_skb_priv, %struct.rxrpc_skb_priv* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.rxrpc_skb_priv*, %struct.rxrpc_skb_priv** %9, align 8
  %73 = getelementptr inbounds %struct.rxrpc_skb_priv, %struct.rxrpc_skb_priv* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = xor i32 %71, %75
  %77 = call i32 @ntohl(i32 %76)
  %78 = load i32, i32* %16, align 4
  %79 = xor i32 %78, %77
  store i32 %79, i32* %16, align 4
  %80 = load i32, i32* %16, align 4
  %81 = and i32 %80, 65535
  store i32 %81, i32* %16, align 4
  %82 = load i32, i32* %16, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %60
  %85 = load i32, i32* @RXKADSEALEDINCON, align 4
  %86 = load i32*, i32** %7, align 8
  store i32 %85, i32* %86, align 4
  br label %111

87:                                               ; preds = %60
  %88 = load i32, i32* %14, align 4
  %89 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %90 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = icmp sgt i32 %88, %91
  br i1 %92, label %93, label %94

93:                                               ; preds = %87
  br label %108

94:                                               ; preds = %87
  %95 = load i32, i32* %14, align 4
  %96 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %97 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = icmp slt i32 %95, %98
  br i1 %99, label %100, label %104

100:                                              ; preds = %94
  %101 = load i32, i32* %14, align 4
  %102 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %103 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %102, i32 0, i32 0
  store i32 %101, i32* %103, align 4
  br label %104

104:                                              ; preds = %100, %94
  br label %105

105:                                              ; preds = %104
  %106 = load i32, i32* %14, align 4
  %107 = call i32 (i8*, ...) @_leave(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %106)
  store i32 0, i32* %4, align 4
  br label %119

108:                                              ; preds = %93, %53
  %109 = load i32, i32* @RXKADDATALEN, align 4
  %110 = load i32*, i32** %7, align 8
  store i32 %109, i32* %110, align 4
  br label %111

111:                                              ; preds = %108, %84
  %112 = call i32 (i8*, ...) @_leave(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %113 = load i32, i32* @EPROTO, align 4
  %114 = sub nsw i32 0, %113
  store i32 %114, i32* %4, align 4
  br label %119

115:                                              ; preds = %28
  %116 = call i32 (i8*, ...) @_leave(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  %117 = load i32, i32* @ENOMEM, align 4
  %118 = sub nsw i32 0, %117
  store i32 %118, i32* %4, align 4
  br label %119

119:                                              ; preds = %115, %111, %105
  %120 = load i32, i32* %4, align 4
  ret i32 %120
}

declare dso_local i32 @_enter(i8*) #1

declare dso_local %struct.rxrpc_skb_priv* @rxrpc_skb(%struct.sk_buff*) #1

declare dso_local i32 @skb_cow_data(%struct.sk_buff*, i32, %struct.sk_buff**) #1

declare dso_local i32 @sg_init_table(%struct.scatterlist*, i32) #1

declare dso_local i32 @skb_to_sgvec(%struct.sk_buff*, %struct.scatterlist*, i32, i32) #1

declare dso_local i32 @memset(%struct.rxrpc_crypt*, i32, i32) #1

declare dso_local i32 @crypto_blkcipher_decrypt_iv(%struct.blkcipher_desc*, %struct.scatterlist*, %struct.scatterlist*, i32) #1

declare dso_local i64 @skb_copy_bits(%struct.sk_buff*, i32, %struct.rxkad_level1_hdr*, i32) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @_leave(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
