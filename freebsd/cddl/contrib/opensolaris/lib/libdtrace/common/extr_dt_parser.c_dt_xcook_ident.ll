; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_parser.c_dt_xcook_ident.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_parser.c_dt_xcook_ident.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_39__ = type { i32, i32*, i32, %struct.TYPE_35__* }
%struct.TYPE_35__ = type { i64, i32, i32*, %struct.TYPE_38__*, %struct.TYPE_37__*, i32* }
%struct.TYPE_38__ = type { i64, i32, i32, i32, i32, %struct.TYPE_34__*, %struct.TYPE_38__*, i32 }
%struct.TYPE_34__ = type { i32, i32 }
%struct.TYPE_37__ = type { i32 }
%struct.TYPE_36__ = type { i8*, i32, %struct.TYPE_38__*, i8* }
%struct.TYPE_33__ = type { i32, i32, i32 }

@yypcb = common dso_local global %struct.TYPE_39__* null, align 8
@_dtrace_defattr = common dso_local global i32 0, align 4
@DTRACE_OBJ_UMODS = common dso_local global i8* null, align 8
@DTRACE_OBJ_KMODS = common dso_local global i8* null, align 8
@DT_NODE_VAR = common dso_local global i8* null, align 8
@DT_IDENT_AGG = common dso_local global i64 0, align 8
@DTRACE_OBJ_EXEC = common dso_local global i8* null, align 8
@DT_NODE_AGG = common dso_local global i8* null, align 8
@EDT_NOVAR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"``\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@D_IDENT_BADREF = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"%s '%s' may not be referenced as %s\0A\00", align 1
@DT_IDENT_ARRAY = common dso_local global i64 0, align 8
@B_FALSE = common dso_local global i32 0, align 4
@DT_NF_LVALUE = common dso_local global i32 0, align 4
@DT_IDFLG_WRITE = common dso_local global i32 0, align 4
@DT_NF_WRITABLE = common dso_local global i32 0, align 4
@DT_DM_KERNEL = common dso_local global i32 0, align 4
@dt_xcook_ident.kunames = internal constant [2 x i8*] [i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0)], align 16
@.str.3 = private unnamed_addr constant [7 x i8] c"kernel\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"user\00", align 1
@D_SYM_BADREF = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [65 x i8] c"%s module '%s' symbol '%s' may not be referenced as a %s symbol\0A\00", align 1
@EDT_DATAMODEL = common dso_local global i64 0, align 8
@D_SYM_MODEL = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [47 x i8] c"cannot use %s symbol %s%s%s in a %s D program\0A\00", align 1
@D_SYM_NOTYPES = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [58 x i8] c"no symbolic type information is available for %s%s%s: %s\0A\00", align 1
@DT_IDENT_SYMBOL = common dso_local global i32 0, align 4
@_dtrace_symattr = common dso_local global i32 0, align 4
@dt_idops_thaw = common dso_local global i32 0, align 4
@EDT_NOMEM = common dso_local global i32 0, align 4
@DT_DM_PRIMARY = common dso_local global i32 0, align 4
@DT_IDFLG_PRIM = common dso_local global i32 0, align 4
@DT_NODE_SYM = common dso_local global i8* null, align 8
@DT_IDFLG_USER = common dso_local global i32 0, align 4
@DT_NF_USERLAND = common dso_local global i32 0, align 4
@B_TRUE = common dso_local global i32 0, align 4
@D_ID_OFLOW = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [60 x i8] c"cannot create %s: limit on number of %s variables exceeded\0A\00", align 1
@DT_IDFLG_LOCAL = common dso_local global i64 0, align 8
@DT_IDFLG_TLS = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [33 x i8] c"create %s %s variable %s, id=%u\0A\00", align 1
@dt_idops_assc = common dso_local global i32 0, align 4
@D_IDENT_UNDEF = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [30 x i8] c"failed to resolve %s%s%s: %s\0A\00", align 1
@.str.11 = private unnamed_addr constant [26 x i8] c"failed to resolve %s: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_36__*, i32*, i64, i32)* @dt_xcook_ident to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dt_xcook_ident(%struct.TYPE_36__* %0, i32* %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_36__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_35__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_38__*, align 8
  %14 = alloca %struct.TYPE_34__, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca %struct.TYPE_37__*, align 8
  %21 = alloca i32, align 4
  %22 = alloca %struct.TYPE_33__, align 4
  %23 = alloca %struct.TYPE_34__*, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  store %struct.TYPE_36__* %0, %struct.TYPE_36__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %26 = load %struct.TYPE_39__*, %struct.TYPE_39__** @yypcb, align 8
  %27 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %26, i32 0, i32 3
  %28 = load %struct.TYPE_35__*, %struct.TYPE_35__** %27, align 8
  store %struct.TYPE_35__* %28, %struct.TYPE_35__** %9, align 8
  %29 = load i32*, i32** %6, align 8
  %30 = call i8* @dt_idhash_name(i32* %29)
  store i8* %30, i8** %10, align 8
  store i32 0, i32* %11, align 4
  %31 = load i32, i32* @_dtrace_defattr, align 4
  store i32 %31, i32* %12, align 4
  %32 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  %35 = call i8* @strrchr(i8* %34, i8 signext 96)
  store i8* %35, i8** %19, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %37, label %80

37:                                               ; preds = %4
  %38 = load i8*, i8** %19, align 8
  %39 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %39, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8
  %42 = icmp ugt i8* %38, %41
  br i1 %42, label %43, label %54

43:                                               ; preds = %37
  %44 = load i8*, i8** %19, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 -1
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp eq i32 %47, 96
  br i1 %48, label %49, label %54

49:                                               ; preds = %43
  %50 = load i32, i32* %11, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %11, align 4
  %52 = load i8*, i8** %19, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 -1
  store i8 0, i8* %53, align 1
  br label %54

54:                                               ; preds = %49, %43, %37
  %55 = load i8*, i8** %19, align 8
  %56 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %56, i32 0, i32 0
  %58 = load i8*, i8** %57, align 8
  %59 = load i32, i32* %11, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i8, i8* %58, i64 %60
  %62 = icmp eq i8* %55, %61
  br i1 %62, label %63, label %72

63:                                               ; preds = %54
  %64 = load i32, i32* %11, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %63
  %67 = load i8*, i8** @DTRACE_OBJ_UMODS, align 8
  br label %70

68:                                               ; preds = %63
  %69 = load i8*, i8** @DTRACE_OBJ_KMODS, align 8
  br label %70

70:                                               ; preds = %68, %66
  %71 = phi i8* [ %67, %66 ], [ %69, %68 ]
  store i8* %71, i8** %16, align 8
  br label %76

72:                                               ; preds = %54
  %73 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %73, i32 0, i32 0
  %75 = load i8*, i8** %74, align 8
  store i8* %75, i8** %16, align 8
  br label %76

76:                                               ; preds = %72, %70
  %77 = load i8*, i8** %19, align 8
  %78 = getelementptr inbounds i8, i8* %77, i32 1
  store i8* %78, i8** %19, align 8
  store i8 0, i8* %77, align 1
  %79 = load i8*, i8** @DT_NODE_VAR, align 8
  store i8* %79, i8** %18, align 8
  br label %98

80:                                               ; preds = %4
  %81 = load i64, i64* %7, align 8
  %82 = load i64, i64* @DT_IDENT_AGG, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %91

84:                                               ; preds = %80
  %85 = load i8*, i8** @DTRACE_OBJ_EXEC, align 8
  store i8* %85, i8** %16, align 8
  %86 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %86, i32 0, i32 0
  %88 = load i8*, i8** %87, align 8
  %89 = getelementptr inbounds i8, i8* %88, i64 1
  store i8* %89, i8** %19, align 8
  %90 = load i8*, i8** @DT_NODE_AGG, align 8
  store i8* %90, i8** %18, align 8
  br label %97

91:                                               ; preds = %80
  %92 = load i8*, i8** @DTRACE_OBJ_EXEC, align 8
  store i8* %92, i8** %16, align 8
  %93 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %93, i32 0, i32 0
  %95 = load i8*, i8** %94, align 8
  store i8* %95, i8** %19, align 8
  %96 = load i8*, i8** @DT_NODE_VAR, align 8
  store i8* %96, i8** %18, align 8
  br label %97

97:                                               ; preds = %91, %84
  br label %98

98:                                               ; preds = %97, %76
  %99 = load %struct.TYPE_35__*, %struct.TYPE_35__** %9, align 8
  %100 = load i32, i32* @EDT_NOVAR, align 4
  %101 = call i32 @dt_set_errno(%struct.TYPE_35__* %99, i32 %100)
  %102 = load i32, i32* %11, align 4
  %103 = icmp ne i32 %102, 0
  %104 = zext i1 %103 to i64
  %105 = select i1 %103, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)
  store i8* %105, i8** %17, align 8
  %106 = load i8*, i8** %16, align 8
  %107 = load i8*, i8** @DTRACE_OBJ_EXEC, align 8
  %108 = icmp eq i8* %106, %107
  br i1 %108, label %109, label %221

109:                                              ; preds = %98
  %110 = load i32*, i32** %6, align 8
  %111 = load %struct.TYPE_35__*, %struct.TYPE_35__** %9, align 8
  %112 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %111, i32 0, i32 5
  %113 = load i32*, i32** %112, align 8
  %114 = icmp ne i32* %110, %113
  br i1 %114, label %115, label %120

115:                                              ; preds = %109
  %116 = load i32*, i32** %6, align 8
  %117 = load i8*, i8** %19, align 8
  %118 = call %struct.TYPE_38__* @dt_idhash_lookup(i32* %116, i8* %117)
  store %struct.TYPE_38__* %118, %struct.TYPE_38__** %13, align 8
  %119 = icmp ne %struct.TYPE_38__* %118, null
  br i1 %119, label %132, label %120

120:                                              ; preds = %115, %109
  %121 = load i32*, i32** %6, align 8
  %122 = load %struct.TYPE_35__*, %struct.TYPE_35__** %9, align 8
  %123 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %122, i32 0, i32 5
  %124 = load i32*, i32** %123, align 8
  %125 = icmp eq i32* %121, %124
  br i1 %125, label %126, label %221

126:                                              ; preds = %120
  %127 = load %struct.TYPE_39__*, %struct.TYPE_39__** @yypcb, align 8
  %128 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %127, i32 0, i32 2
  %129 = load i8*, i8** %19, align 8
  %130 = call %struct.TYPE_38__* @dt_idstack_lookup(i32* %128, i8* %129)
  store %struct.TYPE_38__* %130, %struct.TYPE_38__** %13, align 8
  %131 = icmp ne %struct.TYPE_38__* %130, null
  br i1 %131, label %132, label %221

132:                                              ; preds = %126, %115
  %133 = load %struct.TYPE_38__*, %struct.TYPE_38__** %13, align 8
  %134 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = load i64, i64* %7, align 8
  %137 = icmp ne i64 %135, %136
  br i1 %137, label %138, label %160

138:                                              ; preds = %132
  %139 = load i32*, i32** %6, align 8
  %140 = load %struct.TYPE_35__*, %struct.TYPE_35__** %9, align 8
  %141 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %140, i32 0, i32 5
  %142 = load i32*, i32** %141, align 8
  %143 = icmp eq i32* %139, %142
  br i1 %143, label %144, label %160

144:                                              ; preds = %138
  %145 = load i32, i32* @D_IDENT_BADREF, align 4
  %146 = load %struct.TYPE_38__*, %struct.TYPE_38__** %13, align 8
  %147 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = call i32 @dt_idkind_name(i64 %148)
  %150 = sext i32 %149 to i64
  %151 = inttoptr i64 %150 to i8*
  %152 = load %struct.TYPE_38__*, %struct.TYPE_38__** %13, align 8
  %153 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %152, i32 0, i32 7
  %154 = load i32, i32* %153, align 8
  %155 = sext i32 %154 to i64
  %156 = inttoptr i64 %155 to i8*
  %157 = load i64, i64* %7, align 8
  %158 = call i32 @dt_idkind_name(i64 %157)
  %159 = call i32 (i32, i8*, i8*, i8*, ...) @xyerror(i32 %145, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i8* %151, i8* %156, i32 %158)
  br label %160

160:                                              ; preds = %144, %138, %132
  %161 = load %struct.TYPE_38__*, %struct.TYPE_38__** %13, align 8
  %162 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %161, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = load i64, i64* @DT_IDENT_ARRAY, align 8
  %165 = icmp ne i64 %163, %164
  br i1 %165, label %166, label %176

166:                                              ; preds = %160
  %167 = load %struct.TYPE_38__*, %struct.TYPE_38__** %13, align 8
  %168 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %167, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  %170 = load i64, i64* @DT_IDENT_AGG, align 8
  %171 = icmp ne i64 %169, %170
  br i1 %171, label %172, label %176

172:                                              ; preds = %166
  %173 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %174 = load %struct.TYPE_38__*, %struct.TYPE_38__** %13, align 8
  %175 = call i32 @dt_ident_cook(%struct.TYPE_36__* %173, %struct.TYPE_38__* %174, i32* null)
  store i32 %175, i32* %12, align 4
  br label %187

176:                                              ; preds = %166, %160
  %177 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %178 = load %struct.TYPE_35__*, %struct.TYPE_35__** %9, align 8
  %179 = call i32 @DT_DYN_CTFP(%struct.TYPE_35__* %178)
  %180 = load %struct.TYPE_35__*, %struct.TYPE_35__** %9, align 8
  %181 = call i32 @DT_DYN_TYPE(%struct.TYPE_35__* %180)
  %182 = load i32, i32* @B_FALSE, align 4
  %183 = call i32 @dt_node_type_assign(%struct.TYPE_36__* %177, i32 %179, i32 %181, i32 %182)
  %184 = load %struct.TYPE_38__*, %struct.TYPE_38__** %13, align 8
  %185 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %184, i32 0, i32 2
  %186 = load i32, i32* %185, align 4
  store i32 %186, i32* %12, align 4
  br label %187

187:                                              ; preds = %176, %172
  %188 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %189 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %188, i32 0, i32 0
  %190 = load i8*, i8** %189, align 8
  %191 = call i32 @free(i8* %190)
  %192 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %193 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %192, i32 0, i32 0
  store i8* null, i8** %193, align 8
  %194 = load i8*, i8** %18, align 8
  %195 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %196 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %195, i32 0, i32 3
  store i8* %194, i8** %196, align 8
  %197 = load %struct.TYPE_38__*, %struct.TYPE_38__** %13, align 8
  %198 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %199 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %198, i32 0, i32 2
  store %struct.TYPE_38__* %197, %struct.TYPE_38__** %199, align 8
  %200 = load i32, i32* @DT_NF_LVALUE, align 4
  %201 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %202 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %201, i32 0, i32 1
  %203 = load i32, i32* %202, align 8
  %204 = or i32 %203, %200
  store i32 %204, i32* %202, align 8
  %205 = load %struct.TYPE_38__*, %struct.TYPE_38__** %13, align 8
  %206 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %205, i32 0, i32 1
  %207 = load i32, i32* %206, align 8
  %208 = load i32, i32* @DT_IDFLG_WRITE, align 4
  %209 = and i32 %207, %208
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %217

211:                                              ; preds = %187
  %212 = load i32, i32* @DT_NF_WRITABLE, align 4
  %213 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %214 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %213, i32 0, i32 1
  %215 = load i32, i32* %214, align 8
  %216 = or i32 %215, %212
  store i32 %216, i32* %214, align 8
  br label %217

217:                                              ; preds = %211, %187
  %218 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %219 = load i32, i32* %12, align 4
  %220 = call i32 @dt_node_attr_assign(%struct.TYPE_36__* %218, i32 %219)
  br label %578

221:                                              ; preds = %126, %120, %98
  %222 = load i32*, i32** %6, align 8
  %223 = load %struct.TYPE_35__*, %struct.TYPE_35__** %9, align 8
  %224 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %223, i32 0, i32 5
  %225 = load i32*, i32** %224, align 8
  %226 = icmp eq i32* %222, %225
  br i1 %226, label %227, label %414

227:                                              ; preds = %221
  %228 = load i8*, i8** %16, align 8
  %229 = load i8*, i8** @DTRACE_OBJ_EXEC, align 8
  %230 = icmp ne i8* %228, %229
  br i1 %230, label %231, label %414

231:                                              ; preds = %227
  %232 = load %struct.TYPE_35__*, %struct.TYPE_35__** %9, align 8
  %233 = load i8*, i8** %16, align 8
  %234 = load i8*, i8** %19, align 8
  %235 = call i64 @dtrace_lookup_by_name(%struct.TYPE_35__* %232, i8* %233, i8* %234, i32* %15, %struct.TYPE_34__* %14)
  %236 = icmp eq i64 %235, 0
  br i1 %236, label %237, label %414

237:                                              ; preds = %231
  %238 = load %struct.TYPE_35__*, %struct.TYPE_35__** %9, align 8
  %239 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %14, i32 0, i32 1
  %240 = load i32, i32* %239, align 4
  %241 = call %struct.TYPE_37__* @dt_module_lookup_by_name(%struct.TYPE_35__* %238, i32 %240)
  store %struct.TYPE_37__* %241, %struct.TYPE_37__** %20, align 8
  %242 = load %struct.TYPE_37__*, %struct.TYPE_37__** %20, align 8
  %243 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %242, i32 0, i32 0
  %244 = load i32, i32* %243, align 4
  %245 = load i32, i32* @DT_DM_KERNEL, align 4
  %246 = and i32 %244, %245
  %247 = icmp eq i32 %246, 0
  %248 = zext i1 %247 to i32
  store i32 %248, i32* %21, align 4
  %249 = load i32, i32* %11, align 4
  %250 = load i32, i32* %21, align 4
  %251 = xor i32 %249, %250
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %253, label %270

253:                                              ; preds = %237
  %254 = load i32, i32* @D_SYM_BADREF, align 4
  %255 = load i32, i32* %21, align 4
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds [2 x i8*], [2 x i8*]* @dt_xcook_ident.kunames, i64 0, i64 %256
  %258 = load i8*, i8** %257, align 8
  %259 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %14, i32 0, i32 1
  %260 = load i32, i32* %259, align 4
  %261 = sext i32 %260 to i64
  %262 = inttoptr i64 %261 to i8*
  %263 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %14, i32 0, i32 0
  %264 = load i32, i32* %263, align 4
  %265 = load i32, i32* %11, align 4
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds [2 x i8*], [2 x i8*]* @dt_xcook_ident.kunames, i64 0, i64 %266
  %268 = load i8*, i8** %267, align 8
  %269 = call i32 (i32, i8*, i8*, i8*, ...) @xyerror(i32 %254, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.5, i64 0, i64 0), i8* %258, i8* %262, i32 %264, i8* %268)
  br label %270

270:                                              ; preds = %253, %237
  %271 = load %struct.TYPE_35__*, %struct.TYPE_35__** %9, align 8
  %272 = call i64 @dtrace_symbol_type(%struct.TYPE_35__* %271, i32* %15, %struct.TYPE_34__* %14, %struct.TYPE_33__* %22)
  %273 = icmp ne i64 %272, 0
  br i1 %273, label %274, label %312

274:                                              ; preds = %270
  %275 = load %struct.TYPE_35__*, %struct.TYPE_35__** %9, align 8
  %276 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %275, i32 0, i32 0
  %277 = load i64, i64* %276, align 8
  %278 = load i64, i64* @EDT_DATAMODEL, align 8
  %279 = icmp eq i64 %277, %278
  br i1 %279, label %280, label %298

280:                                              ; preds = %274
  %281 = load i32, i32* @D_SYM_MODEL, align 4
  %282 = load %struct.TYPE_37__*, %struct.TYPE_37__** %20, align 8
  %283 = call i32 @dt_module_modelname(%struct.TYPE_37__* %282)
  %284 = sext i32 %283 to i64
  %285 = inttoptr i64 %284 to i8*
  %286 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %14, i32 0, i32 1
  %287 = load i32, i32* %286, align 4
  %288 = sext i32 %287 to i64
  %289 = inttoptr i64 %288 to i8*
  %290 = load i8*, i8** %17, align 8
  %291 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %14, i32 0, i32 0
  %292 = load i32, i32* %291, align 4
  %293 = load %struct.TYPE_35__*, %struct.TYPE_35__** %9, align 8
  %294 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %293, i32 0, i32 4
  %295 = load %struct.TYPE_37__*, %struct.TYPE_37__** %294, align 8
  %296 = call i32 @dt_module_modelname(%struct.TYPE_37__* %295)
  %297 = call i32 (i32, i8*, i8*, i8*, ...) @xyerror(i32 %281, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.6, i64 0, i64 0), i8* %285, i8* %289, i8* %290, i32 %292, i32 %296)
  br label %298

298:                                              ; preds = %280, %274
  %299 = load i32, i32* @D_SYM_NOTYPES, align 4
  %300 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %14, i32 0, i32 1
  %301 = load i32, i32* %300, align 4
  %302 = sext i32 %301 to i64
  %303 = inttoptr i64 %302 to i8*
  %304 = load i8*, i8** %17, align 8
  %305 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %14, i32 0, i32 0
  %306 = load i32, i32* %305, align 4
  %307 = load %struct.TYPE_35__*, %struct.TYPE_35__** %9, align 8
  %308 = load %struct.TYPE_35__*, %struct.TYPE_35__** %9, align 8
  %309 = call i32 @dtrace_errno(%struct.TYPE_35__* %308)
  %310 = call i8* @dtrace_errmsg(%struct.TYPE_35__* %307, i32 %309)
  %311 = call i32 (i32, i8*, i8*, i8*, ...) @xyerror(i32 %299, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.7, i64 0, i64 0), i8* %303, i8* %304, i32 %306, i8* %310)
  br label %312

312:                                              ; preds = %298, %270
  %313 = load i8*, i8** %19, align 8
  %314 = load i32, i32* @DT_IDENT_SYMBOL, align 4
  %315 = load i32, i32* @_dtrace_symattr, align 4
  %316 = load %struct.TYPE_35__*, %struct.TYPE_35__** %9, align 8
  %317 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %316, i32 0, i32 1
  %318 = load i32, i32* %317, align 8
  %319 = call %struct.TYPE_38__* @dt_ident_create(i8* %313, i32 %314, i32 0, i32 0, i32 %315, i32 0, i32* @dt_idops_thaw, i32* null, i32 %318)
  store %struct.TYPE_38__* %319, %struct.TYPE_38__** %13, align 8
  %320 = load %struct.TYPE_38__*, %struct.TYPE_38__** %13, align 8
  %321 = icmp eq %struct.TYPE_38__* %320, null
  br i1 %321, label %322, label %328

322:                                              ; preds = %312
  %323 = load %struct.TYPE_39__*, %struct.TYPE_39__** @yypcb, align 8
  %324 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %323, i32 0, i32 0
  %325 = load i32, i32* %324, align 8
  %326 = load i32, i32* @EDT_NOMEM, align 4
  %327 = call i32 @longjmp(i32 %325, i32 %326)
  br label %328

328:                                              ; preds = %322, %312
  %329 = load %struct.TYPE_37__*, %struct.TYPE_37__** %20, align 8
  %330 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %329, i32 0, i32 0
  %331 = load i32, i32* %330, align 4
  %332 = load i32, i32* @DT_DM_PRIMARY, align 4
  %333 = and i32 %331, %332
  %334 = icmp ne i32 %333, 0
  br i1 %334, label %335, label %341

335:                                              ; preds = %328
  %336 = load i32, i32* @DT_IDFLG_PRIM, align 4
  %337 = load %struct.TYPE_38__*, %struct.TYPE_38__** %13, align 8
  %338 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %337, i32 0, i32 1
  %339 = load i32, i32* %338, align 8
  %340 = or i32 %339, %336
  store i32 %340, i32* %338, align 8
  br label %341

341:                                              ; preds = %335, %328
  %342 = load %struct.TYPE_35__*, %struct.TYPE_35__** %9, align 8
  %343 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %342, i32 0, i32 3
  %344 = load %struct.TYPE_38__*, %struct.TYPE_38__** %343, align 8
  %345 = load %struct.TYPE_38__*, %struct.TYPE_38__** %13, align 8
  %346 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %345, i32 0, i32 6
  store %struct.TYPE_38__* %344, %struct.TYPE_38__** %346, align 8
  %347 = load %struct.TYPE_38__*, %struct.TYPE_38__** %13, align 8
  %348 = load %struct.TYPE_35__*, %struct.TYPE_35__** %9, align 8
  %349 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %348, i32 0, i32 3
  store %struct.TYPE_38__* %347, %struct.TYPE_38__** %349, align 8
  %350 = call %struct.TYPE_34__* @malloc(i32 8)
  store %struct.TYPE_34__* %350, %struct.TYPE_34__** %23, align 8
  %351 = icmp eq %struct.TYPE_34__* %350, null
  br i1 %351, label %352, label %358

352:                                              ; preds = %341
  %353 = load %struct.TYPE_39__*, %struct.TYPE_39__** @yypcb, align 8
  %354 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %353, i32 0, i32 0
  %355 = load i32, i32* %354, align 8
  %356 = load i32, i32* @EDT_NOMEM, align 4
  %357 = call i32 @longjmp(i32 %355, i32 %356)
  br label %358

358:                                              ; preds = %352, %341
  %359 = load %struct.TYPE_34__*, %struct.TYPE_34__** %23, align 8
  %360 = call i32 @bcopy(%struct.TYPE_34__* %14, %struct.TYPE_34__* %359, i32 8)
  %361 = load %struct.TYPE_34__*, %struct.TYPE_34__** %23, align 8
  %362 = load %struct.TYPE_38__*, %struct.TYPE_38__** %13, align 8
  %363 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %362, i32 0, i32 5
  store %struct.TYPE_34__* %361, %struct.TYPE_34__** %363, align 8
  %364 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %22, i32 0, i32 2
  %365 = load i32, i32* %364, align 4
  %366 = load %struct.TYPE_38__*, %struct.TYPE_38__** %13, align 8
  %367 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %366, i32 0, i32 4
  store i32 %365, i32* %367, align 4
  %368 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %22, i32 0, i32 1
  %369 = load i32, i32* %368, align 4
  %370 = load %struct.TYPE_38__*, %struct.TYPE_38__** %13, align 8
  %371 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %370, i32 0, i32 3
  store i32 %369, i32* %371, align 8
  %372 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %373 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %372, i32 0, i32 0
  %374 = load i8*, i8** %373, align 8
  %375 = call i32 @free(i8* %374)
  %376 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %377 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %376, i32 0, i32 0
  store i8* null, i8** %377, align 8
  %378 = load i8*, i8** @DT_NODE_SYM, align 8
  %379 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %380 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %379, i32 0, i32 3
  store i8* %378, i8** %380, align 8
  %381 = load %struct.TYPE_38__*, %struct.TYPE_38__** %13, align 8
  %382 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %383 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %382, i32 0, i32 2
  store %struct.TYPE_38__* %381, %struct.TYPE_38__** %383, align 8
  %384 = load i32, i32* @DT_NF_LVALUE, align 4
  %385 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %386 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %385, i32 0, i32 1
  %387 = load i32, i32* %386, align 8
  %388 = or i32 %387, %384
  store i32 %388, i32* %386, align 8
  %389 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %390 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %22, i32 0, i32 2
  %391 = load i32, i32* %390, align 4
  %392 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %22, i32 0, i32 1
  %393 = load i32, i32* %392, align 4
  %394 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %22, i32 0, i32 0
  %395 = load i32, i32* %394, align 4
  %396 = call i32 @dt_node_type_assign(%struct.TYPE_36__* %389, i32 %391, i32 %393, i32 %395)
  %397 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %398 = load i32, i32* @_dtrace_symattr, align 4
  %399 = call i32 @dt_node_attr_assign(%struct.TYPE_36__* %397, i32 %398)
  %400 = load i32, i32* %11, align 4
  %401 = icmp ne i32 %400, 0
  br i1 %401, label %402, label %413

402:                                              ; preds = %358
  %403 = load i32, i32* @DT_IDFLG_USER, align 4
  %404 = load %struct.TYPE_38__*, %struct.TYPE_38__** %13, align 8
  %405 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %404, i32 0, i32 1
  %406 = load i32, i32* %405, align 8
  %407 = or i32 %406, %403
  store i32 %407, i32* %405, align 8
  %408 = load i32, i32* @DT_NF_USERLAND, align 4
  %409 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %410 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %409, i32 0, i32 1
  %411 = load i32, i32* %410, align 8
  %412 = or i32 %411, %408
  store i32 %412, i32* %410, align 8
  br label %413

413:                                              ; preds = %402, %358
  br label %577

414:                                              ; preds = %231, %227, %221
  %415 = load i8*, i8** %16, align 8
  %416 = load i8*, i8** @DTRACE_OBJ_EXEC, align 8
  %417 = icmp eq i8* %415, %416
  br i1 %417, label %418, label %549

418:                                              ; preds = %414
  %419 = load i32, i32* %8, align 4
  %420 = load i32, i32* @B_TRUE, align 4
  %421 = icmp eq i32 %419, %420
  br i1 %421, label %422, label %549

422:                                              ; preds = %418
  %423 = load i32, i32* @DT_IDFLG_WRITE, align 4
  %424 = sext i32 %423 to i64
  store i64 %424, i64* %24, align 8
  %425 = load i32*, i32** %6, align 8
  %426 = call i32 @dt_idhash_nextid(i32* %425, i64* %25)
  %427 = icmp eq i32 %426, -1
  br i1 %427, label %428, label %433

428:                                              ; preds = %422
  %429 = load i32, i32* @D_ID_OFLOW, align 4
  %430 = load i8*, i8** %19, align 8
  %431 = load i8*, i8** %10, align 8
  %432 = call i32 (i32, i8*, i8*, i8*, ...) @xyerror(i32 %429, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.8, i64 0, i64 0), i8* %430, i8* %431)
  br label %433

433:                                              ; preds = %428, %422
  %434 = load i32*, i32** %6, align 8
  %435 = load %struct.TYPE_39__*, %struct.TYPE_39__** @yypcb, align 8
  %436 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %435, i32 0, i32 1
  %437 = load i32*, i32** %436, align 8
  %438 = icmp eq i32* %434, %437
  br i1 %438, label %439, label %443

439:                                              ; preds = %433
  %440 = load i64, i64* @DT_IDFLG_LOCAL, align 8
  %441 = load i64, i64* %24, align 8
  %442 = or i64 %441, %440
  store i64 %442, i64* %24, align 8
  br label %454

443:                                              ; preds = %433
  %444 = load i32*, i32** %6, align 8
  %445 = load %struct.TYPE_35__*, %struct.TYPE_35__** %9, align 8
  %446 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %445, i32 0, i32 2
  %447 = load i32*, i32** %446, align 8
  %448 = icmp eq i32* %444, %447
  br i1 %448, label %449, label %453

449:                                              ; preds = %443
  %450 = load i64, i64* @DT_IDFLG_TLS, align 8
  %451 = load i64, i64* %24, align 8
  %452 = or i64 %451, %450
  store i64 %452, i64* %24, align 8
  br label %453

453:                                              ; preds = %449, %443
  br label %454

454:                                              ; preds = %453, %439
  %455 = load i8*, i8** %10, align 8
  %456 = load i64, i64* %7, align 8
  %457 = call i32 @dt_idkind_name(i64 %456)
  %458 = load i8*, i8** %19, align 8
  %459 = load i64, i64* %25, align 8
  %460 = call i32 @dt_dprintf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i64 0, i64 0), i8* %455, i32 %457, i8* %458, i64 %459)
  %461 = load i64, i64* %7, align 8
  %462 = load i64, i64* @DT_IDENT_ARRAY, align 8
  %463 = icmp eq i64 %461, %462
  br i1 %463, label %468, label %464

464:                                              ; preds = %454
  %465 = load i64, i64* %7, align 8
  %466 = load i64, i64* @DT_IDENT_AGG, align 8
  %467 = icmp eq i64 %465, %466
  br i1 %467, label %468, label %479

468:                                              ; preds = %464, %454
  %469 = load i32*, i32** %6, align 8
  %470 = load i8*, i8** %19, align 8
  %471 = load i64, i64* %7, align 8
  %472 = load i64, i64* %24, align 8
  %473 = load i64, i64* %25, align 8
  %474 = load i32, i32* @_dtrace_defattr, align 4
  %475 = load %struct.TYPE_35__*, %struct.TYPE_35__** %9, align 8
  %476 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %475, i32 0, i32 1
  %477 = load i32, i32* %476, align 8
  %478 = call %struct.TYPE_38__* @dt_idhash_insert(i32* %469, i8* %470, i64 %471, i64 %472, i64 %473, i32 %474, i32 0, i32* @dt_idops_assc, i32* null, i32 %477)
  store %struct.TYPE_38__* %478, %struct.TYPE_38__** %13, align 8
  br label %490

479:                                              ; preds = %464
  %480 = load i32*, i32** %6, align 8
  %481 = load i8*, i8** %19, align 8
  %482 = load i64, i64* %7, align 8
  %483 = load i64, i64* %24, align 8
  %484 = load i64, i64* %25, align 8
  %485 = load i32, i32* @_dtrace_defattr, align 4
  %486 = load %struct.TYPE_35__*, %struct.TYPE_35__** %9, align 8
  %487 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %486, i32 0, i32 1
  %488 = load i32, i32* %487, align 8
  %489 = call %struct.TYPE_38__* @dt_idhash_insert(i32* %480, i8* %481, i64 %482, i64 %483, i64 %484, i32 %485, i32 0, i32* @dt_idops_thaw, i32* null, i32 %488)
  store %struct.TYPE_38__* %489, %struct.TYPE_38__** %13, align 8
  br label %490

490:                                              ; preds = %479, %468
  %491 = load %struct.TYPE_38__*, %struct.TYPE_38__** %13, align 8
  %492 = icmp eq %struct.TYPE_38__* %491, null
  br i1 %492, label %493, label %499

493:                                              ; preds = %490
  %494 = load %struct.TYPE_39__*, %struct.TYPE_39__** @yypcb, align 8
  %495 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %494, i32 0, i32 0
  %496 = load i32, i32* %495, align 8
  %497 = load i32, i32* @EDT_NOMEM, align 4
  %498 = call i32 @longjmp(i32 %496, i32 %497)
  br label %499

499:                                              ; preds = %493, %490
  %500 = load %struct.TYPE_38__*, %struct.TYPE_38__** %13, align 8
  %501 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %500, i32 0, i32 0
  %502 = load i64, i64* %501, align 8
  %503 = load i64, i64* @DT_IDENT_ARRAY, align 8
  %504 = icmp ne i64 %502, %503
  br i1 %504, label %505, label %515

505:                                              ; preds = %499
  %506 = load %struct.TYPE_38__*, %struct.TYPE_38__** %13, align 8
  %507 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %506, i32 0, i32 0
  %508 = load i64, i64* %507, align 8
  %509 = load i64, i64* @DT_IDENT_AGG, align 8
  %510 = icmp ne i64 %508, %509
  br i1 %510, label %511, label %515

511:                                              ; preds = %505
  %512 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %513 = load %struct.TYPE_38__*, %struct.TYPE_38__** %13, align 8
  %514 = call i32 @dt_ident_cook(%struct.TYPE_36__* %512, %struct.TYPE_38__* %513, i32* null)
  store i32 %514, i32* %12, align 4
  br label %526

515:                                              ; preds = %505, %499
  %516 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %517 = load %struct.TYPE_35__*, %struct.TYPE_35__** %9, align 8
  %518 = call i32 @DT_DYN_CTFP(%struct.TYPE_35__* %517)
  %519 = load %struct.TYPE_35__*, %struct.TYPE_35__** %9, align 8
  %520 = call i32 @DT_DYN_TYPE(%struct.TYPE_35__* %519)
  %521 = load i32, i32* @B_FALSE, align 4
  %522 = call i32 @dt_node_type_assign(%struct.TYPE_36__* %516, i32 %518, i32 %520, i32 %521)
  %523 = load %struct.TYPE_38__*, %struct.TYPE_38__** %13, align 8
  %524 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %523, i32 0, i32 2
  %525 = load i32, i32* %524, align 4
  store i32 %525, i32* %12, align 4
  br label %526

526:                                              ; preds = %515, %511
  %527 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %528 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %527, i32 0, i32 0
  %529 = load i8*, i8** %528, align 8
  %530 = call i32 @free(i8* %529)
  %531 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %532 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %531, i32 0, i32 0
  store i8* null, i8** %532, align 8
  %533 = load i8*, i8** %18, align 8
  %534 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %535 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %534, i32 0, i32 3
  store i8* %533, i8** %535, align 8
  %536 = load %struct.TYPE_38__*, %struct.TYPE_38__** %13, align 8
  %537 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %538 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %537, i32 0, i32 2
  store %struct.TYPE_38__* %536, %struct.TYPE_38__** %538, align 8
  %539 = load i32, i32* @DT_NF_LVALUE, align 4
  %540 = load i32, i32* @DT_NF_WRITABLE, align 4
  %541 = or i32 %539, %540
  %542 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %543 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %542, i32 0, i32 1
  %544 = load i32, i32* %543, align 8
  %545 = or i32 %544, %541
  store i32 %545, i32* %543, align 8
  %546 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %547 = load i32, i32* %12, align 4
  %548 = call i32 @dt_node_attr_assign(%struct.TYPE_36__* %546, i32 %547)
  br label %576

549:                                              ; preds = %418, %414
  %550 = load i8*, i8** %16, align 8
  %551 = load i8*, i8** @DTRACE_OBJ_EXEC, align 8
  %552 = icmp ne i8* %550, %551
  br i1 %552, label %553, label %565

553:                                              ; preds = %549
  %554 = load i32, i32* @D_IDENT_UNDEF, align 4
  %555 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %556 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %555, i32 0, i32 0
  %557 = load i8*, i8** %556, align 8
  %558 = load i8*, i8** %17, align 8
  %559 = load i8*, i8** %19, align 8
  %560 = load %struct.TYPE_35__*, %struct.TYPE_35__** %9, align 8
  %561 = load %struct.TYPE_35__*, %struct.TYPE_35__** %9, align 8
  %562 = call i32 @dtrace_errno(%struct.TYPE_35__* %561)
  %563 = call i8* @dtrace_errmsg(%struct.TYPE_35__* %560, i32 %562)
  %564 = call i32 (i32, i8*, i8*, i8*, ...) @xyerror(i32 %554, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.10, i64 0, i64 0), i8* %557, i8* %558, i8* %559, i8* %563)
  br label %575

565:                                              ; preds = %549
  %566 = load i32, i32* @D_IDENT_UNDEF, align 4
  %567 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %568 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %567, i32 0, i32 0
  %569 = load i8*, i8** %568, align 8
  %570 = load %struct.TYPE_35__*, %struct.TYPE_35__** %9, align 8
  %571 = load %struct.TYPE_35__*, %struct.TYPE_35__** %9, align 8
  %572 = call i32 @dtrace_errno(%struct.TYPE_35__* %571)
  %573 = call i8* @dtrace_errmsg(%struct.TYPE_35__* %570, i32 %572)
  %574 = call i32 (i32, i8*, i8*, i8*, ...) @xyerror(i32 %566, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.11, i64 0, i64 0), i8* %569, i8* %573)
  br label %575

575:                                              ; preds = %565, %553
  br label %576

576:                                              ; preds = %575, %526
  br label %577

577:                                              ; preds = %576, %413
  br label %578

578:                                              ; preds = %577, %217
  ret void
}

declare dso_local i8* @dt_idhash_name(i32*) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i32 @dt_set_errno(%struct.TYPE_35__*, i32) #1

declare dso_local %struct.TYPE_38__* @dt_idhash_lookup(i32*, i8*) #1

declare dso_local %struct.TYPE_38__* @dt_idstack_lookup(i32*, i8*) #1

declare dso_local i32 @xyerror(i32, i8*, i8*, i8*, ...) #1

declare dso_local i32 @dt_idkind_name(i64) #1

declare dso_local i32 @dt_ident_cook(%struct.TYPE_36__*, %struct.TYPE_38__*, i32*) #1

declare dso_local i32 @dt_node_type_assign(%struct.TYPE_36__*, i32, i32, i32) #1

declare dso_local i32 @DT_DYN_CTFP(%struct.TYPE_35__*) #1

declare dso_local i32 @DT_DYN_TYPE(%struct.TYPE_35__*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @dt_node_attr_assign(%struct.TYPE_36__*, i32) #1

declare dso_local i64 @dtrace_lookup_by_name(%struct.TYPE_35__*, i8*, i8*, i32*, %struct.TYPE_34__*) #1

declare dso_local %struct.TYPE_37__* @dt_module_lookup_by_name(%struct.TYPE_35__*, i32) #1

declare dso_local i64 @dtrace_symbol_type(%struct.TYPE_35__*, i32*, %struct.TYPE_34__*, %struct.TYPE_33__*) #1

declare dso_local i32 @dt_module_modelname(%struct.TYPE_37__*) #1

declare dso_local i8* @dtrace_errmsg(%struct.TYPE_35__*, i32) #1

declare dso_local i32 @dtrace_errno(%struct.TYPE_35__*) #1

declare dso_local %struct.TYPE_38__* @dt_ident_create(i8*, i32, i32, i32, i32, i32, i32*, i32*, i32) #1

declare dso_local i32 @longjmp(i32, i32) #1

declare dso_local %struct.TYPE_34__* @malloc(i32) #1

declare dso_local i32 @bcopy(%struct.TYPE_34__*, %struct.TYPE_34__*, i32) #1

declare dso_local i32 @dt_idhash_nextid(i32*, i64*) #1

declare dso_local i32 @dt_dprintf(i8*, i8*, i32, i8*, i64) #1

declare dso_local %struct.TYPE_38__* @dt_idhash_insert(i32*, i8*, i64, i64, i64, i32, i32, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
