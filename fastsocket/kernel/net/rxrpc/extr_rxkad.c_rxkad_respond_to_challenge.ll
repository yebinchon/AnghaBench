; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/rxrpc/extr_rxkad.c_rxkad_respond_to_challenge.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/rxrpc/extr_rxkad.c_rxkad_respond_to_challenge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rxrpc_connection = type { i64, i64, %struct.TYPE_10__**, i32, i32, %struct.TYPE_14__*, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_14__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.rxrpc_key_token* }
%struct.rxrpc_key_token = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i64, i64 }
%struct.sk_buff = type { i32 }
%struct.rxkad_challenge = type { i32, i32, i32 }
%struct.rxkad_response = type { i8*, i8*, %struct.TYPE_11__, i64 }
%struct.TYPE_11__ = type { i8*, i8*, i32*, i8*, i32, i32 }
%struct.rxrpc_skb_priv = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"{%d,%x}\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c" = -EPROTO [no key]\00", align 1
@EPROTO = common dso_local global i32 0, align 4
@RXKADEXPIRED = common dso_local global i64 0, align 8
@RXKADPACKETSHORT = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [38 x i8] c"Rx CHALLENGE %%%u { v=%u n=%u ml=%u }\00", align 1
@RXKADINCONSISTENCY = common dso_local global i64 0, align 8
@RXKAD_VERSION = common dso_local global i64 0, align 8
@RXKADLEVELFAIL = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [16 x i8] c" = -EPROTO [%d]\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rxrpc_connection*, %struct.sk_buff*, i64*)* @rxkad_respond_to_challenge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rxkad_respond_to_challenge(%struct.rxrpc_connection* %0, %struct.sk_buff* %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rxrpc_connection*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.rxrpc_key_token*, align 8
  %9 = alloca %struct.rxkad_challenge, align 4
  %10 = alloca %struct.rxkad_response, align 8
  %11 = alloca %struct.rxrpc_skb_priv*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store %struct.rxrpc_connection* %0, %struct.rxrpc_connection** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store i64* %2, i64** %7, align 8
  %17 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %5, align 8
  %18 = getelementptr inbounds %struct.rxrpc_connection, %struct.rxrpc_connection* %17, i32 0, i32 6
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %5, align 8
  %21 = getelementptr inbounds %struct.rxrpc_connection, %struct.rxrpc_connection* %20, i32 0, i32 5
  %22 = load %struct.TYPE_14__*, %struct.TYPE_14__** %21, align 8
  %23 = call i32 @key_serial(%struct.TYPE_14__* %22)
  %24 = call i32 @_enter(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %19, i32 %23)
  %25 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %5, align 8
  %26 = getelementptr inbounds %struct.rxrpc_connection, %struct.rxrpc_connection* %25, i32 0, i32 5
  %27 = load %struct.TYPE_14__*, %struct.TYPE_14__** %26, align 8
  %28 = icmp ne %struct.TYPE_14__* %27, null
  br i1 %28, label %33, label %29

29:                                               ; preds = %3
  %30 = call i32 (i8*, ...) @_leave(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %31 = load i32, i32* @EPROTO, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %4, align 4
  br label %239

33:                                               ; preds = %3
  %34 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %5, align 8
  %35 = getelementptr inbounds %struct.rxrpc_connection, %struct.rxrpc_connection* %34, i32 0, i32 5
  %36 = load %struct.TYPE_14__*, %struct.TYPE_14__** %35, align 8
  %37 = call i32 @key_validate(%struct.TYPE_14__* %36)
  store i32 %37, i32* %16, align 4
  %38 = load i32, i32* %16, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %33
  %41 = load i64, i64* @RXKADEXPIRED, align 8
  %42 = load i64*, i64** %7, align 8
  store i64 %41, i64* %42, align 8
  %43 = load i32, i32* %16, align 4
  store i32 %43, i32* %4, align 4
  br label %239

44:                                               ; preds = %33
  %45 = load i64, i64* @RXKADPACKETSHORT, align 8
  store i64 %45, i64* %15, align 8
  %46 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %47 = call %struct.rxrpc_skb_priv* @rxrpc_skb(%struct.sk_buff* %46)
  store %struct.rxrpc_skb_priv* %47, %struct.rxrpc_skb_priv** %11, align 8
  %48 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %49 = call i64 @skb_copy_bits(%struct.sk_buff* %48, i32 0, %struct.rxkad_challenge* %9, i32 12)
  %50 = icmp slt i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %44
  br label %232

52:                                               ; preds = %44
  %53 = getelementptr inbounds %struct.rxkad_challenge, %struct.rxkad_challenge* %9, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = call i64 @ntohl(i32 %54)
  store i64 %55, i64* %12, align 8
  %56 = getelementptr inbounds %struct.rxkad_challenge, %struct.rxkad_challenge* %9, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i64 @ntohl(i32 %57)
  store i64 %58, i64* %13, align 8
  %59 = getelementptr inbounds %struct.rxkad_challenge, %struct.rxkad_challenge* %9, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i64 @ntohl(i32 %60)
  store i64 %61, i64* %14, align 8
  %62 = load %struct.rxrpc_skb_priv*, %struct.rxrpc_skb_priv** %11, align 8
  %63 = getelementptr inbounds %struct.rxrpc_skb_priv, %struct.rxrpc_skb_priv* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i64 @ntohl(i32 %65)
  %67 = load i64, i64* %12, align 8
  %68 = load i64, i64* %13, align 8
  %69 = load i64, i64* %14, align 8
  %70 = call i32 @_proto(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i64 %66, i64 %67, i64 %68, i64 %69)
  %71 = load i64, i64* @RXKADINCONSISTENCY, align 8
  store i64 %71, i64* %15, align 8
  %72 = load i64, i64* %12, align 8
  %73 = load i64, i64* @RXKAD_VERSION, align 8
  %74 = icmp ne i64 %72, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %52
  br label %232

76:                                               ; preds = %52
  %77 = load i64, i64* @RXKADLEVELFAIL, align 8
  store i64 %77, i64* %15, align 8
  %78 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %5, align 8
  %79 = getelementptr inbounds %struct.rxrpc_connection, %struct.rxrpc_connection* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* %14, align 8
  %82 = icmp slt i64 %80, %81
  br i1 %82, label %83, label %84

83:                                               ; preds = %76
  br label %232

84:                                               ; preds = %76
  %85 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %5, align 8
  %86 = getelementptr inbounds %struct.rxrpc_connection, %struct.rxrpc_connection* %85, i32 0, i32 5
  %87 = load %struct.TYPE_14__*, %struct.TYPE_14__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 0
  %90 = load %struct.rxrpc_key_token*, %struct.rxrpc_key_token** %89, align 8
  store %struct.rxrpc_key_token* %90, %struct.rxrpc_key_token** %8, align 8
  %91 = call i32 @memset(%struct.rxkad_response* %10, i32 0, i32 64)
  %92 = load i64, i64* @RXKAD_VERSION, align 8
  %93 = getelementptr inbounds %struct.rxkad_response, %struct.rxkad_response* %10, i32 0, i32 3
  store i64 %92, i64* %93, align 8
  %94 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %5, align 8
  %95 = getelementptr inbounds %struct.rxrpc_connection, %struct.rxrpc_connection* %94, i32 0, i32 4
  %96 = load i32, i32* %95, align 4
  %97 = getelementptr inbounds %struct.rxkad_response, %struct.rxkad_response* %10, i32 0, i32 2
  %98 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %97, i32 0, i32 5
  store i32 %96, i32* %98, align 4
  %99 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %5, align 8
  %100 = getelementptr inbounds %struct.rxrpc_connection, %struct.rxrpc_connection* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 8
  %102 = getelementptr inbounds %struct.rxkad_response, %struct.rxkad_response* %10, i32 0, i32 2
  %103 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %102, i32 0, i32 4
  store i32 %101, i32* %103, align 8
  %104 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %5, align 8
  %105 = getelementptr inbounds %struct.rxrpc_connection, %struct.rxrpc_connection* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = call i8* @htonl(i64 %106)
  %108 = getelementptr inbounds %struct.rxkad_response, %struct.rxkad_response* %10, i32 0, i32 2
  %109 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %108, i32 0, i32 3
  store i8* %107, i8** %109, align 8
  %110 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %5, align 8
  %111 = getelementptr inbounds %struct.rxrpc_connection, %struct.rxrpc_connection* %110, i32 0, i32 2
  %112 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %112, i64 0
  %114 = load %struct.TYPE_10__*, %struct.TYPE_10__** %113, align 8
  %115 = icmp ne %struct.TYPE_10__* %114, null
  br i1 %115, label %116, label %124

116:                                              ; preds = %84
  %117 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %5, align 8
  %118 = getelementptr inbounds %struct.rxrpc_connection, %struct.rxrpc_connection* %117, i32 0, i32 2
  %119 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %119, i64 0
  %121 = load %struct.TYPE_10__*, %struct.TYPE_10__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  br label %125

124:                                              ; preds = %84
  br label %125

125:                                              ; preds = %124, %116
  %126 = phi i32 [ %123, %116 ], [ 0, %124 ]
  %127 = getelementptr inbounds %struct.rxkad_response, %struct.rxkad_response* %10, i32 0, i32 2
  %128 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %127, i32 0, i32 2
  %129 = load i32*, i32** %128, align 8
  %130 = getelementptr inbounds i32, i32* %129, i64 0
  store i32 %126, i32* %130, align 4
  %131 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %5, align 8
  %132 = getelementptr inbounds %struct.rxrpc_connection, %struct.rxrpc_connection* %131, i32 0, i32 2
  %133 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %133, i64 1
  %135 = load %struct.TYPE_10__*, %struct.TYPE_10__** %134, align 8
  %136 = icmp ne %struct.TYPE_10__* %135, null
  br i1 %136, label %137, label %145

137:                                              ; preds = %125
  %138 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %5, align 8
  %139 = getelementptr inbounds %struct.rxrpc_connection, %struct.rxrpc_connection* %138, i32 0, i32 2
  %140 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %140, i64 1
  %142 = load %struct.TYPE_10__*, %struct.TYPE_10__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  br label %146

145:                                              ; preds = %125
  br label %146

146:                                              ; preds = %145, %137
  %147 = phi i32 [ %144, %137 ], [ 0, %145 ]
  %148 = getelementptr inbounds %struct.rxkad_response, %struct.rxkad_response* %10, i32 0, i32 2
  %149 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %148, i32 0, i32 2
  %150 = load i32*, i32** %149, align 8
  %151 = getelementptr inbounds i32, i32* %150, i64 1
  store i32 %147, i32* %151, align 4
  %152 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %5, align 8
  %153 = getelementptr inbounds %struct.rxrpc_connection, %struct.rxrpc_connection* %152, i32 0, i32 2
  %154 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %154, i64 2
  %156 = load %struct.TYPE_10__*, %struct.TYPE_10__** %155, align 8
  %157 = icmp ne %struct.TYPE_10__* %156, null
  br i1 %157, label %158, label %166

158:                                              ; preds = %146
  %159 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %5, align 8
  %160 = getelementptr inbounds %struct.rxrpc_connection, %struct.rxrpc_connection* %159, i32 0, i32 2
  %161 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %161, i64 2
  %163 = load %struct.TYPE_10__*, %struct.TYPE_10__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  br label %167

166:                                              ; preds = %146
  br label %167

167:                                              ; preds = %166, %158
  %168 = phi i32 [ %165, %158 ], [ 0, %166 ]
  %169 = getelementptr inbounds %struct.rxkad_response, %struct.rxkad_response* %10, i32 0, i32 2
  %170 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %169, i32 0, i32 2
  %171 = load i32*, i32** %170, align 8
  %172 = getelementptr inbounds i32, i32* %171, i64 2
  store i32 %168, i32* %172, align 4
  %173 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %5, align 8
  %174 = getelementptr inbounds %struct.rxrpc_connection, %struct.rxrpc_connection* %173, i32 0, i32 2
  %175 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %175, i64 3
  %177 = load %struct.TYPE_10__*, %struct.TYPE_10__** %176, align 8
  %178 = icmp ne %struct.TYPE_10__* %177, null
  br i1 %178, label %179, label %187

179:                                              ; preds = %167
  %180 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %5, align 8
  %181 = getelementptr inbounds %struct.rxrpc_connection, %struct.rxrpc_connection* %180, i32 0, i32 2
  %182 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %182, i64 3
  %184 = load %struct.TYPE_10__*, %struct.TYPE_10__** %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 4
  br label %188

187:                                              ; preds = %167
  br label %188

188:                                              ; preds = %187, %179
  %189 = phi i32 [ %186, %179 ], [ 0, %187 ]
  %190 = getelementptr inbounds %struct.rxkad_response, %struct.rxkad_response* %10, i32 0, i32 2
  %191 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %190, i32 0, i32 2
  %192 = load i32*, i32** %191, align 8
  %193 = getelementptr inbounds i32, i32* %192, i64 3
  store i32 %189, i32* %193, align 4
  %194 = load i64, i64* %13, align 8
  %195 = add nsw i64 %194, 1
  %196 = call i8* @htonl(i64 %195)
  %197 = getelementptr inbounds %struct.rxkad_response, %struct.rxkad_response* %10, i32 0, i32 2
  %198 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %197, i32 0, i32 1
  store i8* %196, i8** %198, align 8
  %199 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %5, align 8
  %200 = getelementptr inbounds %struct.rxrpc_connection, %struct.rxrpc_connection* %199, i32 0, i32 0
  %201 = load i64, i64* %200, align 8
  %202 = call i8* @htonl(i64 %201)
  %203 = getelementptr inbounds %struct.rxkad_response, %struct.rxkad_response* %10, i32 0, i32 2
  %204 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %203, i32 0, i32 0
  store i8* %202, i8** %204, align 8
  %205 = load %struct.rxrpc_key_token*, %struct.rxrpc_key_token** %8, align 8
  %206 = getelementptr inbounds %struct.rxrpc_key_token, %struct.rxrpc_key_token* %205, i32 0, i32 0
  %207 = load %struct.TYPE_13__*, %struct.TYPE_13__** %206, align 8
  %208 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %207, i32 0, i32 0
  %209 = load i64, i64* %208, align 8
  %210 = call i8* @htonl(i64 %209)
  %211 = getelementptr inbounds %struct.rxkad_response, %struct.rxkad_response* %10, i32 0, i32 1
  store i8* %210, i8** %211, align 8
  %212 = load %struct.rxrpc_key_token*, %struct.rxrpc_key_token** %8, align 8
  %213 = getelementptr inbounds %struct.rxrpc_key_token, %struct.rxrpc_key_token* %212, i32 0, i32 0
  %214 = load %struct.TYPE_13__*, %struct.TYPE_13__** %213, align 8
  %215 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %214, i32 0, i32 1
  %216 = load i64, i64* %215, align 8
  %217 = call i8* @htonl(i64 %216)
  %218 = getelementptr inbounds %struct.rxkad_response, %struct.rxkad_response* %10, i32 0, i32 0
  store i8* %217, i8** %218, align 8
  %219 = call i32 @rxkad_calc_response_checksum(%struct.rxkad_response* %10)
  %220 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %5, align 8
  %221 = load %struct.rxrpc_key_token*, %struct.rxrpc_key_token** %8, align 8
  %222 = getelementptr inbounds %struct.rxrpc_key_token, %struct.rxrpc_key_token* %221, i32 0, i32 0
  %223 = load %struct.TYPE_13__*, %struct.TYPE_13__** %222, align 8
  %224 = call i32 @rxkad_encrypt_response(%struct.rxrpc_connection* %220, %struct.rxkad_response* %10, %struct.TYPE_13__* %223)
  %225 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %5, align 8
  %226 = load %struct.rxrpc_skb_priv*, %struct.rxrpc_skb_priv** %11, align 8
  %227 = getelementptr inbounds %struct.rxrpc_skb_priv, %struct.rxrpc_skb_priv* %226, i32 0, i32 0
  %228 = load %struct.rxrpc_key_token*, %struct.rxrpc_key_token** %8, align 8
  %229 = getelementptr inbounds %struct.rxrpc_key_token, %struct.rxrpc_key_token* %228, i32 0, i32 0
  %230 = load %struct.TYPE_13__*, %struct.TYPE_13__** %229, align 8
  %231 = call i32 @rxkad_send_response(%struct.rxrpc_connection* %225, %struct.TYPE_12__* %227, %struct.rxkad_response* %10, %struct.TYPE_13__* %230)
  store i32 %231, i32* %4, align 4
  br label %239

232:                                              ; preds = %83, %75, %51
  %233 = load i64, i64* %15, align 8
  %234 = load i64*, i64** %7, align 8
  store i64 %233, i64* %234, align 8
  %235 = load i64, i64* %15, align 8
  %236 = call i32 (i8*, ...) @_leave(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i64 %235)
  %237 = load i32, i32* @EPROTO, align 4
  %238 = sub nsw i32 0, %237
  store i32 %238, i32* %4, align 4
  br label %239

239:                                              ; preds = %232, %188, %40, %29
  %240 = load i32, i32* %4, align 4
  ret i32 %240
}

declare dso_local i32 @_enter(i8*, i32, i32) #1

declare dso_local i32 @key_serial(%struct.TYPE_14__*) #1

declare dso_local i32 @_leave(i8*, ...) #1

declare dso_local i32 @key_validate(%struct.TYPE_14__*) #1

declare dso_local %struct.rxrpc_skb_priv* @rxrpc_skb(%struct.sk_buff*) #1

declare dso_local i64 @skb_copy_bits(%struct.sk_buff*, i32, %struct.rxkad_challenge*, i32) #1

declare dso_local i64 @ntohl(i32) #1

declare dso_local i32 @_proto(i8*, i64, i64, i64, i64) #1

declare dso_local i32 @memset(%struct.rxkad_response*, i32, i32) #1

declare dso_local i8* @htonl(i64) #1

declare dso_local i32 @rxkad_calc_response_checksum(%struct.rxkad_response*) #1

declare dso_local i32 @rxkad_encrypt_response(%struct.rxrpc_connection*, %struct.rxkad_response*, %struct.TYPE_13__*) #1

declare dso_local i32 @rxkad_send_response(%struct.rxrpc_connection*, %struct.TYPE_12__*, %struct.rxkad_response*, %struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
