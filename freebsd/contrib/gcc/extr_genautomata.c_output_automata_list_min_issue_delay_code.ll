; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genautomata.c_output_automata_list_min_issue_delay_code.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genautomata.c_output_automata_list_min_issue_delay_code.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__*, %struct.TYPE_8__* }
%struct.TYPE_7__ = type { i32, i32 }

@output_file = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"\0A      %s = \00", align 1
@TEMPORARY_VARIABLE_NAME = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [4 x i8] c" [(\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c" [\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c" [%s] + \00", align 1
@INTERNAL_INSN_CODE_NAME = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [5 x i8] c"%s->\00", align 1
@CHIP_PARAMETER_NAME = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [6 x i8] c" * %d\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"];\0A\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c") / %d];\0A\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"      %s = (%s >> (8 - (\00", align 1
@.str.9 = private unnamed_addr constant [31 x i8] c" [%s] %% %d + 1) * %d)) & %d;\0A\00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"      %s = %s;\0A\00", align 1
@RESULT_VARIABLE_NAME = common dso_local global i8* null, align 8
@.str.11 = private unnamed_addr constant [20 x i8] c"      if (%s > %s)\0A\00", align 1
@.str.12 = private unnamed_addr constant [18 x i8] c"        %s = %s;\0A\00", align 1
@.str.13 = private unnamed_addr constant [15 x i8] c"      break;\0A\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*)* @output_automata_list_min_issue_delay_code to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @output_automata_list_min_issue_delay_code(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  %5 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  store %struct.TYPE_8__* %5, %struct.TYPE_8__** %3, align 8
  br label %6

6:                                                ; preds = %99, %1
  %7 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %8 = icmp ne %struct.TYPE_8__* %7, null
  br i1 %8, label %9, label %103

9:                                                ; preds = %6
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  store %struct.TYPE_7__* %12, %struct.TYPE_7__** %4, align 8
  %13 = load i32, i32* @output_file, align 4
  %14 = load i8*, i8** @TEMPORARY_VARIABLE_NAME, align 8
  %15 = call i32 (i32, i8*, ...) @fprintf(i32 %13, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* %14)
  %16 = load i32, i32* @output_file, align 4
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %18 = call i32 @output_min_issue_delay_vect_name(i32 %16, %struct.TYPE_7__* %17)
  %19 = load i32, i32* @output_file, align 4
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 1
  %24 = zext i1 %23 to i64
  %25 = select i1 %23, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)
  %26 = call i32 (i32, i8*, ...) @fprintf(i32 %19, i8* %25)
  %27 = load i32, i32* @output_file, align 4
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %29 = call i32 @output_translate_vect_name(i32 %27, %struct.TYPE_7__* %28)
  %30 = load i32, i32* @output_file, align 4
  %31 = load i8*, i8** @INTERNAL_INSN_CODE_NAME, align 8
  %32 = call i32 (i32, i8*, ...) @fprintf(i32 %30, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8* %31)
  %33 = load i32, i32* @output_file, align 4
  %34 = load i8*, i8** @CHIP_PARAMETER_NAME, align 8
  %35 = call i32 (i32, i8*, ...) @fprintf(i32 %33, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* %34)
  %36 = load i32, i32* @output_file, align 4
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %38 = call i32 @output_chip_member_name(i32 %36, %struct.TYPE_7__* %37)
  %39 = load i32, i32* @output_file, align 4
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 (i32, i8*, ...) @fprintf(i32 %39, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i32 %42)
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = icmp eq i32 %46, 1
  br i1 %47, label %48, label %51

48:                                               ; preds = %9
  %49 = load i32, i32* @output_file, align 4
  %50 = call i32 (i32, i8*, ...) @fprintf(i32 %49, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0))
  br label %80

51:                                               ; preds = %9
  %52 = load i32, i32* @output_file, align 4
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 (i32, i8*, ...) @fprintf(i32 %52, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i32 %55)
  %57 = load i32, i32* @output_file, align 4
  %58 = load i8*, i8** @TEMPORARY_VARIABLE_NAME, align 8
  %59 = load i8*, i8** @TEMPORARY_VARIABLE_NAME, align 8
  %60 = call i32 (i32, i8*, ...) @fprintf(i32 %57, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0), i8* %58, i8* %59)
  %61 = load i32, i32* @output_file, align 4
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %63 = call i32 @output_translate_vect_name(i32 %61, %struct.TYPE_7__* %62)
  %64 = load i32, i32* @output_file, align 4
  %65 = load i8*, i8** @INTERNAL_INSN_CODE_NAME, align 8
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = sdiv i32 8, %71
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = sdiv i32 8, %75
  %77 = shl i32 1, %76
  %78 = sub nsw i32 %77, 1
  %79 = call i32 (i32, i8*, ...) @fprintf(i32 %64, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.9, i64 0, i64 0), i8* %65, i32 %68, i32 %72, i32 %78)
  br label %80

80:                                               ; preds = %51, %48
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %83 = icmp eq %struct.TYPE_8__* %81, %82
  br i1 %83, label %84, label %89

84:                                               ; preds = %80
  %85 = load i32, i32* @output_file, align 4
  %86 = load i8*, i8** @RESULT_VARIABLE_NAME, align 8
  %87 = load i8*, i8** @TEMPORARY_VARIABLE_NAME, align 8
  %88 = call i32 (i32, i8*, ...) @fprintf(i32 %85, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i64 0, i64 0), i8* %86, i8* %87)
  br label %98

89:                                               ; preds = %80
  %90 = load i32, i32* @output_file, align 4
  %91 = load i8*, i8** @TEMPORARY_VARIABLE_NAME, align 8
  %92 = load i8*, i8** @RESULT_VARIABLE_NAME, align 8
  %93 = call i32 (i32, i8*, ...) @fprintf(i32 %90, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i64 0, i64 0), i8* %91, i8* %92)
  %94 = load i32, i32* @output_file, align 4
  %95 = load i8*, i8** @RESULT_VARIABLE_NAME, align 8
  %96 = load i8*, i8** @TEMPORARY_VARIABLE_NAME, align 8
  %97 = call i32 (i32, i8*, ...) @fprintf(i32 %94, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.12, i64 0, i64 0), i8* %95, i8* %96)
  br label %98

98:                                               ; preds = %89, %84
  br label %99

99:                                               ; preds = %98
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 1
  %102 = load %struct.TYPE_8__*, %struct.TYPE_8__** %101, align 8
  store %struct.TYPE_8__* %102, %struct.TYPE_8__** %3, align 8
  br label %6

103:                                              ; preds = %6
  %104 = load i32, i32* @output_file, align 4
  %105 = call i32 (i32, i8*, ...) @fprintf(i32 %104, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.13, i64 0, i64 0))
  ret void
}

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @output_min_issue_delay_vect_name(i32, %struct.TYPE_7__*) #1

declare dso_local i32 @output_translate_vect_name(i32, %struct.TYPE_7__*) #1

declare dso_local i32 @output_chip_member_name(i32, %struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
