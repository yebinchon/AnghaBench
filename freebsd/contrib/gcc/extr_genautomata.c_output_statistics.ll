; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genautomata.c_output_statistics.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genautomata.c_output_statistics.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_7__*, i32, %struct.TYPE_5__* }
%struct.TYPE_7__ = type { i32, i32 }

@description = common dso_local global %struct.TYPE_6__* null, align 8
@.str = private unnamed_addr constant [12 x i8] c"\0AAutomaton \00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"\0A    %5d NDFA states,          %5d NDFA arcs\0A\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"    %5d DFA states,           %5d DFA arcs\0A\00", align 1
@no_minimization_flag = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [52 x i8] c"    %5d minimal DFA states,   %5d minimal DFA arcs\0A\00", align 1
@.str.4 = private unnamed_addr constant [53 x i8] c"    %5d all insns      %5d insn equivalence classes\0A\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"    %d locked states\0A\00", align 1
@.str.6 = private unnamed_addr constant [59 x i8] c"%5ld transition comb vector els, %5ld trans table els: %s\0A\00", align 1
@vect_el_t = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [14 x i8] c"use comb vect\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"use simple vect\00", align 1
@.str.9 = private unnamed_addr constant [49 x i8] c"%5ld min delay table els, compression factor %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [55 x i8] c"\0A%5d all allocated states,     %5d all allocated arcs\0A\00", align 1
@allocated_states_num = common dso_local global i32 0, align 4
@allocated_arcs_num = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [38 x i8] c"%5d all allocated alternative states\0A\00", align 1
@allocated_alt_states_num = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [61 x i8] c"%5d all transition comb vector els, %5d all trans table els\0A\00", align 1
@.str.13 = private unnamed_addr constant [29 x i8] c"%5d all min delay table els\0A\00", align 1
@.str.14 = private unnamed_addr constant [23 x i8] c"%5d all locked states\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @output_statistics to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @output_statistics(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** @description, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 1
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  store %struct.TYPE_5__* %11, %struct.TYPE_5__** %3, align 8
  br label %12

12:                                               ; preds = %137, %1
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %14 = icmp ne %struct.TYPE_5__* %13, null
  br i1 %14, label %15, label %141

15:                                               ; preds = %12
  %16 = load i32*, i32** %2, align 8
  %17 = call i32 (i32*, i8*, ...) @fprintf(i32* %16, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %18 = load i32*, i32** %2, align 8
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %20 = call i32 @output_automaton_name(i32* %18, %struct.TYPE_5__* %19)
  %21 = load i32*, i32** %2, align 8
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 (i32*, i8*, ...) @fprintf(i32* %21, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %24, i32 %27)
  %29 = load i32*, i32** %2, align 8
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = call i32 (i32*, i8*, ...) @fprintf(i32* %29, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i32 %32, i32 %35)
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  store i32 %39, i32* %4, align 4
  %40 = load i32, i32* @no_minimization_flag, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %54, label %42

42:                                               ; preds = %15
  %43 = load i32*, i32** %2, align 8
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 4
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 5
  %49 = load i32, i32* %48, align 4
  %50 = call i32 (i32*, i8*, ...) @fprintf(i32* %43, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.3, i64 0, i64 0), i32 %46, i32 %49)
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 4
  %53 = load i32, i32* %52, align 8
  store i32 %53, i32* %4, align 4
  br label %54

54:                                               ; preds = %42, %15
  %55 = load i32*, i32** %2, align 8
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** @description, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 6
  %61 = load i32, i32* %60, align 8
  %62 = call i32 (i32*, i8*, ...) @fprintf(i32* %55, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.4, i64 0, i64 0), i32 %58, i32 %61)
  %63 = load i32*, i32** %2, align 8
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 7
  %66 = load i32, i32* %65, align 4
  %67 = call i32 (i32*, i8*, ...) @fprintf(i32* %63, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i32 %66)
  %68 = load i32*, i32** %2, align 8
  %69 = load i32, i32* @vect_el_t, align 4
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 8
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = call i64 @VEC_length(i32 %69, i32 %74)
  %76 = load i32, i32* @vect_el_t, align 4
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 8
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i64 @VEC_length(i32 %76, i32 %81)
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 8
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %84, align 8
  %86 = call i64 @comb_vect_p(%struct.TYPE_7__* %85)
  %87 = icmp ne i64 %86, 0
  %88 = zext i1 %87 to i64
  %89 = select i1 %87, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0)
  %90 = call i32 (i32*, i8*, ...) @fprintf(i32* %68, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.6, i64 0, i64 0), i64 %75, i64 %82, i8* %89)
  %91 = load i32*, i32** %2, align 8
  %92 = load i32, i32* %4, align 4
  %93 = sext i32 %92 to i64
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 6
  %96 = load i32, i32* %95, align 8
  %97 = sext i32 %96 to i64
  %98 = mul nsw i64 %93, %97
  %99 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 9
  %101 = load i32, i32* %100, align 8
  %102 = call i32 (i32*, i8*, ...) @fprintf(i32* %91, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.9, i64 0, i64 0), i64 %98, i32 %101)
  %103 = load i32, i32* @vect_el_t, align 4
  %104 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 8
  %106 = load %struct.TYPE_7__*, %struct.TYPE_7__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = call i64 @VEC_length(i32 %103, i32 %108)
  %110 = load i32, i32* %5, align 4
  %111 = sext i32 %110 to i64
  %112 = add nsw i64 %111, %109
  %113 = trunc i64 %112 to i32
  store i32 %113, i32* %5, align 4
  %114 = load i32, i32* @vect_el_t, align 4
  %115 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i32 0, i32 8
  %117 = load %struct.TYPE_7__*, %struct.TYPE_7__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = call i64 @VEC_length(i32 %114, i32 %119)
  %121 = load i32, i32* %6, align 4
  %122 = sext i32 %121 to i64
  %123 = add nsw i64 %122, %120
  %124 = trunc i64 %123 to i32
  store i32 %124, i32* %6, align 4
  %125 = load i32, i32* %4, align 4
  %126 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %126, i32 0, i32 6
  %128 = load i32, i32* %127, align 8
  %129 = mul nsw i32 %125, %128
  %130 = load i32, i32* %7, align 4
  %131 = add nsw i32 %130, %129
  store i32 %131, i32* %7, align 4
  %132 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %133 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %132, i32 0, i32 7
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* %8, align 4
  %136 = add nsw i32 %135, %134
  store i32 %136, i32* %8, align 4
  br label %137

137:                                              ; preds = %54
  %138 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %139 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %138, i32 0, i32 10
  %140 = load %struct.TYPE_5__*, %struct.TYPE_5__** %139, align 8
  store %struct.TYPE_5__* %140, %struct.TYPE_5__** %3, align 8
  br label %12

141:                                              ; preds = %12
  %142 = load i32*, i32** %2, align 8
  %143 = load i32, i32* @allocated_states_num, align 4
  %144 = load i32, i32* @allocated_arcs_num, align 4
  %145 = call i32 (i32*, i8*, ...) @fprintf(i32* %142, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.10, i64 0, i64 0), i32 %143, i32 %144)
  %146 = load i32*, i32** %2, align 8
  %147 = load i32, i32* @allocated_alt_states_num, align 4
  %148 = call i32 (i32*, i8*, ...) @fprintf(i32* %146, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.11, i64 0, i64 0), i32 %147)
  %149 = load i32*, i32** %2, align 8
  %150 = load i32, i32* %5, align 4
  %151 = load i32, i32* %6, align 4
  %152 = call i32 (i32*, i8*, ...) @fprintf(i32* %149, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.12, i64 0, i64 0), i32 %150, i32 %151)
  %153 = load i32*, i32** %2, align 8
  %154 = load i32, i32* %7, align 4
  %155 = call i32 (i32*, i8*, ...) @fprintf(i32* %153, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.13, i64 0, i64 0), i32 %154)
  %156 = load i32*, i32** %2, align 8
  %157 = load i32, i32* %8, align 4
  %158 = call i32 (i32*, i8*, ...) @fprintf(i32* %156, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.14, i64 0, i64 0), i32 %157)
  ret void
}

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

declare dso_local i32 @output_automaton_name(i32*, %struct.TYPE_5__*) #1

declare dso_local i64 @VEC_length(i32, i32) #1

declare dso_local i64 @comb_vect_p(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
