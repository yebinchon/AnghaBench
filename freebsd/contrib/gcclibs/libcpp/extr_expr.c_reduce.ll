; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcclibs/libcpp/extr_expr.c_reduce.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcclibs/libcpp/extr_expr.c_reduce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_38__ = type { i32, i32 }
%struct.TYPE_37__ = type { %struct.TYPE_36__ }
%struct.TYPE_36__ = type { i32 }
%struct.op = type { i64, %struct.TYPE_39__ }
%struct.TYPE_39__ = type { i32, i32, i32, i32 }

@CPP_EQ = common dso_local global i64 0, align 8
@CPP_LAST_CPP_OP = common dso_local global i64 0, align 8
@CPP_DL_ICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"impossible operator '%u'\00", align 1
@optab = common dso_local global %struct.TYPE_38__* null, align 8
@LEFT_ASSOC = common dso_local global i32 0, align 4
@warn_num_sign_change = common dso_local global i32 0, align 4
@CHECK_PROMOTION = common dso_local global i32 0, align 4
@CPP_CLOSE_PAREN = common dso_local global i32 0, align 4
@CPP_DL_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"missing ')' in expression\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"'?' without following ':'\00", align 1
@CPP_DL_PEDWARN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [44 x i8] c"integer overflow in preprocessor expression\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"missing '(' in expression\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.op* (%struct.TYPE_37__*, %struct.op*, i32)* @reduce to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.op* @reduce(%struct.TYPE_37__* %0, %struct.op* %1, i32 %2) #0 {
  %4 = alloca %struct.op*, align 8
  %5 = alloca %struct.TYPE_37__*, align 8
  %6 = alloca %struct.op*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_39__, align 4
  %10 = alloca %struct.TYPE_39__, align 4
  %11 = alloca %struct.TYPE_39__, align 4
  %12 = alloca %struct.TYPE_39__, align 4
  %13 = alloca %struct.TYPE_39__, align 4
  %14 = alloca %struct.TYPE_39__, align 4
  %15 = alloca %struct.TYPE_39__, align 4
  store %struct.TYPE_37__* %0, %struct.TYPE_37__** %5, align 8
  store %struct.op* %1, %struct.op** %6, align 8
  store i32 %2, i32* %7, align 4
  %16 = load %struct.op*, %struct.op** %6, align 8
  %17 = getelementptr inbounds %struct.op, %struct.op* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @CPP_EQ, align 8
  %20 = icmp ule i64 %18, %19
  br i1 %20, label %28, label %21

21:                                               ; preds = %3
  %22 = load %struct.op*, %struct.op** %6, align 8
  %23 = getelementptr inbounds %struct.op, %struct.op* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @CPP_LAST_CPP_OP, align 8
  %26 = add i64 %25, 2
  %27 = icmp ugt i64 %24, %26
  br i1 %27, label %28, label %36

28:                                               ; preds = %21, %3
  br label %29

29:                                               ; preds = %491, %28
  %30 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %31 = load i32, i32* @CPP_DL_ICE, align 4
  %32 = load %struct.op*, %struct.op** %6, align 8
  %33 = getelementptr inbounds %struct.op, %struct.op* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = call i32 (%struct.TYPE_37__*, i32, i8*, ...) @cpp_error(%struct.TYPE_37__* %30, i32 %31, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i64 %34)
  store %struct.op* null, %struct.op** %4, align 8
  br label %521

36:                                               ; preds = %21
  %37 = load i32, i32* %7, align 4
  %38 = icmp eq i32 %37, 136
  br i1 %38, label %39, label %41

39:                                               ; preds = %36
  %40 = load %struct.op*, %struct.op** %6, align 8
  store %struct.op* %40, %struct.op** %4, align 8
  br label %521

41:                                               ; preds = %36
  %42 = load %struct.TYPE_38__*, %struct.TYPE_38__** @optab, align 8
  %43 = load i32, i32* %7, align 4
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.TYPE_38__*, %struct.TYPE_38__** @optab, align 8
  %49 = load i32, i32* %7, align 4
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @LEFT_ASSOC, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  %57 = zext i1 %56 to i32
  %58 = sub nsw i32 %47, %57
  store i32 %58, i32* %8, align 4
  br label %59

59:                                               ; preds = %510, %481, %400, %345, %41
  %60 = load i32, i32* %8, align 4
  %61 = load %struct.TYPE_38__*, %struct.TYPE_38__** @optab, align 8
  %62 = load %struct.op*, %struct.op** %6, align 8
  %63 = getelementptr inbounds %struct.op, %struct.op* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %61, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = icmp ult i32 %60, %67
  br i1 %68, label %69, label %511

69:                                               ; preds = %59
  %70 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %71 = load i32, i32* @warn_num_sign_change, align 4
  %72 = call i64 @CPP_OPTION(%struct.TYPE_37__* %70, i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %89

74:                                               ; preds = %69
  %75 = load %struct.TYPE_38__*, %struct.TYPE_38__** @optab, align 8
  %76 = load %struct.op*, %struct.op** %6, align 8
  %77 = getelementptr inbounds %struct.op, %struct.op* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %75, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @CHECK_PROMOTION, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %74
  %86 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %87 = load %struct.op*, %struct.op** %6, align 8
  %88 = call i32 @check_promotion(%struct.TYPE_37__* %86, %struct.op* %87)
  br label %89

89:                                               ; preds = %85, %74, %69
  %90 = load %struct.op*, %struct.op** %6, align 8
  %91 = getelementptr inbounds %struct.op, %struct.op* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  switch i64 %92, label %491 [
    i64 129, label %93
    i64 130, label %93
    i64 138, label %93
    i64 149, label %93
    i64 133, label %117
    i64 141, label %117
    i64 131, label %117
    i64 142, label %117
    i64 150, label %117
    i64 146, label %149
    i64 144, label %149
    i64 145, label %149
    i64 143, label %149
    i64 147, label %181
    i64 137, label %181
    i64 153, label %213
    i64 135, label %213
    i64 128, label %213
    i64 139, label %245
    i64 148, label %273
    i64 140, label %273
    i64 134, label %305
    i64 152, label %360
    i64 136, label %415
    i64 151, label %434
    i64 132, label %487
  ]

93:                                               ; preds = %89, %89, %89, %89
  %94 = load %struct.op*, %struct.op** %6, align 8
  %95 = getelementptr inbounds %struct.op, %struct.op* %94, i64 -1
  %96 = getelementptr inbounds %struct.op, %struct.op* %95, i32 0, i32 1
  %97 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %98 = load %struct.op*, %struct.op** %6, align 8
  %99 = getelementptr inbounds %struct.op, %struct.op* %98, i32 0, i32 1
  %100 = load %struct.op*, %struct.op** %6, align 8
  %101 = getelementptr inbounds %struct.op, %struct.op* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = trunc i64 %102 to i32
  %104 = bitcast %struct.TYPE_39__* %99 to { i64, i64 }*
  %105 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %104, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = call { i64, i64 } @num_unary_op(%struct.TYPE_37__* %97, i64 %106, i64 %108, i32 %103)
  %110 = bitcast %struct.TYPE_39__* %9 to { i64, i64 }*
  %111 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %110, i32 0, i32 0
  %112 = extractvalue { i64, i64 } %109, 0
  store i64 %112, i64* %111, align 4
  %113 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %110, i32 0, i32 1
  %114 = extractvalue { i64, i64 } %109, 1
  store i64 %114, i64* %113, align 4
  %115 = bitcast %struct.TYPE_39__* %96 to i8*
  %116 = bitcast %struct.TYPE_39__* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %115, i8* align 4 %116, i64 16, i1 false)
  br label %492

117:                                              ; preds = %89, %89, %89, %89, %89
  %118 = load %struct.op*, %struct.op** %6, align 8
  %119 = getelementptr inbounds %struct.op, %struct.op* %118, i64 -1
  %120 = getelementptr inbounds %struct.op, %struct.op* %119, i32 0, i32 1
  %121 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %122 = load %struct.op*, %struct.op** %6, align 8
  %123 = getelementptr inbounds %struct.op, %struct.op* %122, i64 -1
  %124 = getelementptr inbounds %struct.op, %struct.op* %123, i32 0, i32 1
  %125 = load %struct.op*, %struct.op** %6, align 8
  %126 = getelementptr inbounds %struct.op, %struct.op* %125, i32 0, i32 1
  %127 = load %struct.op*, %struct.op** %6, align 8
  %128 = getelementptr inbounds %struct.op, %struct.op* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = trunc i64 %129 to i32
  %131 = bitcast %struct.TYPE_39__* %124 to { i64, i64 }*
  %132 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %131, i32 0, i32 1
  %135 = load i64, i64* %134, align 8
  %136 = bitcast %struct.TYPE_39__* %126 to { i64, i64 }*
  %137 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %136, i32 0, i32 1
  %140 = load i64, i64* %139, align 8
  %141 = call { i64, i64 } @num_binary_op(%struct.TYPE_37__* %121, i64 %133, i64 %135, i64 %138, i64 %140, i32 %130)
  %142 = bitcast %struct.TYPE_39__* %10 to { i64, i64 }*
  %143 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %142, i32 0, i32 0
  %144 = extractvalue { i64, i64 } %141, 0
  store i64 %144, i64* %143, align 4
  %145 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %142, i32 0, i32 1
  %146 = extractvalue { i64, i64 } %141, 1
  store i64 %146, i64* %145, align 4
  %147 = bitcast %struct.TYPE_39__* %120 to i8*
  %148 = bitcast %struct.TYPE_39__* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %147, i8* align 4 %148, i64 16, i1 false)
  br label %492

149:                                              ; preds = %89, %89, %89, %89
  %150 = load %struct.op*, %struct.op** %6, align 8
  %151 = getelementptr inbounds %struct.op, %struct.op* %150, i64 -1
  %152 = getelementptr inbounds %struct.op, %struct.op* %151, i32 0, i32 1
  %153 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %154 = load %struct.op*, %struct.op** %6, align 8
  %155 = getelementptr inbounds %struct.op, %struct.op* %154, i64 -1
  %156 = getelementptr inbounds %struct.op, %struct.op* %155, i32 0, i32 1
  %157 = load %struct.op*, %struct.op** %6, align 8
  %158 = getelementptr inbounds %struct.op, %struct.op* %157, i32 0, i32 1
  %159 = load %struct.op*, %struct.op** %6, align 8
  %160 = getelementptr inbounds %struct.op, %struct.op* %159, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  %162 = trunc i64 %161 to i32
  %163 = bitcast %struct.TYPE_39__* %156 to { i64, i64 }*
  %164 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %163, i32 0, i32 0
  %165 = load i64, i64* %164, align 8
  %166 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %163, i32 0, i32 1
  %167 = load i64, i64* %166, align 8
  %168 = bitcast %struct.TYPE_39__* %158 to { i64, i64 }*
  %169 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %168, i32 0, i32 0
  %170 = load i64, i64* %169, align 8
  %171 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %168, i32 0, i32 1
  %172 = load i64, i64* %171, align 8
  %173 = call { i64, i64 } @num_inequality_op(%struct.TYPE_37__* %153, i64 %165, i64 %167, i64 %170, i64 %172, i32 %162)
  %174 = bitcast %struct.TYPE_39__* %11 to { i64, i64 }*
  %175 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %174, i32 0, i32 0
  %176 = extractvalue { i64, i64 } %173, 0
  store i64 %176, i64* %175, align 4
  %177 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %174, i32 0, i32 1
  %178 = extractvalue { i64, i64 } %173, 1
  store i64 %178, i64* %177, align 4
  %179 = bitcast %struct.TYPE_39__* %152 to i8*
  %180 = bitcast %struct.TYPE_39__* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %179, i8* align 4 %180, i64 16, i1 false)
  br label %492

181:                                              ; preds = %89, %89
  %182 = load %struct.op*, %struct.op** %6, align 8
  %183 = getelementptr inbounds %struct.op, %struct.op* %182, i64 -1
  %184 = getelementptr inbounds %struct.op, %struct.op* %183, i32 0, i32 1
  %185 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %186 = load %struct.op*, %struct.op** %6, align 8
  %187 = getelementptr inbounds %struct.op, %struct.op* %186, i64 -1
  %188 = getelementptr inbounds %struct.op, %struct.op* %187, i32 0, i32 1
  %189 = load %struct.op*, %struct.op** %6, align 8
  %190 = getelementptr inbounds %struct.op, %struct.op* %189, i32 0, i32 1
  %191 = load %struct.op*, %struct.op** %6, align 8
  %192 = getelementptr inbounds %struct.op, %struct.op* %191, i32 0, i32 0
  %193 = load i64, i64* %192, align 8
  %194 = trunc i64 %193 to i32
  %195 = bitcast %struct.TYPE_39__* %188 to { i64, i64 }*
  %196 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %195, i32 0, i32 0
  %197 = load i64, i64* %196, align 8
  %198 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %195, i32 0, i32 1
  %199 = load i64, i64* %198, align 8
  %200 = bitcast %struct.TYPE_39__* %190 to { i64, i64 }*
  %201 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %200, i32 0, i32 0
  %202 = load i64, i64* %201, align 8
  %203 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %200, i32 0, i32 1
  %204 = load i64, i64* %203, align 8
  %205 = call { i64, i64 } @num_equality_op(%struct.TYPE_37__* %185, i64 %197, i64 %199, i64 %202, i64 %204, i32 %194)
  %206 = bitcast %struct.TYPE_39__* %12 to { i64, i64 }*
  %207 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %206, i32 0, i32 0
  %208 = extractvalue { i64, i64 } %205, 0
  store i64 %208, i64* %207, align 4
  %209 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %206, i32 0, i32 1
  %210 = extractvalue { i64, i64 } %205, 1
  store i64 %210, i64* %209, align 4
  %211 = bitcast %struct.TYPE_39__* %184 to i8*
  %212 = bitcast %struct.TYPE_39__* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %211, i8* align 4 %212, i64 16, i1 false)
  br label %492

213:                                              ; preds = %89, %89, %89
  %214 = load %struct.op*, %struct.op** %6, align 8
  %215 = getelementptr inbounds %struct.op, %struct.op* %214, i64 -1
  %216 = getelementptr inbounds %struct.op, %struct.op* %215, i32 0, i32 1
  %217 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %218 = load %struct.op*, %struct.op** %6, align 8
  %219 = getelementptr inbounds %struct.op, %struct.op* %218, i64 -1
  %220 = getelementptr inbounds %struct.op, %struct.op* %219, i32 0, i32 1
  %221 = load %struct.op*, %struct.op** %6, align 8
  %222 = getelementptr inbounds %struct.op, %struct.op* %221, i32 0, i32 1
  %223 = load %struct.op*, %struct.op** %6, align 8
  %224 = getelementptr inbounds %struct.op, %struct.op* %223, i32 0, i32 0
  %225 = load i64, i64* %224, align 8
  %226 = trunc i64 %225 to i32
  %227 = bitcast %struct.TYPE_39__* %220 to { i64, i64 }*
  %228 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %227, i32 0, i32 0
  %229 = load i64, i64* %228, align 8
  %230 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %227, i32 0, i32 1
  %231 = load i64, i64* %230, align 8
  %232 = bitcast %struct.TYPE_39__* %222 to { i64, i64 }*
  %233 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %232, i32 0, i32 0
  %234 = load i64, i64* %233, align 8
  %235 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %232, i32 0, i32 1
  %236 = load i64, i64* %235, align 8
  %237 = call { i64, i64 } @num_bitwise_op(%struct.TYPE_37__* %217, i64 %229, i64 %231, i64 %234, i64 %236, i32 %226)
  %238 = bitcast %struct.TYPE_39__* %13 to { i64, i64 }*
  %239 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %238, i32 0, i32 0
  %240 = extractvalue { i64, i64 } %237, 0
  store i64 %240, i64* %239, align 4
  %241 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %238, i32 0, i32 1
  %242 = extractvalue { i64, i64 } %237, 1
  store i64 %242, i64* %241, align 4
  %243 = bitcast %struct.TYPE_39__* %216 to i8*
  %244 = bitcast %struct.TYPE_39__* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %243, i8* align 4 %244, i64 16, i1 false)
  br label %492

245:                                              ; preds = %89
  %246 = load %struct.op*, %struct.op** %6, align 8
  %247 = getelementptr inbounds %struct.op, %struct.op* %246, i64 -1
  %248 = getelementptr inbounds %struct.op, %struct.op* %247, i32 0, i32 1
  %249 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %250 = load %struct.op*, %struct.op** %6, align 8
  %251 = getelementptr inbounds %struct.op, %struct.op* %250, i64 -1
  %252 = getelementptr inbounds %struct.op, %struct.op* %251, i32 0, i32 1
  %253 = load %struct.op*, %struct.op** %6, align 8
  %254 = getelementptr inbounds %struct.op, %struct.op* %253, i32 0, i32 1
  %255 = bitcast %struct.TYPE_39__* %252 to { i64, i64 }*
  %256 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %255, i32 0, i32 0
  %257 = load i64, i64* %256, align 8
  %258 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %255, i32 0, i32 1
  %259 = load i64, i64* %258, align 8
  %260 = bitcast %struct.TYPE_39__* %254 to { i64, i64 }*
  %261 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %260, i32 0, i32 0
  %262 = load i64, i64* %261, align 8
  %263 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %260, i32 0, i32 1
  %264 = load i64, i64* %263, align 8
  %265 = call { i64, i64 } @num_mul(%struct.TYPE_37__* %249, i64 %257, i64 %259, i64 %262, i64 %264)
  %266 = bitcast %struct.TYPE_39__* %14 to { i64, i64 }*
  %267 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %266, i32 0, i32 0
  %268 = extractvalue { i64, i64 } %265, 0
  store i64 %268, i64* %267, align 4
  %269 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %266, i32 0, i32 1
  %270 = extractvalue { i64, i64 } %265, 1
  store i64 %270, i64* %269, align 4
  %271 = bitcast %struct.TYPE_39__* %248 to i8*
  %272 = bitcast %struct.TYPE_39__* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %271, i8* align 4 %272, i64 16, i1 false)
  br label %492

273:                                              ; preds = %89, %89
  %274 = load %struct.op*, %struct.op** %6, align 8
  %275 = getelementptr inbounds %struct.op, %struct.op* %274, i64 -1
  %276 = getelementptr inbounds %struct.op, %struct.op* %275, i32 0, i32 1
  %277 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %278 = load %struct.op*, %struct.op** %6, align 8
  %279 = getelementptr inbounds %struct.op, %struct.op* %278, i64 -1
  %280 = getelementptr inbounds %struct.op, %struct.op* %279, i32 0, i32 1
  %281 = load %struct.op*, %struct.op** %6, align 8
  %282 = getelementptr inbounds %struct.op, %struct.op* %281, i32 0, i32 1
  %283 = load %struct.op*, %struct.op** %6, align 8
  %284 = getelementptr inbounds %struct.op, %struct.op* %283, i32 0, i32 0
  %285 = load i64, i64* %284, align 8
  %286 = trunc i64 %285 to i32
  %287 = bitcast %struct.TYPE_39__* %280 to { i64, i64 }*
  %288 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %287, i32 0, i32 0
  %289 = load i64, i64* %288, align 8
  %290 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %287, i32 0, i32 1
  %291 = load i64, i64* %290, align 8
  %292 = bitcast %struct.TYPE_39__* %282 to { i64, i64 }*
  %293 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %292, i32 0, i32 0
  %294 = load i64, i64* %293, align 8
  %295 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %292, i32 0, i32 1
  %296 = load i64, i64* %295, align 8
  %297 = call { i64, i64 } @num_div_op(%struct.TYPE_37__* %277, i64 %289, i64 %291, i64 %294, i64 %296, i32 %286)
  %298 = bitcast %struct.TYPE_39__* %15 to { i64, i64 }*
  %299 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %298, i32 0, i32 0
  %300 = extractvalue { i64, i64 } %297, 0
  store i64 %300, i64* %299, align 4
  %301 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %298, i32 0, i32 1
  %302 = extractvalue { i64, i64 } %297, 1
  store i64 %302, i64* %301, align 4
  %303 = bitcast %struct.TYPE_39__* %276 to i8*
  %304 = bitcast %struct.TYPE_39__* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %303, i8* align 4 %304, i64 16, i1 false)
  br label %492

305:                                              ; preds = %89
  %306 = load %struct.op*, %struct.op** %6, align 8
  %307 = getelementptr inbounds %struct.op, %struct.op* %306, i32 -1
  store %struct.op* %307, %struct.op** %6, align 8
  %308 = load %struct.op*, %struct.op** %6, align 8
  %309 = getelementptr inbounds %struct.op, %struct.op* %308, i32 0, i32 1
  %310 = bitcast %struct.TYPE_39__* %309 to { i64, i64 }*
  %311 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %310, i32 0, i32 0
  %312 = load i64, i64* %311, align 8
  %313 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %310, i32 0, i32 1
  %314 = load i64, i64* %313, align 8
  %315 = call i32 @num_zerop(i64 %312, i64 %314)
  %316 = icmp ne i32 %315, 0
  br i1 %316, label %323, label %317

317:                                              ; preds = %305
  %318 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %319 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %318, i32 0, i32 0
  %320 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %319, i32 0, i32 0
  %321 = load i32, i32* %320, align 4
  %322 = add nsw i32 %321, -1
  store i32 %322, i32* %320, align 4
  br label %323

323:                                              ; preds = %317, %305
  %324 = load %struct.op*, %struct.op** %6, align 8
  %325 = getelementptr inbounds %struct.op, %struct.op* %324, i32 0, i32 1
  %326 = bitcast %struct.TYPE_39__* %325 to { i64, i64 }*
  %327 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %326, i32 0, i32 0
  %328 = load i64, i64* %327, align 8
  %329 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %326, i32 0, i32 1
  %330 = load i64, i64* %329, align 8
  %331 = call i32 @num_zerop(i64 %328, i64 %330)
  %332 = icmp ne i32 %331, 0
  br i1 %332, label %333, label %345

333:                                              ; preds = %323
  %334 = load %struct.op*, %struct.op** %6, align 8
  %335 = getelementptr inbounds %struct.op, %struct.op* %334, i64 1
  %336 = getelementptr inbounds %struct.op, %struct.op* %335, i32 0, i32 1
  %337 = bitcast %struct.TYPE_39__* %336 to { i64, i64 }*
  %338 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %337, i32 0, i32 0
  %339 = load i64, i64* %338, align 8
  %340 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %337, i32 0, i32 1
  %341 = load i64, i64* %340, align 8
  %342 = call i32 @num_zerop(i64 %339, i64 %341)
  %343 = icmp ne i32 %342, 0
  %344 = xor i1 %343, true
  br label %345

345:                                              ; preds = %333, %323
  %346 = phi i1 [ true, %323 ], [ %344, %333 ]
  %347 = zext i1 %346 to i32
  %348 = load %struct.op*, %struct.op** %6, align 8
  %349 = getelementptr inbounds %struct.op, %struct.op* %348, i32 0, i32 1
  %350 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %349, i32 0, i32 0
  store i32 %347, i32* %350, align 8
  %351 = load %struct.op*, %struct.op** %6, align 8
  %352 = getelementptr inbounds %struct.op, %struct.op* %351, i32 0, i32 1
  %353 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %352, i32 0, i32 3
  store i32 0, i32* %353, align 4
  %354 = load %struct.op*, %struct.op** %6, align 8
  %355 = getelementptr inbounds %struct.op, %struct.op* %354, i32 0, i32 1
  %356 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %355, i32 0, i32 1
  store i32 0, i32* %356, align 4
  %357 = load %struct.op*, %struct.op** %6, align 8
  %358 = getelementptr inbounds %struct.op, %struct.op* %357, i32 0, i32 1
  %359 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %358, i32 0, i32 2
  store i32 0, i32* %359, align 8
  br label %59

360:                                              ; preds = %89
  %361 = load %struct.op*, %struct.op** %6, align 8
  %362 = getelementptr inbounds %struct.op, %struct.op* %361, i32 -1
  store %struct.op* %362, %struct.op** %6, align 8
  %363 = load %struct.op*, %struct.op** %6, align 8
  %364 = getelementptr inbounds %struct.op, %struct.op* %363, i32 0, i32 1
  %365 = bitcast %struct.TYPE_39__* %364 to { i64, i64 }*
  %366 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %365, i32 0, i32 0
  %367 = load i64, i64* %366, align 8
  %368 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %365, i32 0, i32 1
  %369 = load i64, i64* %368, align 8
  %370 = call i32 @num_zerop(i64 %367, i64 %369)
  %371 = icmp ne i32 %370, 0
  br i1 %371, label %372, label %378

372:                                              ; preds = %360
  %373 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %374 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %373, i32 0, i32 0
  %375 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %374, i32 0, i32 0
  %376 = load i32, i32* %375, align 4
  %377 = add nsw i32 %376, -1
  store i32 %377, i32* %375, align 4
  br label %378

378:                                              ; preds = %372, %360
  %379 = load %struct.op*, %struct.op** %6, align 8
  %380 = getelementptr inbounds %struct.op, %struct.op* %379, i32 0, i32 1
  %381 = bitcast %struct.TYPE_39__* %380 to { i64, i64 }*
  %382 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %381, i32 0, i32 0
  %383 = load i64, i64* %382, align 8
  %384 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %381, i32 0, i32 1
  %385 = load i64, i64* %384, align 8
  %386 = call i32 @num_zerop(i64 %383, i64 %385)
  %387 = icmp ne i32 %386, 0
  br i1 %387, label %400, label %388

388:                                              ; preds = %378
  %389 = load %struct.op*, %struct.op** %6, align 8
  %390 = getelementptr inbounds %struct.op, %struct.op* %389, i64 1
  %391 = getelementptr inbounds %struct.op, %struct.op* %390, i32 0, i32 1
  %392 = bitcast %struct.TYPE_39__* %391 to { i64, i64 }*
  %393 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %392, i32 0, i32 0
  %394 = load i64, i64* %393, align 8
  %395 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %392, i32 0, i32 1
  %396 = load i64, i64* %395, align 8
  %397 = call i32 @num_zerop(i64 %394, i64 %396)
  %398 = icmp ne i32 %397, 0
  %399 = xor i1 %398, true
  br label %400

400:                                              ; preds = %388, %378
  %401 = phi i1 [ false, %378 ], [ %399, %388 ]
  %402 = zext i1 %401 to i32
  %403 = load %struct.op*, %struct.op** %6, align 8
  %404 = getelementptr inbounds %struct.op, %struct.op* %403, i32 0, i32 1
  %405 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %404, i32 0, i32 0
  store i32 %402, i32* %405, align 8
  %406 = load %struct.op*, %struct.op** %6, align 8
  %407 = getelementptr inbounds %struct.op, %struct.op* %406, i32 0, i32 1
  %408 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %407, i32 0, i32 3
  store i32 0, i32* %408, align 4
  %409 = load %struct.op*, %struct.op** %6, align 8
  %410 = getelementptr inbounds %struct.op, %struct.op* %409, i32 0, i32 1
  %411 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %410, i32 0, i32 1
  store i32 0, i32* %411, align 4
  %412 = load %struct.op*, %struct.op** %6, align 8
  %413 = getelementptr inbounds %struct.op, %struct.op* %412, i32 0, i32 1
  %414 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %413, i32 0, i32 2
  store i32 0, i32* %414, align 8
  br label %59

415:                                              ; preds = %89
  %416 = load i32, i32* %7, align 4
  %417 = load i32, i32* @CPP_CLOSE_PAREN, align 4
  %418 = icmp ne i32 %416, %417
  br i1 %418, label %419, label %423

419:                                              ; preds = %415
  %420 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %421 = load i32, i32* @CPP_DL_ERROR, align 4
  %422 = call i32 (%struct.TYPE_37__*, i32, i8*, ...) @cpp_error(%struct.TYPE_37__* %420, i32 %421, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  store %struct.op* null, %struct.op** %4, align 8
  br label %521

423:                                              ; preds = %415
  %424 = load %struct.op*, %struct.op** %6, align 8
  %425 = getelementptr inbounds %struct.op, %struct.op* %424, i32 -1
  store %struct.op* %425, %struct.op** %6, align 8
  %426 = load %struct.op*, %struct.op** %6, align 8
  %427 = getelementptr inbounds %struct.op, %struct.op* %426, i32 0, i32 1
  %428 = load %struct.op*, %struct.op** %6, align 8
  %429 = getelementptr inbounds %struct.op, %struct.op* %428, i64 1
  %430 = getelementptr inbounds %struct.op, %struct.op* %429, i32 0, i32 1
  %431 = bitcast %struct.TYPE_39__* %427 to i8*
  %432 = bitcast %struct.TYPE_39__* %430 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %431, i8* align 8 %432, i64 16, i1 false)
  %433 = load %struct.op*, %struct.op** %6, align 8
  store %struct.op* %433, %struct.op** %4, align 8
  br label %521

434:                                              ; preds = %89
  %435 = load %struct.op*, %struct.op** %6, align 8
  %436 = getelementptr inbounds %struct.op, %struct.op* %435, i64 -2
  store %struct.op* %436, %struct.op** %6, align 8
  %437 = load %struct.op*, %struct.op** %6, align 8
  %438 = getelementptr inbounds %struct.op, %struct.op* %437, i32 0, i32 1
  %439 = bitcast %struct.TYPE_39__* %438 to { i64, i64 }*
  %440 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %439, i32 0, i32 0
  %441 = load i64, i64* %440, align 8
  %442 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %439, i32 0, i32 1
  %443 = load i64, i64* %442, align 8
  %444 = call i32 @num_zerop(i64 %441, i64 %443)
  %445 = icmp ne i32 %444, 0
  br i1 %445, label %459, label %446

446:                                              ; preds = %434
  %447 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %448 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %447, i32 0, i32 0
  %449 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %448, i32 0, i32 0
  %450 = load i32, i32* %449, align 4
  %451 = add nsw i32 %450, -1
  store i32 %451, i32* %449, align 4
  %452 = load %struct.op*, %struct.op** %6, align 8
  %453 = getelementptr inbounds %struct.op, %struct.op* %452, i32 0, i32 1
  %454 = load %struct.op*, %struct.op** %6, align 8
  %455 = getelementptr inbounds %struct.op, %struct.op* %454, i64 1
  %456 = getelementptr inbounds %struct.op, %struct.op* %455, i32 0, i32 1
  %457 = bitcast %struct.TYPE_39__* %453 to i8*
  %458 = bitcast %struct.TYPE_39__* %456 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %457, i8* align 8 %458, i64 16, i1 false)
  br label %467

459:                                              ; preds = %434
  %460 = load %struct.op*, %struct.op** %6, align 8
  %461 = getelementptr inbounds %struct.op, %struct.op* %460, i32 0, i32 1
  %462 = load %struct.op*, %struct.op** %6, align 8
  %463 = getelementptr inbounds %struct.op, %struct.op* %462, i64 2
  %464 = getelementptr inbounds %struct.op, %struct.op* %463, i32 0, i32 1
  %465 = bitcast %struct.TYPE_39__* %461 to i8*
  %466 = bitcast %struct.TYPE_39__* %464 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %465, i8* align 8 %466, i64 16, i1 false)
  br label %467

467:                                              ; preds = %459, %446
  %468 = load %struct.op*, %struct.op** %6, align 8
  %469 = getelementptr inbounds %struct.op, %struct.op* %468, i64 1
  %470 = getelementptr inbounds %struct.op, %struct.op* %469, i32 0, i32 1
  %471 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %470, i32 0, i32 1
  %472 = load i32, i32* %471, align 4
  %473 = icmp ne i32 %472, 0
  br i1 %473, label %481, label %474

474:                                              ; preds = %467
  %475 = load %struct.op*, %struct.op** %6, align 8
  %476 = getelementptr inbounds %struct.op, %struct.op* %475, i64 2
  %477 = getelementptr inbounds %struct.op, %struct.op* %476, i32 0, i32 1
  %478 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %477, i32 0, i32 1
  %479 = load i32, i32* %478, align 4
  %480 = icmp ne i32 %479, 0
  br label %481

481:                                              ; preds = %474, %467
  %482 = phi i1 [ true, %467 ], [ %480, %474 ]
  %483 = zext i1 %482 to i32
  %484 = load %struct.op*, %struct.op** %6, align 8
  %485 = getelementptr inbounds %struct.op, %struct.op* %484, i32 0, i32 1
  %486 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %485, i32 0, i32 1
  store i32 %483, i32* %486, align 4
  br label %59

487:                                              ; preds = %89
  %488 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %489 = load i32, i32* @CPP_DL_ERROR, align 4
  %490 = call i32 (%struct.TYPE_37__*, i32, i8*, ...) @cpp_error(%struct.TYPE_37__* %488, i32 %489, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  store %struct.op* null, %struct.op** %4, align 8
  br label %521

491:                                              ; preds = %89
  br label %29

492:                                              ; preds = %273, %245, %213, %181, %149, %117, %93
  %493 = load %struct.op*, %struct.op** %6, align 8
  %494 = getelementptr inbounds %struct.op, %struct.op* %493, i32 -1
  store %struct.op* %494, %struct.op** %6, align 8
  %495 = load %struct.op*, %struct.op** %6, align 8
  %496 = getelementptr inbounds %struct.op, %struct.op* %495, i32 0, i32 1
  %497 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %496, i32 0, i32 2
  %498 = load i32, i32* %497, align 8
  %499 = icmp ne i32 %498, 0
  br i1 %499, label %500, label %510

500:                                              ; preds = %492
  %501 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %502 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %501, i32 0, i32 0
  %503 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %502, i32 0, i32 0
  %504 = load i32, i32* %503, align 4
  %505 = icmp ne i32 %504, 0
  br i1 %505, label %510, label %506

506:                                              ; preds = %500
  %507 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %508 = load i32, i32* @CPP_DL_PEDWARN, align 4
  %509 = call i32 (%struct.TYPE_37__*, i32, i8*, ...) @cpp_error(%struct.TYPE_37__* %507, i32 %508, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0))
  br label %510

510:                                              ; preds = %506, %500, %492
  br label %59

511:                                              ; preds = %59
  %512 = load i32, i32* %7, align 4
  %513 = load i32, i32* @CPP_CLOSE_PAREN, align 4
  %514 = icmp eq i32 %512, %513
  br i1 %514, label %515, label %519

515:                                              ; preds = %511
  %516 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %517 = load i32, i32* @CPP_DL_ERROR, align 4
  %518 = call i32 (%struct.TYPE_37__*, i32, i8*, ...) @cpp_error(%struct.TYPE_37__* %516, i32 %517, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  store %struct.op* null, %struct.op** %4, align 8
  br label %521

519:                                              ; preds = %511
  %520 = load %struct.op*, %struct.op** %6, align 8
  store %struct.op* %520, %struct.op** %4, align 8
  br label %521

521:                                              ; preds = %519, %515, %487, %423, %419, %39, %29
  %522 = load %struct.op*, %struct.op** %4, align 8
  ret %struct.op* %522
}

declare dso_local i32 @cpp_error(%struct.TYPE_37__*, i32, i8*, ...) #1

declare dso_local i64 @CPP_OPTION(%struct.TYPE_37__*, i32) #1

declare dso_local i32 @check_promotion(%struct.TYPE_37__*, %struct.op*) #1

declare dso_local { i64, i64 } @num_unary_op(%struct.TYPE_37__*, i64, i64, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local { i64, i64 } @num_binary_op(%struct.TYPE_37__*, i64, i64, i64, i64, i32) #1

declare dso_local { i64, i64 } @num_inequality_op(%struct.TYPE_37__*, i64, i64, i64, i64, i32) #1

declare dso_local { i64, i64 } @num_equality_op(%struct.TYPE_37__*, i64, i64, i64, i64, i32) #1

declare dso_local { i64, i64 } @num_bitwise_op(%struct.TYPE_37__*, i64, i64, i64, i64, i32) #1

declare dso_local { i64, i64 } @num_mul(%struct.TYPE_37__*, i64, i64, i64, i64) #1

declare dso_local { i64, i64 } @num_div_op(%struct.TYPE_37__*, i64, i64, i64, i64, i32) #1

declare dso_local i32 @num_zerop(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
