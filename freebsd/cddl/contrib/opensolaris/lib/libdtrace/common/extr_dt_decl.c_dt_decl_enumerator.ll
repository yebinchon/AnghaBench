; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_decl.c_dt_decl_enumerator.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_decl.c_dt_decl_enumerator.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_27__ = type { %struct.TYPE_24__*, i32, i32, %struct.TYPE_22__*, %struct.TYPE_19__ }
%struct.TYPE_24__ = type { i64, %struct.TYPE_24__*, i64, i32 }
%struct.TYPE_22__ = type { i32, i32, %struct.TYPE_21__* }
%struct.TYPE_21__ = type { i64 }
%struct.TYPE_19__ = type { %struct.TYPE_23__* }
%struct.TYPE_23__ = type { i32, i64, i32, %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i64 }
%struct.TYPE_25__ = type { %struct.TYPE_24__*, %struct.TYPE_24__* }
%struct.TYPE_26__ = type { i64, i32, %struct.TYPE_25__* }

@yypcb = common dso_local global %struct.TYPE_27__* null, align 8
@EDT_NOSCOPE = common dso_local global i32 0, align 4
@CTF_K_ENUM = common dso_local global i64 0, align 8
@D_DECL_SCOPE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [63 x i8] c"D scoping operator may not be used in an enumerator name (%s)\0A\00", align 1
@DT_NODE_IDENT = common dso_local global i64 0, align 8
@DT_IDFLG_REF = common dso_local global i32 0, align 4
@DT_NODE_INT = common dso_local global i64 0, align 8
@D_DECL_ENCONST = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [69 x i8] c"enumerator '%s' must be assigned to an integral constant expression\0A\00", align 1
@INT_MAX = common dso_local global i64 0, align 8
@INT_MIN = common dso_local global i64 0, align 8
@D_DECL_ENOFLOW = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [46 x i8] c"enumerator '%s' value overflows INT_MAX (%d)\0A\00", align 1
@CTF_ERR = common dso_local global i64 0, align 8
@D_UNKNOWN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [38 x i8] c"failed to define enumerator '%s': %s\0A\00", align 1
@D_DECL_IDRED = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [27 x i8] c"identifier redeclared: %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"add global enumerator %s = %d\0A\00", align 1
@DT_IDENT_ENUM = common dso_local global i32 0, align 4
@DT_IDFLG_INLINE = common dso_local global i32 0, align 4
@_dtrace_defattr = common dso_local global i32 0, align 4
@dt_idops_inline = common dso_local global i32 0, align 4
@EDT_NOMEM = common dso_local global i32 0, align 4
@yyintprefix = common dso_local global i64 0, align 8
@yyintsuffix = common dso_local global i8* null, align 8
@yyintdecimal = common dso_local global i64 0, align 8
@B_FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dt_decl_enumerator(i8* %0, %struct.TYPE_24__* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_24__*, align 8
  %5 = alloca %struct.TYPE_23__*, align 8
  %6 = alloca %struct.TYPE_22__*, align 8
  %7 = alloca %struct.TYPE_25__*, align 8
  %8 = alloca %struct.TYPE_26__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store %struct.TYPE_24__* %1, %struct.TYPE_24__** %4, align 8
  %11 = load %struct.TYPE_27__*, %struct.TYPE_27__** @yypcb, align 8
  %12 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %11, i32 0, i32 4
  %13 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  store %struct.TYPE_23__* %14, %struct.TYPE_23__** %5, align 8
  %15 = load %struct.TYPE_27__*, %struct.TYPE_27__** @yypcb, align 8
  %16 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %15, i32 0, i32 3
  %17 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  store %struct.TYPE_22__* %17, %struct.TYPE_22__** %6, align 8
  %18 = load i8*, i8** %3, align 8
  %19 = call i64 @strlen(i8* %18)
  %20 = add nsw i64 %19, 1
  %21 = call i8* @alloca(i64 %20)
  store i8* %21, i8** %9, align 8
  %22 = load i8*, i8** %9, align 8
  %23 = load i8*, i8** %3, align 8
  %24 = call i32 @strcpy(i8* %22, i8* %23)
  %25 = load i8*, i8** %3, align 8
  %26 = call i32 @free(i8* %25)
  %27 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %28 = icmp eq %struct.TYPE_23__* %27, null
  br i1 %28, label %29, label %35

29:                                               ; preds = %2
  %30 = load %struct.TYPE_27__*, %struct.TYPE_27__** @yypcb, align 8
  %31 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @EDT_NOSCOPE, align 4
  %34 = call i32 @longjmp(i32 %32, i32 %33)
  br label %35

35:                                               ; preds = %29, %2
  %36 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %36, i32 0, i32 3
  %38 = load %struct.TYPE_20__*, %struct.TYPE_20__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @CTF_K_ENUM, align 8
  %42 = icmp eq i64 %40, %41
  %43 = zext i1 %42 to i32
  %44 = call i32 @assert(i32 %43)
  %45 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %10, align 4
  %49 = load i8*, i8** %9, align 8
  %50 = call i32* @strchr(i8* %49, i8 signext 96)
  %51 = icmp ne i32* %50, null
  br i1 %51, label %52, label %56

52:                                               ; preds = %35
  %53 = load i32, i32* @D_DECL_SCOPE, align 4
  %54 = load i8*, i8** %9, align 8
  %55 = call i32 (i32, i8*, i8*, ...) @xyerror(i32 %53, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0), i8* %54)
  br label %56

56:                                               ; preds = %52, %35
  %57 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %58 = icmp ne %struct.TYPE_24__* %57, null
  br i1 %58, label %59, label %115

59:                                               ; preds = %56
  %60 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @DT_NODE_IDENT, align 8
  %64 = icmp ne i64 %62, %63
  br i1 %64, label %77, label %65

65:                                               ; preds = %59
  %66 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 8
  %75 = call i64 @ctf_enum_value(i64 %68, i32 %71, i32 %74, i32* %10)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %112

77:                                               ; preds = %65, %59
  %78 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %79 = load i32, i32* @DT_IDFLG_REF, align 4
  %80 = call %struct.TYPE_24__* @dt_node_cook(%struct.TYPE_24__* %78, i32 %79)
  store %struct.TYPE_24__* %80, %struct.TYPE_24__** %4, align 8
  %81 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @DT_NODE_INT, align 8
  %85 = icmp ne i64 %83, %84
  br i1 %85, label %86, label %90

86:                                               ; preds = %77
  %87 = load i32, i32* @D_DECL_ENCONST, align 4
  %88 = load i8*, i8** %9, align 8
  %89 = call i32 (i32, i8*, i8*, ...) @xyerror(i32 %87, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.1, i64 0, i64 0), i8* %88)
  br label %90

90:                                               ; preds = %86, %77
  %91 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %91, i32 0, i32 2
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @INT_MAX, align 8
  %95 = icmp sgt i64 %93, %94
  br i1 %95, label %102, label %96

96:                                               ; preds = %90
  %97 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %97, i32 0, i32 2
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @INT_MIN, align 8
  %101 = icmp slt i64 %99, %100
  br i1 %101, label %102, label %107

102:                                              ; preds = %96, %90
  %103 = load i32, i32* @D_DECL_ENOFLOW, align 4
  %104 = load i8*, i8** %9, align 8
  %105 = load i64, i64* @INT_MAX, align 8
  %106 = call i32 (i32, i8*, i8*, ...) @xyerror(i32 %103, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i8* %104, i64 %105)
  br label %107

107:                                              ; preds = %102, %96
  %108 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %108, i32 0, i32 2
  %110 = load i64, i64* %109, align 8
  %111 = trunc i64 %110 to i32
  store i32 %111, i32* %10, align 4
  br label %112

112:                                              ; preds = %107, %65
  %113 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %114 = call i32 @dt_node_free(%struct.TYPE_24__* %113)
  br label %115

115:                                              ; preds = %112, %56
  %116 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %117 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %116, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %120 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 8
  %122 = load i8*, i8** %9, align 8
  %123 = load i32, i32* %10, align 4
  %124 = call i64 @ctf_add_enumerator(i64 %118, i32 %121, i8* %122, i32 %123)
  %125 = load i64, i64* @CTF_ERR, align 8
  %126 = icmp eq i64 %124, %125
  br i1 %126, label %134, label %127

127:                                              ; preds = %115
  %128 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %129 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %128, i32 0, i32 1
  %130 = load i64, i64* %129, align 8
  %131 = call i64 @ctf_update(i64 %130)
  %132 = load i64, i64* @CTF_ERR, align 8
  %133 = icmp eq i64 %131, %132
  br i1 %133, label %134, label %143

134:                                              ; preds = %127, %115
  %135 = load i32, i32* @D_UNKNOWN, align 4
  %136 = load i8*, i8** %9, align 8
  %137 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %138 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %137, i32 0, i32 1
  %139 = load i64, i64* %138, align 8
  %140 = call i32 @ctf_errno(i64 %139)
  %141 = call i32 @ctf_errmsg(i32 %140)
  %142 = call i32 (i32, i8*, i8*, ...) @xyerror(i32 %135, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i8* %136, i32 %141)
  br label %143

143:                                              ; preds = %134, %127
  %144 = load i32, i32* %10, align 4
  %145 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %146 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %145, i32 0, i32 0
  store i32 %144, i32* %146, align 8
  %147 = load %struct.TYPE_27__*, %struct.TYPE_27__** @yypcb, align 8
  %148 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %147, i32 0, i32 2
  %149 = load i8*, i8** %9, align 8
  %150 = call i32* @dt_idstack_lookup(i32* %148, i8* %149)
  %151 = icmp ne i32* %150, null
  br i1 %151, label %152, label %168

152:                                              ; preds = %143
  %153 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %154 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %153, i32 0, i32 1
  %155 = load i64, i64* %154, align 8
  %156 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %157 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %156, i32 0, i32 2
  %158 = load %struct.TYPE_21__*, %struct.TYPE_21__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %158, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  %161 = icmp eq i64 %155, %160
  br i1 %161, label %162, label %166

162:                                              ; preds = %152
  %163 = load i32, i32* @D_DECL_IDRED, align 4
  %164 = load i8*, i8** %9, align 8
  %165 = call i32 (i32, i8*, i8*, ...) @xyerror(i32 %163, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i8* %164)
  br label %167

166:                                              ; preds = %152
  br label %251

167:                                              ; preds = %162
  br label %168

168:                                              ; preds = %167, %143
  %169 = load i8*, i8** %9, align 8
  %170 = load i32, i32* %10, align 4
  %171 = call i32 @dt_dprintf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), i8* %169, i32 %170)
  %172 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %173 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 4
  %175 = load i8*, i8** %9, align 8
  %176 = load i32, i32* @DT_IDENT_ENUM, align 4
  %177 = load i32, i32* @DT_IDFLG_INLINE, align 4
  %178 = load i32, i32* @DT_IDFLG_REF, align 4
  %179 = or i32 %177, %178
  %180 = load i32, i32* @_dtrace_defattr, align 4
  %181 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %182 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 8
  %184 = call %struct.TYPE_26__* @dt_idhash_insert(i32 %174, i8* %175, i32 %176, i32 %179, i32 0, i32 %180, i32 0, i32* @dt_idops_inline, i32* null, i32 %183)
  store %struct.TYPE_26__* %184, %struct.TYPE_26__** %8, align 8
  %185 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %186 = icmp eq %struct.TYPE_26__* %185, null
  br i1 %186, label %187, label %193

187:                                              ; preds = %168
  %188 = load %struct.TYPE_27__*, %struct.TYPE_27__** @yypcb, align 8
  %189 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %188, i32 0, i32 1
  %190 = load i32, i32* %189, align 8
  %191 = load i32, i32* @EDT_NOMEM, align 4
  %192 = call i32 @longjmp(i32 %190, i32 %191)
  br label %193

193:                                              ; preds = %187, %168
  store i64 0, i64* @yyintprefix, align 8
  %194 = load i8*, i8** @yyintsuffix, align 8
  %195 = getelementptr inbounds i8, i8* %194, i64 0
  store i8 0, i8* %195, align 1
  store i64 0, i64* @yyintdecimal, align 8
  %196 = load i32, i32* %10, align 4
  %197 = call %struct.TYPE_24__* @dt_node_int(i32 %196)
  store %struct.TYPE_24__* %197, %struct.TYPE_24__** %4, align 8
  %198 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %199 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %200 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %199, i32 0, i32 1
  %201 = load i64, i64* %200, align 8
  %202 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %203 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %202, i32 0, i32 2
  %204 = load i32, i32* %203, align 8
  %205 = load i32, i32* @B_FALSE, align 4
  %206 = call i32 @dt_node_type_assign(%struct.TYPE_24__* %198, i64 %201, i32 %204, i32 %205)
  %207 = call %struct.TYPE_25__* @malloc(i32 16)
  store %struct.TYPE_25__* %207, %struct.TYPE_25__** %7, align 8
  %208 = icmp eq %struct.TYPE_25__* %207, null
  br i1 %208, label %209, label %215

209:                                              ; preds = %193
  %210 = load %struct.TYPE_27__*, %struct.TYPE_27__** @yypcb, align 8
  %211 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %210, i32 0, i32 1
  %212 = load i32, i32* %211, align 8
  %213 = load i32, i32* @EDT_NOMEM, align 4
  %214 = call i32 @longjmp(i32 %212, i32 %213)
  br label %215

215:                                              ; preds = %209, %193
  %216 = load %struct.TYPE_27__*, %struct.TYPE_27__** @yypcb, align 8
  %217 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %216, i32 0, i32 0
  %218 = load %struct.TYPE_24__*, %struct.TYPE_24__** %217, align 8
  %219 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %220 = icmp eq %struct.TYPE_24__* %218, %219
  %221 = zext i1 %220 to i32
  %222 = call i32 @assert(i32 %221)
  %223 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %224 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %223, i32 0, i32 1
  %225 = load %struct.TYPE_24__*, %struct.TYPE_24__** %224, align 8
  %226 = load %struct.TYPE_27__*, %struct.TYPE_27__** @yypcb, align 8
  %227 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %226, i32 0, i32 0
  store %struct.TYPE_24__* %225, %struct.TYPE_24__** %227, align 8
  %228 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %229 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %228, i32 0, i32 1
  store %struct.TYPE_24__* null, %struct.TYPE_24__** %229, align 8
  %230 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %231 = call i32 @bzero(%struct.TYPE_25__* %230, i32 16)
  %232 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %233 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %234 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %233, i32 0, i32 1
  store %struct.TYPE_24__* %232, %struct.TYPE_24__** %234, align 8
  %235 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %236 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %237 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %236, i32 0, i32 0
  store %struct.TYPE_24__* %235, %struct.TYPE_24__** %237, align 8
  %238 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %239 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %240 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %239, i32 0, i32 2
  store %struct.TYPE_25__* %238, %struct.TYPE_25__** %240, align 8
  %241 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %242 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %241, i32 0, i32 1
  %243 = load i64, i64* %242, align 8
  %244 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %245 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %244, i32 0, i32 0
  store i64 %243, i64* %245, align 8
  %246 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %247 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %246, i32 0, i32 2
  %248 = load i32, i32* %247, align 8
  %249 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %250 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %249, i32 0, i32 1
  store i32 %248, i32* %250, align 8
  br label %251

251:                                              ; preds = %215, %166
  ret void
}

declare dso_local i8* @alloca(i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @longjmp(i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32* @strchr(i8*, i8 signext) #1

declare dso_local i32 @xyerror(i32, i8*, i8*, ...) #1

declare dso_local i64 @ctf_enum_value(i64, i32, i32, i32*) #1

declare dso_local %struct.TYPE_24__* @dt_node_cook(%struct.TYPE_24__*, i32) #1

declare dso_local i32 @dt_node_free(%struct.TYPE_24__*) #1

declare dso_local i64 @ctf_add_enumerator(i64, i32, i8*, i32) #1

declare dso_local i64 @ctf_update(i64) #1

declare dso_local i32 @ctf_errmsg(i32) #1

declare dso_local i32 @ctf_errno(i64) #1

declare dso_local i32* @dt_idstack_lookup(i32*, i8*) #1

declare dso_local i32 @dt_dprintf(i8*, i8*, i32) #1

declare dso_local %struct.TYPE_26__* @dt_idhash_insert(i32, i8*, i32, i32, i32, i32, i32, i32*, i32*, i32) #1

declare dso_local %struct.TYPE_24__* @dt_node_int(i32) #1

declare dso_local i32 @dt_node_type_assign(%struct.TYPE_24__*, i64, i32, i32) #1

declare dso_local %struct.TYPE_25__* @malloc(i32) #1

declare dso_local i32 @bzero(%struct.TYPE_25__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
