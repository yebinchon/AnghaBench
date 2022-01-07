; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_decl.c_dt_decl_member.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_decl.c_dt_decl_member.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { %struct.TYPE_19__, i32, i32 }
%struct.TYPE_19__ = type { i8*, %struct.TYPE_23__*, %struct.TYPE_21__* }
%struct.TYPE_23__ = type { i64, i32* }
%struct.TYPE_21__ = type { i64, i32 }
%struct.TYPE_22__ = type { i64, i64 }
%struct.TYPE_20__ = type { i64, i64 }
%struct.TYPE_24__ = type { i64, i64 }

@yypcb = common dso_local global %struct.TYPE_25__* null, align 8
@.str = private unnamed_addr constant [7 x i8] c"(anon)\00", align 1
@DT_TYPE_NAMELEN = common dso_local global i32 0, align 4
@EDT_NOSCOPE = common dso_local global i32 0, align 4
@EDT_NODECL = common dso_local global i32 0, align 4
@D_DECL_MNAME = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"member declaration requires a name\0A\00", align 1
@CTF_K_UNKNOWN = common dso_local global i64 0, align 8
@CTF_K_INTEGER = common dso_local global i64 0, align 8
@EDT_COMPILER = common dso_local global i32 0, align 4
@D_DECL_SCOPE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [58 x i8] c"D scoping operator may not be used in a member name (%s)\0A\00", align 1
@D_DECL_DYNOBJ = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"cannot have dynamic member: %s\0A\00", align 1
@CTF_K_FORWARD = common dso_local global i64 0, align 8
@CTF_K_STRUCT = common dso_local global i64 0, align 8
@CTF_K_UNION = common dso_local global i64 0, align 8
@D_DECL_INCOMPLETE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [37 x i8] c"incomplete struct/union/enum %s: %s\0A\00", align 1
@D_DECL_VOIDOBJ = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [29 x i8] c"cannot have void member: %s\0A\00", align 1
@DT_IDFLG_REF = common dso_local global i32 0, align 4
@DT_NODE_INT = common dso_local global i64 0, align 8
@D_DECL_BFCONST = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [66 x i8] c"positive integral constant expression expected as bit-field size\0A\00", align 1
@CTF_ERR = common dso_local global i64 0, align 8
@D_DECL_BFTYPE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [32 x i8] c"invalid type for bit-field: %s\0A\00", align 1
@D_DECL_BFSIZE = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [32 x i8] c"bit-field too big for type: %s\0A\00", align 1
@CTF_ADD_NONROOT = common dso_local global i32 0, align 4
@D_UNKNOWN = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [43 x i8] c"failed to create type for member '%s': %s\0A\00", align 1
@.str.10 = private unnamed_addr constant [33 x i8] c"failed to copy type of '%s': %s\0A\00", align 1
@.str.11 = private unnamed_addr constant [34 x i8] c"failed to define member '%s': %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dt_decl_member(%struct.TYPE_22__* %0) #0 {
  %2 = alloca %struct.TYPE_22__*, align 8
  %3 = alloca %struct.TYPE_21__*, align 8
  %4 = alloca %struct.TYPE_23__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_20__, align 8
  %10 = alloca %struct.TYPE_24__, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %2, align 8
  %14 = load %struct.TYPE_25__*, %struct.TYPE_25__** @yypcb, align 8
  %15 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %15, i32 0, i32 2
  %17 = load %struct.TYPE_21__*, %struct.TYPE_21__** %16, align 8
  store %struct.TYPE_21__* %17, %struct.TYPE_21__** %3, align 8
  %18 = load %struct.TYPE_25__*, %struct.TYPE_25__** @yypcb, align 8
  %19 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %19, i32 0, i32 1
  %21 = load %struct.TYPE_23__*, %struct.TYPE_23__** %20, align 8
  store %struct.TYPE_23__* %21, %struct.TYPE_23__** %4, align 8
  %22 = load %struct.TYPE_25__*, %struct.TYPE_25__** @yypcb, align 8
  %23 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  store i8* %25, i8** %5, align 8
  %26 = load i8*, i8** %5, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %28, label %30

28:                                               ; preds = %1
  %29 = load i8*, i8** %5, align 8
  br label %31

30:                                               ; preds = %1
  br label %31

31:                                               ; preds = %30, %28
  %32 = phi i8* [ %29, %28 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), %30 ]
  store i8* %32, i8** %6, align 8
  %33 = load i32, i32* @DT_TYPE_NAMELEN, align 4
  %34 = zext i32 %33 to i64
  %35 = call i8* @llvm.stacksave()
  store i8* %35, i8** %7, align 8
  %36 = alloca i8, i64 %34, align 16
  store i64 %34, i64* %8, align 8
  %37 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %38 = icmp eq %struct.TYPE_21__* %37, null
  br i1 %38, label %39, label %45

39:                                               ; preds = %31
  %40 = load %struct.TYPE_25__*, %struct.TYPE_25__** @yypcb, align 8
  %41 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @EDT_NOSCOPE, align 4
  %44 = call i32 @longjmp(i32 %42, i32 %43)
  br label %45

45:                                               ; preds = %39, %31
  %46 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %47 = icmp eq %struct.TYPE_23__* %46, null
  br i1 %47, label %48, label %54

48:                                               ; preds = %45
  %49 = load %struct.TYPE_25__*, %struct.TYPE_25__** @yypcb, align 8
  %50 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @EDT_NODECL, align 4
  %53 = call i32 @longjmp(i32 %51, i32 %52)
  br label %54

54:                                               ; preds = %48, %45
  %55 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %56 = icmp eq %struct.TYPE_22__* %55, null
  br i1 %56, label %57, label %63

57:                                               ; preds = %54
  %58 = load i8*, i8** %5, align 8
  %59 = icmp eq i8* %58, null
  br i1 %59, label %60, label %63

60:                                               ; preds = %57
  %61 = load i32, i32* @D_DECL_MNAME, align 4
  %62 = call i32 (i32, i8*, ...) @xyerror(i32 %61, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  br label %63

63:                                               ; preds = %60, %57, %54
  %64 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @CTF_K_UNKNOWN, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %80

69:                                               ; preds = %63
  %70 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %70, i32 0, i32 1
  %72 = load i32*, i32** %71, align 8
  %73 = icmp eq i32* %72, null
  br i1 %73, label %74, label %80

74:                                               ; preds = %69
  %75 = load i64, i64* @CTF_K_INTEGER, align 8
  %76 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %76, i32 0, i32 0
  store i64 %75, i64* %77, align 8
  %78 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %79 = call i32 @dt_decl_check(%struct.TYPE_23__* %78)
  br label %80

80:                                               ; preds = %74, %69, %63
  %81 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %82 = call i64 @dt_decl_type(%struct.TYPE_23__* %81, %struct.TYPE_20__* %9)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %90

84:                                               ; preds = %80
  %85 = load %struct.TYPE_25__*, %struct.TYPE_25__** @yypcb, align 8
  %86 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @EDT_COMPILER, align 4
  %89 = call i32 @longjmp(i32 %87, i32 %88)
  br label %90

90:                                               ; preds = %84, %80
  %91 = load i8*, i8** %5, align 8
  %92 = icmp ne i8* %91, null
  br i1 %92, label %93, label %101

93:                                               ; preds = %90
  %94 = load i8*, i8** %5, align 8
  %95 = call i32* @strchr(i8* %94, i8 signext 96)
  %96 = icmp ne i32* %95, null
  br i1 %96, label %97, label %101

97:                                               ; preds = %93
  %98 = load i32, i32* @D_DECL_SCOPE, align 4
  %99 = load i8*, i8** %5, align 8
  %100 = call i32 (i32, i8*, ...) @xyerror(i32 %98, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.2, i64 0, i64 0), i8* %99)
  br label %101

101:                                              ; preds = %97, %93, %90
  %102 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %9, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load %struct.TYPE_25__*, %struct.TYPE_25__** @yypcb, align 8
  %105 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = call i64 @DT_DYN_CTFP(i32 %106)
  %108 = icmp eq i64 %103, %107
  br i1 %108, label %109, label %121

109:                                              ; preds = %101
  %110 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %9, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = load %struct.TYPE_25__*, %struct.TYPE_25__** @yypcb, align 8
  %113 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 8
  %115 = call i64 @DT_DYN_TYPE(i32 %114)
  %116 = icmp eq i64 %111, %115
  br i1 %116, label %117, label %121

117:                                              ; preds = %109
  %118 = load i32, i32* @D_DECL_DYNOBJ, align 4
  %119 = load i8*, i8** %5, align 8
  %120 = call i32 (i32, i8*, ...) @xyerror(i32 %118, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i8* %119)
  br label %121

121:                                              ; preds = %117, %109, %101
  %122 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %9, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %9, i32 0, i32 1
  %125 = load i64, i64* %124, align 8
  %126 = call i32 @ctf_type_resolve(i64 %123, i64 %125)
  store i32 %126, i32* %11, align 4
  %127 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %9, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = load i32, i32* %11, align 4
  %130 = call i64 @ctf_type_kind(i64 %128, i32 %129)
  store i64 %130, i64* %12, align 8
  %131 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %9, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = load i32, i32* %11, align 4
  %134 = call i64 @ctf_type_size(i64 %132, i32 %133)
  store i64 %134, i64* %13, align 8
  %135 = load i64, i64* %12, align 8
  %136 = load i64, i64* @CTF_K_FORWARD, align 8
  %137 = icmp eq i64 %135, %136
  br i1 %137, label %149, label %138

138:                                              ; preds = %121
  %139 = load i64, i64* %12, align 8
  %140 = load i64, i64* @CTF_K_STRUCT, align 8
  %141 = icmp eq i64 %139, %140
  br i1 %141, label %146, label %142

142:                                              ; preds = %138
  %143 = load i64, i64* %12, align 8
  %144 = load i64, i64* @CTF_K_UNION, align 8
  %145 = icmp eq i64 %143, %144
  br i1 %145, label %146, label %159

146:                                              ; preds = %142, %138
  %147 = load i64, i64* %13, align 8
  %148 = icmp eq i64 %147, 0
  br i1 %148, label %149, label %159

149:                                              ; preds = %146, %121
  %150 = load i32, i32* @D_DECL_INCOMPLETE, align 4
  %151 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %9, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %9, i32 0, i32 1
  %154 = load i64, i64* %153, align 8
  %155 = trunc i64 %34 to i32
  %156 = call i8* @dt_type_name(i64 %152, i64 %154, i8* %36, i32 %155)
  %157 = load i8*, i8** %5, align 8
  %158 = call i32 (i32, i8*, ...) @xyerror(i32 %150, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i8* %156, i8* %157)
  br label %159

159:                                              ; preds = %149, %146, %142
  %160 = load i64, i64* %13, align 8
  %161 = icmp eq i64 %160, 0
  br i1 %161, label %162, label %166

162:                                              ; preds = %159
  %163 = load i32, i32* @D_DECL_VOIDOBJ, align 4
  %164 = load i8*, i8** %5, align 8
  %165 = call i32 (i32, i8*, ...) @xyerror(i32 %163, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0), i8* %164)
  br label %166

166:                                              ; preds = %162, %159
  %167 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %168 = icmp ne %struct.TYPE_22__* %167, null
  br i1 %168, label %169, label %278

169:                                              ; preds = %166
  %170 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %171 = load i32, i32* @DT_IDFLG_REF, align 4
  %172 = call %struct.TYPE_22__* @dt_node_cook(%struct.TYPE_22__* %170, i32 %171)
  store %struct.TYPE_22__* %172, %struct.TYPE_22__** %2, align 8
  %173 = load i8*, i8** %5, align 8
  %174 = icmp eq i8* %173, null
  br i1 %174, label %175, label %189

175:                                              ; preds = %169
  %176 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %177 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %176, i32 0, i32 0
  %178 = load i64, i64* %177, align 8
  %179 = load i64, i64* @DT_NODE_INT, align 8
  %180 = icmp eq i64 %178, %179
  br i1 %180, label %181, label %189

181:                                              ; preds = %175
  %182 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %183 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %182, i32 0, i32 1
  %184 = load i64, i64* %183, align 8
  %185 = icmp eq i64 %184, 0
  br i1 %185, label %186, label %189

186:                                              ; preds = %181
  %187 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %188 = call i32 @dt_node_free(%struct.TYPE_22__* %187)
  br label %349

189:                                              ; preds = %181, %175, %169
  %190 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %191 = call i64 @dt_node_is_posconst(%struct.TYPE_22__* %190)
  %192 = icmp eq i64 %191, 0
  br i1 %192, label %193, label %196

193:                                              ; preds = %189
  %194 = load i32, i32* @D_DECL_BFCONST, align 4
  %195 = call i32 (i32, i8*, ...) @xyerror(i32 %194, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.6, i64 0, i64 0))
  br label %196

196:                                              ; preds = %193, %189
  %197 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %9, i32 0, i32 0
  %198 = load i64, i64* %197, align 8
  %199 = load i32, i32* %11, align 4
  %200 = call i64 @ctf_type_kind(i64 %198, i32 %199)
  %201 = load i64, i64* @CTF_K_INTEGER, align 8
  %202 = icmp ne i64 %200, %201
  br i1 %202, label %218, label %203

203:                                              ; preds = %196
  %204 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %9, i32 0, i32 0
  %205 = load i64, i64* %204, align 8
  %206 = load i32, i32* %11, align 4
  %207 = call i64 @ctf_type_encoding(i64 %205, i32 %206, %struct.TYPE_24__* %10)
  %208 = load i64, i64* @CTF_ERR, align 8
  %209 = icmp eq i64 %207, %208
  br i1 %209, label %218, label %210

210:                                              ; preds = %203
  %211 = bitcast %struct.TYPE_24__* %10 to { i64, i64 }*
  %212 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %211, i32 0, i32 0
  %213 = load i64, i64* %212, align 8
  %214 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %211, i32 0, i32 1
  %215 = load i64, i64* %214, align 8
  %216 = call i64 @IS_VOID(i64 %213, i64 %215)
  %217 = icmp ne i64 %216, 0
  br i1 %217, label %218, label %222

218:                                              ; preds = %210, %203, %196
  %219 = load i32, i32* @D_DECL_BFTYPE, align 4
  %220 = load i8*, i8** %6, align 8
  %221 = call i32 (i32, i8*, ...) @xyerror(i32 %219, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0), i8* %220)
  br label %222

222:                                              ; preds = %218, %210
  %223 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %224 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %223, i32 0, i32 1
  %225 = load i64, i64* %224, align 8
  %226 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %10, i32 0, i32 0
  %227 = load i64, i64* %226, align 8
  %228 = icmp sgt i64 %225, %227
  br i1 %228, label %229, label %233

229:                                              ; preds = %222
  %230 = load i32, i32* @D_DECL_BFSIZE, align 4
  %231 = load i8*, i8** %6, align 8
  %232 = call i32 (i32, i8*, ...) @xyerror(i32 %230, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.8, i64 0, i64 0), i8* %231)
  br label %233

233:                                              ; preds = %229, %222
  %234 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %10, i32 0, i32 1
  store i64 0, i64* %234, align 8
  %235 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %236 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %235, i32 0, i32 1
  %237 = load i64, i64* %236, align 8
  %238 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %10, i32 0, i32 0
  store i64 %237, i64* %238, align 8
  %239 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %240 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %239, i32 0, i32 0
  %241 = load i64, i64* %240, align 8
  %242 = load i32, i32* @CTF_ADD_NONROOT, align 4
  %243 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %9, i32 0, i32 0
  %244 = load i64, i64* %243, align 8
  %245 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %9, i32 0, i32 1
  %246 = load i64, i64* %245, align 8
  %247 = trunc i64 %34 to i32
  %248 = call i32 @ctf_type_name(i64 %244, i64 %246, i8* %36, i32 %247)
  %249 = call i64 @ctf_add_integer(i64 %241, i32 %242, i32 %248, %struct.TYPE_24__* %10)
  %250 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %9, i32 0, i32 1
  store i64 %249, i64* %250, align 8
  %251 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %9, i32 0, i32 1
  %252 = load i64, i64* %251, align 8
  %253 = load i64, i64* @CTF_ERR, align 8
  %254 = icmp eq i64 %252, %253
  br i1 %254, label %262, label %255

255:                                              ; preds = %233
  %256 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %257 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %256, i32 0, i32 0
  %258 = load i64, i64* %257, align 8
  %259 = call i64 @ctf_update(i64 %258)
  %260 = load i64, i64* @CTF_ERR, align 8
  %261 = icmp eq i64 %259, %260
  br i1 %261, label %262, label %271

262:                                              ; preds = %255, %233
  %263 = load i32, i32* @D_UNKNOWN, align 4
  %264 = load i8*, i8** %6, align 8
  %265 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %266 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %265, i32 0, i32 0
  %267 = load i64, i64* %266, align 8
  %268 = call i32 @ctf_errno(i64 %267)
  %269 = call i8* @ctf_errmsg(i32 %268)
  %270 = call i32 (i32, i8*, ...) @xyerror(i32 %263, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.9, i64 0, i64 0), i8* %264, i8* %269)
  br label %271

271:                                              ; preds = %262, %255
  %272 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %273 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %272, i32 0, i32 0
  %274 = load i64, i64* %273, align 8
  %275 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %9, i32 0, i32 0
  store i64 %274, i64* %275, align 8
  %276 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %277 = call i32 @dt_node_free(%struct.TYPE_22__* %276)
  br label %278

278:                                              ; preds = %271, %166
  %279 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %9, i32 0, i32 0
  %280 = load i64, i64* %279, align 8
  %281 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %282 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %281, i32 0, i32 0
  %283 = load i64, i64* %282, align 8
  %284 = icmp ne i64 %280, %283
  br i1 %284, label %285, label %326

285:                                              ; preds = %278
  %286 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %9, i32 0, i32 0
  %287 = load i64, i64* %286, align 8
  %288 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %289 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %288, i32 0, i32 0
  %290 = load i64, i64* %289, align 8
  %291 = call i64 @ctf_parent_file(i64 %290)
  %292 = icmp ne i64 %287, %291
  br i1 %292, label %293, label %326

293:                                              ; preds = %285
  %294 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %295 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %294, i32 0, i32 0
  %296 = load i64, i64* %295, align 8
  %297 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %9, i32 0, i32 0
  %298 = load i64, i64* %297, align 8
  %299 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %9, i32 0, i32 1
  %300 = load i64, i64* %299, align 8
  %301 = call i64 @ctf_add_type(i64 %296, i64 %298, i64 %300)
  %302 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %9, i32 0, i32 1
  store i64 %301, i64* %302, align 8
  %303 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %304 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %303, i32 0, i32 0
  %305 = load i64, i64* %304, align 8
  %306 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %9, i32 0, i32 0
  store i64 %305, i64* %306, align 8
  %307 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %9, i32 0, i32 1
  %308 = load i64, i64* %307, align 8
  %309 = load i64, i64* @CTF_ERR, align 8
  %310 = icmp eq i64 %308, %309
  br i1 %310, label %317, label %311

311:                                              ; preds = %293
  %312 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %9, i32 0, i32 0
  %313 = load i64, i64* %312, align 8
  %314 = call i64 @ctf_update(i64 %313)
  %315 = load i64, i64* @CTF_ERR, align 8
  %316 = icmp eq i64 %314, %315
  br i1 %316, label %317, label %325

317:                                              ; preds = %311, %293
  %318 = load i32, i32* @D_UNKNOWN, align 4
  %319 = load i8*, i8** %6, align 8
  %320 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %9, i32 0, i32 0
  %321 = load i64, i64* %320, align 8
  %322 = call i32 @ctf_errno(i64 %321)
  %323 = call i8* @ctf_errmsg(i32 %322)
  %324 = call i32 (i32, i8*, ...) @xyerror(i32 %318, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.10, i64 0, i64 0), i8* %319, i8* %323)
  br label %325

325:                                              ; preds = %317, %311
  br label %326

326:                                              ; preds = %325, %285, %278
  %327 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %328 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %327, i32 0, i32 0
  %329 = load i64, i64* %328, align 8
  %330 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %331 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %330, i32 0, i32 1
  %332 = load i32, i32* %331, align 8
  %333 = load i8*, i8** %5, align 8
  %334 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %9, i32 0, i32 1
  %335 = load i64, i64* %334, align 8
  %336 = call i64 @ctf_add_member(i64 %329, i32 %332, i8* %333, i64 %335)
  %337 = load i64, i64* @CTF_ERR, align 8
  %338 = icmp eq i64 %336, %337
  br i1 %338, label %339, label %348

339:                                              ; preds = %326
  %340 = load i32, i32* @D_UNKNOWN, align 4
  %341 = load i8*, i8** %6, align 8
  %342 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %343 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %342, i32 0, i32 0
  %344 = load i64, i64* %343, align 8
  %345 = call i32 @ctf_errno(i64 %344)
  %346 = call i8* @ctf_errmsg(i32 %345)
  %347 = call i32 (i32, i8*, ...) @xyerror(i32 %340, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.11, i64 0, i64 0), i8* %341, i8* %346)
  br label %348

348:                                              ; preds = %339, %326
  br label %349

349:                                              ; preds = %348, %186
  %350 = load i8*, i8** %5, align 8
  %351 = call i32 @free(i8* %350)
  %352 = load %struct.TYPE_25__*, %struct.TYPE_25__** @yypcb, align 8
  %353 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %352, i32 0, i32 0
  %354 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %353, i32 0, i32 0
  store i8* null, i8** %354, align 8
  %355 = call i32 (...) @dt_decl_reset()
  %356 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %356)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @longjmp(i32, i32) #2

declare dso_local i32 @xyerror(i32, i8*, ...) #2

declare dso_local i32 @dt_decl_check(%struct.TYPE_23__*) #2

declare dso_local i64 @dt_decl_type(%struct.TYPE_23__*, %struct.TYPE_20__*) #2

declare dso_local i32* @strchr(i8*, i8 signext) #2

declare dso_local i64 @DT_DYN_CTFP(i32) #2

declare dso_local i64 @DT_DYN_TYPE(i32) #2

declare dso_local i32 @ctf_type_resolve(i64, i64) #2

declare dso_local i64 @ctf_type_kind(i64, i32) #2

declare dso_local i64 @ctf_type_size(i64, i32) #2

declare dso_local i8* @dt_type_name(i64, i64, i8*, i32) #2

declare dso_local %struct.TYPE_22__* @dt_node_cook(%struct.TYPE_22__*, i32) #2

declare dso_local i32 @dt_node_free(%struct.TYPE_22__*) #2

declare dso_local i64 @dt_node_is_posconst(%struct.TYPE_22__*) #2

declare dso_local i64 @ctf_type_encoding(i64, i32, %struct.TYPE_24__*) #2

declare dso_local i64 @IS_VOID(i64, i64) #2

declare dso_local i64 @ctf_add_integer(i64, i32, i32, %struct.TYPE_24__*) #2

declare dso_local i32 @ctf_type_name(i64, i64, i8*, i32) #2

declare dso_local i64 @ctf_update(i64) #2

declare dso_local i8* @ctf_errmsg(i32) #2

declare dso_local i32 @ctf_errno(i64) #2

declare dso_local i64 @ctf_parent_file(i64) #2

declare dso_local i64 @ctf_add_type(i64, i64, i64) #2

declare dso_local i64 @ctf_add_member(i64, i32, i8*, i64) #2

declare dso_local i32 @free(i8*) #2

declare dso_local i32 @dt_decl_reset(...) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
