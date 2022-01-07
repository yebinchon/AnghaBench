; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_cc.c_dt_action_printflike.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_cc.c_dt_action_printflike.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { i32 }
%struct.TYPE_23__ = type { %struct.TYPE_23__*, %struct.TYPE_25__*, %struct.TYPE_19__*, i32 }
%struct.TYPE_25__ = type { i32 }
%struct.TYPE_19__ = type { i64, i8*, %struct.TYPE_23__* }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_22__ = type { i64, %struct.TYPE_21__* }
%struct.TYPE_21__ = type { i32, i32, i32* }

@DT_TYPE_NAMELEN = common dso_local global i32 0, align 4
@DT_NODE_STRING = common dso_local global i64 0, align 8
@D_PRINTF_ARG_FMT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [94 x i8] c"%s( ) argument #1 is incompatible with prototype:\0A\09prototype: string constant\0A\09 argument: %s\0A\00", align 1
@yylineno = common dso_local global i32 0, align 4
@DTRACEACT_FREOPEN = common dso_local global i64 0, align 8
@DT_FREOPEN_RESTORE = common dso_local global i8* null, align 8
@D_FREOPEN_INVALID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"%s( ) argument #1 cannot be \22%s\22\0A\00", align 1
@DT_PRINTF_EXACTLEN = common dso_local global i32 0, align 4
@DTRACEACT_AGGREGATION = common dso_local global i32 0, align 4
@yypcb = common dso_local global %struct.TYPE_24__* null, align 8
@EDT_NOMEM = common dso_local global i32 0, align 4
@DIF_REG_R0 = common dso_local global i32 0, align 4
@dt_int_rtype = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_23__*, %struct.TYPE_20__*, i64)* @dt_action_printflike to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dt_action_printflike(i32* %0, %struct.TYPE_23__* %1, %struct.TYPE_20__* %2, i64 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_23__*, align 8
  %7 = alloca %struct.TYPE_20__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_23__*, align 8
  %10 = alloca %struct.TYPE_23__*, align 8
  %11 = alloca %struct.TYPE_22__*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.TYPE_21__*, align 8
  %17 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_23__* %1, %struct.TYPE_23__** %6, align 8
  store %struct.TYPE_20__* %2, %struct.TYPE_20__** %7, align 8
  store i64 %3, i64* %8, align 8
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %11, align 8
  %18 = load i32, i32* @DT_TYPE_NAMELEN, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %12, align 8
  %21 = alloca i8, i64 %19, align 16
  store i64 %19, i64* %13, align 8
  %22 = load i64, i64* %8, align 8
  %23 = call i32 @DTRACEACT_ISPRINTFLIKE(i64 %22)
  %24 = call i32 @assert(i32 %23)
  %25 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %25, i32 0, i32 2
  %27 = load %struct.TYPE_19__*, %struct.TYPE_19__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @DT_NODE_STRING, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %46

32:                                               ; preds = %4
  %33 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %34 = load i32, i32* @D_PRINTF_ARG_FMT, align 4
  %35 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %35, i32 0, i32 1
  %37 = load %struct.TYPE_25__*, %struct.TYPE_25__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %40, i32 0, i32 2
  %42 = load %struct.TYPE_19__*, %struct.TYPE_19__** %41, align 8
  %43 = trunc i64 %19 to i32
  %44 = call i8* @dt_node_type_name(%struct.TYPE_19__* %42, i8* %21, i32 %43)
  %45 = call i32 @dnerror(%struct.TYPE_23__* %33, i32 %34, i8* getelementptr inbounds ([94 x i8], [94 x i8]* @.str, i64 0, i64 0), i32 %39, i8* %44)
  br label %46

46:                                               ; preds = %32, %4
  %47 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %47, i32 0, i32 2
  %49 = load %struct.TYPE_19__*, %struct.TYPE_19__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %49, i32 0, i32 2
  %51 = load %struct.TYPE_23__*, %struct.TYPE_23__** %50, align 8
  store %struct.TYPE_23__* %51, %struct.TYPE_23__** %10, align 8
  %52 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 8
  store i32 %54, i32* @yylineno, align 4
  %55 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %55, i32 0, i32 2
  %57 = load %struct.TYPE_19__*, %struct.TYPE_19__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %57, i32 0, i32 1
  %59 = load i8*, i8** %58, align 8
  store i8* %59, i8** %14, align 8
  %60 = load i64, i64* %8, align 8
  %61 = load i64, i64* @DTRACEACT_FREOPEN, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %87

63:                                               ; preds = %46
  %64 = load i8*, i8** %14, align 8
  %65 = load i8*, i8** @DT_FREOPEN_RESTORE, align 8
  %66 = call i64 @strcmp(i8* %64, i8* %65)
  %67 = icmp eq i64 %66, 0
  br i1 %67, label %68, label %78

68:                                               ; preds = %63
  %69 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %70 = load i32, i32* @D_FREOPEN_INVALID, align 4
  %71 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %71, i32 0, i32 1
  %73 = load %struct.TYPE_25__*, %struct.TYPE_25__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i8*, i8** @DT_FREOPEN_RESTORE, align 8
  %77 = call i32 @dnerror(%struct.TYPE_23__* %69, i32 %70, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %75, i8* %76)
  br label %78

78:                                               ; preds = %68, %63
  %79 = load i8*, i8** %14, align 8
  %80 = getelementptr inbounds i8, i8* %79, i64 0
  %81 = load i8, i8* %80, align 1
  %82 = sext i8 %81 to i32
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %78
  %85 = load i8*, i8** @DT_FREOPEN_RESTORE, align 8
  store i8* %85, i8** %14, align 8
  br label %86

86:                                               ; preds = %84, %78
  br label %87

87:                                               ; preds = %86, %46
  %88 = load i32*, i32** %5, align 8
  %89 = load i8*, i8** %14, align 8
  %90 = call i32 @dt_printf_create(i32* %88, i8* %89)
  %91 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %92 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %91, i32 0, i32 0
  store i32 %90, i32* %92, align 4
  %93 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %94 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @DT_PRINTF_EXACTLEN, align 4
  %97 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %98 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %97, i32 0, i32 1
  %99 = load %struct.TYPE_25__*, %struct.TYPE_25__** %98, align 8
  %100 = load i32, i32* @DTRACEACT_AGGREGATION, align 4
  %101 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %102 = call i32 @dt_printf_validate(i32 %95, i32 %96, %struct.TYPE_25__* %99, i32 1, i32 %100, %struct.TYPE_23__* %101)
  %103 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %104 = icmp eq %struct.TYPE_23__* %103, null
  br i1 %104, label %105, label %144

105:                                              ; preds = %87
  %106 = load i32*, i32** %5, align 8
  %107 = call i32* @dt_alloc(i32* %106, i32 4)
  store i32* %107, i32** %15, align 8
  %108 = icmp eq i32* %107, null
  br i1 %108, label %113, label %109

109:                                              ; preds = %105
  %110 = load i32*, i32** %5, align 8
  %111 = call %struct.TYPE_21__* @dt_zalloc(i32* %110, i32 16)
  store %struct.TYPE_21__* %111, %struct.TYPE_21__** %16, align 8
  %112 = icmp eq %struct.TYPE_21__* %111, null
  br i1 %112, label %113, label %122

113:                                              ; preds = %109, %105
  %114 = load i32*, i32** %5, align 8
  %115 = load i32*, i32** %15, align 8
  %116 = call i32 @dt_free(i32* %114, i32* %115)
  %117 = load %struct.TYPE_24__*, %struct.TYPE_24__** @yypcb, align 8
  %118 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* @EDT_NOMEM, align 4
  %121 = call i32 @longjmp(i32 %119, i32 %120)
  br label %122

122:                                              ; preds = %113, %109
  %123 = load i32, i32* @DIF_REG_R0, align 4
  %124 = call i32 @DIF_INSTR_RET(i32 %123)
  %125 = load i32*, i32** %15, align 8
  %126 = getelementptr inbounds i32, i32* %125, i64 0
  store i32 %124, i32* %126, align 4
  %127 = load i32*, i32** %15, align 8
  %128 = load %struct.TYPE_21__*, %struct.TYPE_21__** %16, align 8
  %129 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %128, i32 0, i32 2
  store i32* %127, i32** %129, align 8
  %130 = load %struct.TYPE_21__*, %struct.TYPE_21__** %16, align 8
  %131 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %130, i32 0, i32 0
  store i32 1, i32* %131, align 8
  %132 = load i32, i32* @dt_int_rtype, align 4
  %133 = load %struct.TYPE_21__*, %struct.TYPE_21__** %16, align 8
  %134 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %133, i32 0, i32 1
  store i32 %132, i32* %134, align 4
  %135 = load i32*, i32** %5, align 8
  %136 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %137 = call %struct.TYPE_22__* @dt_stmt_action(i32* %135, %struct.TYPE_20__* %136)
  store %struct.TYPE_22__* %137, %struct.TYPE_22__** %11, align 8
  %138 = load %struct.TYPE_21__*, %struct.TYPE_21__** %16, align 8
  %139 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %140 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %139, i32 0, i32 1
  store %struct.TYPE_21__* %138, %struct.TYPE_21__** %140, align 8
  %141 = load i64, i64* %8, align 8
  %142 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %143 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %142, i32 0, i32 0
  store i64 %141, i64* %143, align 8
  store i32 1, i32* %17, align 4
  br label %168

144:                                              ; preds = %87
  %145 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  store %struct.TYPE_23__* %145, %struct.TYPE_23__** %9, align 8
  br label %146

146:                                              ; preds = %163, %144
  %147 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %148 = icmp ne %struct.TYPE_23__* %147, null
  br i1 %148, label %149, label %167

149:                                              ; preds = %146
  %150 = load i32*, i32** %5, align 8
  %151 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %152 = call %struct.TYPE_22__* @dt_stmt_action(i32* %150, %struct.TYPE_20__* %151)
  store %struct.TYPE_22__* %152, %struct.TYPE_22__** %11, align 8
  %153 = load %struct.TYPE_24__*, %struct.TYPE_24__** @yypcb, align 8
  %154 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %155 = call i32 @dt_cg(%struct.TYPE_24__* %153, %struct.TYPE_23__* %154)
  %156 = load %struct.TYPE_24__*, %struct.TYPE_24__** @yypcb, align 8
  %157 = call %struct.TYPE_21__* @dt_as(%struct.TYPE_24__* %156)
  %158 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %159 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %158, i32 0, i32 1
  store %struct.TYPE_21__* %157, %struct.TYPE_21__** %159, align 8
  %160 = load i64, i64* %8, align 8
  %161 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %162 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %161, i32 0, i32 0
  store i64 %160, i64* %162, align 8
  br label %163

163:                                              ; preds = %149
  %164 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %165 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %164, i32 0, i32 0
  %166 = load %struct.TYPE_23__*, %struct.TYPE_23__** %165, align 8
  store %struct.TYPE_23__* %166, %struct.TYPE_23__** %9, align 8
  br label %146

167:                                              ; preds = %146
  store i32 0, i32* %17, align 4
  br label %168

168:                                              ; preds = %167, %122
  %169 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %169)
  %170 = load i32, i32* %17, align 4
  switch i32 %170, label %172 [
    i32 0, label %171
    i32 1, label %171
  ]

171:                                              ; preds = %168, %168
  ret void

172:                                              ; preds = %168
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @assert(i32) #2

declare dso_local i32 @DTRACEACT_ISPRINTFLIKE(i64) #2

declare dso_local i32 @dnerror(%struct.TYPE_23__*, i32, i8*, i32, i8*) #2

declare dso_local i8* @dt_node_type_name(%struct.TYPE_19__*, i8*, i32) #2

declare dso_local i64 @strcmp(i8*, i8*) #2

declare dso_local i32 @dt_printf_create(i32*, i8*) #2

declare dso_local i32 @dt_printf_validate(i32, i32, %struct.TYPE_25__*, i32, i32, %struct.TYPE_23__*) #2

declare dso_local i32* @dt_alloc(i32*, i32) #2

declare dso_local %struct.TYPE_21__* @dt_zalloc(i32*, i32) #2

declare dso_local i32 @dt_free(i32*, i32*) #2

declare dso_local i32 @longjmp(i32, i32) #2

declare dso_local i32 @DIF_INSTR_RET(i32) #2

declare dso_local %struct.TYPE_22__* @dt_stmt_action(i32*, %struct.TYPE_20__*) #2

declare dso_local i32 @dt_cg(%struct.TYPE_24__*, %struct.TYPE_23__*) #2

declare dso_local %struct.TYPE_21__* @dt_as(%struct.TYPE_24__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
