; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_parser.c_dt_node_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_parser.c_dt_node_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { %struct.TYPE_13__*, %struct.TYPE_12__* }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_16__ = type { i8*, i32 }
%struct.TYPE_14__ = type { i64, i32, i32 }

@yypcb = common dso_local global %struct.TYPE_17__* null, align 8
@EDT_COMPILER = common dso_local global i32 0, align 4
@DT_NODE_TYPE = common dso_local global i32 0, align 4
@DT_TOK_IDENT = common dso_local global i32 0, align 4
@_dtrace_defattr = common dso_local global i32 0, align 4
@_dtrace_typattr = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_16__* @dt_node_type(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_15__*, align 8
  %4 = alloca %struct.TYPE_14__, align 8
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %8 = load %struct.TYPE_17__*, %struct.TYPE_17__** @yypcb, align 8
  %9 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %8, i32 0, i32 1
  %10 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  store %struct.TYPE_15__* %10, %struct.TYPE_15__** %3, align 8
  store i8* null, i8** %6, align 8
  %11 = load i32*, i32** %2, align 8
  %12 = icmp eq i32* %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = call i32* @dt_decl_pop_param(i8** %6)
  store i32* %14, i32** %2, align 8
  br label %15

15:                                               ; preds = %13, %1
  %16 = load i32*, i32** %2, align 8
  %17 = call i32 @dt_decl_type(i32* %16, %struct.TYPE_14__* %4)
  store i32 %17, i32* %7, align 4
  %18 = load i32*, i32** %2, align 8
  %19 = call i32 @dt_decl_free(i32* %18)
  %20 = load i32, i32* %7, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %30

22:                                               ; preds = %15
  %23 = load i8*, i8** %6, align 8
  %24 = call i32 @free(i8* %23)
  %25 = load %struct.TYPE_17__*, %struct.TYPE_17__** @yypcb, align 8
  %26 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @EDT_COMPILER, align 4
  %29 = call i32 @longjmp(i32 %27, i32 %28)
  br label %30

30:                                               ; preds = %22, %15
  %31 = load i32, i32* @DT_NODE_TYPE, align 4
  %32 = call %struct.TYPE_16__* @dt_node_alloc(i32 %31)
  store %struct.TYPE_16__* %32, %struct.TYPE_16__** %5, align 8
  %33 = load i32, i32* @DT_TOK_IDENT, align 4
  %34 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 8
  %36 = load i8*, i8** %6, align 8
  %37 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %37, i32 0, i32 0
  store i8* %36, i8** %38, align 8
  %39 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %4, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %4, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %4, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @dt_node_type_assign(%struct.TYPE_16__* %39, i64 %41, i32 %43, i32 %45)
  %47 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %4, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %49, i32 0, i32 1
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp eq i64 %48, %53
  br i1 %54, label %64, label %55

55:                                               ; preds = %30
  %56 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %4, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_13__*, %struct.TYPE_13__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp eq i64 %57, %62
  br i1 %63, label %64, label %68

64:                                               ; preds = %55, %30
  %65 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %66 = load i32, i32* @_dtrace_defattr, align 4
  %67 = call i32 @dt_node_attr_assign(%struct.TYPE_16__* %65, i32 %66)
  br label %72

68:                                               ; preds = %55
  %69 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %70 = load i32, i32* @_dtrace_typattr, align 4
  %71 = call i32 @dt_node_attr_assign(%struct.TYPE_16__* %69, i32 %70)
  br label %72

72:                                               ; preds = %68, %64
  %73 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  ret %struct.TYPE_16__* %73
}

declare dso_local i32* @dt_decl_pop_param(i8**) #1

declare dso_local i32 @dt_decl_type(i32*, %struct.TYPE_14__*) #1

declare dso_local i32 @dt_decl_free(i32*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @longjmp(i32, i32) #1

declare dso_local %struct.TYPE_16__* @dt_node_alloc(i32) #1

declare dso_local i32 @dt_node_type_assign(%struct.TYPE_16__*, i64, i32, i32) #1

declare dso_local i32 @dt_node_attr_assign(%struct.TYPE_16__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
