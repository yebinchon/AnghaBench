; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_sugar.c_dt_compile_sugar.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_sugar.c_dt_compile_sugar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i8* }
%struct.TYPE_17__ = type { i32*, i32*, i32*, i32 }
%struct.TYPE_16__ = type { i64, i64, %struct.TYPE_17__*, i32, %struct.TYPE_15__*, i32 }

@B_TRUE = common dso_local global i8* null, align 8
@yyintdecimal = common dso_local global i8* null, align 8
@yyintsuffix = common dso_local global i8* null, align 8
@yyintprefix = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_17__* @dt_compile_sugar(%struct.TYPE_15__* %0, %struct.TYPE_17__* %1) #0 {
  %3 = alloca %struct.TYPE_15__*, align 8
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca %struct.TYPE_16__, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %3, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %4, align 8
  %7 = bitcast %struct.TYPE_16__* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %7, i8 0, i64 48, i1 false)
  store i32 0, i32* %6, align 4
  %8 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %5, i32 0, i32 4
  store %struct.TYPE_15__* %8, %struct.TYPE_15__** %9, align 8
  %10 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %5, i32 0, i32 3
  store i32 %12, i32* %13, align 8
  %14 = load i8*, i8** @B_TRUE, align 8
  store i8* %14, i8** @yyintdecimal, align 8
  %15 = load i8*, i8** @yyintsuffix, align 8
  %16 = getelementptr inbounds i8, i8* %15, i64 0
  store i8 0, i8* %16, align 1
  store i64 0, i64* @yyintprefix, align 8
  %17 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %18 = call i32 @dt_sugar_visit_all(%struct.TYPE_16__* %5, %struct.TYPE_17__* %17)
  %19 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %5, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %38

22:                                               ; preds = %2
  %23 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %5, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %38

26:                                               ; preds = %22
  %27 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %30, i32 0, i32 2
  %32 = load i32*, i32** %31, align 8
  %33 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = call i32 @dt_node_clause(i32 %29, i32* %32, i32* %35)
  %37 = call i32 @dt_sugar_append_clause(%struct.TYPE_16__* %5, i32 %36)
  br label %64

38:                                               ; preds = %22, %2
  %39 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %39, i32 0, i32 2
  %41 = load i32*, i32** %40, align 8
  %42 = icmp ne i32* %41, null
  br i1 %42, label %43, label %49

43:                                               ; preds = %38
  %44 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %44, i32 0, i32 2
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* %6, align 4
  %48 = call i32 @dt_sugar_new_condition(%struct.TYPE_16__* %5, i32* %46, i32 %47)
  store i32 %48, i32* %6, align 4
  br label %49

49:                                               ; preds = %43, %38
  %50 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %50, i32 0, i32 1
  %52 = load i32*, i32** %51, align 8
  %53 = icmp eq i32* %52, null
  br i1 %53, label %54, label %57

54:                                               ; preds = %49
  %55 = load i32, i32* %6, align 4
  %56 = call i32 @dt_sugar_new_basic_block(%struct.TYPE_16__* %5, i32 %55, i32* null)
  br label %63

57:                                               ; preds = %49
  %58 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %58, i32 0, i32 1
  %60 = load i32*, i32** %59, align 8
  %61 = load i32, i32* %6, align 4
  %62 = call i32 @dt_sugar_visit_stmts(%struct.TYPE_16__* %5, i32* %60, i32 %61)
  br label %63

63:                                               ; preds = %57, %54
  br label %64

64:                                               ; preds = %63, %26
  %65 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %5, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %64
  %69 = call i32 @dt_sugar_new_clearerror_clause(%struct.TYPE_16__* %5)
  %70 = call i32 @dt_sugar_prepend_clause(%struct.TYPE_16__* %5, i32 %69)
  br label %71

71:                                               ; preds = %68, %64
  %72 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %5, i32 0, i32 2
  %73 = load %struct.TYPE_17__*, %struct.TYPE_17__** %72, align 8
  %74 = icmp ne %struct.TYPE_17__* %73, null
  br i1 %74, label %75, label %92

75:                                               ; preds = %71
  %76 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %5, i32 0, i32 2
  %77 = load %struct.TYPE_17__*, %struct.TYPE_17__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %77, i32 0, i32 0
  %79 = load i32*, i32** %78, align 8
  %80 = icmp ne i32* %79, null
  br i1 %80, label %81, label %92

81:                                               ; preds = %75
  %82 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %82, i32 0, i32 0
  %84 = load i8*, i8** %83, align 8
  %85 = icmp ne i8* %84, null
  br i1 %85, label %92, label %86

86:                                               ; preds = %81
  %87 = load i8*, i8** @B_TRUE, align 8
  %88 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %89 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %88, i32 0, i32 0
  store i8* %87, i8** %89, align 8
  %90 = call i32 (...) @dt_sugar_makeerrorclause()
  %91 = call i32 @dt_sugar_prepend_clause(%struct.TYPE_16__* %5, i32 %90)
  br label %92

92:                                               ; preds = %86, %81, %75, %71
  %93 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %5, i32 0, i32 2
  %94 = load %struct.TYPE_17__*, %struct.TYPE_17__** %93, align 8
  ret %struct.TYPE_17__* %94
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @dt_sugar_visit_all(%struct.TYPE_16__*, %struct.TYPE_17__*) #2

declare dso_local i32 @dt_sugar_append_clause(%struct.TYPE_16__*, i32) #2

declare dso_local i32 @dt_node_clause(i32, i32*, i32*) #2

declare dso_local i32 @dt_sugar_new_condition(%struct.TYPE_16__*, i32*, i32) #2

declare dso_local i32 @dt_sugar_new_basic_block(%struct.TYPE_16__*, i32, i32*) #2

declare dso_local i32 @dt_sugar_visit_stmts(%struct.TYPE_16__*, i32*, i32) #2

declare dso_local i32 @dt_sugar_prepend_clause(%struct.TYPE_16__*, i32) #2

declare dso_local i32 @dt_sugar_new_clearerror_clause(%struct.TYPE_16__*) #2

declare dso_local i32 @dt_sugar_makeerrorclause(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
