; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_pragma.c_dt_pragma_binding.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_pragma.c_dt_pragma_binding.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i32*, i32, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i64, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32* }
%struct.TYPE_13__ = type { i64, %struct.TYPE_10__*, i32 }
%struct.TYPE_10__ = type { i64, i8* }
%struct.TYPE_14__ = type { i64, i32 }

@yypcb = common dso_local global %struct.TYPE_15__* null, align 8
@DT_NODE_STRING = common dso_local global i64 0, align 8
@DT_NODE_IDENT = common dso_local global i64 0, align 8
@D_PRAGMA_MALFORM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"malformed #pragma %s \22version\22 <ident>\0A\00", align 1
@D_PRAGMA_INVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"invalid version string specified by #pragma %s\0A\00", align 1
@D_PRAGMA_SCOPE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [63 x i8] c"#pragma %s cannot modify entity defined outside program scope\0A\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"pragma\00", align 1
@EDT_NOMEM = common dso_local global i32 0, align 4
@DT_IDENT_PRAGBN = common dso_local global i32 0, align 4
@_dtrace_defattr = common dso_local global i32 0, align 4
@dt_idops_thaw = common dso_local global i32 0, align 4
@dt_pragma_apply = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.TYPE_13__*)* @dt_pragma_binding to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dt_pragma_binding(i8* %0, %struct.TYPE_13__* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_14__*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %4, align 8
  %9 = load %struct.TYPE_15__*, %struct.TYPE_15__** @yypcb, align 8
  %10 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 3
  %11 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  store %struct.TYPE_12__* %11, %struct.TYPE_12__** %5, align 8
  %12 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %13 = icmp eq %struct.TYPE_13__* %12, null
  br i1 %13, label %33, label %14

14:                                               ; preds = %2
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @DT_NODE_STRING, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %33, label %20

20:                                               ; preds = %14
  %21 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %21, i32 0, i32 1
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %22, align 8
  %24 = icmp eq %struct.TYPE_10__* %23, null
  br i1 %24, label %33, label %25

25:                                               ; preds = %20
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %26, i32 0, i32 1
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @DT_NODE_IDENT, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %25, %20, %14, %2
  %34 = load i32, i32* @D_PRAGMA_MALFORM, align 4
  %35 = load i8*, i8** %3, align 8
  %36 = call i32 @xyerror(i32 %34, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i8* %35)
  br label %37

37:                                               ; preds = %33, %25
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @dt_version_str2num(i32 %40, i32* %6)
  %42 = icmp eq i32 %41, -1
  br i1 %42, label %43, label %47

43:                                               ; preds = %37
  %44 = load i32, i32* @D_PRAGMA_INVAL, align 4
  %45 = load i8*, i8** %3, align 8
  %46 = call i32 @xyerror(i32 %44, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i8* %45)
  br label %47

47:                                               ; preds = %43, %37
  %48 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %48, i32 0, i32 1
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 1
  %52 = load i8*, i8** %51, align 8
  store i8* %52, i8** %7, align 8
  %53 = load %struct.TYPE_15__*, %struct.TYPE_15__** @yypcb, align 8
  %54 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %53, i32 0, i32 2
  %55 = load i8*, i8** %7, align 8
  %56 = call %struct.TYPE_14__* @dt_idstack_lookup(i32* %54, i8* %55)
  store %struct.TYPE_14__* %56, %struct.TYPE_14__** %8, align 8
  %57 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %58 = icmp ne %struct.TYPE_14__* %57, null
  br i1 %58, label %59, label %75

59:                                               ; preds = %47
  %60 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %62, %65
  br i1 %66, label %67, label %71

67:                                               ; preds = %59
  %68 = load i32, i32* @D_PRAGMA_SCOPE, align 4
  %69 = load i8*, i8** %3, align 8
  %70 = call i32 @xyerror(i32 %68, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.2, i64 0, i64 0), i8* %69)
  br label %71

71:                                               ; preds = %67, %59
  %72 = load i32, i32* %6, align 4
  %73 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %73, i32 0, i32 1
  store i32 %72, i32* %74, align 8
  br label %124

75:                                               ; preds = %47
  %76 = load %struct.TYPE_15__*, %struct.TYPE_15__** @yypcb, align 8
  %77 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %76, i32 0, i32 1
  %78 = load i32*, i32** %77, align 8
  %79 = icmp eq i32* %78, null
  br i1 %79, label %80, label %91

80:                                               ; preds = %75
  %81 = call i32* @dt_idhash_create(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32* null, i32 0, i32 0)
  %82 = load %struct.TYPE_15__*, %struct.TYPE_15__** @yypcb, align 8
  %83 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %82, i32 0, i32 1
  store i32* %81, i32** %83, align 8
  %84 = icmp eq i32* %81, null
  br i1 %84, label %85, label %91

85:                                               ; preds = %80
  %86 = load %struct.TYPE_15__*, %struct.TYPE_15__** @yypcb, align 8
  %87 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* @EDT_NOMEM, align 4
  %90 = call i32 @longjmp(i32 %88, i32 %89)
  br label %91

91:                                               ; preds = %85, %80, %75
  %92 = load %struct.TYPE_15__*, %struct.TYPE_15__** @yypcb, align 8
  %93 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %92, i32 0, i32 1
  %94 = load i32*, i32** %93, align 8
  %95 = load i8*, i8** %7, align 8
  %96 = load i32, i32* @DT_IDENT_PRAGBN, align 4
  %97 = load i32, i32* @_dtrace_defattr, align 4
  %98 = load i32, i32* %6, align 4
  %99 = load i8*, i8** %3, align 8
  %100 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = call %struct.TYPE_14__* @dt_idhash_insert(i32* %94, i8* %95, i32 %96, i32 0, i32 0, i32 %97, i32 %98, i32* @dt_idops_thaw, i8* %99, i64 %102)
  store %struct.TYPE_14__* %103, %struct.TYPE_14__** %8, align 8
  %104 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %105 = icmp eq %struct.TYPE_14__* %104, null
  br i1 %105, label %106, label %112

106:                                              ; preds = %91
  %107 = load %struct.TYPE_15__*, %struct.TYPE_15__** @yypcb, align 8
  %108 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = load i32, i32* @EDT_NOMEM, align 4
  %111 = call i32 @longjmp(i32 %109, i32 %110)
  br label %112

112:                                              ; preds = %106, %91
  %113 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %114 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %113, i32 0, i32 1
  %115 = load %struct.TYPE_11__*, %struct.TYPE_11__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %115, i32 0, i32 0
  %117 = load i32*, i32** %116, align 8
  %118 = icmp eq i32* %117, null
  br i1 %118, label %119, label %124

119:                                              ; preds = %112
  %120 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %121 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %120, i32 0, i32 1
  %122 = load %struct.TYPE_11__*, %struct.TYPE_11__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %122, i32 0, i32 0
  store i32* @dt_pragma_apply, i32** %123, align 8
  br label %124

124:                                              ; preds = %71, %119, %112
  ret void
}

declare dso_local i32 @xyerror(i32, i8*, i8*) #1

declare dso_local i32 @dt_version_str2num(i32, i32*) #1

declare dso_local %struct.TYPE_14__* @dt_idstack_lookup(i32*, i8*) #1

declare dso_local i32* @dt_idhash_create(i8*, i32*, i32, i32) #1

declare dso_local i32 @longjmp(i32, i32) #1

declare dso_local %struct.TYPE_14__* @dt_idhash_insert(i32*, i8*, i32, i32, i32, i32, i32, i32*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
