; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/keys/extr_request_key.c_call_sbin_request_key.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/keys/extr_request_key.c_call_sbin_request_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.key_construction = type { %struct.key*, %struct.key* }
%struct.key = type { i32, i32 }
%struct.cred = type { i32, i32, %struct.TYPE_8__*, %struct.TYPE_7__*, %struct.TYPE_5__* }
%struct.TYPE_8__ = type { %struct.key* }
%struct.TYPE_7__ = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"{%d},{%d},%s\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"_req.%u\00", align 1
@KEY_ALLOC_QUOTA_OVERRUN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"HOME=/\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"PATH=/sbin:/bin:/usr/sbin:/usr/bin\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"/sbin/request-key\00", align 1
@UMH_WAIT_PROC = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [17 x i8] c"usermode -> 0x%x\00", align 1
@KEY_FLAG_USER_CONSTRUCT = common dso_local global i32 0, align 4
@ENOKEY = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [6 x i8] c" = %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.key_construction*, i8*, i8*)* @call_sbin_request_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @call_sbin_request_key(%struct.key_construction* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.key_construction*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.cred*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.key*, align 8
  %11 = alloca %struct.key*, align 8
  %12 = alloca %struct.key*, align 8
  %13 = alloca %struct.key*, align 8
  %14 = alloca [9 x i8*], align 16
  %15 = alloca [3 x i8*], align 16
  %16 = alloca [12 x i8], align 1
  %17 = alloca [12 x i8], align 1
  %18 = alloca [12 x i8], align 1
  %19 = alloca [3 x [12 x i8]], align 16
  %20 = alloca [20 x i8], align 16
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.key_construction* %0, %struct.key_construction** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %23 = call %struct.cred* (...) @current_cred()
  store %struct.cred* %23, %struct.cred** %7, align 8
  %24 = load %struct.key_construction*, %struct.key_construction** %4, align 8
  %25 = getelementptr inbounds %struct.key_construction, %struct.key_construction* %24, i32 0, i32 1
  %26 = load %struct.key*, %struct.key** %25, align 8
  store %struct.key* %26, %struct.key** %10, align 8
  %27 = load %struct.key_construction*, %struct.key_construction** %4, align 8
  %28 = getelementptr inbounds %struct.key_construction, %struct.key_construction* %27, i32 0, i32 0
  %29 = load %struct.key*, %struct.key** %28, align 8
  store %struct.key* %29, %struct.key** %11, align 8
  %30 = load %struct.key*, %struct.key** %10, align 8
  %31 = getelementptr inbounds %struct.key, %struct.key* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.key*, %struct.key** %11, align 8
  %34 = getelementptr inbounds %struct.key, %struct.key* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i8*, i8** %5, align 8
  %37 = call i32 @kenter(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %32, i32 %35, i8* %36)
  %38 = call i32 (...) @install_user_keyrings()
  store i32 %38, i32* %21, align 4
  %39 = load i32, i32* %21, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %3
  br label %235

42:                                               ; preds = %3
  %43 = getelementptr inbounds [20 x i8], [20 x i8]* %20, i64 0, i64 0
  %44 = load %struct.key*, %struct.key** %10, align 8
  %45 = getelementptr inbounds %struct.key, %struct.key* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @sprintf(i8* %43, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %46)
  %48 = call %struct.cred* (...) @get_current_cred()
  store %struct.cred* %48, %struct.cred** %7, align 8
  %49 = getelementptr inbounds [20 x i8], [20 x i8]* %20, i64 0, i64 0
  %50 = load %struct.cred*, %struct.cred** %7, align 8
  %51 = getelementptr inbounds %struct.cred, %struct.cred* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.cred*, %struct.cred** %7, align 8
  %54 = getelementptr inbounds %struct.cred, %struct.cred* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.cred*, %struct.cred** %7, align 8
  %57 = load i32, i32* @KEY_ALLOC_QUOTA_OVERRUN, align 4
  %58 = call %struct.key* @keyring_alloc(i8* %49, i32 %52, i32 %55, %struct.cred* %56, i32 %57, i32* null)
  store %struct.key* %58, %struct.key** %12, align 8
  %59 = load %struct.cred*, %struct.cred** %7, align 8
  %60 = call i32 @put_cred(%struct.cred* %59)
  %61 = load %struct.key*, %struct.key** %12, align 8
  %62 = call i64 @IS_ERR(%struct.key* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %42
  %65 = load %struct.key*, %struct.key** %12, align 8
  %66 = call i32 @PTR_ERR(%struct.key* %65)
  store i32 %66, i32* %21, align 4
  br label %235

67:                                               ; preds = %42
  %68 = load %struct.key*, %struct.key** %12, align 8
  %69 = load %struct.key*, %struct.key** %11, align 8
  %70 = call i32 @key_link(%struct.key* %68, %struct.key* %69)
  store i32 %70, i32* %21, align 4
  %71 = load i32, i32* %21, align 4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %67
  br label %232

74:                                               ; preds = %67
  %75 = getelementptr inbounds [12 x i8], [12 x i8]* %16, i64 0, i64 0
  %76 = load %struct.cred*, %struct.cred** %7, align 8
  %77 = getelementptr inbounds %struct.cred, %struct.cred* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @sprintf(i8* %75, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %78)
  %80 = getelementptr inbounds [12 x i8], [12 x i8]* %17, i64 0, i64 0
  %81 = load %struct.cred*, %struct.cred** %7, align 8
  %82 = getelementptr inbounds %struct.cred, %struct.cred* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @sprintf(i8* %80, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %83)
  %85 = getelementptr inbounds [12 x i8], [12 x i8]* %18, i64 0, i64 0
  %86 = load %struct.key*, %struct.key** %10, align 8
  %87 = getelementptr inbounds %struct.key, %struct.key* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @sprintf(i8* %85, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %88)
  %90 = getelementptr inbounds [3 x [12 x i8]], [3 x [12 x i8]]* %19, i64 0, i64 0
  %91 = getelementptr inbounds [12 x i8], [12 x i8]* %90, i64 0, i64 0
  %92 = load %struct.cred*, %struct.cred** %7, align 8
  %93 = getelementptr inbounds %struct.cred, %struct.cred* %92, i32 0, i32 4
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** %93, align 8
  %95 = icmp ne %struct.TYPE_5__* %94, null
  br i1 %95, label %96, label %102

96:                                               ; preds = %74
  %97 = load %struct.cred*, %struct.cred** %7, align 8
  %98 = getelementptr inbounds %struct.cred, %struct.cred* %97, i32 0, i32 4
  %99 = load %struct.TYPE_5__*, %struct.TYPE_5__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  br label %103

102:                                              ; preds = %74
  br label %103

103:                                              ; preds = %102, %96
  %104 = phi i32 [ %101, %96 ], [ 0, %102 ]
  %105 = call i32 @sprintf(i8* %91, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %104)
  store i32 0, i32* %8, align 4
  %106 = load %struct.cred*, %struct.cred** %7, align 8
  %107 = getelementptr inbounds %struct.cred, %struct.cred* %106, i32 0, i32 3
  %108 = load %struct.TYPE_7__*, %struct.TYPE_7__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 1
  %110 = load %struct.TYPE_6__*, %struct.TYPE_6__** %109, align 8
  %111 = icmp ne %struct.TYPE_6__* %110, null
  br i1 %111, label %112, label %120

112:                                              ; preds = %103
  %113 = load %struct.cred*, %struct.cred** %7, align 8
  %114 = getelementptr inbounds %struct.cred, %struct.cred* %113, i32 0, i32 3
  %115 = load %struct.TYPE_7__*, %struct.TYPE_7__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 1
  %117 = load %struct.TYPE_6__*, %struct.TYPE_6__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  store i32 %119, i32* %8, align 4
  br label %120

120:                                              ; preds = %112, %103
  %121 = getelementptr inbounds [3 x [12 x i8]], [3 x [12 x i8]]* %19, i64 0, i64 1
  %122 = getelementptr inbounds [12 x i8], [12 x i8]* %121, i64 0, i64 0
  %123 = load i32, i32* %8, align 4
  %124 = call i32 @sprintf(i8* %122, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %123)
  %125 = call i32 (...) @rcu_read_lock()
  %126 = load %struct.cred*, %struct.cred** %7, align 8
  %127 = getelementptr inbounds %struct.cred, %struct.cred* %126, i32 0, i32 3
  %128 = load %struct.TYPE_7__*, %struct.TYPE_7__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = call %struct.key* @rcu_dereference(i32 %130)
  store %struct.key* %131, %struct.key** %13, align 8
  %132 = load %struct.key*, %struct.key** %13, align 8
  %133 = icmp ne %struct.key* %132, null
  br i1 %133, label %140, label %134

134:                                              ; preds = %120
  %135 = load %struct.cred*, %struct.cred** %7, align 8
  %136 = getelementptr inbounds %struct.cred, %struct.cred* %135, i32 0, i32 2
  %137 = load %struct.TYPE_8__*, %struct.TYPE_8__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %137, i32 0, i32 0
  %139 = load %struct.key*, %struct.key** %138, align 8
  store %struct.key* %139, %struct.key** %13, align 8
  br label %140

140:                                              ; preds = %134, %120
  %141 = load %struct.key*, %struct.key** %13, align 8
  %142 = getelementptr inbounds %struct.key, %struct.key* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  store i32 %143, i32* %9, align 4
  %144 = call i32 (...) @rcu_read_unlock()
  %145 = getelementptr inbounds [3 x [12 x i8]], [3 x [12 x i8]]* %19, i64 0, i64 2
  %146 = getelementptr inbounds [12 x i8], [12 x i8]* %145, i64 0, i64 0
  %147 = load i32, i32* %9, align 4
  %148 = call i32 @sprintf(i8* %146, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %147)
  store i32 0, i32* %22, align 4
  %149 = load i32, i32* %22, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %22, align 4
  %151 = sext i32 %149 to i64
  %152 = getelementptr inbounds [3 x i8*], [3 x i8*]* %15, i64 0, i64 %151
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8** %152, align 8
  %153 = load i32, i32* %22, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %22, align 4
  %155 = sext i32 %153 to i64
  %156 = getelementptr inbounds [3 x i8*], [3 x i8*]* %15, i64 0, i64 %155
  store i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i8** %156, align 8
  %157 = load i32, i32* %22, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds [3 x i8*], [3 x i8*]* %15, i64 0, i64 %158
  store i8* null, i8** %159, align 8
  store i32 0, i32* %22, align 4
  %160 = load i32, i32* %22, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %22, align 4
  %162 = sext i32 %160 to i64
  %163 = getelementptr inbounds [9 x i8*], [9 x i8*]* %14, i64 0, i64 %162
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i8** %163, align 8
  %164 = load i8*, i8** %5, align 8
  %165 = load i32, i32* %22, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %22, align 4
  %167 = sext i32 %165 to i64
  %168 = getelementptr inbounds [9 x i8*], [9 x i8*]* %14, i64 0, i64 %167
  store i8* %164, i8** %168, align 8
  %169 = getelementptr inbounds [12 x i8], [12 x i8]* %18, i64 0, i64 0
  %170 = load i32, i32* %22, align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %22, align 4
  %172 = sext i32 %170 to i64
  %173 = getelementptr inbounds [9 x i8*], [9 x i8*]* %14, i64 0, i64 %172
  store i8* %169, i8** %173, align 8
  %174 = getelementptr inbounds [12 x i8], [12 x i8]* %16, i64 0, i64 0
  %175 = load i32, i32* %22, align 4
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %22, align 4
  %177 = sext i32 %175 to i64
  %178 = getelementptr inbounds [9 x i8*], [9 x i8*]* %14, i64 0, i64 %177
  store i8* %174, i8** %178, align 8
  %179 = getelementptr inbounds [12 x i8], [12 x i8]* %17, i64 0, i64 0
  %180 = load i32, i32* %22, align 4
  %181 = add nsw i32 %180, 1
  store i32 %181, i32* %22, align 4
  %182 = sext i32 %180 to i64
  %183 = getelementptr inbounds [9 x i8*], [9 x i8*]* %14, i64 0, i64 %182
  store i8* %179, i8** %183, align 8
  %184 = getelementptr inbounds [3 x [12 x i8]], [3 x [12 x i8]]* %19, i64 0, i64 0
  %185 = getelementptr inbounds [12 x i8], [12 x i8]* %184, i64 0, i64 0
  %186 = load i32, i32* %22, align 4
  %187 = add nsw i32 %186, 1
  store i32 %187, i32* %22, align 4
  %188 = sext i32 %186 to i64
  %189 = getelementptr inbounds [9 x i8*], [9 x i8*]* %14, i64 0, i64 %188
  store i8* %185, i8** %189, align 8
  %190 = getelementptr inbounds [3 x [12 x i8]], [3 x [12 x i8]]* %19, i64 0, i64 1
  %191 = getelementptr inbounds [12 x i8], [12 x i8]* %190, i64 0, i64 0
  %192 = load i32, i32* %22, align 4
  %193 = add nsw i32 %192, 1
  store i32 %193, i32* %22, align 4
  %194 = sext i32 %192 to i64
  %195 = getelementptr inbounds [9 x i8*], [9 x i8*]* %14, i64 0, i64 %194
  store i8* %191, i8** %195, align 8
  %196 = getelementptr inbounds [3 x [12 x i8]], [3 x [12 x i8]]* %19, i64 0, i64 2
  %197 = getelementptr inbounds [12 x i8], [12 x i8]* %196, i64 0, i64 0
  %198 = load i32, i32* %22, align 4
  %199 = add nsw i32 %198, 1
  store i32 %199, i32* %22, align 4
  %200 = sext i32 %198 to i64
  %201 = getelementptr inbounds [9 x i8*], [9 x i8*]* %14, i64 0, i64 %200
  store i8* %197, i8** %201, align 8
  %202 = load i32, i32* %22, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds [9 x i8*], [9 x i8*]* %14, i64 0, i64 %203
  store i8* null, i8** %204, align 8
  %205 = getelementptr inbounds [9 x i8*], [9 x i8*]* %14, i64 0, i64 0
  %206 = load i8*, i8** %205, align 16
  %207 = getelementptr inbounds [9 x i8*], [9 x i8*]* %14, i64 0, i64 0
  %208 = getelementptr inbounds [3 x i8*], [3 x i8*]* %15, i64 0, i64 0
  %209 = load %struct.key*, %struct.key** %12, align 8
  %210 = load i32, i32* @UMH_WAIT_PROC, align 4
  %211 = call i32 @call_usermodehelper_keys(i8* %206, i8** %207, i8** %208, %struct.key* %209, i32 %210)
  store i32 %211, i32* %21, align 4
  %212 = load i32, i32* %21, align 4
  %213 = call i32 @kdebug(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i32 %212)
  %214 = load i32, i32* %21, align 4
  %215 = icmp sge i32 %214, 0
  br i1 %215, label %216, label %231

216:                                              ; preds = %140
  %217 = load i32, i32* @KEY_FLAG_USER_CONSTRUCT, align 4
  %218 = load %struct.key*, %struct.key** %10, align 8
  %219 = getelementptr inbounds %struct.key, %struct.key* %218, i32 0, i32 1
  %220 = call i64 @test_bit(i32 %217, i32* %219)
  %221 = icmp ne i64 %220, 0
  br i1 %221, label %226, label %222

222:                                              ; preds = %216
  %223 = load %struct.key*, %struct.key** %10, align 8
  %224 = call i64 @key_validate(%struct.key* %223)
  %225 = icmp slt i64 %224, 0
  br i1 %225, label %226, label %229

226:                                              ; preds = %222, %216
  %227 = load i32, i32* @ENOKEY, align 4
  %228 = sub nsw i32 0, %227
  store i32 %228, i32* %21, align 4
  br label %230

229:                                              ; preds = %222
  store i32 0, i32* %21, align 4
  br label %230

230:                                              ; preds = %229, %226
  br label %231

231:                                              ; preds = %230, %140
  br label %232

232:                                              ; preds = %231, %73
  %233 = load %struct.key*, %struct.key** %12, align 8
  %234 = call i32 @key_put(%struct.key* %233)
  br label %235

235:                                              ; preds = %232, %64, %41
  %236 = load %struct.key_construction*, %struct.key_construction** %4, align 8
  %237 = load i32, i32* %21, align 4
  %238 = call i32 @complete_request_key(%struct.key_construction* %236, i32 %237)
  %239 = load i32, i32* %21, align 4
  %240 = call i32 @kleave(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i32 %239)
  %241 = load i32, i32* %21, align 4
  ret i32 %241
}

declare dso_local %struct.cred* @current_cred(...) #1

declare dso_local i32 @kenter(i8*, i32, i32, i8*) #1

declare dso_local i32 @install_user_keyrings(...) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local %struct.cred* @get_current_cred(...) #1

declare dso_local %struct.key* @keyring_alloc(i8*, i32, i32, %struct.cred*, i32, i32*) #1

declare dso_local i32 @put_cred(%struct.cred*) #1

declare dso_local i64 @IS_ERR(%struct.key*) #1

declare dso_local i32 @PTR_ERR(%struct.key*) #1

declare dso_local i32 @key_link(%struct.key*, %struct.key*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.key* @rcu_dereference(i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @call_usermodehelper_keys(i8*, i8**, i8**, %struct.key*, i32) #1

declare dso_local i32 @kdebug(i8*, i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i64 @key_validate(%struct.key*) #1

declare dso_local i32 @key_put(%struct.key*) #1

declare dso_local i32 @complete_request_key(%struct.key_construction*, i32) #1

declare dso_local i32 @kleave(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
