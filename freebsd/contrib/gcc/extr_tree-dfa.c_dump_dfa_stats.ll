; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-dfa.c_dump_dfa_stats.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-dfa.c_dump_dfa_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8* (i32, i32)* }
%struct.dfa_stats_d = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [16 x i8] c"%-30s%-13s%12s\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"%-30s%13lu%11lu%c\0A\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"%-43s%11lu%c\0A\00", align 1
@lang_hooks = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@current_function_decl = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"\0ADFA Statistics for %s\0A\0A\00", align 1
@.str.4 = private unnamed_addr constant [59 x i8] c"---------------------------------------------------------\0A\00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"  Number of  \00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"Memory\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"  instances  \00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"used \00", align 1
@num_referenced_vars = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [21 x i8] c"Referenced variables\00", align 1
@.str.11 = private unnamed_addr constant [21 x i8] c"Statements annotated\00", align 1
@.str.12 = private unnamed_addr constant [20 x i8] c"Variables annotated\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"USE operands\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"DEF operands\00", align 1
@.str.15 = private unnamed_addr constant [14 x i8] c"VUSE operands\00", align 1
@.str.16 = private unnamed_addr constant [19 x i8] c"V_MAY_DEF operands\00", align 1
@.str.17 = private unnamed_addr constant [20 x i8] c"V_MUST_DEF operands\00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c"PHI nodes\00", align 1
@.str.19 = private unnamed_addr constant [14 x i8] c"PHI arguments\00", align 1
@.str.20 = private unnamed_addr constant [34 x i8] c"Total memory used by DFA/SSA data\00", align 1
@.str.21 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.22 = private unnamed_addr constant [58 x i8] c"Average number of arguments per PHI node: %.1f (max: %d)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dump_dfa_stats(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.dfa_stats_d, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store i32* %0, i32** %2, align 8
  store i64 0, i64* %5, align 8
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8** %6, align 8
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i8** %7, align 8
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i8** %8, align 8
  %10 = load i8* (i32, i32)*, i8* (i32, i32)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @lang_hooks, i32 0, i32 0), align 8
  %11 = load i32, i32* @current_function_decl, align 4
  %12 = call i8* %10(i32 %11, i32 2)
  store i8* %12, i8** %9, align 8
  %13 = call i32 @collect_dfa_stats(%struct.dfa_stats_d* %3)
  %14 = load i32*, i32** %2, align 8
  %15 = load i8*, i8** %9, align 8
  %16 = call i32 (i32*, i8*, ...) @fprintf(i32* %14, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i8* %15)
  %17 = load i32*, i32** %2, align 8
  %18 = call i32 (i32*, i8*, ...) @fprintf(i32* %17, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.4, i64 0, i64 0))
  %19 = load i32*, i32** %2, align 8
  %20 = call i32 (i32*, i8*, ...) @fprintf(i32* %19, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0))
  %21 = load i32*, i32** %2, align 8
  %22 = call i32 (i32*, i8*, ...) @fprintf(i32* %21, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0))
  %23 = load i32*, i32** %2, align 8
  %24 = call i32 (i32*, i8*, ...) @fprintf(i32* %23, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.4, i64 0, i64 0))
  %25 = load i32, i32* @num_referenced_vars, align 4
  %26 = sext i32 %25 to i64
  %27 = mul i64 %26, 4
  store i64 %27, i64* %4, align 8
  %28 = load i64, i64* %4, align 8
  %29 = load i64, i64* %5, align 8
  %30 = add i64 %29, %28
  store i64 %30, i64* %5, align 8
  %31 = load i32*, i32** %2, align 8
  %32 = load i32, i32* @num_referenced_vars, align 4
  %33 = sext i32 %32 to i64
  %34 = load i64, i64* %4, align 8
  %35 = call i32 @SCALE(i64 %34)
  %36 = load i64, i64* %4, align 8
  %37 = call i32 @LABEL(i64 %36)
  %38 = call i32 (i32*, i8*, ...) @fprintf(i32* %31, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i64 0, i64 0), i64 %33, i32 %35, i32 %37)
  %39 = getelementptr inbounds %struct.dfa_stats_d, %struct.dfa_stats_d* %3, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = sext i32 %40 to i64
  %42 = mul i64 %41, 4
  store i64 %42, i64* %4, align 8
  %43 = load i64, i64* %4, align 8
  %44 = load i64, i64* %5, align 8
  %45 = add i64 %44, %43
  store i64 %45, i64* %5, align 8
  %46 = load i32*, i32** %2, align 8
  %47 = getelementptr inbounds %struct.dfa_stats_d, %struct.dfa_stats_d* %3, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i64, i64* %4, align 8
  %50 = call i32 @SCALE(i64 %49)
  %51 = load i64, i64* %4, align 8
  %52 = call i32 @LABEL(i64 %51)
  %53 = call i32 (i32*, i8*, ...) @fprintf(i32* %46, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0), i32 %48, i32 %50, i32 %52)
  %54 = getelementptr inbounds %struct.dfa_stats_d, %struct.dfa_stats_d* %3, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = sext i32 %55 to i64
  %57 = mul i64 %56, 4
  store i64 %57, i64* %4, align 8
  %58 = load i64, i64* %4, align 8
  %59 = load i64, i64* %5, align 8
  %60 = add i64 %59, %58
  store i64 %60, i64* %5, align 8
  %61 = load i32*, i32** %2, align 8
  %62 = getelementptr inbounds %struct.dfa_stats_d, %struct.dfa_stats_d* %3, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load i64, i64* %4, align 8
  %65 = call i32 @SCALE(i64 %64)
  %66 = load i64, i64* %4, align 8
  %67 = call i32 @LABEL(i64 %66)
  %68 = call i32 (i32*, i8*, ...) @fprintf(i32* %61, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.12, i64 0, i64 0), i32 %63, i32 %65, i32 %67)
  %69 = getelementptr inbounds %struct.dfa_stats_d, %struct.dfa_stats_d* %3, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = sext i32 %70 to i64
  %72 = mul i64 %71, 8
  store i64 %72, i64* %4, align 8
  %73 = load i64, i64* %4, align 8
  %74 = load i64, i64* %5, align 8
  %75 = add i64 %74, %73
  store i64 %75, i64* %5, align 8
  %76 = load i32*, i32** %2, align 8
  %77 = getelementptr inbounds %struct.dfa_stats_d, %struct.dfa_stats_d* %3, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = load i64, i64* %4, align 8
  %80 = call i32 @SCALE(i64 %79)
  %81 = load i64, i64* %4, align 8
  %82 = call i32 @LABEL(i64 %81)
  %83 = call i32 (i32*, i8*, ...) @fprintf(i32* %76, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i64 0, i64 0), i32 %78, i32 %80, i32 %82)
  %84 = getelementptr inbounds %struct.dfa_stats_d, %struct.dfa_stats_d* %3, i32 0, i32 3
  %85 = load i32, i32* %84, align 4
  %86 = sext i32 %85 to i64
  %87 = mul i64 %86, 8
  store i64 %87, i64* %4, align 8
  %88 = load i64, i64* %4, align 8
  %89 = load i64, i64* %5, align 8
  %90 = add i64 %89, %88
  store i64 %90, i64* %5, align 8
  %91 = load i32*, i32** %2, align 8
  %92 = getelementptr inbounds %struct.dfa_stats_d, %struct.dfa_stats_d* %3, i32 0, i32 3
  %93 = load i32, i32* %92, align 4
  %94 = load i64, i64* %4, align 8
  %95 = call i32 @SCALE(i64 %94)
  %96 = load i64, i64* %4, align 8
  %97 = call i32 @LABEL(i64 %96)
  %98 = call i32 (i32*, i8*, ...) @fprintf(i32* %91, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i64 0, i64 0), i32 %93, i32 %95, i32 %97)
  %99 = getelementptr inbounds %struct.dfa_stats_d, %struct.dfa_stats_d* %3, i32 0, i32 4
  %100 = load i32, i32* %99, align 4
  %101 = sext i32 %100 to i64
  %102 = mul i64 %101, 8
  store i64 %102, i64* %4, align 8
  %103 = load i64, i64* %4, align 8
  %104 = load i64, i64* %5, align 8
  %105 = add i64 %104, %103
  store i64 %105, i64* %5, align 8
  %106 = load i32*, i32** %2, align 8
  %107 = getelementptr inbounds %struct.dfa_stats_d, %struct.dfa_stats_d* %3, i32 0, i32 4
  %108 = load i32, i32* %107, align 4
  %109 = load i64, i64* %4, align 8
  %110 = call i32 @SCALE(i64 %109)
  %111 = load i64, i64* %4, align 8
  %112 = call i32 @LABEL(i64 %111)
  %113 = call i32 (i32*, i8*, ...) @fprintf(i32* %106, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i64 0, i64 0), i32 %108, i32 %110, i32 %112)
  %114 = getelementptr inbounds %struct.dfa_stats_d, %struct.dfa_stats_d* %3, i32 0, i32 5
  %115 = load i32, i32* %114, align 4
  %116 = sext i32 %115 to i64
  %117 = mul i64 %116, 8
  store i64 %117, i64* %4, align 8
  %118 = load i64, i64* %4, align 8
  %119 = load i64, i64* %5, align 8
  %120 = add i64 %119, %118
  store i64 %120, i64* %5, align 8
  %121 = load i32*, i32** %2, align 8
  %122 = getelementptr inbounds %struct.dfa_stats_d, %struct.dfa_stats_d* %3, i32 0, i32 5
  %123 = load i32, i32* %122, align 4
  %124 = load i64, i64* %4, align 8
  %125 = call i32 @SCALE(i64 %124)
  %126 = load i64, i64* %4, align 8
  %127 = call i32 @LABEL(i64 %126)
  %128 = call i32 (i32*, i8*, ...) @fprintf(i32* %121, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.16, i64 0, i64 0), i32 %123, i32 %125, i32 %127)
  %129 = getelementptr inbounds %struct.dfa_stats_d, %struct.dfa_stats_d* %3, i32 0, i32 6
  %130 = load i32, i32* %129, align 4
  %131 = sext i32 %130 to i64
  %132 = mul i64 %131, 8
  store i64 %132, i64* %4, align 8
  %133 = load i64, i64* %4, align 8
  %134 = load i64, i64* %5, align 8
  %135 = add i64 %134, %133
  store i64 %135, i64* %5, align 8
  %136 = load i32*, i32** %2, align 8
  %137 = getelementptr inbounds %struct.dfa_stats_d, %struct.dfa_stats_d* %3, i32 0, i32 6
  %138 = load i32, i32* %137, align 4
  %139 = load i64, i64* %4, align 8
  %140 = call i32 @SCALE(i64 %139)
  %141 = load i64, i64* %4, align 8
  %142 = call i32 @LABEL(i64 %141)
  %143 = call i32 (i32*, i8*, ...) @fprintf(i32* %136, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.17, i64 0, i64 0), i32 %138, i32 %140, i32 %142)
  %144 = getelementptr inbounds %struct.dfa_stats_d, %struct.dfa_stats_d* %3, i32 0, i32 7
  %145 = load i32, i32* %144, align 4
  %146 = sext i32 %145 to i64
  %147 = mul i64 %146, 4
  store i64 %147, i64* %4, align 8
  %148 = load i64, i64* %4, align 8
  %149 = load i64, i64* %5, align 8
  %150 = add i64 %149, %148
  store i64 %150, i64* %5, align 8
  %151 = load i32*, i32** %2, align 8
  %152 = getelementptr inbounds %struct.dfa_stats_d, %struct.dfa_stats_d* %3, i32 0, i32 7
  %153 = load i32, i32* %152, align 4
  %154 = load i64, i64* %4, align 8
  %155 = call i32 @SCALE(i64 %154)
  %156 = load i64, i64* %4, align 8
  %157 = call i32 @LABEL(i64 %156)
  %158 = call i32 (i32*, i8*, ...) @fprintf(i32* %151, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i64 0, i64 0), i32 %153, i32 %155, i32 %157)
  %159 = getelementptr inbounds %struct.dfa_stats_d, %struct.dfa_stats_d* %3, i32 0, i32 8
  %160 = load i32, i32* %159, align 4
  %161 = sext i32 %160 to i64
  %162 = mul i64 %161, 4
  store i64 %162, i64* %4, align 8
  %163 = load i64, i64* %4, align 8
  %164 = load i64, i64* %5, align 8
  %165 = add i64 %164, %163
  store i64 %165, i64* %5, align 8
  %166 = load i32*, i32** %2, align 8
  %167 = getelementptr inbounds %struct.dfa_stats_d, %struct.dfa_stats_d* %3, i32 0, i32 8
  %168 = load i32, i32* %167, align 4
  %169 = load i64, i64* %4, align 8
  %170 = call i32 @SCALE(i64 %169)
  %171 = load i64, i64* %4, align 8
  %172 = call i32 @LABEL(i64 %171)
  %173 = call i32 (i32*, i8*, ...) @fprintf(i32* %166, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19, i64 0, i64 0), i32 %168, i32 %170, i32 %172)
  %174 = load i32*, i32** %2, align 8
  %175 = call i32 (i32*, i8*, ...) @fprintf(i32* %174, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.4, i64 0, i64 0))
  %176 = load i32*, i32** %2, align 8
  %177 = load i64, i64* %5, align 8
  %178 = call i32 @SCALE(i64 %177)
  %179 = load i64, i64* %5, align 8
  %180 = call i32 @LABEL(i64 %179)
  %181 = call i32 (i32*, i8*, ...) @fprintf(i32* %176, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.20, i64 0, i64 0), i32 %178, i32 %180)
  %182 = load i32*, i32** %2, align 8
  %183 = call i32 (i32*, i8*, ...) @fprintf(i32* %182, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.4, i64 0, i64 0))
  %184 = load i32*, i32** %2, align 8
  %185 = call i32 (i32*, i8*, ...) @fprintf(i32* %184, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i64 0, i64 0))
  %186 = getelementptr inbounds %struct.dfa_stats_d, %struct.dfa_stats_d* %3, i32 0, i32 7
  %187 = load i32, i32* %186, align 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %202

189:                                              ; preds = %1
  %190 = load i32*, i32** %2, align 8
  %191 = getelementptr inbounds %struct.dfa_stats_d, %struct.dfa_stats_d* %3, i32 0, i32 8
  %192 = load i32, i32* %191, align 4
  %193 = sitofp i32 %192 to float
  %194 = getelementptr inbounds %struct.dfa_stats_d, %struct.dfa_stats_d* %3, i32 0, i32 7
  %195 = load i32, i32* %194, align 4
  %196 = sitofp i32 %195 to float
  %197 = fdiv float %193, %196
  %198 = fpext float %197 to double
  %199 = getelementptr inbounds %struct.dfa_stats_d, %struct.dfa_stats_d* %3, i32 0, i32 9
  %200 = load i32, i32* %199, align 4
  %201 = call i32 (i32*, i8*, ...) @fprintf(i32* %190, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.22, i64 0, i64 0), double %198, i32 %200)
  br label %202

202:                                              ; preds = %189, %1
  %203 = load i32*, i32** %2, align 8
  %204 = call i32 (i32*, i8*, ...) @fprintf(i32* %203, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i64 0, i64 0))
  ret void
}

declare dso_local i32 @collect_dfa_stats(%struct.dfa_stats_d*) #1

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

declare dso_local i32 @SCALE(i64) #1

declare dso_local i32 @LABEL(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
