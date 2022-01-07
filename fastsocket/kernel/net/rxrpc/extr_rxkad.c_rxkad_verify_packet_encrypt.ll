; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/rxrpc/extr_rxkad.c_rxkad_verify_packet_encrypt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/rxrpc/extr_rxkad.c_rxkad_verify_packet_encrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rxrpc_call = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.rxrpc_key_token* }
%struct.rxrpc_key_token = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.sk_buff = type { i32 }
%struct.rxkad_level2_hdr = type { i32 }
%struct.rxrpc_skb_priv = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32 }
%struct.blkcipher_desc = type { i64, i32, i32 }
%struct.rxrpc_crypt = type { i32 }
%struct.scatterlist = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c",{%d}\00", align 1
@GFP_NOIO = common dso_local global i32 0, align 4
@RXKADSEALEDINCON = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c" = 0 [dlen=%x]\00", align 1
@RXKADDATALEN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c" = -EPROTO\00", align 1
@EPROTO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [11 x i8] c" = -ENOMEM\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rxrpc_call*, %struct.sk_buff*, i32*)* @rxkad_verify_packet_encrypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rxkad_verify_packet_encrypt(%struct.rxrpc_call* %0, %struct.sk_buff* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rxrpc_call*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.rxrpc_key_token*, align 8
  %9 = alloca %struct.rxkad_level2_hdr, align 4
  %10 = alloca %struct.rxrpc_skb_priv*, align 8
  %11 = alloca %struct.blkcipher_desc, align 8
  %12 = alloca %struct.rxrpc_crypt, align 4
  %13 = alloca [4 x %struct.scatterlist], align 16
  %14 = alloca %struct.scatterlist*, align 8
  %15 = alloca %struct.sk_buff*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.rxrpc_call* %0, %struct.rxrpc_call** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store i32* %2, i32** %7, align 8
  %20 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %21 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @_enter(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %25 = call %struct.rxrpc_skb_priv* @rxrpc_skb(%struct.sk_buff* %24)
  store %struct.rxrpc_skb_priv* %25, %struct.rxrpc_skb_priv** %10, align 8
  %26 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %27 = call i32 @skb_cow_data(%struct.sk_buff* %26, i32 0, %struct.sk_buff** %15)
  store i32 %27, i32* %19, align 4
  %28 = load i32, i32* %19, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %3
  br label %161

31:                                               ; preds = %3
  %32 = getelementptr inbounds [4 x %struct.scatterlist], [4 x %struct.scatterlist]* %13, i64 0, i64 0
  store %struct.scatterlist* %32, %struct.scatterlist** %14, align 8
  %33 = load i32, i32* %19, align 4
  %34 = icmp sgt i32 %33, 4
  %35 = zext i1 %34 to i32
  %36 = call i64 @unlikely(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %49

38:                                               ; preds = %31
  %39 = load i32, i32* %19, align 4
  %40 = sext i32 %39 to i64
  %41 = mul i64 4, %40
  %42 = trunc i64 %41 to i32
  %43 = load i32, i32* @GFP_NOIO, align 4
  %44 = call %struct.scatterlist* @kmalloc(i32 %42, i32 %43)
  store %struct.scatterlist* %44, %struct.scatterlist** %14, align 8
  %45 = load %struct.scatterlist*, %struct.scatterlist** %14, align 8
  %46 = icmp ne %struct.scatterlist* %45, null
  br i1 %46, label %48, label %47

47:                                               ; preds = %38
  br label %161

48:                                               ; preds = %38
  br label %49

49:                                               ; preds = %48, %31
  %50 = load %struct.scatterlist*, %struct.scatterlist** %14, align 8
  %51 = load i32, i32* %19, align 4
  %52 = call i32 @sg_init_table(%struct.scatterlist* %50, i32 %51)
  %53 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %54 = load %struct.scatterlist*, %struct.scatterlist** %14, align 8
  %55 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %56 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @skb_to_sgvec(%struct.sk_buff* %53, %struct.scatterlist* %54, i32 0, i32 %57)
  %59 = load %struct.rxrpc_call*, %struct.rxrpc_call** %5, align 8
  %60 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %59, i32 0, i32 0
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 1
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = load %struct.rxrpc_key_token*, %struct.rxrpc_key_token** %65, align 8
  store %struct.rxrpc_key_token* %66, %struct.rxrpc_key_token** %8, align 8
  %67 = load %struct.rxrpc_key_token*, %struct.rxrpc_key_token** %8, align 8
  %68 = getelementptr inbounds %struct.rxrpc_key_token, %struct.rxrpc_key_token* %67, i32 0, i32 0
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @memcpy(%struct.rxrpc_crypt* %12, i32 %71, i32 4)
  %73 = load %struct.rxrpc_call*, %struct.rxrpc_call** %5, align 8
  %74 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %73, i32 0, i32 0
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = getelementptr inbounds %struct.blkcipher_desc, %struct.blkcipher_desc* %11, i32 0, i32 2
  store i32 %77, i32* %78, align 4
  %79 = getelementptr inbounds %struct.rxrpc_crypt, %struct.rxrpc_crypt* %12, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = getelementptr inbounds %struct.blkcipher_desc, %struct.blkcipher_desc* %11, i32 0, i32 1
  store i32 %80, i32* %81, align 8
  %82 = getelementptr inbounds %struct.blkcipher_desc, %struct.blkcipher_desc* %11, i32 0, i32 0
  store i64 0, i64* %82, align 8
  %83 = load %struct.scatterlist*, %struct.scatterlist** %14, align 8
  %84 = load %struct.scatterlist*, %struct.scatterlist** %14, align 8
  %85 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %86 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @crypto_blkcipher_decrypt_iv(%struct.blkcipher_desc* %11, %struct.scatterlist* %83, %struct.scatterlist* %84, i32 %87)
  %89 = load %struct.scatterlist*, %struct.scatterlist** %14, align 8
  %90 = getelementptr inbounds [4 x %struct.scatterlist], [4 x %struct.scatterlist]* %13, i64 0, i64 0
  %91 = icmp ne %struct.scatterlist* %89, %90
  br i1 %91, label %92, label %95

92:                                               ; preds = %49
  %93 = load %struct.scatterlist*, %struct.scatterlist** %14, align 8
  %94 = call i32 @kfree(%struct.scatterlist* %93)
  br label %95

95:                                               ; preds = %92, %49
  %96 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %97 = call i64 @skb_copy_bits(%struct.sk_buff* %96, i32 0, %struct.rxkad_level2_hdr* %9, i32 4)
  %98 = icmp slt i64 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %95
  br label %154

100:                                              ; preds = %95
  %101 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %102 = call i32 @skb_pull(%struct.sk_buff* %101, i32 4)
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %106, label %104

104:                                              ; preds = %100
  %105 = call i32 (...) @BUG()
  br label %106

106:                                              ; preds = %104, %100
  %107 = getelementptr inbounds %struct.rxkad_level2_hdr, %struct.rxkad_level2_hdr* %9, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @ntohl(i32 %108)
  store i32 %109, i32* %17, align 4
  %110 = load i32, i32* %17, align 4
  %111 = and i32 %110, 65535
  store i32 %111, i32* %16, align 4
  %112 = load i32, i32* %17, align 4
  %113 = ashr i32 %112, 16
  store i32 %113, i32* %18, align 4
  %114 = load %struct.rxrpc_skb_priv*, %struct.rxrpc_skb_priv** %10, align 8
  %115 = getelementptr inbounds %struct.rxrpc_skb_priv, %struct.rxrpc_skb_priv* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.rxrpc_skb_priv*, %struct.rxrpc_skb_priv** %10, align 8
  %119 = getelementptr inbounds %struct.rxrpc_skb_priv, %struct.rxrpc_skb_priv* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = xor i32 %117, %121
  %123 = call i32 @ntohl(i32 %122)
  %124 = load i32, i32* %18, align 4
  %125 = xor i32 %124, %123
  store i32 %125, i32* %18, align 4
  %126 = load i32, i32* %18, align 4
  %127 = and i32 %126, 65535
  store i32 %127, i32* %18, align 4
  %128 = load i32, i32* %18, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %133

130:                                              ; preds = %106
  %131 = load i32, i32* @RXKADSEALEDINCON, align 4
  %132 = load i32*, i32** %7, align 8
  store i32 %131, i32* %132, align 4
  br label %157

133:                                              ; preds = %106
  %134 = load i32, i32* %16, align 4
  %135 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %136 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = icmp sgt i32 %134, %137
  br i1 %138, label %139, label %140

139:                                              ; preds = %133
  br label %154

140:                                              ; preds = %133
  %141 = load i32, i32* %16, align 4
  %142 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %143 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = icmp slt i32 %141, %144
  br i1 %145, label %146, label %150

146:                                              ; preds = %140
  %147 = load i32, i32* %16, align 4
  %148 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %149 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %148, i32 0, i32 0
  store i32 %147, i32* %149, align 4
  br label %150

150:                                              ; preds = %146, %140
  br label %151

151:                                              ; preds = %150
  %152 = load i32, i32* %16, align 4
  %153 = call i32 (i8*, ...) @_leave(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %152)
  store i32 0, i32* %4, align 4
  br label %165

154:                                              ; preds = %139, %99
  %155 = load i32, i32* @RXKADDATALEN, align 4
  %156 = load i32*, i32** %7, align 8
  store i32 %155, i32* %156, align 4
  br label %157

157:                                              ; preds = %154, %130
  %158 = call i32 (i8*, ...) @_leave(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %159 = load i32, i32* @EPROTO, align 4
  %160 = sub nsw i32 0, %159
  store i32 %160, i32* %4, align 4
  br label %165

161:                                              ; preds = %47, %30
  %162 = call i32 (i8*, ...) @_leave(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  %163 = load i32, i32* @ENOMEM, align 4
  %164 = sub nsw i32 0, %163
  store i32 %164, i32* %4, align 4
  br label %165

165:                                              ; preds = %161, %157, %151
  %166 = load i32, i32* %4, align 4
  ret i32 %166
}

declare dso_local i32 @_enter(i8*, i32) #1

declare dso_local %struct.rxrpc_skb_priv* @rxrpc_skb(%struct.sk_buff*) #1

declare dso_local i32 @skb_cow_data(%struct.sk_buff*, i32, %struct.sk_buff**) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.scatterlist* @kmalloc(i32, i32) #1

declare dso_local i32 @sg_init_table(%struct.scatterlist*, i32) #1

declare dso_local i32 @skb_to_sgvec(%struct.sk_buff*, %struct.scatterlist*, i32, i32) #1

declare dso_local i32 @memcpy(%struct.rxrpc_crypt*, i32, i32) #1

declare dso_local i32 @crypto_blkcipher_decrypt_iv(%struct.blkcipher_desc*, %struct.scatterlist*, %struct.scatterlist*, i32) #1

declare dso_local i32 @kfree(%struct.scatterlist*) #1

declare dso_local i64 @skb_copy_bits(%struct.sk_buff*, i32, %struct.rxkad_level2_hdr*, i32) #1

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
