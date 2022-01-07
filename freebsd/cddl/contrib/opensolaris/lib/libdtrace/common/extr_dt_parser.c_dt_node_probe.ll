; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_parser.c_dt_node_probe.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_parser.c_dt_node_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_14__ = type { i32* }

@yypcb = common dso_local global %struct.TYPE_15__* null, align 8
@.str = private unnamed_addr constant [5 x i8] c"::%s\00", align 1
@D_PROV_BADNAME = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"probe name may not contain scoping operator: %s\0A\00", align 1
@DTRACE_NAMELEN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [45 x i8] c"probe name may not exceed %d characters: %s\0A\00", align 1
@DT_NODE_PROBE = common dso_local global i32 0, align 4
@DT_IDENT_PROBE = common dso_local global i32 0, align 4
@DT_IDFLG_ORPHAN = common dso_local global i32 0, align 4
@DTRACE_IDNONE = common dso_local global i32 0, align 4
@_dtrace_defattr = common dso_local global i32 0, align 4
@dt_idops_probe = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [12 x i8] c"probe input\00", align 1
@DT_DP_VOID = common dso_local global i32 0, align 4
@DT_DP_ANON = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [13 x i8] c"probe output\00", align 1
@UINT8_MAX = common dso_local global i32 0, align 4
@D_PROV_PRARGLEN = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [64 x i8] c"probe %s input prototype exceeds %u parameters: %d params used\0A\00", align 1
@.str.6 = private unnamed_addr constant [65 x i8] c"probe %s output prototype exceeds %u parameters: %d params used\0A\00", align 1
@EDT_NOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_14__* @dt_node_probe(i8* %0, i32 %1, %struct.TYPE_14__* %2, %struct.TYPE_14__* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca %struct.TYPE_13__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_14__*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_14__* %2, %struct.TYPE_14__** %7, align 8
  store %struct.TYPE_14__* %3, %struct.TYPE_14__** %8, align 8
  %15 = load %struct.TYPE_15__*, %struct.TYPE_15__** @yypcb, align 8
  %16 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 1
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  store %struct.TYPE_13__* %17, %struct.TYPE_13__** %9, align 8
  %18 = load i8*, i8** %5, align 8
  %19 = call i32 @strlen(i8* %18)
  %20 = add nsw i32 %19, 3
  %21 = sext i32 %20 to i64
  store i64 %21, i64* %13, align 8
  %22 = load i64, i64* %13, align 8
  %23 = call i8* @alloca(i64 %22)
  store i8* %23, i8** %14, align 8
  %24 = load i8*, i8** %14, align 8
  %25 = load i64, i64* %13, align 8
  %26 = load i8*, i8** %5, align 8
  %27 = call i32 @snprintf(i8* %24, i64 %25, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %26)
  %28 = load i8*, i8** %14, align 8
  %29 = call i32 @strhyphenate(i8* %28)
  %30 = load i8*, i8** %5, align 8
  %31 = call i32 @free(i8* %30)
  %32 = load i8*, i8** %14, align 8
  %33 = call i32* @strchr(i8* %32, i8 signext 96)
  %34 = icmp ne i32* %33, null
  br i1 %34, label %35, label %39

35:                                               ; preds = %4
  %36 = load i32, i32* @D_PROV_BADNAME, align 4
  %37 = load i8*, i8** %14, align 8
  %38 = call i32 (i32, i8*, ...) @xyerror(i32 %36, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i8* %37)
  br label %39

39:                                               ; preds = %35, %4
  %40 = load i8*, i8** %14, align 8
  %41 = call i32 @strlen(i8* %40)
  %42 = sub nsw i32 %41, 2
  %43 = load i32, i32* @DTRACE_NAMELEN, align 4
  %44 = icmp sge i32 %42, %43
  br i1 %44, label %45, label %51

45:                                               ; preds = %39
  %46 = load i32, i32* @D_PROV_BADNAME, align 4
  %47 = load i32, i32* @DTRACE_NAMELEN, align 4
  %48 = sub nsw i32 %47, 1
  %49 = load i8*, i8** %14, align 8
  %50 = call i32 (i32, i8*, ...) @xyerror(i32 %46, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i32 %48, i8* %49)
  br label %51

51:                                               ; preds = %45, %39
  %52 = load i32, i32* @DT_NODE_PROBE, align 4
  %53 = call %struct.TYPE_14__* @dt_node_alloc(i32 %52)
  store %struct.TYPE_14__* %53, %struct.TYPE_14__** %12, align 8
  %54 = load i8*, i8** %14, align 8
  %55 = load i32, i32* @DT_IDENT_PROBE, align 4
  %56 = load i32, i32* @DT_IDFLG_ORPHAN, align 4
  %57 = load i32, i32* @DTRACE_IDNONE, align 4
  %58 = load i32, i32* @_dtrace_defattr, align 4
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %60 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32* @dt_ident_create(i8* %54, i32 %55, i32 %56, i32 %57, i32 %58, i32 0, i32* @dt_idops_probe, i32* null, i32 %61)
  %63 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %64 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %63, i32 0, i32 0
  store i32* %62, i32** %64, align 8
  %65 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %66 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %67 = load i32, i32* @DT_DP_VOID, align 4
  %68 = load i32, i32* @DT_DP_ANON, align 4
  %69 = or i32 %67, %68
  %70 = call i32 @dt_decl_prototype(%struct.TYPE_14__* %65, %struct.TYPE_14__* %66, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 %69)
  store i32 %70, i32* %10, align 4
  %71 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %72 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %73 = load i32, i32* @DT_DP_VOID, align 4
  %74 = call i32 @dt_decl_prototype(%struct.TYPE_14__* %71, %struct.TYPE_14__* %72, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i32 %73)
  store i32 %74, i32* %11, align 4
  %75 = load i32, i32* %10, align 4
  %76 = load i32, i32* @UINT8_MAX, align 4
  %77 = icmp sgt i32 %75, %76
  br i1 %77, label %78, label %84

78:                                               ; preds = %51
  %79 = load i32, i32* @D_PROV_PRARGLEN, align 4
  %80 = load i8*, i8** %14, align 8
  %81 = load i32, i32* @UINT8_MAX, align 4
  %82 = load i32, i32* %10, align 4
  %83 = call i32 (i32, i8*, ...) @xyerror(i32 %79, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.5, i64 0, i64 0), i8* %80, i32 %81, i32 %82)
  br label %84

84:                                               ; preds = %78, %51
  %85 = load i32, i32* %11, align 4
  %86 = load i32, i32* @UINT8_MAX, align 4
  %87 = icmp sgt i32 %85, %86
  br i1 %87, label %88, label %94

88:                                               ; preds = %84
  %89 = load i32, i32* @D_PROV_PRARGLEN, align 4
  %90 = load i8*, i8** %14, align 8
  %91 = load i32, i32* @UINT8_MAX, align 4
  %92 = load i32, i32* %11, align 4
  %93 = call i32 (i32, i8*, ...) @xyerror(i32 %89, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.6, i64 0, i64 0), i8* %90, i32 %91, i32 %92)
  br label %94

94:                                               ; preds = %88, %84
  %95 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %96 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %95, i32 0, i32 0
  %97 = load i32*, i32** %96, align 8
  %98 = icmp eq i32* %97, null
  br i1 %98, label %111, label %99

99:                                               ; preds = %94
  %100 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %101 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %102 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %101, i32 0, i32 0
  %103 = load i32*, i32** %102, align 8
  %104 = load i32, i32* %6, align 4
  %105 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %106 = load i32, i32* %10, align 4
  %107 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %108 = load i32, i32* %11, align 4
  %109 = call i32* @dt_probe_create(%struct.TYPE_13__* %100, i32* %103, i32 %104, %struct.TYPE_14__* %105, i32 %106, %struct.TYPE_14__* %107, i32 %108)
  %110 = icmp eq i32* %109, null
  br i1 %110, label %111, label %117

111:                                              ; preds = %99, %94
  %112 = load %struct.TYPE_15__*, %struct.TYPE_15__** @yypcb, align 8
  %113 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = load i32, i32* @EDT_NOMEM, align 4
  %116 = call i32 @longjmp(i32 %114, i32 %115)
  br label %117

117:                                              ; preds = %111, %99
  %118 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  ret %struct.TYPE_14__* %118
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @alloca(i64) #1

declare dso_local i32 @snprintf(i8*, i64, i8*, i8*) #1

declare dso_local i32 @strhyphenate(i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32* @strchr(i8*, i8 signext) #1

declare dso_local i32 @xyerror(i32, i8*, ...) #1

declare dso_local %struct.TYPE_14__* @dt_node_alloc(i32) #1

declare dso_local i32* @dt_ident_create(i8*, i32, i32, i32, i32, i32, i32*, i32*, i32) #1

declare dso_local i32 @dt_decl_prototype(%struct.TYPE_14__*, %struct.TYPE_14__*, i8*, i32) #1

declare dso_local i32* @dt_probe_create(%struct.TYPE_13__*, i32*, i32, %struct.TYPE_14__*, i32, %struct.TYPE_14__*, i32) #1

declare dso_local i32 @longjmp(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
