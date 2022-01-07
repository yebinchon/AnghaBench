; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_decl.c_dt_decl_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_decl.c_dt_decl_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_31__ = type { %struct.TYPE_24__, i64, %struct.TYPE_27__* }
%struct.TYPE_24__ = type { i64 }
%struct.TYPE_27__ = type { %struct.TYPE_28__*, i32, %struct.TYPE_28__* }
%struct.TYPE_28__ = type { i32*, i32 }
%struct.TYPE_29__ = type { i32, i64, i64, i8*, i32*, %struct.TYPE_25__*, %struct.TYPE_29__* }
%struct.TYPE_25__ = type { i64, i64 }
%struct.TYPE_26__ = type { i64, i32*, i32, i64 }
%struct.TYPE_30__ = type { i64, i32, i32 }

@yypcb = common dso_local global %struct.TYPE_31__* null, align 8
@DT_TYPE_NAMELEN = common dso_local global i32 0, align 4
@CTF_ADD_NONROOT = common dso_local global i32 0, align 4
@CTF_ADD_ROOT = common dso_local global i32 0, align 4
@DT_DA_USER = common dso_local global i32 0, align 4
@DTT_FL_USER = common dso_local global i64 0, align 8
@CTF_K_FUNCTION = common dso_local global i64 0, align 8
@CTF_K_POINTER = common dso_local global i64 0, align 8
@D_UNKNOWN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"cannot find type: %s*: %s\0A\00", align 1
@CTF_K_ARRAY = common dso_local global i64 0, align 8
@DT_NODE_TYPE = common dso_local global i64 0, align 8
@CTF_ERR = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [25 x i8] c"failed to copy type: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"long\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"failed to create array type: %s\0A\00", align 1
@DT_DA_SIGNED = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [8 x i8] c"signed \00", align 1
@DT_DA_UNSIGNED = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [10 x i8] c"unsigned \00", align 1
@DT_DA_SHORT = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [7 x i8] c"short \00", align 1
@DT_DA_LONG = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [6 x i8] c"long \00", align 1
@DT_DA_LONGLONG = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [11 x i8] c"long long \00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"int\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"struct \00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"union \00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"enum \00", align 1
@.str.13 = private unnamed_addr constant [36 x i8] c"internal error -- bad decl kind %u\0A\00", align 1
@.str.14 = private unnamed_addr constant [31 x i8] c"failed to resolve type %s: %s\0A\00", align 1
@.str.15 = private unnamed_addr constant [38 x i8] c"failed to add forward tag for %s: %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dt_decl_type(%struct.TYPE_29__* %0, %struct.TYPE_26__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_29__*, align 8
  %5 = alloca %struct.TYPE_26__*, align 8
  %6 = alloca %struct.TYPE_27__*, align 8
  %7 = alloca %struct.TYPE_28__*, align 8
  %8 = alloca %struct.TYPE_30__, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.TYPE_29__* %0, %struct.TYPE_29__** %4, align 8
  store %struct.TYPE_26__* %1, %struct.TYPE_26__** %5, align 8
  %16 = load %struct.TYPE_31__*, %struct.TYPE_31__** @yypcb, align 8
  %17 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %16, i32 0, i32 2
  %18 = load %struct.TYPE_27__*, %struct.TYPE_27__** %17, align 8
  store %struct.TYPE_27__* %18, %struct.TYPE_27__** %6, align 8
  %19 = load i32, i32* @DT_TYPE_NAMELEN, align 4
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %10, align 8
  %22 = alloca i8, i64 %20, align 16
  store i64 %20, i64* %11, align 8
  %23 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %23, i32 0, i32 3
  store i64 0, i64* %24, align 8
  %25 = load %struct.TYPE_31__*, %struct.TYPE_31__** @yypcb, align 8
  %26 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %2
  %30 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %30, i32 0, i32 2
  %32 = load %struct.TYPE_28__*, %struct.TYPE_28__** %31, align 8
  br label %37

33:                                               ; preds = %2
  %34 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_28__*, %struct.TYPE_28__** %35, align 8
  br label %37

37:                                               ; preds = %33, %29
  %38 = phi %struct.TYPE_28__* [ %32, %29 ], [ %36, %33 ]
  store %struct.TYPE_28__* %38, %struct.TYPE_28__** %7, align 8
  %39 = load %struct.TYPE_31__*, %struct.TYPE_31__** @yypcb, align 8
  %40 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %37
  %45 = load i32, i32* @CTF_ADD_NONROOT, align 4
  br label %48

46:                                               ; preds = %37
  %47 = load i32, i32* @CTF_ADD_ROOT, align 4
  br label %48

48:                                               ; preds = %46, %44
  %49 = phi i32 [ %45, %44 ], [ %47, %46 ]
  store i32 %49, i32* %12, align 4
  %50 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @DT_DA_USER, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %48
  %57 = load i64, i64* @DTT_FL_USER, align 8
  %58 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %58, i32 0, i32 3
  store i64 %57, i64* %59, align 8
  br label %60

60:                                               ; preds = %56, %48
  %61 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %61, i32 0, i32 4
  %63 = load i32*, i32** %62, align 8
  %64 = icmp ne i32* %63, null
  br i1 %64, label %65, label %88

65:                                               ; preds = %60
  %66 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %67 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %67, i32 0, i32 4
  %69 = load i32*, i32** %68, align 8
  %70 = call %struct.TYPE_28__* @dt_module_lookup_by_ctf(%struct.TYPE_27__* %66, i32* %69)
  store %struct.TYPE_28__* %70, %struct.TYPE_28__** %7, align 8
  %71 = icmp ne %struct.TYPE_28__* %70, null
  br i1 %71, label %72, label %88

72:                                               ; preds = %65
  %73 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %74 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %76, i32 0, i32 2
  store i32 %75, i32* %77, align 8
  %78 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %78, i32 0, i32 4
  %80 = load i32*, i32** %79, align 8
  %81 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %81, i32 0, i32 1
  store i32* %80, i32** %82, align 8
  %83 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %86, i32 0, i32 0
  store i64 %85, i64* %87, align 8
  store i32 0, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %533

88:                                               ; preds = %65, %60
  %89 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %89, i32 0, i32 2
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @CTF_K_FUNCTION, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %94, label %110

94:                                               ; preds = %88
  %95 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %96 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %95, i32 0, i32 0
  %97 = load %struct.TYPE_28__*, %struct.TYPE_28__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %100, i32 0, i32 2
  store i32 %99, i32* %101, align 8
  %102 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %103 = call i32* @DT_FUNC_CTFP(%struct.TYPE_27__* %102)
  %104 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %104, i32 0, i32 1
  store i32* %103, i32** %105, align 8
  %106 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %107 = call i64 @DT_FUNC_TYPE(%struct.TYPE_27__* %106)
  %108 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %109 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %108, i32 0, i32 0
  store i64 %107, i64* %109, align 8
  store i32 0, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %533

110:                                              ; preds = %88
  %111 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %112 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %111, i32 0, i32 2
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* @CTF_K_POINTER, align 8
  %115 = icmp eq i64 %113, %114
  br i1 %115, label %116, label %168

116:                                              ; preds = %110
  %117 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %118 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %117, i32 0, i32 6
  %119 = load %struct.TYPE_29__*, %struct.TYPE_29__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %119, i32 0, i32 2
  %121 = load i64, i64* %120, align 8
  %122 = load i64, i64* @CTF_K_FUNCTION, align 8
  %123 = icmp eq i64 %121, %122
  br i1 %123, label %124, label %140

124:                                              ; preds = %116
  %125 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %126 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %125, i32 0, i32 0
  %127 = load %struct.TYPE_28__*, %struct.TYPE_28__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 8
  %130 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %131 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %130, i32 0, i32 2
  store i32 %129, i32* %131, align 8
  %132 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %133 = call i32* @DT_FPTR_CTFP(%struct.TYPE_27__* %132)
  %134 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %135 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %134, i32 0, i32 1
  store i32* %133, i32** %135, align 8
  %136 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %137 = call i64 @DT_FPTR_TYPE(%struct.TYPE_27__* %136)
  %138 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %139 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %138, i32 0, i32 0
  store i64 %137, i64* %139, align 8
  store i32 0, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %533

140:                                              ; preds = %116
  %141 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %142 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %141, i32 0, i32 6
  %143 = load %struct.TYPE_29__*, %struct.TYPE_29__** %142, align 8
  %144 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %145 = call i32 @dt_decl_type(%struct.TYPE_29__* %143, %struct.TYPE_26__* %144)
  store i32 %145, i32* %14, align 4
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %147, label %166

147:                                              ; preds = %140
  %148 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %149 = call i32 @dt_type_pointer(%struct.TYPE_26__* %148)
  store i32 %149, i32* %14, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %166

151:                                              ; preds = %147
  %152 = load i32, i32* @D_UNKNOWN, align 4
  %153 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %154 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %153, i32 0, i32 1
  %155 = load i32*, i32** %154, align 8
  %156 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %157 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %156, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  %159 = trunc i64 %20 to i32
  %160 = call i8* @dt_type_name(i32* %155, i64 %158, i8* %22, i32 %159)
  %161 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %162 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 8
  %164 = call i32 @ctf_errmsg(i32 %163)
  %165 = call i32 (i32, i8*, ...) @xywarn(i32 %152, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i8* %160, i32 %164)
  br label %166

166:                                              ; preds = %151, %147, %140
  %167 = load i32, i32* %14, align 4
  store i32 %167, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %533

168:                                              ; preds = %110
  %169 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %170 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %169, i32 0, i32 2
  %171 = load i64, i64* %170, align 8
  %172 = load i64, i64* @CTF_K_ARRAY, align 8
  %173 = icmp eq i64 %171, %172
  br i1 %173, label %174, label %331

174:                                              ; preds = %168
  %175 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %176 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %175, i32 0, i32 5
  %177 = load %struct.TYPE_25__*, %struct.TYPE_25__** %176, align 8
  %178 = icmp ne %struct.TYPE_25__* %177, null
  br i1 %178, label %179, label %203

179:                                              ; preds = %174
  %180 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %181 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %180, i32 0, i32 5
  %182 = load %struct.TYPE_25__*, %struct.TYPE_25__** %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %182, i32 0, i32 0
  %184 = load i64, i64* %183, align 8
  %185 = load i64, i64* @DT_NODE_TYPE, align 8
  %186 = icmp eq i64 %184, %185
  br i1 %186, label %187, label %203

187:                                              ; preds = %179
  %188 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %189 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %188, i32 0, i32 0
  %190 = load %struct.TYPE_28__*, %struct.TYPE_28__** %189, align 8
  %191 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 8
  %193 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %194 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %193, i32 0, i32 2
  store i32 %192, i32* %194, align 8
  %195 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %196 = call i32* @DT_DYN_CTFP(%struct.TYPE_27__* %195)
  %197 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %198 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %197, i32 0, i32 1
  store i32* %196, i32** %198, align 8
  %199 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %200 = call i64 @DT_DYN_TYPE(%struct.TYPE_27__* %199)
  %201 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %202 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %201, i32 0, i32 0
  store i64 %200, i64* %202, align 8
  store i32 0, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %533

203:                                              ; preds = %179, %174
  %204 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %205 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %204, i32 0, i32 6
  %206 = load %struct.TYPE_29__*, %struct.TYPE_29__** %205, align 8
  %207 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %208 = call i32 @dt_decl_type(%struct.TYPE_29__* %206, %struct.TYPE_26__* %207)
  store i32 %208, i32* %14, align 4
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %212

210:                                              ; preds = %203
  %211 = load i32, i32* %14, align 4
  store i32 %211, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %533

212:                                              ; preds = %203
  %213 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %214 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %213, i32 0, i32 1
  %215 = load i32*, i32** %214, align 8
  %216 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %217 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %216, i32 0, i32 0
  %218 = load i32*, i32** %217, align 8
  %219 = icmp ne i32* %215, %218
  br i1 %219, label %220, label %268

220:                                              ; preds = %212
  %221 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %222 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %221, i32 0, i32 1
  %223 = load i32*, i32** %222, align 8
  %224 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %225 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %224, i32 0, i32 0
  %226 = load i32*, i32** %225, align 8
  %227 = call i32* @ctf_parent_file(i32* %226)
  %228 = icmp ne i32* %223, %227
  br i1 %228, label %229, label %268

229:                                              ; preds = %220
  %230 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %231 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %230, i32 0, i32 0
  %232 = load i32*, i32** %231, align 8
  %233 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %234 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %233, i32 0, i32 1
  %235 = load i32*, i32** %234, align 8
  %236 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %237 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %236, i32 0, i32 0
  %238 = load i64, i64* %237, align 8
  %239 = call i64 @ctf_add_type(i32* %232, i32* %235, i64 %238)
  %240 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %241 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %240, i32 0, i32 0
  store i64 %239, i64* %241, align 8
  %242 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %243 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %242, i32 0, i32 0
  %244 = load i32*, i32** %243, align 8
  %245 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %246 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %245, i32 0, i32 1
  store i32* %244, i32** %246, align 8
  %247 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %248 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %247, i32 0, i32 0
  %249 = load i64, i64* %248, align 8
  %250 = load i64, i64* @CTF_ERR, align 8
  %251 = icmp eq i64 %249, %250
  br i1 %251, label %259, label %252

252:                                              ; preds = %229
  %253 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %254 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %253, i32 0, i32 1
  %255 = load i32*, i32** %254, align 8
  %256 = call i64 @ctf_update(i32* %255)
  %257 = load i64, i64* @CTF_ERR, align 8
  %258 = icmp eq i64 %256, %257
  br i1 %258, label %259, label %267

259:                                              ; preds = %252, %229
  %260 = load i32, i32* @D_UNKNOWN, align 4
  %261 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %262 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %261, i32 0, i32 1
  %263 = load i32*, i32** %262, align 8
  %264 = call i32 @ctf_errno(i32* %263)
  %265 = call i32 @ctf_errmsg(i32 %264)
  %266 = call i32 (i32, i8*, ...) @xywarn(i32 %260, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %265)
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %533

267:                                              ; preds = %252
  br label %268

268:                                              ; preds = %267, %220, %212
  %269 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %270 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %269, i32 0, i32 0
  %271 = load i64, i64* %270, align 8
  %272 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %8, i32 0, i32 0
  store i64 %271, i64* %272, align 8
  %273 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %274 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %273, i32 0, i32 1
  %275 = load i32*, i32** %274, align 8
  %276 = call i32 @ctf_lookup_by_name(i32* %275, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %277 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %8, i32 0, i32 2
  store i32 %276, i32* %277, align 4
  %278 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %279 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %278, i32 0, i32 5
  %280 = load %struct.TYPE_25__*, %struct.TYPE_25__** %279, align 8
  %281 = icmp ne %struct.TYPE_25__* %280, null
  br i1 %281, label %282, label %289

282:                                              ; preds = %268
  %283 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %284 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %283, i32 0, i32 5
  %285 = load %struct.TYPE_25__*, %struct.TYPE_25__** %284, align 8
  %286 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %285, i32 0, i32 1
  %287 = load i64, i64* %286, align 8
  %288 = trunc i64 %287 to i32
  br label %290

289:                                              ; preds = %268
  br label %290

290:                                              ; preds = %289, %282
  %291 = phi i32 [ %288, %282 ], [ 0, %289 ]
  %292 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %8, i32 0, i32 1
  store i32 %291, i32* %292, align 8
  %293 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %294 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %293, i32 0, i32 1
  %295 = load i32, i32* %294, align 8
  %296 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %297 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %296, i32 0, i32 2
  store i32 %295, i32* %297, align 8
  %298 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %299 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %298, i32 0, i32 0
  %300 = load i32*, i32** %299, align 8
  %301 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %302 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %301, i32 0, i32 1
  store i32* %300, i32** %302, align 8
  %303 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %304 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %303, i32 0, i32 0
  %305 = load i32*, i32** %304, align 8
  %306 = load i32, i32* @CTF_ADD_ROOT, align 4
  %307 = call i64 @ctf_add_array(i32* %305, i32 %306, %struct.TYPE_30__* %8)
  %308 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %309 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %308, i32 0, i32 0
  store i64 %307, i64* %309, align 8
  %310 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %311 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %310, i32 0, i32 0
  %312 = load i64, i64* %311, align 8
  %313 = load i64, i64* @CTF_ERR, align 8
  %314 = icmp eq i64 %312, %313
  br i1 %314, label %322, label %315

315:                                              ; preds = %290
  %316 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %317 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %316, i32 0, i32 1
  %318 = load i32*, i32** %317, align 8
  %319 = call i64 @ctf_update(i32* %318)
  %320 = load i64, i64* @CTF_ERR, align 8
  %321 = icmp eq i64 %319, %320
  br i1 %321, label %322, label %330

322:                                              ; preds = %315, %290
  %323 = load i32, i32* @D_UNKNOWN, align 4
  %324 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %325 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %324, i32 0, i32 1
  %326 = load i32*, i32** %325, align 8
  %327 = call i32 @ctf_errno(i32* %326)
  %328 = call i32 @ctf_errmsg(i32 %327)
  %329 = call i32 (i32, i8*, ...) @xywarn(i32 %323, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32 %328)
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %533

330:                                              ; preds = %315
  store i32 0, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %533

331:                                              ; preds = %168
  %332 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %333 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %332, i32 0, i32 3
  %334 = load i8*, i8** %333, align 8
  %335 = icmp ne i8* %334, null
  br i1 %335, label %336, label %342

336:                                              ; preds = %331
  %337 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %338 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %337, i32 0, i32 3
  %339 = load i8*, i8** %338, align 8
  %340 = call i32 @strlen(i8* %339)
  %341 = add nsw i32 %340, 20
  br label %343

342:                                              ; preds = %331
  br label %343

343:                                              ; preds = %342, %336
  %344 = phi i32 [ %341, %336 ], [ 20, %342 ]
  %345 = call i8* @alloca(i32 %344)
  store i8* %345, i8** %13, align 8
  %346 = load i8*, i8** %13, align 8
  %347 = getelementptr inbounds i8, i8* %346, i64 0
  store i8 0, i8* %347, align 1
  %348 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %349 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %348, i32 0, i32 2
  %350 = load i64, i64* %349, align 8
  switch i64 %350, label %425 [
    i64 131, label %351
    i64 132, label %351
    i64 130, label %415
    i64 128, label %418
    i64 133, label %421
    i64 129, label %424
  ]

351:                                              ; preds = %343, %343
  %352 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %353 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %352, i32 0, i32 0
  %354 = load i32, i32* %353, align 8
  %355 = load i32, i32* @DT_DA_SIGNED, align 4
  %356 = and i32 %354, %355
  %357 = icmp ne i32 %356, 0
  br i1 %357, label %358, label %361

358:                                              ; preds = %351
  %359 = load i8*, i8** %13, align 8
  %360 = call i32 @strcat(i8* %359, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  br label %361

361:                                              ; preds = %358, %351
  %362 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %363 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %362, i32 0, i32 0
  %364 = load i32, i32* %363, align 8
  %365 = load i32, i32* @DT_DA_UNSIGNED, align 4
  %366 = and i32 %364, %365
  %367 = icmp ne i32 %366, 0
  br i1 %367, label %368, label %371

368:                                              ; preds = %361
  %369 = load i8*, i8** %13, align 8
  %370 = call i32 @strcat(i8* %369, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  br label %371

371:                                              ; preds = %368, %361
  %372 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %373 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %372, i32 0, i32 0
  %374 = load i32, i32* %373, align 8
  %375 = load i32, i32* @DT_DA_SHORT, align 4
  %376 = and i32 %374, %375
  %377 = icmp ne i32 %376, 0
  br i1 %377, label %378, label %381

378:                                              ; preds = %371
  %379 = load i8*, i8** %13, align 8
  %380 = call i32 @strcat(i8* %379, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  br label %381

381:                                              ; preds = %378, %371
  %382 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %383 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %382, i32 0, i32 0
  %384 = load i32, i32* %383, align 8
  %385 = load i32, i32* @DT_DA_LONG, align 4
  %386 = and i32 %384, %385
  %387 = icmp ne i32 %386, 0
  br i1 %387, label %388, label %391

388:                                              ; preds = %381
  %389 = load i8*, i8** %13, align 8
  %390 = call i32 @strcat(i8* %389, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0))
  br label %391

391:                                              ; preds = %388, %381
  %392 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %393 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %392, i32 0, i32 0
  %394 = load i32, i32* %393, align 8
  %395 = load i32, i32* @DT_DA_LONGLONG, align 4
  %396 = and i32 %394, %395
  %397 = icmp ne i32 %396, 0
  br i1 %397, label %398, label %401

398:                                              ; preds = %391
  %399 = load i8*, i8** %13, align 8
  %400 = call i32 @strcat(i8* %399, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0))
  br label %401

401:                                              ; preds = %398, %391
  %402 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %403 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %402, i32 0, i32 0
  %404 = load i32, i32* %403, align 8
  %405 = icmp eq i32 %404, 0
  br i1 %405, label %406, label %414

406:                                              ; preds = %401
  %407 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %408 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %407, i32 0, i32 3
  %409 = load i8*, i8** %408, align 8
  %410 = icmp eq i8* %409, null
  br i1 %410, label %411, label %414

411:                                              ; preds = %406
  %412 = load i8*, i8** %13, align 8
  %413 = call i32 @strcat(i8* %412, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0))
  br label %414

414:                                              ; preds = %411, %406, %401
  br label %431

415:                                              ; preds = %343
  %416 = load i8*, i8** %13, align 8
  %417 = call i32 @strcpy(i8* %416, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0))
  br label %431

418:                                              ; preds = %343
  %419 = load i8*, i8** %13, align 8
  %420 = call i32 @strcpy(i8* %419, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0))
  br label %431

421:                                              ; preds = %343
  %422 = load i8*, i8** %13, align 8
  %423 = call i32 @strcpy(i8* %422, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0))
  br label %431

424:                                              ; preds = %343
  br label %431

425:                                              ; preds = %343
  %426 = load i32, i32* @D_UNKNOWN, align 4
  %427 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %428 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %427, i32 0, i32 2
  %429 = load i64, i64* %428, align 8
  %430 = call i32 (i32, i8*, ...) @xywarn(i32 %426, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.13, i64 0, i64 0), i64 %429)
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %533

431:                                              ; preds = %424, %421, %418, %415, %414
  %432 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %433 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %432, i32 0, i32 3
  %434 = load i8*, i8** %433, align 8
  %435 = icmp ne i8* %434, null
  br i1 %435, label %436, label %458

436:                                              ; preds = %431
  %437 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %438 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %437, i32 0, i32 2
  %439 = load i64, i64* %438, align 8
  %440 = icmp ne i64 %439, 131
  br i1 %440, label %452, label %441

441:                                              ; preds = %436
  %442 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %443 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %442, i32 0, i32 0
  %444 = load i32, i32* %443, align 8
  %445 = load i32, i32* @DT_DA_SHORT, align 4
  %446 = load i32, i32* @DT_DA_LONG, align 4
  %447 = or i32 %445, %446
  %448 = load i32, i32* @DT_DA_LONGLONG, align 4
  %449 = or i32 %447, %448
  %450 = and i32 %444, %449
  %451 = icmp eq i32 %450, 0
  br i1 %451, label %452, label %458

452:                                              ; preds = %441, %436
  %453 = load i8*, i8** %13, align 8
  %454 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %455 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %454, i32 0, i32 3
  %456 = load i8*, i8** %455, align 8
  %457 = call i32 @strcat(i8* %453, i8* %456)
  br label %458

458:                                              ; preds = %452, %441, %431
  %459 = load i8*, i8** %13, align 8
  %460 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %461 = call i32 @dt_type_lookup(i8* %459, %struct.TYPE_26__* %460)
  store i32 %461, i32* %14, align 4
  %462 = icmp eq i32 %461, 0
  br i1 %462, label %463, label %465

463:                                              ; preds = %458
  %464 = load i32, i32* %14, align 4
  store i32 %464, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %533

465:                                              ; preds = %458
  %466 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %467 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %466, i32 0, i32 2
  %468 = load i64, i64* %467, align 8
  switch i64 %468, label %482 [
    i64 130, label %469
    i64 128, label %469
    i64 133, label %469
  ]

469:                                              ; preds = %465, %465, %465
  %470 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %471 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %470, i32 0, i32 0
  %472 = load i32*, i32** %471, align 8
  %473 = load i32, i32* %12, align 4
  %474 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %475 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %474, i32 0, i32 3
  %476 = load i8*, i8** %475, align 8
  %477 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %478 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %477, i32 0, i32 2
  %479 = load i64, i64* %478, align 8
  %480 = trunc i64 %479 to i32
  %481 = call i64 @ctf_add_forward(i32* %472, i32 %473, i8* %476, i32 %480)
  store i64 %481, i64* %9, align 8
  br label %491

482:                                              ; preds = %465
  %483 = load i32, i32* @D_UNKNOWN, align 4
  %484 = load i8*, i8** %13, align 8
  %485 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %486 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %487 = call i32 @dtrace_errno(%struct.TYPE_27__* %486)
  %488 = call i32 @dtrace_errmsg(%struct.TYPE_27__* %485, i32 %487)
  %489 = call i32 (i32, i8*, ...) @xywarn(i32 %483, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.14, i64 0, i64 0), i8* %484, i32 %488)
  %490 = load i32, i32* %14, align 4
  store i32 %490, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %533

491:                                              ; preds = %469
  %492 = load i64, i64* %9, align 8
  %493 = load i64, i64* @CTF_ERR, align 8
  %494 = icmp eq i64 %492, %493
  br i1 %494, label %502, label %495

495:                                              ; preds = %491
  %496 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %497 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %496, i32 0, i32 0
  %498 = load i32*, i32** %497, align 8
  %499 = call i64 @ctf_update(i32* %498)
  %500 = load i64, i64* @CTF_ERR, align 8
  %501 = icmp eq i64 %499, %500
  br i1 %501, label %502, label %511

502:                                              ; preds = %495, %491
  %503 = load i32, i32* @D_UNKNOWN, align 4
  %504 = load i8*, i8** %13, align 8
  %505 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %506 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %505, i32 0, i32 0
  %507 = load i32*, i32** %506, align 8
  %508 = call i32 @ctf_errno(i32* %507)
  %509 = call i32 @ctf_errmsg(i32 %508)
  %510 = call i32 (i32, i8*, ...) @xywarn(i32 %503, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.15, i64 0, i64 0), i8* %504, i32 %509)
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %533

511:                                              ; preds = %495
  %512 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %513 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %512, i32 0, i32 0
  %514 = load i32*, i32** %513, align 8
  %515 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %516 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %515, i32 0, i32 4
  store i32* %514, i32** %516, align 8
  %517 = load i64, i64* %9, align 8
  %518 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %519 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %518, i32 0, i32 1
  store i64 %517, i64* %519, align 8
  %520 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %521 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %520, i32 0, i32 1
  %522 = load i32, i32* %521, align 8
  %523 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %524 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %523, i32 0, i32 2
  store i32 %522, i32* %524, align 8
  %525 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %526 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %525, i32 0, i32 0
  %527 = load i32*, i32** %526, align 8
  %528 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %529 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %528, i32 0, i32 1
  store i32* %527, i32** %529, align 8
  %530 = load i64, i64* %9, align 8
  %531 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %532 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %531, i32 0, i32 0
  store i64 %530, i64* %532, align 8
  store i32 0, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %533

533:                                              ; preds = %511, %502, %482, %463, %425, %330, %322, %259, %210, %187, %166, %124, %94, %72
  %534 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %534)
  %535 = load i32, i32* %3, align 4
  ret i32 %535
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.TYPE_28__* @dt_module_lookup_by_ctf(%struct.TYPE_27__*, i32*) #2

declare dso_local i32* @DT_FUNC_CTFP(%struct.TYPE_27__*) #2

declare dso_local i64 @DT_FUNC_TYPE(%struct.TYPE_27__*) #2

declare dso_local i32* @DT_FPTR_CTFP(%struct.TYPE_27__*) #2

declare dso_local i64 @DT_FPTR_TYPE(%struct.TYPE_27__*) #2

declare dso_local i32 @dt_type_pointer(%struct.TYPE_26__*) #2

declare dso_local i32 @xywarn(i32, i8*, ...) #2

declare dso_local i8* @dt_type_name(i32*, i64, i8*, i32) #2

declare dso_local i32 @ctf_errmsg(i32) #2

declare dso_local i32* @DT_DYN_CTFP(%struct.TYPE_27__*) #2

declare dso_local i64 @DT_DYN_TYPE(%struct.TYPE_27__*) #2

declare dso_local i32* @ctf_parent_file(i32*) #2

declare dso_local i64 @ctf_add_type(i32*, i32*, i64) #2

declare dso_local i64 @ctf_update(i32*) #2

declare dso_local i32 @ctf_errno(i32*) #2

declare dso_local i32 @ctf_lookup_by_name(i32*, i8*) #2

declare dso_local i64 @ctf_add_array(i32*, i32, %struct.TYPE_30__*) #2

declare dso_local i8* @alloca(i32) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @strcat(i8*, i8*) #2

declare dso_local i32 @strcpy(i8*, i8*) #2

declare dso_local i32 @dt_type_lookup(i8*, %struct.TYPE_26__*) #2

declare dso_local i64 @ctf_add_forward(i32*, i32, i8*, i32) #2

declare dso_local i32 @dtrace_errmsg(%struct.TYPE_27__*, i32) #2

declare dso_local i32 @dtrace_errno(%struct.TYPE_27__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
