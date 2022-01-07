; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_cc.c_dt_compile_one_clause.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_cc.c_dt_compile_one_clause.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { %struct.TYPE_20__*, i32*, i32 }
%struct.TYPE_20__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_21__ = type { i32, %struct.TYPE_21__*, i32, i32, %struct.TYPE_21__*, %struct.TYPE_21__*, i32*, i32, i32 }

@yylineno = common dso_local global i32 0, align 4
@DT_IDFLG_REF = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@yypcb = common dso_local global %struct.TYPE_22__* null, align 8
@EDT_NOMEM = common dso_local global i32 0, align 4
@_dtrace_defattr = common dso_local global i32 0, align 4
@D_UNKNOWN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"internal error -- node kind %u is not a valid statement\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_21__*, %struct.TYPE_21__*)* @dt_compile_one_clause to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dt_compile_one_clause(i32* %0, %struct.TYPE_21__* %1, %struct.TYPE_21__* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_21__*, align 8
  %6 = alloca %struct.TYPE_21__*, align 8
  %7 = alloca %struct.TYPE_20__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_21__*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_21__* %1, %struct.TYPE_21__** %5, align 8
  store %struct.TYPE_21__* %2, %struct.TYPE_21__** %6, align 8
  %10 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %11 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %10, i32 0, i32 8
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* @yylineno, align 4
  %13 = load i32*, i32** %4, align 8
  %14 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %14, i32 0, i32 7
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @dt_setcontext(i32* %13, i32 %16)
  %18 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %19 = load i32, i32* @DT_IDFLG_REF, align 4
  %20 = call i32 @dt_node_cook(%struct.TYPE_21__* %18, i32 %19)
  %21 = load i32*, i32** %4, align 8
  %22 = call i64 @DT_TREEDUMP_PASS(i32* %21, i32 2)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %3
  %25 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %26 = load i32, i32* @stderr, align 4
  %27 = call i32 @dt_node_printr(%struct.TYPE_21__* %25, i32 %26, i32 0)
  br label %28

28:                                               ; preds = %24, %3
  %29 = load i32*, i32** %4, align 8
  %30 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %30, i32 0, i32 7
  %32 = load i32, i32* %31, align 8
  %33 = call %struct.TYPE_20__* @dt_ecbdesc_create(i32* %29, i32 %32)
  store %struct.TYPE_20__* %33, %struct.TYPE_20__** %7, align 8
  %34 = icmp eq %struct.TYPE_20__* %33, null
  br i1 %34, label %35, label %41

35:                                               ; preds = %28
  %36 = load %struct.TYPE_22__*, %struct.TYPE_22__** @yypcb, align 8
  %37 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @EDT_NOMEM, align 4
  %40 = call i32 @longjmp(i32 %38, i32 %39)
  br label %41

41:                                               ; preds = %35, %28
  %42 = load %struct.TYPE_22__*, %struct.TYPE_22__** @yypcb, align 8
  %43 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_20__*, %struct.TYPE_20__** %43, align 8
  %45 = icmp eq %struct.TYPE_20__* %44, null
  %46 = zext i1 %45 to i32
  %47 = call i32 @assert(i32 %46)
  %48 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %49 = load %struct.TYPE_22__*, %struct.TYPE_22__** @yypcb, align 8
  %50 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %49, i32 0, i32 0
  store %struct.TYPE_20__* %48, %struct.TYPE_20__** %50, align 8
  %51 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %51, i32 0, i32 6
  %53 = load i32*, i32** %52, align 8
  %54 = icmp ne i32* %53, null
  br i1 %54, label %55, label %66

55:                                               ; preds = %41
  %56 = load %struct.TYPE_22__*, %struct.TYPE_22__** @yypcb, align 8
  %57 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %57, i32 0, i32 6
  %59 = load i32*, i32** %58, align 8
  %60 = call i32 @dt_cg(%struct.TYPE_22__* %56, i32* %59)
  %61 = load %struct.TYPE_22__*, %struct.TYPE_22__** @yypcb, align 8
  %62 = call i32 @dt_as(%struct.TYPE_22__* %61)
  %63 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %64, i32 0, i32 0
  store i32 %62, i32* %65, align 4
  br label %66

66:                                               ; preds = %55, %41
  %67 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %67, i32 0, i32 5
  %69 = load %struct.TYPE_21__*, %struct.TYPE_21__** %68, align 8
  %70 = icmp eq %struct.TYPE_21__* %69, null
  br i1 %70, label %71, label %81

71:                                               ; preds = %66
  %72 = load i32*, i32** %4, align 8
  %73 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %74 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @_dtrace_defattr, align 4
  %78 = call i32* @dt_stmt_create(i32* %72, %struct.TYPE_20__* %73, i32 %76, i32 %77)
  %79 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %80 = call i32 @dt_stmt_append(i32* %78, %struct.TYPE_21__* %79)
  br label %81

81:                                               ; preds = %71, %66
  %82 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %82, i32 0, i32 5
  %84 = load %struct.TYPE_21__*, %struct.TYPE_21__** %83, align 8
  store %struct.TYPE_21__* %84, %struct.TYPE_21__** %9, align 8
  br label %85

85:                                               ; preds = %155, %81
  %86 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %87 = icmp ne %struct.TYPE_21__* %86, null
  br i1 %87, label %88, label %159

88:                                               ; preds = %85
  %89 = load %struct.TYPE_22__*, %struct.TYPE_22__** @yypcb, align 8
  %90 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %89, i32 0, i32 1
  %91 = load i32*, i32** %90, align 8
  %92 = icmp eq i32* %91, null
  %93 = zext i1 %92 to i32
  %94 = call i32 @assert(i32 %93)
  %95 = load i32*, i32** %4, align 8
  %96 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %97 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 8
  %103 = call i32* @dt_stmt_create(i32* %95, %struct.TYPE_20__* %96, i32 %99, i32 %102)
  store i32* %103, i32** %8, align 8
  %104 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %105 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  switch i32 %106, label %137 [
    i32 129, label %107
    i32 128, label %127
    i32 130, label %132
  ]

107:                                              ; preds = %88
  %108 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %109 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %108, i32 0, i32 1
  %110 = load %struct.TYPE_21__*, %struct.TYPE_21__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = icmp eq i32 %112, 130
  br i1 %113, label %114, label %121

114:                                              ; preds = %107
  %115 = load i32*, i32** %4, align 8
  %116 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %117 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %116, i32 0, i32 1
  %118 = load %struct.TYPE_21__*, %struct.TYPE_21__** %117, align 8
  %119 = load i32*, i32** %8, align 8
  %120 = call i32 @dt_compile_agg(i32* %115, %struct.TYPE_21__* %118, i32* %119)
  br label %126

121:                                              ; preds = %107
  %122 = load i32*, i32** %4, align 8
  %123 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %124 = load i32*, i32** %8, align 8
  %125 = call i32 @dt_compile_exp(i32* %122, %struct.TYPE_21__* %123, i32* %124)
  br label %126

126:                                              ; preds = %121, %114
  br label %144

127:                                              ; preds = %88
  %128 = load i32*, i32** %4, align 8
  %129 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %130 = load i32*, i32** %8, align 8
  %131 = call i32 @dt_compile_fun(i32* %128, %struct.TYPE_21__* %129, i32* %130)
  br label %144

132:                                              ; preds = %88
  %133 = load i32*, i32** %4, align 8
  %134 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %135 = load i32*, i32** %8, align 8
  %136 = call i32 @dt_compile_agg(i32* %133, %struct.TYPE_21__* %134, i32* %135)
  br label %144

137:                                              ; preds = %88
  %138 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %139 = load i32, i32* @D_UNKNOWN, align 4
  %140 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %141 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = call i32 @dnerror(%struct.TYPE_21__* %138, i32 %139, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i32 %142)
  br label %144

144:                                              ; preds = %137, %132, %127, %126
  %145 = load %struct.TYPE_22__*, %struct.TYPE_22__** @yypcb, align 8
  %146 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %145, i32 0, i32 1
  %147 = load i32*, i32** %146, align 8
  %148 = load i32*, i32** %8, align 8
  %149 = icmp eq i32* %147, %148
  %150 = zext i1 %149 to i32
  %151 = call i32 @assert(i32 %150)
  %152 = load i32*, i32** %8, align 8
  %153 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %154 = call i32 @dt_stmt_append(i32* %152, %struct.TYPE_21__* %153)
  br label %155

155:                                              ; preds = %144
  %156 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %157 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %156, i32 0, i32 4
  %158 = load %struct.TYPE_21__*, %struct.TYPE_21__** %157, align 8
  store %struct.TYPE_21__* %158, %struct.TYPE_21__** %9, align 8
  br label %85

159:                                              ; preds = %85
  %160 = load %struct.TYPE_22__*, %struct.TYPE_22__** @yypcb, align 8
  %161 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %160, i32 0, i32 0
  %162 = load %struct.TYPE_20__*, %struct.TYPE_20__** %161, align 8
  %163 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %164 = icmp eq %struct.TYPE_20__* %162, %163
  %165 = zext i1 %164 to i32
  %166 = call i32 @assert(i32 %165)
  %167 = load i32*, i32** %4, align 8
  %168 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %169 = call i32 @dt_ecbdesc_release(i32* %167, %struct.TYPE_20__* %168)
  %170 = load i32*, i32** %4, align 8
  %171 = call i32 @dt_endcontext(i32* %170)
  %172 = load %struct.TYPE_22__*, %struct.TYPE_22__** @yypcb, align 8
  %173 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %172, i32 0, i32 0
  store %struct.TYPE_20__* null, %struct.TYPE_20__** %173, align 8
  ret void
}

declare dso_local i32 @dt_setcontext(i32*, i32) #1

declare dso_local i32 @dt_node_cook(%struct.TYPE_21__*, i32) #1

declare dso_local i64 @DT_TREEDUMP_PASS(i32*, i32) #1

declare dso_local i32 @dt_node_printr(%struct.TYPE_21__*, i32, i32) #1

declare dso_local %struct.TYPE_20__* @dt_ecbdesc_create(i32*, i32) #1

declare dso_local i32 @longjmp(i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @dt_cg(%struct.TYPE_22__*, i32*) #1

declare dso_local i32 @dt_as(%struct.TYPE_22__*) #1

declare dso_local i32 @dt_stmt_append(i32*, %struct.TYPE_21__*) #1

declare dso_local i32* @dt_stmt_create(i32*, %struct.TYPE_20__*, i32, i32) #1

declare dso_local i32 @dt_compile_agg(i32*, %struct.TYPE_21__*, i32*) #1

declare dso_local i32 @dt_compile_exp(i32*, %struct.TYPE_21__*, i32*) #1

declare dso_local i32 @dt_compile_fun(i32*, %struct.TYPE_21__*, i32*) #1

declare dso_local i32 @dnerror(%struct.TYPE_21__*, i32, i8*, i32) #1

declare dso_local i32 @dt_ecbdesc_release(i32*, %struct.TYPE_20__*) #1

declare dso_local i32 @dt_endcontext(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
