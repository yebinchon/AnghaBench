; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/keys/extr_request_key_auth.c_request_key_auth_new.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/keys/extr_request_key_auth.c_request_key_auth_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.cred* }
%struct.cred = type { %struct.TYPE_5__*, i32, i32 }
%struct.TYPE_5__ = type { i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.request_key_auth* }
%struct.request_key_auth = type { i64, %struct.request_key_auth*, %struct.key*, %struct.key*, i32, %struct.cred* }
%struct.key = type { i32, i32 }

@current = common dso_local global %struct.TYPE_6__* null, align 8
@.str = private unnamed_addr constant [4 x i8] c"%d,\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c" = -ENOMEM\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@KEY_FLAG_REVOKED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"%x\00", align 1
@key_type_request_key_auth = common dso_local global i32 0, align 4
@KEY_POS_VIEW = common dso_local global i32 0, align 4
@KEY_POS_READ = common dso_local global i32 0, align 4
@KEY_POS_SEARCH = common dso_local global i32 0, align 4
@KEY_USR_VIEW = common dso_local global i32 0, align 4
@KEY_ALLOC_NOT_IN_QUOTA = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [11 x i8] c" = {%d,%d}\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"= -EKEYREVOKED\00", align 1
@EKEYREVOKED = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [5 x i8] c"= %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.key* @request_key_auth_new(%struct.key* %0, i8* %1, i64 %2, %struct.key* %3) #0 {
  %5 = alloca %struct.key*, align 8
  %6 = alloca %struct.key*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.key*, align 8
  %10 = alloca %struct.request_key_auth*, align 8
  %11 = alloca %struct.request_key_auth*, align 8
  %12 = alloca %struct.cred*, align 8
  %13 = alloca %struct.key*, align 8
  %14 = alloca [20 x i8], align 16
  %15 = alloca i32, align 4
  store %struct.key* %0, %struct.key** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store %struct.key* %3, %struct.key** %9, align 8
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 1
  %18 = load %struct.cred*, %struct.cred** %17, align 8
  store %struct.cred* %18, %struct.cred** %12, align 8
  store %struct.key* null, %struct.key** %13, align 8
  %19 = load %struct.key*, %struct.key** %6, align 8
  %20 = getelementptr inbounds %struct.key, %struct.key* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @kenter(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call i8* @kmalloc(i64 48, i32 %23)
  %25 = bitcast i8* %24 to %struct.request_key_auth*
  store %struct.request_key_auth* %25, %struct.request_key_auth** %10, align 8
  %26 = load %struct.request_key_auth*, %struct.request_key_auth** %10, align 8
  %27 = icmp ne %struct.request_key_auth* %26, null
  br i1 %27, label %33, label %28

28:                                               ; preds = %4
  %29 = call i32 (i8*, ...) @kleave(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  %32 = call %struct.key* @ERR_PTR(i32 %31)
  store %struct.key* %32, %struct.key** %5, align 8
  br label %209

33:                                               ; preds = %4
  %34 = load i64, i64* %8, align 8
  %35 = load i32, i32* @GFP_KERNEL, align 4
  %36 = call i8* @kmalloc(i64 %34, i32 %35)
  %37 = bitcast i8* %36 to %struct.request_key_auth*
  %38 = load %struct.request_key_auth*, %struct.request_key_auth** %10, align 8
  %39 = getelementptr inbounds %struct.request_key_auth, %struct.request_key_auth* %38, i32 0, i32 1
  store %struct.request_key_auth* %37, %struct.request_key_auth** %39, align 8
  %40 = load %struct.request_key_auth*, %struct.request_key_auth** %10, align 8
  %41 = getelementptr inbounds %struct.request_key_auth, %struct.request_key_auth* %40, i32 0, i32 1
  %42 = load %struct.request_key_auth*, %struct.request_key_auth** %41, align 8
  %43 = icmp ne %struct.request_key_auth* %42, null
  br i1 %43, label %51, label %44

44:                                               ; preds = %33
  %45 = call i32 (i8*, ...) @kleave(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %46 = load %struct.request_key_auth*, %struct.request_key_auth** %10, align 8
  %47 = call i32 @kfree(%struct.request_key_auth* %46)
  %48 = load i32, i32* @ENOMEM, align 4
  %49 = sub nsw i32 0, %48
  %50 = call %struct.key* @ERR_PTR(i32 %49)
  store %struct.key* %50, %struct.key** %5, align 8
  br label %209

51:                                               ; preds = %33
  %52 = load %struct.cred*, %struct.cred** %12, align 8
  %53 = getelementptr inbounds %struct.cred, %struct.cred* %52, i32 0, i32 0
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %53, align 8
  %55 = icmp ne %struct.TYPE_5__* %54, null
  br i1 %55, label %56, label %94

56:                                               ; preds = %51
  %57 = load %struct.cred*, %struct.cred** %12, align 8
  %58 = getelementptr inbounds %struct.cred, %struct.cred* %57, i32 0, i32 0
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  %61 = call i32 @down_read(i32* %60)
  %62 = load i32, i32* @KEY_FLAG_REVOKED, align 4
  %63 = load %struct.cred*, %struct.cred** %12, align 8
  %64 = getelementptr inbounds %struct.cred, %struct.cred* %63, i32 0, i32 0
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 2
  %67 = call i64 @test_bit(i32 %62, i32* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %56
  br label %169

70:                                               ; preds = %56
  %71 = load %struct.cred*, %struct.cred** %12, align 8
  %72 = getelementptr inbounds %struct.cred, %struct.cred* %71, i32 0, i32 0
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = load %struct.request_key_auth*, %struct.request_key_auth** %75, align 8
  store %struct.request_key_auth* %76, %struct.request_key_auth** %11, align 8
  %77 = load %struct.request_key_auth*, %struct.request_key_auth** %11, align 8
  %78 = getelementptr inbounds %struct.request_key_auth, %struct.request_key_auth* %77, i32 0, i32 5
  %79 = load %struct.cred*, %struct.cred** %78, align 8
  %80 = call i8* @get_cred(%struct.cred* %79)
  %81 = bitcast i8* %80 to %struct.cred*
  %82 = load %struct.request_key_auth*, %struct.request_key_auth** %10, align 8
  %83 = getelementptr inbounds %struct.request_key_auth, %struct.request_key_auth* %82, i32 0, i32 5
  store %struct.cred* %81, %struct.cred** %83, align 8
  %84 = load %struct.request_key_auth*, %struct.request_key_auth** %11, align 8
  %85 = getelementptr inbounds %struct.request_key_auth, %struct.request_key_auth* %84, i32 0, i32 4
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.request_key_auth*, %struct.request_key_auth** %10, align 8
  %88 = getelementptr inbounds %struct.request_key_auth, %struct.request_key_auth* %87, i32 0, i32 4
  store i32 %86, i32* %88, align 8
  %89 = load %struct.cred*, %struct.cred** %12, align 8
  %90 = getelementptr inbounds %struct.cred, %struct.cred* %89, i32 0, i32 0
  %91 = load %struct.TYPE_5__*, %struct.TYPE_5__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 0
  %93 = call i32 @up_read(i32* %92)
  br label %105

94:                                               ; preds = %51
  %95 = load %struct.cred*, %struct.cred** %12, align 8
  %96 = call i8* @get_cred(%struct.cred* %95)
  %97 = bitcast i8* %96 to %struct.cred*
  %98 = load %struct.request_key_auth*, %struct.request_key_auth** %10, align 8
  %99 = getelementptr inbounds %struct.request_key_auth, %struct.request_key_auth* %98, i32 0, i32 5
  store %struct.cred* %97, %struct.cred** %99, align 8
  %100 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current, align 8
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.request_key_auth*, %struct.request_key_auth** %10, align 8
  %104 = getelementptr inbounds %struct.request_key_auth, %struct.request_key_auth* %103, i32 0, i32 4
  store i32 %102, i32* %104, align 8
  br label %105

105:                                              ; preds = %94, %70
  %106 = load %struct.key*, %struct.key** %6, align 8
  %107 = call i8* @key_get(%struct.key* %106)
  %108 = bitcast i8* %107 to %struct.key*
  %109 = load %struct.request_key_auth*, %struct.request_key_auth** %10, align 8
  %110 = getelementptr inbounds %struct.request_key_auth, %struct.request_key_auth* %109, i32 0, i32 3
  store %struct.key* %108, %struct.key** %110, align 8
  %111 = load %struct.key*, %struct.key** %9, align 8
  %112 = call i8* @key_get(%struct.key* %111)
  %113 = bitcast i8* %112 to %struct.key*
  %114 = load %struct.request_key_auth*, %struct.request_key_auth** %10, align 8
  %115 = getelementptr inbounds %struct.request_key_auth, %struct.request_key_auth* %114, i32 0, i32 2
  store %struct.key* %113, %struct.key** %115, align 8
  %116 = load %struct.request_key_auth*, %struct.request_key_auth** %10, align 8
  %117 = getelementptr inbounds %struct.request_key_auth, %struct.request_key_auth* %116, i32 0, i32 1
  %118 = load %struct.request_key_auth*, %struct.request_key_auth** %117, align 8
  %119 = load i8*, i8** %7, align 8
  %120 = load i64, i64* %8, align 8
  %121 = call i32 @memcpy(%struct.request_key_auth* %118, i8* %119, i64 %120)
  %122 = load i64, i64* %8, align 8
  %123 = load %struct.request_key_auth*, %struct.request_key_auth** %10, align 8
  %124 = getelementptr inbounds %struct.request_key_auth, %struct.request_key_auth* %123, i32 0, i32 0
  store i64 %122, i64* %124, align 8
  %125 = getelementptr inbounds [20 x i8], [20 x i8]* %14, i64 0, i64 0
  %126 = load %struct.key*, %struct.key** %6, align 8
  %127 = getelementptr inbounds %struct.key, %struct.key* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @sprintf(i8* %125, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %128)
  %130 = getelementptr inbounds [20 x i8], [20 x i8]* %14, i64 0, i64 0
  %131 = load %struct.cred*, %struct.cred** %12, align 8
  %132 = getelementptr inbounds %struct.cred, %struct.cred* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.cred*, %struct.cred** %12, align 8
  %135 = getelementptr inbounds %struct.cred, %struct.cred* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 8
  %137 = load %struct.cred*, %struct.cred** %12, align 8
  %138 = load i32, i32* @KEY_POS_VIEW, align 4
  %139 = load i32, i32* @KEY_POS_READ, align 4
  %140 = or i32 %138, %139
  %141 = load i32, i32* @KEY_POS_SEARCH, align 4
  %142 = or i32 %140, %141
  %143 = load i32, i32* @KEY_USR_VIEW, align 4
  %144 = or i32 %142, %143
  %145 = load i32, i32* @KEY_ALLOC_NOT_IN_QUOTA, align 4
  %146 = call %struct.key* @key_alloc(i32* @key_type_request_key_auth, i8* %130, i32 %133, i32 %136, %struct.cred* %137, i32 %144, i32 %145)
  store %struct.key* %146, %struct.key** %13, align 8
  %147 = load %struct.key*, %struct.key** %13, align 8
  %148 = call i64 @IS_ERR(%struct.key* %147)
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %153

150:                                              ; preds = %105
  %151 = load %struct.key*, %struct.key** %13, align 8
  %152 = call i32 @PTR_ERR(%struct.key* %151)
  store i32 %152, i32* %15, align 4
  br label %190

153:                                              ; preds = %105
  %154 = load %struct.key*, %struct.key** %13, align 8
  %155 = load %struct.request_key_auth*, %struct.request_key_auth** %10, align 8
  %156 = call i32 @key_instantiate_and_link(%struct.key* %154, %struct.request_key_auth* %155, i32 0, i32* null, i32* null)
  store i32 %156, i32* %15, align 4
  %157 = load i32, i32* %15, align 4
  %158 = icmp slt i32 %157, 0
  br i1 %158, label %159, label %160

159:                                              ; preds = %153
  br label %185

160:                                              ; preds = %153
  %161 = load %struct.key*, %struct.key** %13, align 8
  %162 = getelementptr inbounds %struct.key, %struct.key* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = load %struct.key*, %struct.key** %13, align 8
  %165 = getelementptr inbounds %struct.key, %struct.key* %164, i32 0, i32 1
  %166 = call i32 @atomic_read(i32* %165)
  %167 = call i32 (i8*, ...) @kleave(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 %163, i32 %166)
  %168 = load %struct.key*, %struct.key** %13, align 8
  store %struct.key* %168, %struct.key** %5, align 8
  br label %209

169:                                              ; preds = %69
  %170 = load %struct.cred*, %struct.cred** %12, align 8
  %171 = getelementptr inbounds %struct.cred, %struct.cred* %170, i32 0, i32 0
  %172 = load %struct.TYPE_5__*, %struct.TYPE_5__** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %172, i32 0, i32 0
  %174 = call i32 @up_read(i32* %173)
  %175 = load %struct.request_key_auth*, %struct.request_key_auth** %10, align 8
  %176 = getelementptr inbounds %struct.request_key_auth, %struct.request_key_auth* %175, i32 0, i32 1
  %177 = load %struct.request_key_auth*, %struct.request_key_auth** %176, align 8
  %178 = call i32 @kfree(%struct.request_key_auth* %177)
  %179 = load %struct.request_key_auth*, %struct.request_key_auth** %10, align 8
  %180 = call i32 @kfree(%struct.request_key_auth* %179)
  %181 = call i32 (i8*, ...) @kleave(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  %182 = load i32, i32* @EKEYREVOKED, align 4
  %183 = sub nsw i32 0, %182
  %184 = call %struct.key* @ERR_PTR(i32 %183)
  store %struct.key* %184, %struct.key** %5, align 8
  br label %209

185:                                              ; preds = %159
  %186 = load %struct.key*, %struct.key** %13, align 8
  %187 = call i32 @key_revoke(%struct.key* %186)
  %188 = load %struct.key*, %struct.key** %13, align 8
  %189 = call i32 @key_put(%struct.key* %188)
  br label %190

190:                                              ; preds = %185, %150
  %191 = load %struct.request_key_auth*, %struct.request_key_auth** %10, align 8
  %192 = getelementptr inbounds %struct.request_key_auth, %struct.request_key_auth* %191, i32 0, i32 3
  %193 = load %struct.key*, %struct.key** %192, align 8
  %194 = call i32 @key_put(%struct.key* %193)
  %195 = load %struct.request_key_auth*, %struct.request_key_auth** %10, align 8
  %196 = getelementptr inbounds %struct.request_key_auth, %struct.request_key_auth* %195, i32 0, i32 2
  %197 = load %struct.key*, %struct.key** %196, align 8
  %198 = call i32 @key_put(%struct.key* %197)
  %199 = load %struct.request_key_auth*, %struct.request_key_auth** %10, align 8
  %200 = getelementptr inbounds %struct.request_key_auth, %struct.request_key_auth* %199, i32 0, i32 1
  %201 = load %struct.request_key_auth*, %struct.request_key_auth** %200, align 8
  %202 = call i32 @kfree(%struct.request_key_auth* %201)
  %203 = load %struct.request_key_auth*, %struct.request_key_auth** %10, align 8
  %204 = call i32 @kfree(%struct.request_key_auth* %203)
  %205 = load i32, i32* %15, align 4
  %206 = call i32 (i8*, ...) @kleave(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %205)
  %207 = load i32, i32* %15, align 4
  %208 = call %struct.key* @ERR_PTR(i32 %207)
  store %struct.key* %208, %struct.key** %5, align 8
  br label %209

209:                                              ; preds = %190, %169, %160, %44, %28
  %210 = load %struct.key*, %struct.key** %5, align 8
  ret %struct.key* %210
}

declare dso_local i32 @kenter(i8*, i32) #1

declare dso_local i8* @kmalloc(i64, i32) #1

declare dso_local i32 @kleave(i8*, ...) #1

declare dso_local %struct.key* @ERR_PTR(i32) #1

declare dso_local i32 @kfree(%struct.request_key_auth*) #1

declare dso_local i32 @down_read(i32*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i8* @get_cred(%struct.cred*) #1

declare dso_local i32 @up_read(i32*) #1

declare dso_local i8* @key_get(%struct.key*) #1

declare dso_local i32 @memcpy(%struct.request_key_auth*, i8*, i64) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local %struct.key* @key_alloc(i32*, i8*, i32, i32, %struct.cred*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.key*) #1

declare dso_local i32 @PTR_ERR(%struct.key*) #1

declare dso_local i32 @key_instantiate_and_link(%struct.key*, %struct.request_key_auth*, i32, i32*, i32*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @key_revoke(%struct.key*) #1

declare dso_local i32 @key_put(%struct.key*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
