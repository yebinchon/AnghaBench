; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_svc.c_svc_process_common.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_svc.c_svc_process_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.svc_procedure*, %struct.TYPE_6__*, i32, %struct.svc_serv* }
%struct.svc_procedure = type { i64 (%struct.svc_rqst*, i32, i32)*, i32, i32 (%struct.svc_rqst*, i8*, i32)*, i32 (%struct.svc_rqst*, i32*, i32)*, i32 (%struct.svc_rqst*, i8*, i32)*, i32, i32, i32 }
%struct.TYPE_6__ = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.svc_rqst*)* }
%struct.svc_serv = type { %struct.TYPE_5__*, %struct.svc_program* }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.svc_program = type { i32, i32 (%struct.svc_rqst*)*, i32, i32, i32, i32, %struct.svc_version**, %struct.svc_program* }
%struct.svc_version = type { i32, i32 (%struct.svc_rqst.0*, i64*)*, %struct.svc_procedure* }
%struct.svc_rqst.0 = type opaque
%struct.kvec = type { i32, i8* }

@rpc_success = common dso_local global i64 0, align 8
@rpc_autherr_badcred = common dso_local global i64 0, align 8
@rpc_system_err = common dso_local global i64 0, align 8
@XPT_TEMP = common dso_local global i32 0, align 4
@RPC_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"svc: failed to encode reply\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"svc: calling dispatcher\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"svc: svc_process dropit\0A\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"short len %Zd, dropping request\0A\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"svc: authentication failed (%d)\0A\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"svc: unknown program %d\0A\00", align 1
@RPC_PROG_UNAVAIL = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [38 x i8] c"unknown version (%d for prog %d, %s)\0A\00", align 1
@RPC_PROG_MISMATCH = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [24 x i8] c"unknown procedure (%d)\0A\00", align 1
@RPC_PROC_UNAVAIL = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [23 x i8] c"failed to decode args\0A\00", align 1
@rpc_garbage_args = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.svc_rqst*, %struct.kvec*, %struct.kvec*)* @svc_process_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @svc_process_common(%struct.svc_rqst* %0, %struct.kvec* %1, %struct.kvec* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.svc_rqst*, align 8
  %6 = alloca %struct.kvec*, align 8
  %7 = alloca %struct.kvec*, align 8
  %8 = alloca %struct.svc_program*, align 8
  %9 = alloca %struct.svc_version*, align 8
  %10 = alloca %struct.svc_procedure*, align 8
  %11 = alloca %struct.svc_serv*, align 8
  %12 = alloca i32 (%struct.svc_rqst*, i8*, i32)*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i64*, align 8
  store %struct.svc_rqst* %0, %struct.svc_rqst** %5, align 8
  store %struct.kvec* %1, %struct.kvec** %6, align 8
  store %struct.kvec* %2, %struct.kvec** %7, align 8
  store %struct.svc_version* null, %struct.svc_version** %9, align 8
  store %struct.svc_procedure* null, %struct.svc_procedure** %10, align 8
  %21 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %22 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %21, i32 0, i32 11
  %23 = load %struct.svc_serv*, %struct.svc_serv** %22, align 8
  store %struct.svc_serv* %23, %struct.svc_serv** %11, align 8
  %24 = load i64, i64* @rpc_success, align 8
  store i64 %24, i64* %18, align 8
  %25 = load %struct.kvec*, %struct.kvec** %6, align 8
  %26 = getelementptr inbounds %struct.kvec, %struct.kvec* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp slt i32 %27, 24
  br i1 %28, label %29, label %30

29:                                               ; preds = %3
  br label %391

30:                                               ; preds = %3
  %31 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %32 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %31, i32 0, i32 0
  store i32 1, i32* %32, align 8
  %33 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %34 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %33, i32 0, i32 1
  store i32 1, i32* %34, align 4
  %35 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %36 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %35, i32 0, i32 2
  store i32 0, i32* %36, align 8
  %37 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %38 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %37, i32 0, i32 9
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 1
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32 (%struct.svc_rqst*)*, i32 (%struct.svc_rqst*)** %42, align 8
  %44 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %45 = call i32 %43(%struct.svc_rqst* %44)
  %46 = load %struct.kvec*, %struct.kvec** %7, align 8
  %47 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %48 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %47, i32 0, i32 10
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @svc_putu32(%struct.kvec* %46, i32 %49)
  %51 = load %struct.kvec*, %struct.kvec** %6, align 8
  %52 = call i32 @svc_getnl(%struct.kvec* %51)
  store i32 %52, i32* %15, align 4
  %53 = load %struct.kvec*, %struct.kvec** %7, align 8
  %54 = call i32 @svc_putnl(%struct.kvec* %53, i32 1)
  %55 = load i32, i32* %15, align 4
  %56 = icmp ne i32 %55, 2
  br i1 %56, label %57, label %58

57:                                               ; preds = %30
  br label %397

58:                                               ; preds = %30
  %59 = load %struct.kvec*, %struct.kvec** %7, align 8
  %60 = getelementptr inbounds %struct.kvec, %struct.kvec* %59, i32 0, i32 1
  %61 = load i8*, i8** %60, align 8
  %62 = load %struct.kvec*, %struct.kvec** %7, align 8
  %63 = getelementptr inbounds %struct.kvec, %struct.kvec* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = sext i32 %64 to i64
  %66 = getelementptr i8, i8* %61, i64 %65
  %67 = bitcast i8* %66 to i64*
  store i64* %67, i64** %20, align 8
  %68 = load %struct.kvec*, %struct.kvec** %7, align 8
  %69 = call i32 @svc_putnl(%struct.kvec* %68, i32 0)
  %70 = load %struct.kvec*, %struct.kvec** %6, align 8
  %71 = call i32 @svc_getnl(%struct.kvec* %70)
  store i32 %71, i32* %14, align 4
  %72 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %73 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %72, i32 0, i32 3
  store i32 %71, i32* %73, align 4
  %74 = load %struct.kvec*, %struct.kvec** %6, align 8
  %75 = call i32 @svc_getnl(%struct.kvec* %74)
  store i32 %75, i32* %15, align 4
  %76 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %77 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %76, i32 0, i32 4
  store i32 %75, i32* %77, align 8
  %78 = load %struct.kvec*, %struct.kvec** %6, align 8
  %79 = call i32 @svc_getnl(%struct.kvec* %78)
  store i32 %79, i32* %16, align 4
  %80 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %81 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %80, i32 0, i32 5
  store i32 %79, i32* %81, align 4
  %82 = load %struct.svc_serv*, %struct.svc_serv** %11, align 8
  %83 = getelementptr inbounds %struct.svc_serv, %struct.svc_serv* %82, i32 0, i32 1
  %84 = load %struct.svc_program*, %struct.svc_program** %83, align 8
  store %struct.svc_program* %84, %struct.svc_program** %8, align 8
  %85 = load %struct.svc_serv*, %struct.svc_serv** %11, align 8
  %86 = getelementptr inbounds %struct.svc_serv, %struct.svc_serv* %85, i32 0, i32 1
  %87 = load %struct.svc_program*, %struct.svc_program** %86, align 8
  store %struct.svc_program* %87, %struct.svc_program** %8, align 8
  br label %88

88:                                               ; preds = %99, %58
  %89 = load %struct.svc_program*, %struct.svc_program** %8, align 8
  %90 = icmp ne %struct.svc_program* %89, null
  br i1 %90, label %91, label %103

91:                                               ; preds = %88
  %92 = load i32, i32* %14, align 4
  %93 = load %struct.svc_program*, %struct.svc_program** %8, align 8
  %94 = getelementptr inbounds %struct.svc_program, %struct.svc_program* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = icmp eq i32 %92, %95
  br i1 %96, label %97, label %98

97:                                               ; preds = %91
  br label %103

98:                                               ; preds = %91
  br label %99

99:                                               ; preds = %98
  %100 = load %struct.svc_program*, %struct.svc_program** %8, align 8
  %101 = getelementptr inbounds %struct.svc_program, %struct.svc_program* %100, i32 0, i32 7
  %102 = load %struct.svc_program*, %struct.svc_program** %101, align 8
  store %struct.svc_program* %102, %struct.svc_program** %8, align 8
  br label %88

103:                                              ; preds = %97, %88
  %104 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %105 = call i32 @svc_authenticate(%struct.svc_rqst* %104, i64* %17)
  store i32 %105, i32* %19, align 4
  %106 = load i32, i32* %19, align 4
  %107 = icmp eq i32 %106, 129
  br i1 %107, label %108, label %118

108:                                              ; preds = %103
  %109 = load %struct.svc_program*, %struct.svc_program** %8, align 8
  %110 = icmp ne %struct.svc_program* %109, null
  br i1 %110, label %111, label %118

111:                                              ; preds = %108
  %112 = load i64, i64* @rpc_autherr_badcred, align 8
  store i64 %112, i64* %17, align 8
  %113 = load %struct.svc_program*, %struct.svc_program** %8, align 8
  %114 = getelementptr inbounds %struct.svc_program, %struct.svc_program* %113, i32 0, i32 1
  %115 = load i32 (%struct.svc_rqst*)*, i32 (%struct.svc_rqst*)** %114, align 8
  %116 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %117 = call i32 %115(%struct.svc_rqst* %116)
  store i32 %117, i32* %19, align 4
  br label %118

118:                                              ; preds = %111, %108, %103
  %119 = load i32, i32* %19, align 4
  switch i32 %119, label %141 [
    i32 129, label %120
    i32 130, label %121
    i32 128, label %122
    i32 132, label %124
    i32 134, label %125
    i32 131, label %139
    i32 133, label %140
  ]

120:                                              ; preds = %118
  br label %141

121:                                              ; preds = %118
  br label %485

122:                                              ; preds = %118
  %123 = load i64, i64* @rpc_system_err, align 8
  store i64 %123, i64* %18, align 8
  br label %489

124:                                              ; preds = %118
  br label %412

125:                                              ; preds = %118
  %126 = load i32, i32* @XPT_TEMP, align 4
  %127 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %128 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %127, i32 0, i32 9
  %129 = load %struct.TYPE_6__*, %struct.TYPE_6__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 0
  %131 = call i32 @test_bit(i32 %126, i32* %130)
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %138

133:                                              ; preds = %125
  %134 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %135 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %134, i32 0, i32 9
  %136 = load %struct.TYPE_6__*, %struct.TYPE_6__** %135, align 8
  %137 = call i32 @svc_close_xprt(%struct.TYPE_6__* %136)
  br label %138

138:                                              ; preds = %133, %125
  br label %139

139:                                              ; preds = %118, %138
  br label %387

140:                                              ; preds = %118
  br label %381

141:                                              ; preds = %118, %120
  %142 = load %struct.svc_program*, %struct.svc_program** %8, align 8
  %143 = icmp eq %struct.svc_program* %142, null
  br i1 %143, label %144, label %145

144:                                              ; preds = %141
  br label %433

145:                                              ; preds = %141
  %146 = load i32, i32* %15, align 4
  %147 = load %struct.svc_program*, %struct.svc_program** %8, align 8
  %148 = getelementptr inbounds %struct.svc_program, %struct.svc_program* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 8
  %150 = icmp sge i32 %146, %149
  br i1 %150, label %160, label %151

151:                                              ; preds = %145
  %152 = load %struct.svc_program*, %struct.svc_program** %8, align 8
  %153 = getelementptr inbounds %struct.svc_program, %struct.svc_program* %152, i32 0, i32 6
  %154 = load %struct.svc_version**, %struct.svc_version*** %153, align 8
  %155 = load i32, i32* %15, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds %struct.svc_version*, %struct.svc_version** %154, i64 %156
  %158 = load %struct.svc_version*, %struct.svc_version** %157, align 8
  store %struct.svc_version* %158, %struct.svc_version** %9, align 8
  %159 = icmp ne %struct.svc_version* %158, null
  br i1 %159, label %161, label %160

160:                                              ; preds = %151, %145
  br label %445

161:                                              ; preds = %151
  %162 = load %struct.svc_version*, %struct.svc_version** %9, align 8
  %163 = getelementptr inbounds %struct.svc_version, %struct.svc_version* %162, i32 0, i32 2
  %164 = load %struct.svc_procedure*, %struct.svc_procedure** %163, align 8
  %165 = load i32, i32* %16, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds %struct.svc_procedure, %struct.svc_procedure* %164, i64 %166
  store %struct.svc_procedure* %167, %struct.svc_procedure** %10, align 8
  %168 = load i32, i32* %16, align 4
  %169 = load %struct.svc_version*, %struct.svc_version** %9, align 8
  %170 = getelementptr inbounds %struct.svc_version, %struct.svc_version* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = icmp sge i32 %168, %171
  br i1 %172, label %178, label %173

173:                                              ; preds = %161
  %174 = load %struct.svc_procedure*, %struct.svc_procedure** %10, align 8
  %175 = getelementptr inbounds %struct.svc_procedure, %struct.svc_procedure* %174, i32 0, i32 0
  %176 = load i64 (%struct.svc_rqst*, i32, i32)*, i64 (%struct.svc_rqst*, i32, i32)** %175, align 8
  %177 = icmp ne i64 (%struct.svc_rqst*, i32, i32)* %176, null
  br i1 %177, label %179, label %178

178:                                              ; preds = %173, %161
  br label %472

179:                                              ; preds = %173
  %180 = load %struct.svc_procedure*, %struct.svc_procedure** %10, align 8
  %181 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %182 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %181, i32 0, i32 8
  store %struct.svc_procedure* %180, %struct.svc_procedure** %182, align 8
  %183 = load %struct.svc_serv*, %struct.svc_serv** %11, align 8
  %184 = getelementptr inbounds %struct.svc_serv, %struct.svc_serv* %183, i32 0, i32 0
  %185 = load %struct.TYPE_5__*, %struct.TYPE_5__** %184, align 8
  %186 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %185, i32 0, i32 2
  %187 = load i32, i32* %186, align 4
  %188 = add nsw i32 %187, 1
  store i32 %188, i32* %186, align 4
  %189 = load %struct.kvec*, %struct.kvec** %7, align 8
  %190 = getelementptr inbounds %struct.kvec, %struct.kvec* %189, i32 0, i32 1
  %191 = load i8*, i8** %190, align 8
  %192 = load %struct.kvec*, %struct.kvec** %7, align 8
  %193 = getelementptr inbounds %struct.kvec, %struct.kvec* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 8
  %195 = sext i32 %194 to i64
  %196 = getelementptr i8, i8* %191, i64 %195
  %197 = bitcast i8* %196 to i64*
  store i64* %197, i64** %13, align 8
  %198 = load %struct.kvec*, %struct.kvec** %7, align 8
  %199 = load i32, i32* @RPC_SUCCESS, align 4
  %200 = call i32 @svc_putnl(%struct.kvec* %198, i32 %199)
  %201 = load %struct.svc_procedure*, %struct.svc_procedure** %10, align 8
  %202 = getelementptr inbounds %struct.svc_procedure, %struct.svc_procedure* %201, i32 0, i32 7
  %203 = load i32, i32* %202, align 8
  %204 = add nsw i32 %203, 1
  store i32 %204, i32* %202, align 8
  %205 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %206 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %205, i32 0, i32 7
  %207 = load i32, i32* %206, align 4
  %208 = load %struct.svc_procedure*, %struct.svc_procedure** %10, align 8
  %209 = getelementptr inbounds %struct.svc_procedure, %struct.svc_procedure* %208, i32 0, i32 6
  %210 = load i32, i32* %209, align 4
  %211 = call i32 @memset(i32 %207, i32 0, i32 %210)
  %212 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %213 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %212, i32 0, i32 6
  %214 = load i32, i32* %213, align 8
  %215 = load %struct.svc_procedure*, %struct.svc_procedure** %10, align 8
  %216 = getelementptr inbounds %struct.svc_procedure, %struct.svc_procedure* %215, i32 0, i32 5
  %217 = load i32, i32* %216, align 8
  %218 = call i32 @memset(i32 %214, i32 0, i32 %217)
  %219 = load %struct.svc_procedure*, %struct.svc_procedure** %10, align 8
  %220 = getelementptr inbounds %struct.svc_procedure, %struct.svc_procedure* %219, i32 0, i32 1
  %221 = load i32, i32* %220, align 8
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %230

223:                                              ; preds = %179
  %224 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %225 = load %struct.svc_procedure*, %struct.svc_procedure** %10, align 8
  %226 = getelementptr inbounds %struct.svc_procedure, %struct.svc_procedure* %225, i32 0, i32 1
  %227 = load i32, i32* %226, align 8
  %228 = shl i32 %227, 2
  %229 = call i32 @svc_reserve_auth(%struct.svc_rqst* %224, i32 %228)
  br label %230

230:                                              ; preds = %223, %179
  %231 = load %struct.svc_version*, %struct.svc_version** %9, align 8
  %232 = getelementptr inbounds %struct.svc_version, %struct.svc_version* %231, i32 0, i32 1
  %233 = load i32 (%struct.svc_rqst.0*, i64*)*, i32 (%struct.svc_rqst.0*, i64*)** %232, align 8
  %234 = icmp ne i32 (%struct.svc_rqst.0*, i64*)* %233, null
  br i1 %234, label %316, label %235

235:                                              ; preds = %230
  %236 = load %struct.svc_procedure*, %struct.svc_procedure** %10, align 8
  %237 = getelementptr inbounds %struct.svc_procedure, %struct.svc_procedure* %236, i32 0, i32 4
  %238 = load i32 (%struct.svc_rqst*, i8*, i32)*, i32 (%struct.svc_rqst*, i8*, i32)** %237, align 8
  store i32 (%struct.svc_rqst*, i8*, i32)* %238, i32 (%struct.svc_rqst*, i8*, i32)** %12, align 8
  %239 = load i32 (%struct.svc_rqst*, i8*, i32)*, i32 (%struct.svc_rqst*, i8*, i32)** %12, align 8
  %240 = icmp ne i32 (%struct.svc_rqst*, i8*, i32)* %239, null
  br i1 %240, label %241, label %253

241:                                              ; preds = %235
  %242 = load i32 (%struct.svc_rqst*, i8*, i32)*, i32 (%struct.svc_rqst*, i8*, i32)** %12, align 8
  %243 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %244 = load %struct.kvec*, %struct.kvec** %6, align 8
  %245 = getelementptr inbounds %struct.kvec, %struct.kvec* %244, i32 0, i32 1
  %246 = load i8*, i8** %245, align 8
  %247 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %248 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %247, i32 0, i32 7
  %249 = load i32, i32* %248, align 4
  %250 = call i32 %242(%struct.svc_rqst* %243, i8* %246, i32 %249)
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %253, label %252

252:                                              ; preds = %241
  br label %485

253:                                              ; preds = %241, %235
  %254 = load %struct.svc_procedure*, %struct.svc_procedure** %10, align 8
  %255 = getelementptr inbounds %struct.svc_procedure, %struct.svc_procedure* %254, i32 0, i32 0
  %256 = load i64 (%struct.svc_rqst*, i32, i32)*, i64 (%struct.svc_rqst*, i32, i32)** %255, align 8
  %257 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %258 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %259 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %258, i32 0, i32 7
  %260 = load i32, i32* %259, align 4
  %261 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %262 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %261, i32 0, i32 6
  %263 = load i32, i32* %262, align 8
  %264 = call i64 %256(%struct.svc_rqst* %257, i32 %260, i32 %263)
  %265 = load i64*, i64** %13, align 8
  store i64 %264, i64* %265, align 8
  %266 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %267 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %266, i32 0, i32 2
  %268 = load i32, i32* %267, align 8
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %270, label %285

270:                                              ; preds = %253
  %271 = load %struct.svc_procedure*, %struct.svc_procedure** %10, align 8
  %272 = getelementptr inbounds %struct.svc_procedure, %struct.svc_procedure* %271, i32 0, i32 3
  %273 = load i32 (%struct.svc_rqst*, i32*, i32)*, i32 (%struct.svc_rqst*, i32*, i32)** %272, align 8
  %274 = icmp ne i32 (%struct.svc_rqst*, i32*, i32)* %273, null
  br i1 %274, label %275, label %284

275:                                              ; preds = %270
  %276 = load %struct.svc_procedure*, %struct.svc_procedure** %10, align 8
  %277 = getelementptr inbounds %struct.svc_procedure, %struct.svc_procedure* %276, i32 0, i32 3
  %278 = load i32 (%struct.svc_rqst*, i32*, i32)*, i32 (%struct.svc_rqst*, i32*, i32)** %277, align 8
  %279 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %280 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %281 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %280, i32 0, i32 6
  %282 = load i32, i32* %281, align 8
  %283 = call i32 %278(%struct.svc_rqst* %279, i32* null, i32 %282)
  br label %284

284:                                              ; preds = %275, %270
  br label %387

285:                                              ; preds = %253
  %286 = load i64*, i64** %13, align 8
  %287 = load i64, i64* %286, align 8
  %288 = load i64, i64* @rpc_success, align 8
  %289 = icmp eq i64 %287, %288
  br i1 %289, label %290, label %315

290:                                              ; preds = %285
  %291 = load %struct.svc_procedure*, %struct.svc_procedure** %10, align 8
  %292 = getelementptr inbounds %struct.svc_procedure, %struct.svc_procedure* %291, i32 0, i32 2
  %293 = load i32 (%struct.svc_rqst*, i8*, i32)*, i32 (%struct.svc_rqst*, i8*, i32)** %292, align 8
  store i32 (%struct.svc_rqst*, i8*, i32)* %293, i32 (%struct.svc_rqst*, i8*, i32)** %12, align 8
  %294 = icmp ne i32 (%struct.svc_rqst*, i8*, i32)* %293, null
  br i1 %294, label %295, label %315

295:                                              ; preds = %290
  %296 = load i32 (%struct.svc_rqst*, i8*, i32)*, i32 (%struct.svc_rqst*, i8*, i32)** %12, align 8
  %297 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %298 = load %struct.kvec*, %struct.kvec** %7, align 8
  %299 = getelementptr inbounds %struct.kvec, %struct.kvec* %298, i32 0, i32 1
  %300 = load i8*, i8** %299, align 8
  %301 = load %struct.kvec*, %struct.kvec** %7, align 8
  %302 = getelementptr inbounds %struct.kvec, %struct.kvec* %301, i32 0, i32 0
  %303 = load i32, i32* %302, align 8
  %304 = sext i32 %303 to i64
  %305 = getelementptr i8, i8* %300, i64 %304
  %306 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %307 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %306, i32 0, i32 6
  %308 = load i32, i32* %307, align 8
  %309 = call i32 %296(%struct.svc_rqst* %297, i8* %305, i32 %308)
  %310 = icmp ne i32 %309, 0
  br i1 %310, label %315, label %311

311:                                              ; preds = %295
  %312 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %313 = load i64, i64* @rpc_system_err, align 8
  %314 = load i64*, i64** %13, align 8
  store i64 %313, i64* %314, align 8
  br label %315

315:                                              ; preds = %311, %295, %290, %285
  br label %342

316:                                              ; preds = %230
  %317 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %318 = load %struct.svc_version*, %struct.svc_version** %9, align 8
  %319 = getelementptr inbounds %struct.svc_version, %struct.svc_version* %318, i32 0, i32 1
  %320 = load i32 (%struct.svc_rqst.0*, i64*)*, i32 (%struct.svc_rqst.0*, i64*)** %319, align 8
  %321 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %322 = bitcast %struct.svc_rqst* %321 to %struct.svc_rqst.0*
  %323 = load i64*, i64** %13, align 8
  %324 = call i32 %320(%struct.svc_rqst.0* %322, i64* %323)
  %325 = icmp ne i32 %324, 0
  br i1 %325, label %341, label %326

326:                                              ; preds = %316
  %327 = load %struct.svc_procedure*, %struct.svc_procedure** %10, align 8
  %328 = getelementptr inbounds %struct.svc_procedure, %struct.svc_procedure* %327, i32 0, i32 3
  %329 = load i32 (%struct.svc_rqst*, i32*, i32)*, i32 (%struct.svc_rqst*, i32*, i32)** %328, align 8
  %330 = icmp ne i32 (%struct.svc_rqst*, i32*, i32)* %329, null
  br i1 %330, label %331, label %340

331:                                              ; preds = %326
  %332 = load %struct.svc_procedure*, %struct.svc_procedure** %10, align 8
  %333 = getelementptr inbounds %struct.svc_procedure, %struct.svc_procedure* %332, i32 0, i32 3
  %334 = load i32 (%struct.svc_rqst*, i32*, i32)*, i32 (%struct.svc_rqst*, i32*, i32)** %333, align 8
  %335 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %336 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %337 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %336, i32 0, i32 6
  %338 = load i32, i32* %337, align 8
  %339 = call i32 %334(%struct.svc_rqst* %335, i32* null, i32 %338)
  br label %340

340:                                              ; preds = %331, %326
  br label %387

341:                                              ; preds = %316
  br label %342

342:                                              ; preds = %341, %315
  %343 = load i64*, i64** %13, align 8
  %344 = load i64, i64* %343, align 8
  %345 = load i64, i64* @rpc_success, align 8
  %346 = icmp ne i64 %344, %345
  br i1 %346, label %347, label %360

347:                                              ; preds = %342
  %348 = load i64*, i64** %13, align 8
  %349 = bitcast i64* %348 to i8*
  %350 = load %struct.kvec*, %struct.kvec** %7, align 8
  %351 = getelementptr inbounds %struct.kvec, %struct.kvec* %350, i32 0, i32 1
  %352 = load i8*, i8** %351, align 8
  %353 = ptrtoint i8* %349 to i64
  %354 = ptrtoint i8* %352 to i64
  %355 = sub i64 %353, %354
  %356 = add nsw i64 %355, 4
  %357 = trunc i64 %356 to i32
  %358 = load %struct.kvec*, %struct.kvec** %7, align 8
  %359 = getelementptr inbounds %struct.kvec, %struct.kvec* %358, i32 0, i32 0
  store i32 %357, i32* %359, align 8
  br label %360

360:                                              ; preds = %347, %342
  %361 = load %struct.svc_procedure*, %struct.svc_procedure** %10, align 8
  %362 = getelementptr inbounds %struct.svc_procedure, %struct.svc_procedure* %361, i32 0, i32 3
  %363 = load i32 (%struct.svc_rqst*, i32*, i32)*, i32 (%struct.svc_rqst*, i32*, i32)** %362, align 8
  %364 = icmp ne i32 (%struct.svc_rqst*, i32*, i32)* %363, null
  br i1 %364, label %365, label %374

365:                                              ; preds = %360
  %366 = load %struct.svc_procedure*, %struct.svc_procedure** %10, align 8
  %367 = getelementptr inbounds %struct.svc_procedure, %struct.svc_procedure* %366, i32 0, i32 3
  %368 = load i32 (%struct.svc_rqst*, i32*, i32)*, i32 (%struct.svc_rqst*, i32*, i32)** %367, align 8
  %369 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %370 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %371 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %370, i32 0, i32 6
  %372 = load i32, i32* %371, align 8
  %373 = call i32 %368(%struct.svc_rqst* %369, i32* null, i32 %372)
  br label %374

374:                                              ; preds = %365, %360
  %375 = load %struct.svc_procedure*, %struct.svc_procedure** %10, align 8
  %376 = getelementptr inbounds %struct.svc_procedure, %struct.svc_procedure* %375, i32 0, i32 2
  %377 = load i32 (%struct.svc_rqst*, i8*, i32)*, i32 (%struct.svc_rqst*, i8*, i32)** %376, align 8
  %378 = icmp eq i32 (%struct.svc_rqst*, i8*, i32)* %377, null
  br i1 %378, label %379, label %380

379:                                              ; preds = %374
  br label %387

380:                                              ; preds = %374
  br label %381

381:                                              ; preds = %489, %472, %445, %433, %412, %397, %380, %140
  %382 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %383 = call i64 @svc_authorise(%struct.svc_rqst* %382)
  %384 = icmp ne i64 %383, 0
  br i1 %384, label %385, label %386

385:                                              ; preds = %381
  br label %387

386:                                              ; preds = %381
  store i32 1, i32* %4, align 4
  br label %500

387:                                              ; preds = %391, %385, %379, %340, %284, %139
  %388 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %389 = call i64 @svc_authorise(%struct.svc_rqst* %388)
  %390 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %500

391:                                              ; preds = %29
  %392 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %393 = load %struct.kvec*, %struct.kvec** %6, align 8
  %394 = getelementptr inbounds %struct.kvec, %struct.kvec* %393, i32 0, i32 0
  %395 = load i32, i32* %394, align 8
  %396 = call i32 (%struct.svc_rqst*, i8*, ...) @svc_printk(%struct.svc_rqst* %392, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32 %395)
  br label %387

397:                                              ; preds = %57
  %398 = load %struct.svc_serv*, %struct.svc_serv** %11, align 8
  %399 = getelementptr inbounds %struct.svc_serv, %struct.svc_serv* %398, i32 0, i32 0
  %400 = load %struct.TYPE_5__*, %struct.TYPE_5__** %399, align 8
  %401 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %400, i32 0, i32 0
  %402 = load i32, i32* %401, align 4
  %403 = add nsw i32 %402, 1
  store i32 %403, i32* %401, align 4
  %404 = load %struct.kvec*, %struct.kvec** %7, align 8
  %405 = call i32 @svc_putnl(%struct.kvec* %404, i32 1)
  %406 = load %struct.kvec*, %struct.kvec** %7, align 8
  %407 = call i32 @svc_putnl(%struct.kvec* %406, i32 0)
  %408 = load %struct.kvec*, %struct.kvec** %7, align 8
  %409 = call i32 @svc_putnl(%struct.kvec* %408, i32 2)
  %410 = load %struct.kvec*, %struct.kvec** %7, align 8
  %411 = call i32 @svc_putnl(%struct.kvec* %410, i32 2)
  br label %381

412:                                              ; preds = %124
  %413 = load i64, i64* %17, align 8
  %414 = call i32 @ntohl(i64 %413)
  %415 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i32 %414)
  %416 = load %struct.svc_serv*, %struct.svc_serv** %11, align 8
  %417 = getelementptr inbounds %struct.svc_serv, %struct.svc_serv* %416, i32 0, i32 0
  %418 = load %struct.TYPE_5__*, %struct.TYPE_5__** %417, align 8
  %419 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %418, i32 0, i32 1
  %420 = load i32, i32* %419, align 4
  %421 = add nsw i32 %420, 1
  store i32 %421, i32* %419, align 4
  %422 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %423 = load i64*, i64** %20, align 8
  %424 = call i32 @xdr_ressize_check(%struct.svc_rqst* %422, i64* %423)
  %425 = load %struct.kvec*, %struct.kvec** %7, align 8
  %426 = call i32 @svc_putnl(%struct.kvec* %425, i32 1)
  %427 = load %struct.kvec*, %struct.kvec** %7, align 8
  %428 = call i32 @svc_putnl(%struct.kvec* %427, i32 1)
  %429 = load %struct.kvec*, %struct.kvec** %7, align 8
  %430 = load i64, i64* %17, align 8
  %431 = call i32 @ntohl(i64 %430)
  %432 = call i32 @svc_putnl(%struct.kvec* %429, i32 %431)
  br label %381

433:                                              ; preds = %144
  %434 = load i32, i32* %14, align 4
  %435 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0), i32 %434)
  %436 = load %struct.svc_serv*, %struct.svc_serv** %11, align 8
  %437 = getelementptr inbounds %struct.svc_serv, %struct.svc_serv* %436, i32 0, i32 0
  %438 = load %struct.TYPE_5__*, %struct.TYPE_5__** %437, align 8
  %439 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %438, i32 0, i32 0
  %440 = load i32, i32* %439, align 4
  %441 = add nsw i32 %440, 1
  store i32 %441, i32* %439, align 4
  %442 = load %struct.kvec*, %struct.kvec** %7, align 8
  %443 = load i32, i32* @RPC_PROG_UNAVAIL, align 4
  %444 = call i32 @svc_putnl(%struct.kvec* %442, i32 %443)
  br label %381

445:                                              ; preds = %160
  %446 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %447 = load i32, i32* %15, align 4
  %448 = load i32, i32* %14, align 4
  %449 = load %struct.svc_program*, %struct.svc_program** %8, align 8
  %450 = getelementptr inbounds %struct.svc_program, %struct.svc_program* %449, i32 0, i32 5
  %451 = load i32, i32* %450, align 4
  %452 = call i32 (%struct.svc_rqst*, i8*, ...) @svc_printk(%struct.svc_rqst* %446, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i64 0, i64 0), i32 %447, i32 %448, i32 %451)
  %453 = load %struct.svc_serv*, %struct.svc_serv** %11, align 8
  %454 = getelementptr inbounds %struct.svc_serv, %struct.svc_serv* %453, i32 0, i32 0
  %455 = load %struct.TYPE_5__*, %struct.TYPE_5__** %454, align 8
  %456 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %455, i32 0, i32 0
  %457 = load i32, i32* %456, align 4
  %458 = add nsw i32 %457, 1
  store i32 %458, i32* %456, align 4
  %459 = load %struct.kvec*, %struct.kvec** %7, align 8
  %460 = load i32, i32* @RPC_PROG_MISMATCH, align 4
  %461 = call i32 @svc_putnl(%struct.kvec* %459, i32 %460)
  %462 = load %struct.kvec*, %struct.kvec** %7, align 8
  %463 = load %struct.svc_program*, %struct.svc_program** %8, align 8
  %464 = getelementptr inbounds %struct.svc_program, %struct.svc_program* %463, i32 0, i32 3
  %465 = load i32, i32* %464, align 4
  %466 = call i32 @svc_putnl(%struct.kvec* %462, i32 %465)
  %467 = load %struct.kvec*, %struct.kvec** %7, align 8
  %468 = load %struct.svc_program*, %struct.svc_program** %8, align 8
  %469 = getelementptr inbounds %struct.svc_program, %struct.svc_program* %468, i32 0, i32 4
  %470 = load i32, i32* %469, align 8
  %471 = call i32 @svc_putnl(%struct.kvec* %467, i32 %470)
  br label %381

472:                                              ; preds = %178
  %473 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %474 = load i32, i32* %16, align 4
  %475 = call i32 (%struct.svc_rqst*, i8*, ...) @svc_printk(%struct.svc_rqst* %473, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0), i32 %474)
  %476 = load %struct.svc_serv*, %struct.svc_serv** %11, align 8
  %477 = getelementptr inbounds %struct.svc_serv, %struct.svc_serv* %476, i32 0, i32 0
  %478 = load %struct.TYPE_5__*, %struct.TYPE_5__** %477, align 8
  %479 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %478, i32 0, i32 0
  %480 = load i32, i32* %479, align 4
  %481 = add nsw i32 %480, 1
  store i32 %481, i32* %479, align 4
  %482 = load %struct.kvec*, %struct.kvec** %7, align 8
  %483 = load i32, i32* @RPC_PROC_UNAVAIL, align 4
  %484 = call i32 @svc_putnl(%struct.kvec* %482, i32 %483)
  br label %381

485:                                              ; preds = %252, %121
  %486 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %487 = call i32 (%struct.svc_rqst*, i8*, ...) @svc_printk(%struct.svc_rqst* %486, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0))
  %488 = load i64, i64* @rpc_garbage_args, align 8
  store i64 %488, i64* %18, align 8
  br label %489

489:                                              ; preds = %485, %122
  %490 = load %struct.svc_serv*, %struct.svc_serv** %11, align 8
  %491 = getelementptr inbounds %struct.svc_serv, %struct.svc_serv* %490, i32 0, i32 0
  %492 = load %struct.TYPE_5__*, %struct.TYPE_5__** %491, align 8
  %493 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %492, i32 0, i32 0
  %494 = load i32, i32* %493, align 4
  %495 = add nsw i32 %494, 1
  store i32 %495, i32* %493, align 4
  %496 = load %struct.kvec*, %struct.kvec** %7, align 8
  %497 = load i64, i64* %18, align 8
  %498 = call i32 @ntohl(i64 %497)
  %499 = call i32 @svc_putnl(%struct.kvec* %496, i32 %498)
  br label %381

500:                                              ; preds = %387, %386
  %501 = load i32, i32* %4, align 4
  ret i32 %501
}

declare dso_local i32 @svc_putu32(%struct.kvec*, i32) #1

declare dso_local i32 @svc_getnl(%struct.kvec*) #1

declare dso_local i32 @svc_putnl(%struct.kvec*, i32) #1

declare dso_local i32 @svc_authenticate(%struct.svc_rqst*, i64*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @svc_close_xprt(%struct.TYPE_6__*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @svc_reserve_auth(%struct.svc_rqst*, i32) #1

declare dso_local i32 @dprintk(i8*, ...) #1

declare dso_local i64 @svc_authorise(%struct.svc_rqst*) #1

declare dso_local i32 @svc_printk(%struct.svc_rqst*, i8*, ...) #1

declare dso_local i32 @ntohl(i64) #1

declare dso_local i32 @xdr_ressize_check(%struct.svc_rqst*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
