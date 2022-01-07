; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_parser.c_dt_cook_probe.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_parser.c_dt_cook_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { i32, i32* }
%struct.TYPE_23__ = type { %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i32, %struct.TYPE_22__* }
%struct.TYPE_22__ = type { i64, i64, i64, i64*, %struct.TYPE_23__**, %struct.TYPE_23__** }
%struct.TYPE_21__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_20__ = type { i32 }

@yypcb = common dso_local global %struct.TYPE_24__* null, align 8
@DT_TYPE_NAMELEN = common dso_local global i32 0, align 4
@DT_XLATE_FUZZY = common dso_local global i32 0, align 4
@EDT_NOMEM = common dso_local global i32 0, align 4
@D_PROV_PRXLATOR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [71 x i8] c"translator for %s:%s output argument #%u from %s to %s is not defined\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_23__*, %struct.TYPE_21__*)* @dt_cook_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dt_cook_probe(%struct.TYPE_23__* %0, %struct.TYPE_21__* %1) #0 {
  %3 = alloca %struct.TYPE_23__*, align 8
  %4 = alloca %struct.TYPE_21__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_22__*, align 8
  %7 = alloca %struct.TYPE_20__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_23__*, align 8
  %14 = alloca %struct.TYPE_23__*, align 8
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %3, align 8
  store %struct.TYPE_21__* %1, %struct.TYPE_21__** %4, align 8
  %15 = load %struct.TYPE_24__*, %struct.TYPE_24__** @yypcb, align 8
  %16 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %15, i32 0, i32 1
  %17 = load i32*, i32** %16, align 8
  store i32* %17, i32** %5, align 8
  %18 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_19__*, %struct.TYPE_19__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %20, i32 0, i32 1
  %22 = load %struct.TYPE_22__*, %struct.TYPE_22__** %21, align 8
  store %struct.TYPE_22__* %22, %struct.TYPE_22__** %6, align 8
  %23 = load i32, i32* @DT_TYPE_NAMELEN, align 4
  %24 = zext i32 %23 to i64
  %25 = call i8* @llvm.stacksave()
  store i8* %25, i8** %9, align 8
  %26 = alloca i8, i64 %24, align 16
  store i64 %24, i64* %10, align 8
  %27 = load i32, i32* @DT_TYPE_NAMELEN, align 4
  %28 = zext i32 %27 to i64
  %29 = alloca i8, i64 %28, align 16
  store i64 %28, i64* %11, align 8
  %30 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp eq i64 %32, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %2
  store i32 1, i32* %12, align 4
  br label %115

38:                                               ; preds = %2
  store i64 0, i64* %8, align 8
  br label %39

39:                                               ; preds = %111, %38
  %40 = load i64, i64* %8, align 8
  %41 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = icmp ult i64 %40, %43
  br i1 %44, label %45, label %114

45:                                               ; preds = %39
  %46 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %46, i32 0, i32 5
  %48 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %47, align 8
  %49 = load i64, i64* %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_23__*, %struct.TYPE_23__** %48, i64 %49
  %51 = load %struct.TYPE_23__*, %struct.TYPE_23__** %50, align 8
  store %struct.TYPE_23__* %51, %struct.TYPE_23__** %13, align 8
  %52 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %52, i32 0, i32 4
  %54 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %53, align 8
  %55 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %55, i32 0, i32 3
  %57 = load i64*, i64** %56, align 8
  %58 = load i64, i64* %8, align 8
  %59 = getelementptr inbounds i64, i64* %57, i64 %58
  %60 = load i64, i64* %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_23__*, %struct.TYPE_23__** %54, i64 %60
  %62 = load %struct.TYPE_23__*, %struct.TYPE_23__** %61, align 8
  store %struct.TYPE_23__* %62, %struct.TYPE_23__** %14, align 8
  %63 = load i32*, i32** %5, align 8
  %64 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %65 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %66 = load i32, i32* @DT_XLATE_FUZZY, align 4
  %67 = call %struct.TYPE_20__* @dt_xlator_lookup(i32* %63, %struct.TYPE_23__* %64, %struct.TYPE_23__* %65, i32 %66)
  store %struct.TYPE_20__* %67, %struct.TYPE_20__** %7, align 8
  %68 = icmp ne %struct.TYPE_20__* %67, null
  br i1 %68, label %69, label %84

69:                                               ; preds = %45
  %70 = load i32*, i32** %5, align 8
  %71 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %72 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %73 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i64 @dt_provider_xref(i32* %70, %struct.TYPE_21__* %71, i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %83

77:                                               ; preds = %69
  %78 = load %struct.TYPE_24__*, %struct.TYPE_24__** @yypcb, align 8
  %79 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @EDT_NOMEM, align 4
  %82 = call i32 @longjmp(i32 %80, i32 %81)
  br label %83

83:                                               ; preds = %77, %69
  br label %111

84:                                               ; preds = %45
  %85 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %86 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %87 = call i64 @dt_node_is_argcompat(%struct.TYPE_23__* %85, %struct.TYPE_23__* %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %84
  br label %111

90:                                               ; preds = %84
  %91 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %92 = load i32, i32* @D_PROV_PRXLATOR, align 4
  %93 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %98 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %97, i32 0, i32 0
  %99 = load %struct.TYPE_19__*, %struct.TYPE_19__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = load i64, i64* %8, align 8
  %103 = add i64 %102, 1
  %104 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %105 = trunc i64 %24 to i32
  %106 = call i32 @dt_node_type_name(%struct.TYPE_23__* %104, i8* %26, i32 %105)
  %107 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %108 = trunc i64 %28 to i32
  %109 = call i32 @dt_node_type_name(%struct.TYPE_23__* %107, i8* %29, i32 %108)
  %110 = call i32 @dnerror(%struct.TYPE_23__* %91, i32 %92, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str, i64 0, i64 0), i32 %96, i32 %101, i64 %103, i32 %106, i32 %109)
  br label %111

111:                                              ; preds = %90, %89, %83
  %112 = load i64, i64* %8, align 8
  %113 = add i64 %112, 1
  store i64 %113, i64* %8, align 8
  br label %39

114:                                              ; preds = %39
  store i32 0, i32* %12, align 4
  br label %115

115:                                              ; preds = %114, %37
  %116 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %116)
  %117 = load i32, i32* %12, align 4
  switch i32 %117, label %119 [
    i32 0, label %118
    i32 1, label %118
  ]

118:                                              ; preds = %115, %115
  ret void

119:                                              ; preds = %115
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.TYPE_20__* @dt_xlator_lookup(i32*, %struct.TYPE_23__*, %struct.TYPE_23__*, i32) #2

declare dso_local i64 @dt_provider_xref(i32*, %struct.TYPE_21__*, i32) #2

declare dso_local i32 @longjmp(i32, i32) #2

declare dso_local i64 @dt_node_is_argcompat(%struct.TYPE_23__*, %struct.TYPE_23__*) #2

declare dso_local i32 @dnerror(%struct.TYPE_23__*, i32, i8*, i32, i32, i64, i32, i32) #2

declare dso_local i32 @dt_node_type_name(%struct.TYPE_23__*, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
