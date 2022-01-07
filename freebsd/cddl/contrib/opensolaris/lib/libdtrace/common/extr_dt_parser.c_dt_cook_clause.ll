; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_parser.c_dt_cook_clause.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_parser.c_dt_cook_clause.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, %struct.TYPE_12__*, %struct.TYPE_11__ }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_13__ = type { i32, %struct.TYPE_15__*, i32, i32 }
%struct.TYPE_15__ = type { i32 }

@yypcb = common dso_local global %struct.TYPE_14__* null, align 8
@EDT_COMPILER = common dso_local global i32 0, align 4
@D_IDENT_UNDEF = common dso_local global i32 0, align 4
@D_VAR_UNDEF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"action list\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"predicate\00", align 1
@D_PRED_SCALAR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"predicate result must be of scalar type\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_13__* (%struct.TYPE_13__*, i32)* @dt_cook_clause to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_13__* @dt_cook_clause(%struct.TYPE_13__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %9 = load %struct.TYPE_14__*, %struct.TYPE_14__** @yypcb, align 8
  %10 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 2
  %11 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @dt_node_attr_assign(%struct.TYPE_13__* %8, i32 %12)
  %14 = load %struct.TYPE_14__*, %struct.TYPE_14__** @yypcb, align 8
  %15 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %18, i32 0, i32 3
  store i32 %17, i32* %19, align 4
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** @yypcb, align 8
  %21 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @bcopy(i32 %22, i32 %23, i32 4)
  store volatile i32 0, i32* %6, align 4
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %25, i32 0, i32 1
  %27 = load %struct.TYPE_15__*, %struct.TYPE_15__** %26, align 8
  %28 = icmp ne %struct.TYPE_15__* %27, null
  br i1 %28, label %29, label %73

29:                                               ; preds = %2
  %30 = load %struct.TYPE_14__*, %struct.TYPE_14__** @yypcb, align 8
  %31 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @setjmp(i32 %32) #4
  store volatile i32 %33, i32* %5, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %73

35:                                               ; preds = %29
  %36 = load i32, i32* %7, align 4
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** @yypcb, align 8
  %38 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @bcopy(i32 %36, i32 %39, i32 4)
  %41 = load volatile i32, i32* %6, align 4
  %42 = add nsw i32 %41, 1
  store volatile i32 %42, i32* %6, align 4
  %43 = icmp ne i32 %41, 0
  br i1 %43, label %66, label %44

44:                                               ; preds = %35
  %45 = load volatile i32, i32* %5, align 4
  %46 = load volatile i32, i32* @EDT_COMPILER, align 4
  %47 = icmp ne i32 %45, %46
  br i1 %47, label %66, label %48

48:                                               ; preds = %44
  %49 = load %struct.TYPE_14__*, %struct.TYPE_14__** @yypcb, align 8
  %50 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %49, i32 0, i32 1
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i32, i32* @D_IDENT_UNDEF, align 4
  %55 = call i64 @dt_errtag(i32 %54)
  %56 = icmp ne i64 %53, %55
  br i1 %56, label %57, label %72

57:                                               ; preds = %48
  %58 = load %struct.TYPE_14__*, %struct.TYPE_14__** @yypcb, align 8
  %59 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %58, i32 0, i32 1
  %60 = load %struct.TYPE_12__*, %struct.TYPE_12__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i32, i32* @D_VAR_UNDEF, align 4
  %64 = call i64 @dt_errtag(i32 %63)
  %65 = icmp ne i64 %62, %64
  br i1 %65, label %66, label %72

66:                                               ; preds = %57, %44, %35
  %67 = load %struct.TYPE_14__*, %struct.TYPE_14__** @yypcb, align 8
  %68 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load volatile i32, i32* %5, align 4
  %71 = call i32 @longjmp(i32 %69, i32 %70) #5
  unreachable

72:                                               ; preds = %57, %48
  br label %73

73:                                               ; preds = %72, %29, %2
  %74 = load volatile i32, i32* %6, align 4
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %90

76:                                               ; preds = %73
  %77 = call i32 @yylabel(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %78 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %79 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %79, i32 0, i32 0
  %81 = load i32, i32* %4, align 4
  %82 = call i32 @dt_node_list_cook(i32* %80, i32 %81)
  %83 = call i32 @dt_node_attr_assign(%struct.TYPE_13__* %78, i32 %82)
  %84 = load i32, i32* %7, align 4
  %85 = load %struct.TYPE_14__*, %struct.TYPE_14__** @yypcb, align 8
  %86 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @bcopy(i32 %84, i32 %87, i32 4)
  %89 = call i32 @yylabel(i8* null)
  br label %90

90:                                               ; preds = %76, %73
  %91 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %92 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %91, i32 0, i32 1
  %93 = load %struct.TYPE_15__*, %struct.TYPE_15__** %92, align 8
  %94 = icmp ne %struct.TYPE_15__* %93, null
  br i1 %94, label %95, label %125

95:                                               ; preds = %90
  %96 = call i32 @yylabel(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %97 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %98 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %97, i32 0, i32 1
  %99 = load %struct.TYPE_15__*, %struct.TYPE_15__** %98, align 8
  %100 = load i32, i32* %4, align 4
  %101 = call %struct.TYPE_15__* @dt_node_cook(%struct.TYPE_15__* %99, i32 %100)
  %102 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %103 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %102, i32 0, i32 1
  store %struct.TYPE_15__* %101, %struct.TYPE_15__** %103, align 8
  %104 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %105 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %106 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 8
  %108 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %109 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %108, i32 0, i32 1
  %110 = load %struct.TYPE_15__*, %struct.TYPE_15__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @dt_attr_min(i32 %107, i32 %112)
  %114 = call i32 @dt_node_attr_assign(%struct.TYPE_13__* %104, i32 %113)
  %115 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %116 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %115, i32 0, i32 1
  %117 = load %struct.TYPE_15__*, %struct.TYPE_15__** %116, align 8
  %118 = call i32 @dt_node_is_scalar(%struct.TYPE_15__* %117)
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %123, label %120

120:                                              ; preds = %95
  %121 = load i32, i32* @D_PRED_SCALAR, align 4
  %122 = call i32 @xyerror(i32 %121, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  br label %123

123:                                              ; preds = %120, %95
  %124 = call i32 @yylabel(i8* null)
  br label %125

125:                                              ; preds = %123, %90
  %126 = load volatile i32, i32* %6, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %137

128:                                              ; preds = %125
  %129 = call i32 @yylabel(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %130 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %131 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %132 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %131, i32 0, i32 0
  %133 = load i32, i32* %4, align 4
  %134 = call i32 @dt_node_list_cook(i32* %132, i32 %133)
  %135 = call i32 @dt_node_attr_assign(%struct.TYPE_13__* %130, i32 %134)
  %136 = call i32 @yylabel(i8* null)
  br label %137

137:                                              ; preds = %128, %125
  %138 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  ret %struct.TYPE_13__* %138
}

declare dso_local i32 @dt_node_attr_assign(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @bcopy(i32, i32, i32) #1

; Function Attrs: returns_twice
declare dso_local i32 @setjmp(i32) #2

declare dso_local i64 @dt_errtag(i32) #1

; Function Attrs: noreturn
declare dso_local i32 @longjmp(i32, i32) #3

declare dso_local i32 @yylabel(i8*) #1

declare dso_local i32 @dt_node_list_cook(i32*, i32) #1

declare dso_local %struct.TYPE_15__* @dt_node_cook(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @dt_attr_min(i32, i32) #1

declare dso_local i32 @dt_node_is_scalar(%struct.TYPE_15__*) #1

declare dso_local i32 @xyerror(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { returns_twice "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { returns_twice }
attributes #5 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
