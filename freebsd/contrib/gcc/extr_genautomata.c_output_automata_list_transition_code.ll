; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genautomata.c_output_automata_list_transition_code.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genautomata.c_output_automata_list_transition_code.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_12__*, %struct.TYPE_11__* }
%struct.TYPE_12__ = type { i32, i32, i32 }

@output_file = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"      {\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"        \00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c";\0A\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"\0A        %s = \00", align 1
@TEMPORARY_VARIABLE_NAME = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [7 x i8] c" [%s->\00", align 1
@CHIP_PARAMETER_NAME = common dso_local global i8* null, align 8
@.str.6 = private unnamed_addr constant [5 x i8] c"] + \00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c" [%s];\0A\00", align 1
@INTERNAL_INSN_CODE_NAME = common dso_local global i8* null, align 8
@.str.8 = private unnamed_addr constant [13 x i8] c"        if (\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c" [%s] != %s->\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c")\0A\00", align 1
@.str.11 = private unnamed_addr constant [31 x i8] c"          return %s (%s, %s);\0A\00", align 1
@INTERNAL_MIN_ISSUE_DELAY_FUNC_NAME = common dso_local global i8* null, align 8
@.str.12 = private unnamed_addr constant [14 x i8] c"        else\0A\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"          \00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"%s->\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c" = \00", align 1
@.str.16 = private unnamed_addr constant [3 x i8] c" [\00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c" [%s] + \00", align 1
@.str.18 = private unnamed_addr constant [9 x i8] c" * %d];\0A\00", align 1
@.str.19 = private unnamed_addr constant [23 x i8] c"        if (%s >= %d)\0A\00", align 1
@.str.20 = private unnamed_addr constant [24 x i8] c"        else\0A          \00", align 1
@.str.21 = private unnamed_addr constant [8 x i8] c" = %s;\0A\00", align 1
@.str.22 = private unnamed_addr constant [13 x i8] c"        %s->\00", align 1
@.str.23 = private unnamed_addr constant [20 x i8] c"        return -1;\0A\00", align 1
@.str.24 = private unnamed_addr constant [9 x i8] c"      }\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_11__*)* @output_automata_list_transition_code to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @output_automata_list_transition_code(%struct.TYPE_11__* %0) #0 {
  %2 = alloca %struct.TYPE_11__*, align 8
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %2, align 8
  %5 = load i32, i32* @output_file, align 4
  %6 = call i32 (i32, i8*, ...) @fprintf(i32 %5, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %8 = icmp ne %struct.TYPE_11__* %7, null
  br i1 %8, label %9, label %43

9:                                                ; preds = %1
  %10 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 1
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %13 = icmp ne %struct.TYPE_11__* %12, null
  br i1 %13, label %14, label %43

14:                                               ; preds = %9
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  store %struct.TYPE_11__* %15, %struct.TYPE_11__** %3, align 8
  br label %16

16:                                               ; preds = %40, %14
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  store %struct.TYPE_11__* %19, %struct.TYPE_11__** %4, align 8
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %21 = icmp eq %struct.TYPE_11__* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %16
  br label %42

23:                                               ; preds = %16
  %24 = load i32, i32* @output_file, align 4
  %25 = call i32 (i32, i8*, ...) @fprintf(i32 %24, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %26 = load i32, i32* @output_file, align 4
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %28, align 8
  %30 = call i32 @output_state_member_type(i32 %26, %struct.TYPE_12__* %29)
  %31 = load i32, i32* @output_file, align 4
  %32 = call i32 (i32, i8*, ...) @fprintf(i32 %31, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %33 = load i32, i32* @output_file, align 4
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %35, align 8
  %37 = call i32 @output_temp_chip_member_name(i32 %33, %struct.TYPE_12__* %36)
  %38 = load i32, i32* @output_file, align 4
  %39 = call i32 (i32, i8*, ...) @fprintf(i32 %38, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  br label %40

40:                                               ; preds = %23
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  store %struct.TYPE_11__* %41, %struct.TYPE_11__** %3, align 8
  br label %16

42:                                               ; preds = %22
  br label %43

43:                                               ; preds = %42, %9, %1
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  store %struct.TYPE_11__* %44, %struct.TYPE_11__** %3, align 8
  br label %45

45:                                               ; preds = %213, %43
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %47 = icmp ne %struct.TYPE_11__* %46, null
  br i1 %47, label %48, label %217

48:                                               ; preds = %45
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = call i64 @comb_vect_p(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %140

56:                                               ; preds = %48
  %57 = load i32, i32* @output_file, align 4
  %58 = load i8*, i8** @TEMPORARY_VARIABLE_NAME, align 8
  %59 = call i32 (i32, i8*, ...) @fprintf(i32 %57, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i8* %58)
  %60 = load i32, i32* @output_file, align 4
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** %62, align 8
  %64 = call i32 @output_trans_base_vect_name(i32 %60, %struct.TYPE_12__* %63)
  %65 = load i32, i32* @output_file, align 4
  %66 = load i8*, i8** @CHIP_PARAMETER_NAME, align 8
  %67 = call i32 (i32, i8*, ...) @fprintf(i32 %65, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* %66)
  %68 = load i32, i32* @output_file, align 4
  %69 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %69, i32 0, i32 0
  %71 = load %struct.TYPE_12__*, %struct.TYPE_12__** %70, align 8
  %72 = call i32 @output_chip_member_name(i32 %68, %struct.TYPE_12__* %71)
  %73 = load i32, i32* @output_file, align 4
  %74 = call i32 (i32, i8*, ...) @fprintf(i32 %73, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  %75 = load i32, i32* @output_file, align 4
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 0
  %78 = load %struct.TYPE_12__*, %struct.TYPE_12__** %77, align 8
  %79 = call i32 @output_translate_vect_name(i32 %75, %struct.TYPE_12__* %78)
  %80 = load i32, i32* @output_file, align 4
  %81 = load i8*, i8** @INTERNAL_INSN_CODE_NAME, align 8
  %82 = call i32 (i32, i8*, ...) @fprintf(i32 %80, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i8* %81)
  %83 = load i32, i32* @output_file, align 4
  %84 = call i32 (i32, i8*, ...) @fprintf(i32 %83, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0))
  %85 = load i32, i32* @output_file, align 4
  %86 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %86, i32 0, i32 0
  %88 = load %struct.TYPE_12__*, %struct.TYPE_12__** %87, align 8
  %89 = call i32 @output_trans_check_vect_name(i32 %85, %struct.TYPE_12__* %88)
  %90 = load i32, i32* @output_file, align 4
  %91 = load i8*, i8** @TEMPORARY_VARIABLE_NAME, align 8
  %92 = load i8*, i8** @CHIP_PARAMETER_NAME, align 8
  %93 = call i32 (i32, i8*, ...) @fprintf(i32 %90, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0), i8* %91, i8* %92)
  %94 = load i32, i32* @output_file, align 4
  %95 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %96 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %95, i32 0, i32 0
  %97 = load %struct.TYPE_12__*, %struct.TYPE_12__** %96, align 8
  %98 = call i32 @output_chip_member_name(i32 %94, %struct.TYPE_12__* %97)
  %99 = load i32, i32* @output_file, align 4
  %100 = call i32 (i32, i8*, ...) @fprintf(i32 %99, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0))
  %101 = load i32, i32* @output_file, align 4
  %102 = load i8*, i8** @INTERNAL_MIN_ISSUE_DELAY_FUNC_NAME, align 8
  %103 = load i8*, i8** @INTERNAL_INSN_CODE_NAME, align 8
  %104 = load i8*, i8** @CHIP_PARAMETER_NAME, align 8
  %105 = call i32 (i32, i8*, ...) @fprintf(i32 %101, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.11, i64 0, i64 0), i8* %102, i8* %103, i8* %104)
  %106 = load i32, i32* @output_file, align 4
  %107 = call i32 (i32, i8*, ...) @fprintf(i32 %106, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0))
  %108 = load i32, i32* @output_file, align 4
  %109 = call i32 (i32, i8*, ...) @fprintf(i32 %108, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i64 0, i64 0))
  %110 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %111 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %110, i32 0, i32 1
  %112 = load %struct.TYPE_11__*, %struct.TYPE_11__** %111, align 8
  %113 = icmp ne %struct.TYPE_11__* %112, null
  br i1 %113, label %114, label %120

114:                                              ; preds = %56
  %115 = load i32, i32* @output_file, align 4
  %116 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %117 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %116, i32 0, i32 0
  %118 = load %struct.TYPE_12__*, %struct.TYPE_12__** %117, align 8
  %119 = call i32 @output_temp_chip_member_name(i32 %115, %struct.TYPE_12__* %118)
  br label %129

120:                                              ; preds = %56
  %121 = load i32, i32* @output_file, align 4
  %122 = load i8*, i8** @CHIP_PARAMETER_NAME, align 8
  %123 = call i32 (i32, i8*, ...) @fprintf(i32 %121, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i8* %122)
  %124 = load i32, i32* @output_file, align 4
  %125 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %126 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %125, i32 0, i32 0
  %127 = load %struct.TYPE_12__*, %struct.TYPE_12__** %126, align 8
  %128 = call i32 @output_chip_member_name(i32 %124, %struct.TYPE_12__* %127)
  br label %129

129:                                              ; preds = %120, %114
  %130 = load i32, i32* @output_file, align 4
  %131 = call i32 (i32, i8*, ...) @fprintf(i32 %130, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0))
  %132 = load i32, i32* @output_file, align 4
  %133 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %134 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %133, i32 0, i32 0
  %135 = load %struct.TYPE_12__*, %struct.TYPE_12__** %134, align 8
  %136 = call i32 @output_trans_comb_vect_name(i32 %132, %struct.TYPE_12__* %135)
  %137 = load i32, i32* @output_file, align 4
  %138 = load i8*, i8** @TEMPORARY_VARIABLE_NAME, align 8
  %139 = call i32 (i32, i8*, ...) @fprintf(i32 %137, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i8* %138)
  br label %212

140:                                              ; preds = %48
  %141 = load i32, i32* @output_file, align 4
  %142 = load i8*, i8** @TEMPORARY_VARIABLE_NAME, align 8
  %143 = call i32 (i32, i8*, ...) @fprintf(i32 %141, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i8* %142)
  %144 = load i32, i32* @output_file, align 4
  %145 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %146 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %145, i32 0, i32 0
  %147 = load %struct.TYPE_12__*, %struct.TYPE_12__** %146, align 8
  %148 = call i32 @output_trans_full_vect_name(i32 %144, %struct.TYPE_12__* %147)
  %149 = load i32, i32* @output_file, align 4
  %150 = call i32 (i32, i8*, ...) @fprintf(i32 %149, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i64 0, i64 0))
  %151 = load i32, i32* @output_file, align 4
  %152 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %153 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %152, i32 0, i32 0
  %154 = load %struct.TYPE_12__*, %struct.TYPE_12__** %153, align 8
  %155 = call i32 @output_translate_vect_name(i32 %151, %struct.TYPE_12__* %154)
  %156 = load i32, i32* @output_file, align 4
  %157 = load i8*, i8** @INTERNAL_INSN_CODE_NAME, align 8
  %158 = call i32 (i32, i8*, ...) @fprintf(i32 %156, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i64 0, i64 0), i8* %157)
  %159 = load i32, i32* @output_file, align 4
  %160 = load i8*, i8** @CHIP_PARAMETER_NAME, align 8
  %161 = call i32 (i32, i8*, ...) @fprintf(i32 %159, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i8* %160)
  %162 = load i32, i32* @output_file, align 4
  %163 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %164 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %163, i32 0, i32 0
  %165 = load %struct.TYPE_12__*, %struct.TYPE_12__** %164, align 8
  %166 = call i32 @output_chip_member_name(i32 %162, %struct.TYPE_12__* %165)
  %167 = load i32, i32* @output_file, align 4
  %168 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %169 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %168, i32 0, i32 0
  %170 = load %struct.TYPE_12__*, %struct.TYPE_12__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 4
  %173 = call i32 (i32, i8*, ...) @fprintf(i32 %167, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.18, i64 0, i64 0), i32 %172)
  %174 = load i32, i32* @output_file, align 4
  %175 = load i8*, i8** @TEMPORARY_VARIABLE_NAME, align 8
  %176 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %177 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %176, i32 0, i32 0
  %178 = load %struct.TYPE_12__*, %struct.TYPE_12__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 4
  %181 = call i32 (i32, i8*, ...) @fprintf(i32 %174, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.19, i64 0, i64 0), i8* %175, i32 %180)
  %182 = load i32, i32* @output_file, align 4
  %183 = load i8*, i8** @INTERNAL_MIN_ISSUE_DELAY_FUNC_NAME, align 8
  %184 = load i8*, i8** @INTERNAL_INSN_CODE_NAME, align 8
  %185 = load i8*, i8** @CHIP_PARAMETER_NAME, align 8
  %186 = call i32 (i32, i8*, ...) @fprintf(i32 %182, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.11, i64 0, i64 0), i8* %183, i8* %184, i8* %185)
  %187 = load i32, i32* @output_file, align 4
  %188 = call i32 (i32, i8*, ...) @fprintf(i32 %187, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.20, i64 0, i64 0))
  %189 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %190 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %189, i32 0, i32 1
  %191 = load %struct.TYPE_11__*, %struct.TYPE_11__** %190, align 8
  %192 = icmp ne %struct.TYPE_11__* %191, null
  br i1 %192, label %193, label %199

193:                                              ; preds = %140
  %194 = load i32, i32* @output_file, align 4
  %195 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %196 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %195, i32 0, i32 0
  %197 = load %struct.TYPE_12__*, %struct.TYPE_12__** %196, align 8
  %198 = call i32 @output_temp_chip_member_name(i32 %194, %struct.TYPE_12__* %197)
  br label %208

199:                                              ; preds = %140
  %200 = load i32, i32* @output_file, align 4
  %201 = load i8*, i8** @CHIP_PARAMETER_NAME, align 8
  %202 = call i32 (i32, i8*, ...) @fprintf(i32 %200, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i8* %201)
  %203 = load i32, i32* @output_file, align 4
  %204 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %205 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %204, i32 0, i32 0
  %206 = load %struct.TYPE_12__*, %struct.TYPE_12__** %205, align 8
  %207 = call i32 @output_chip_member_name(i32 %203, %struct.TYPE_12__* %206)
  br label %208

208:                                              ; preds = %199, %193
  %209 = load i32, i32* @output_file, align 4
  %210 = load i8*, i8** @TEMPORARY_VARIABLE_NAME, align 8
  %211 = call i32 (i32, i8*, ...) @fprintf(i32 %209, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.21, i64 0, i64 0), i8* %210)
  br label %212

212:                                              ; preds = %208, %129
  br label %213

213:                                              ; preds = %212
  %214 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %215 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %214, i32 0, i32 1
  %216 = load %struct.TYPE_11__*, %struct.TYPE_11__** %215, align 8
  store %struct.TYPE_11__* %216, %struct.TYPE_11__** %3, align 8
  br label %45

217:                                              ; preds = %45
  %218 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %219 = icmp ne %struct.TYPE_11__* %218, null
  br i1 %219, label %220, label %255

220:                                              ; preds = %217
  %221 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %222 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %221, i32 0, i32 1
  %223 = load %struct.TYPE_11__*, %struct.TYPE_11__** %222, align 8
  %224 = icmp ne %struct.TYPE_11__* %223, null
  br i1 %224, label %225, label %255

225:                                              ; preds = %220
  %226 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  store %struct.TYPE_11__* %226, %struct.TYPE_11__** %3, align 8
  br label %227

227:                                              ; preds = %252, %225
  %228 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %229 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %228, i32 0, i32 1
  %230 = load %struct.TYPE_11__*, %struct.TYPE_11__** %229, align 8
  store %struct.TYPE_11__* %230, %struct.TYPE_11__** %4, align 8
  %231 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %232 = icmp eq %struct.TYPE_11__* %231, null
  br i1 %232, label %233, label %234

233:                                              ; preds = %227
  br label %254

234:                                              ; preds = %227
  %235 = load i32, i32* @output_file, align 4
  %236 = load i8*, i8** @CHIP_PARAMETER_NAME, align 8
  %237 = call i32 (i32, i8*, ...) @fprintf(i32 %235, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.22, i64 0, i64 0), i8* %236)
  %238 = load i32, i32* @output_file, align 4
  %239 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %240 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %239, i32 0, i32 0
  %241 = load %struct.TYPE_12__*, %struct.TYPE_12__** %240, align 8
  %242 = call i32 @output_chip_member_name(i32 %238, %struct.TYPE_12__* %241)
  %243 = load i32, i32* @output_file, align 4
  %244 = call i32 (i32, i8*, ...) @fprintf(i32 %243, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0))
  %245 = load i32, i32* @output_file, align 4
  %246 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %247 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %246, i32 0, i32 0
  %248 = load %struct.TYPE_12__*, %struct.TYPE_12__** %247, align 8
  %249 = call i32 @output_temp_chip_member_name(i32 %245, %struct.TYPE_12__* %248)
  %250 = load i32, i32* @output_file, align 4
  %251 = call i32 (i32, i8*, ...) @fprintf(i32 %250, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  br label %252

252:                                              ; preds = %234
  %253 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  store %struct.TYPE_11__* %253, %struct.TYPE_11__** %3, align 8
  br label %227

254:                                              ; preds = %233
  br label %255

255:                                              ; preds = %254, %220, %217
  %256 = load i32, i32* @output_file, align 4
  %257 = call i32 (i32, i8*, ...) @fprintf(i32 %256, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.23, i64 0, i64 0))
  %258 = load i32, i32* @output_file, align 4
  %259 = call i32 (i32, i8*, ...) @fprintf(i32 %258, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.24, i64 0, i64 0))
  ret void
}

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @output_state_member_type(i32, %struct.TYPE_12__*) #1

declare dso_local i32 @output_temp_chip_member_name(i32, %struct.TYPE_12__*) #1

declare dso_local i64 @comb_vect_p(i32) #1

declare dso_local i32 @output_trans_base_vect_name(i32, %struct.TYPE_12__*) #1

declare dso_local i32 @output_chip_member_name(i32, %struct.TYPE_12__*) #1

declare dso_local i32 @output_translate_vect_name(i32, %struct.TYPE_12__*) #1

declare dso_local i32 @output_trans_check_vect_name(i32, %struct.TYPE_12__*) #1

declare dso_local i32 @output_trans_comb_vect_name(i32, %struct.TYPE_12__*) #1

declare dso_local i32 @output_trans_full_vect_name(i32, %struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
