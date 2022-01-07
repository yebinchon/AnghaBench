; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_cc.c_dt_action_trace.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_cc.c_dt_action_trace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { i32, %struct.TYPE_22__* }
%struct.TYPE_22__ = type { i32, i32, %struct.TYPE_19__*, %struct.TYPE_25__* }
%struct.TYPE_19__ = type { i64 }
%struct.TYPE_25__ = type { i64 }
%struct.TYPE_20__ = type { i32* }
%struct.TYPE_21__ = type { i32, i32 }
%struct.TYPE_23__ = type { i8*, i64 }

@DT_ACT_TRACE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [6 x i8] c"trace\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"print\00", align 1
@D_TRACE_VOID = common dso_local global i32 0, align 4
@D_PRINT_VOID = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [47 x i8] c"%s( ) may not be applied to a void expression\0A\00", align 1
@DT_IDENT_XLPTR = common dso_local global i32 0, align 4
@D_TRACE_DYN = common dso_local global i32 0, align 4
@D_PRINT_DYN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [50 x i8] c"%s( ) may not be applied to a translated pointer\0A\00", align 1
@DT_NODE_AGG = common dso_local global i64 0, align 8
@D_TRACE_AGG = common dso_local global i32 0, align 4
@D_PRINT_AGG = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [46 x i8] c"%s( ) may not be applied to an aggregation%s\0A\00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.6 = private unnamed_addr constant [27 x i8] c" -- did you mean printa()?\00", align 1
@yypcb = common dso_local global %struct.TYPE_24__* null, align 8
@DT_ACT_PRINT = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [7 x i8] c"%s`%ld\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"%s`%d`%ld\00", align 1
@EDT_NOMEM = common dso_local global i32 0, align 4
@DTRACEACT_DIFEXPR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_22__*, %struct.TYPE_20__*)* @dt_action_trace to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dt_action_trace(i32* %0, %struct.TYPE_22__* %1, %struct.TYPE_20__* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_22__*, align 8
  %6 = alloca %struct.TYPE_20__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_21__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_22__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_23__*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_22__* %1, %struct.TYPE_22__** %5, align 8
  store %struct.TYPE_20__* %2, %struct.TYPE_20__** %6, align 8
  %14 = load i32*, i32** %4, align 8
  %15 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %16 = call %struct.TYPE_21__* @dt_stmt_action(i32* %14, %struct.TYPE_20__* %15)
  store %struct.TYPE_21__* %16, %struct.TYPE_21__** %8, align 8
  %17 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %17, i32 0, i32 2
  %19 = load %struct.TYPE_19__*, %struct.TYPE_19__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @DT_ACT_TRACE, align 8
  %23 = icmp eq i64 %21, %22
  %24 = zext i1 %23 to i32
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %9, align 4
  %26 = icmp ne i32 %25, 0
  %27 = zext i1 %26 to i64
  %28 = select i1 %26, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0)
  store i8* %28, i8** %10, align 8
  %29 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %29, i32 0, i32 3
  %31 = load %struct.TYPE_25__*, %struct.TYPE_25__** %30, align 8
  %32 = call i64 @dt_node_is_void(%struct.TYPE_25__* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %48

34:                                               ; preds = %3
  %35 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %35, i32 0, i32 3
  %37 = load %struct.TYPE_25__*, %struct.TYPE_25__** %36, align 8
  %38 = load i32, i32* %9, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %34
  %41 = load i32, i32* @D_TRACE_VOID, align 4
  br label %44

42:                                               ; preds = %34
  %43 = load i32, i32* @D_PRINT_VOID, align 4
  br label %44

44:                                               ; preds = %42, %40
  %45 = phi i32 [ %41, %40 ], [ %43, %42 ]
  %46 = load i8*, i8** %10, align 8
  %47 = call i32 (%struct.TYPE_25__*, i32, i8*, i8*, ...) @dnerror(%struct.TYPE_25__* %37, i32 %45, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i8* %46)
  br label %48

48:                                               ; preds = %44, %3
  %49 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %49, i32 0, i32 3
  %51 = load %struct.TYPE_25__*, %struct.TYPE_25__** %50, align 8
  %52 = load i32, i32* @DT_IDENT_XLPTR, align 4
  %53 = call i32* @dt_node_resolve(%struct.TYPE_25__* %51, i32 %52)
  %54 = icmp ne i32* %53, null
  br i1 %54, label %55, label %69

55:                                               ; preds = %48
  %56 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %56, i32 0, i32 3
  %58 = load %struct.TYPE_25__*, %struct.TYPE_25__** %57, align 8
  %59 = load i32, i32* %9, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %55
  %62 = load i32, i32* @D_TRACE_DYN, align 4
  br label %65

63:                                               ; preds = %55
  %64 = load i32, i32* @D_PRINT_DYN, align 4
  br label %65

65:                                               ; preds = %63, %61
  %66 = phi i32 [ %62, %61 ], [ %64, %63 ]
  %67 = load i8*, i8** %10, align 8
  %68 = call i32 (%struct.TYPE_25__*, i32, i8*, i8*, ...) @dnerror(%struct.TYPE_25__* %58, i32 %66, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.3, i64 0, i64 0), i8* %67)
  br label %69

69:                                               ; preds = %65, %48
  %70 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %70, i32 0, i32 3
  %72 = load %struct.TYPE_25__*, %struct.TYPE_25__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @DT_NODE_AGG, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %95

77:                                               ; preds = %69
  %78 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %78, i32 0, i32 3
  %80 = load %struct.TYPE_25__*, %struct.TYPE_25__** %79, align 8
  %81 = load i32, i32* %9, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %77
  %84 = load i32, i32* @D_TRACE_AGG, align 4
  br label %87

85:                                               ; preds = %77
  %86 = load i32, i32* @D_PRINT_AGG, align 4
  br label %87

87:                                               ; preds = %85, %83
  %88 = phi i32 [ %84, %83 ], [ %86, %85 ]
  %89 = load i8*, i8** %10, align 8
  %90 = load i32, i32* %9, align 4
  %91 = icmp ne i32 %90, 0
  %92 = zext i1 %91 to i64
  %93 = select i1 %91, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0)
  %94 = call i32 (%struct.TYPE_25__*, i32, i8*, i8*, ...) @dnerror(%struct.TYPE_25__* %80, i32 %88, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.4, i64 0, i64 0), i8* %89, i8* %93)
  br label %95

95:                                               ; preds = %87, %69
  %96 = load %struct.TYPE_24__*, %struct.TYPE_24__** @yypcb, align 8
  %97 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %97, i32 0, i32 3
  %99 = load %struct.TYPE_25__*, %struct.TYPE_25__** %98, align 8
  %100 = call i32 @dt_cg(%struct.TYPE_24__* %96, %struct.TYPE_25__* %99)
  %101 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %101, i32 0, i32 2
  %103 = load %struct.TYPE_19__*, %struct.TYPE_19__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @DT_ACT_PRINT, align 8
  %107 = icmp eq i64 %105, %106
  br i1 %107, label %108, label %219

108:                                              ; preds = %95
  %109 = load %struct.TYPE_24__*, %struct.TYPE_24__** @yypcb, align 8
  %110 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %109, i32 0, i32 1
  %111 = load %struct.TYPE_22__*, %struct.TYPE_22__** %110, align 8
  store %struct.TYPE_22__* %111, %struct.TYPE_22__** %11, align 8
  %112 = load i32*, i32** %4, align 8
  %113 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %114 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = call %struct.TYPE_23__* @dt_module_lookup_by_ctf(i32* %112, i32 %115)
  store %struct.TYPE_23__* %116, %struct.TYPE_23__** %13, align 8
  %117 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %118 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %117, i32 0, i32 0
  %119 = load i8*, i8** %118, align 8
  %120 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %121 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = call i32 (i32*, i64, i8*, i8*, i32, ...) @snprintf(i32* null, i64 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i8* %119, i32 %122)
  %124 = add nsw i32 %123, 1
  %125 = sext i32 %124 to i64
  store i64 %125, i64* %12, align 8
  %126 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %127 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %126, i32 0, i32 1
  %128 = load i64, i64* %127, align 8
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %151

130:                                              ; preds = %108
  %131 = load i32*, i32** %4, align 8
  %132 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %133 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %134 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @dt_module_getlibid(i32* %131, %struct.TYPE_23__* %132, i32 %135)
  store i32 %136, i32* %7, align 4
  %137 = load i32, i32* %7, align 4
  %138 = icmp sge i32 %137, 0
  %139 = zext i1 %138 to i32
  %140 = call i32 @assert(i32 %139)
  %141 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %142 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %141, i32 0, i32 0
  %143 = load i8*, i8** %142, align 8
  %144 = load i32, i32* %7, align 4
  %145 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %146 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = call i32 (i32*, i64, i8*, i8*, i32, ...) @snprintf(i32* null, i64 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i8* %143, i32 %144, i32 %147)
  %149 = add nsw i32 %148, 1
  %150 = sext i32 %149 to i64
  store i64 %150, i64* %12, align 8
  br label %161

151:                                              ; preds = %108
  %152 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %153 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %152, i32 0, i32 0
  %154 = load i8*, i8** %153, align 8
  %155 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %156 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = call i32 (i32*, i64, i8*, i8*, i32, ...) @snprintf(i32* null, i64 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i8* %154, i32 %157)
  %159 = add nsw i32 %158, 1
  %160 = sext i32 %159 to i64
  store i64 %160, i64* %12, align 8
  br label %161

161:                                              ; preds = %151, %130
  %162 = load i32*, i32** %4, align 8
  %163 = load i64, i64* %12, align 8
  %164 = call i32* @dt_alloc(i32* %162, i64 %163)
  %165 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %166 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %165, i32 0, i32 0
  store i32* %164, i32** %166, align 8
  %167 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %168 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %167, i32 0, i32 0
  %169 = load i32*, i32** %168, align 8
  %170 = icmp eq i32* %169, null
  br i1 %170, label %171, label %177

171:                                              ; preds = %161
  %172 = load %struct.TYPE_24__*, %struct.TYPE_24__** @yypcb, align 8
  %173 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = load i32, i32* @EDT_NOMEM, align 4
  %176 = call i32 @longjmp(i32 %174, i32 %175)
  br label %177

177:                                              ; preds = %171, %161
  %178 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %179 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %178, i32 0, i32 0
  %180 = load i32*, i32** %179, align 8
  %181 = load i64, i64* %12, align 8
  %182 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %183 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %182, i32 0, i32 0
  %184 = load i8*, i8** %183, align 8
  %185 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %186 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 8
  %188 = call i32 (i32*, i64, i8*, i8*, i32, ...) @snprintf(i32* %180, i64 %181, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i8* %184, i32 %187)
  %189 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %190 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %189, i32 0, i32 1
  %191 = load i64, i64* %190, align 8
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %193, label %206

193:                                              ; preds = %177
  %194 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %195 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %194, i32 0, i32 0
  %196 = load i32*, i32** %195, align 8
  %197 = load i64, i64* %12, align 8
  %198 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %199 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %198, i32 0, i32 0
  %200 = load i8*, i8** %199, align 8
  %201 = load i32, i32* %7, align 4
  %202 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %203 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 8
  %205 = call i32 (i32*, i64, i8*, i8*, i32, ...) @snprintf(i32* %196, i64 %197, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i8* %200, i32 %201, i32 %204)
  br label %218

206:                                              ; preds = %177
  %207 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %208 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %207, i32 0, i32 0
  %209 = load i32*, i32** %208, align 8
  %210 = load i64, i64* %12, align 8
  %211 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %212 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %211, i32 0, i32 0
  %213 = load i8*, i8** %212, align 8
  %214 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %215 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 8
  %217 = call i32 (i32*, i64, i8*, i8*, i32, ...) @snprintf(i32* %209, i64 %210, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i8* %213, i32 %216)
  br label %218

218:                                              ; preds = %206, %193
  br label %219

219:                                              ; preds = %218, %95
  %220 = load %struct.TYPE_24__*, %struct.TYPE_24__** @yypcb, align 8
  %221 = call i32 @dt_as(%struct.TYPE_24__* %220)
  %222 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %223 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %222, i32 0, i32 1
  store i32 %221, i32* %223, align 4
  %224 = load i32, i32* @DTRACEACT_DIFEXPR, align 4
  %225 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %226 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %225, i32 0, i32 0
  store i32 %224, i32* %226, align 4
  ret void
}

declare dso_local %struct.TYPE_21__* @dt_stmt_action(i32*, %struct.TYPE_20__*) #1

declare dso_local i64 @dt_node_is_void(%struct.TYPE_25__*) #1

declare dso_local i32 @dnerror(%struct.TYPE_25__*, i32, i8*, i8*, ...) #1

declare dso_local i32* @dt_node_resolve(%struct.TYPE_25__*, i32) #1

declare dso_local i32 @dt_cg(%struct.TYPE_24__*, %struct.TYPE_25__*) #1

declare dso_local %struct.TYPE_23__* @dt_module_lookup_by_ctf(i32*, i32) #1

declare dso_local i32 @snprintf(i32*, i64, i8*, i8*, i32, ...) #1

declare dso_local i32 @dt_module_getlibid(i32*, %struct.TYPE_23__*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32* @dt_alloc(i32*, i64) #1

declare dso_local i32 @longjmp(i32, i32) #1

declare dso_local i32 @dt_as(%struct.TYPE_24__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
