; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genautomata.c_output_print_reservation_func.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genautomata.c_output_print_reservation_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 }
%struct.TYPE_7__ = type { i32, %struct.TYPE_6__** }
%struct.TYPE_8__ = type { i32, i32 }

@output_file = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"void\0A%s (FILE *%s, rtx %s ATTRIBUTE_UNUSED)\0A{\0A\00", align 1
@PRINT_RESERVATION_FUNC_NAME = common dso_local global i8* null, align 8
@FILE_PARAMETER_NAME = common dso_local global i8* null, align 8
@INSN_PARAMETER_NAME = common dso_local global i8* null, align 8
@advance_cycle_insn_decl = common dso_local global %struct.TYPE_6__* null, align 8
@.str.1 = private unnamed_addr constant [24 x i8] c"  fputs (\22%s\22, %s);\0A}\0A\0A\00", align 1
@NOTHING_NAME = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [55 x i8] c"  static const char *const reservation_names[] =\0A    {\00", align 1
@description = common dso_local global %struct.TYPE_7__* null, align 8
@dm_insn_reserv = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [13 x i8] c"\0A      \22%s\22,\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"\0A      \22%s\22\0A    };\0A  int %s;\0A\0A\00", align 1
@INTERNAL_INSN_CODE_NAME = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [29 x i8] c"  if (%s == 0)\0A    %s = %s;\0A\00", align 1
@ADVANCE_CYCLE_VALUE_NAME = common dso_local global i8* null, align 8
@.str.6 = private unnamed_addr constant [76 x i8] c"  else\0A    {\0A      %s = %s (%s);\0A      if (%s > %s)\0A        %s = %s;\0A    }\0A\00", align 1
@DFA_INSN_CODE_FUNC_NAME = common dso_local global i8* null, align 8
@.str.7 = private unnamed_addr constant [41 x i8] c"  fputs (reservation_names[%s], %s);\0A}\0A\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @output_print_reservation_func to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @output_print_reservation_func() #0 {
  %1 = alloca %struct.TYPE_6__*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = load i32, i32* @output_file, align 4
  %5 = load i8*, i8** @PRINT_RESERVATION_FUNC_NAME, align 8
  %6 = load i8*, i8** @FILE_PARAMETER_NAME, align 8
  %7 = load i8*, i8** @INSN_PARAMETER_NAME, align 8
  %8 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %4, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i8* %5, i8* %6, i8* %7)
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** @advance_cycle_insn_decl, align 8
  %10 = call %struct.TYPE_8__* @DECL_INSN_RESERV(%struct.TYPE_6__* %9)
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %0
  %15 = load i32, i32* @output_file, align 4
  %16 = load i8*, i8** @NOTHING_NAME, align 8
  %17 = load i8*, i8** @FILE_PARAMETER_NAME, align 8
  %18 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %15, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i8* %16, i8* %17)
  br label %99

19:                                               ; preds = %0
  %20 = load i32, i32* @output_file, align 4
  %21 = call i32 @fputs(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.2, i64 0, i64 0), i32 %20)
  store i32 0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  br label %22

22:                                               ; preds = %65, %19
  %23 = load i32, i32* %2, align 4
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** @description, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp slt i32 %23, %26
  br i1 %27, label %28, label %68

28:                                               ; preds = %22
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** @description, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 1
  %31 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %30, align 8
  %32 = load i32, i32* %2, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %31, i64 %33
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %34, align 8
  store %struct.TYPE_6__* %35, %struct.TYPE_6__** %1, align 8
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @dm_insn_reserv, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %64

41:                                               ; preds = %28
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** @advance_cycle_insn_decl, align 8
  %44 = icmp ne %struct.TYPE_6__* %42, %43
  br i1 %44, label %45, label %64

45:                                               ; preds = %41
  %46 = load i32, i32* %3, align 4
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %48 = call %struct.TYPE_8__* @DECL_INSN_RESERV(%struct.TYPE_6__* %47)
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = icmp eq i32 %46, %50
  %52 = zext i1 %51 to i32
  %53 = call i32 @gcc_assert(i32 %52)
  %54 = load i32, i32* %3, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %3, align 4
  %56 = load i32, i32* @output_file, align 4
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %58 = call %struct.TYPE_8__* @DECL_INSN_RESERV(%struct.TYPE_6__* %57)
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i8* @regexp_representation(i32 %60)
  %62 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %56, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i8* %61)
  %63 = call i32 (...) @finish_regexp_representation()
  br label %64

64:                                               ; preds = %45, %41, %28
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* %2, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %2, align 4
  br label %22

68:                                               ; preds = %22
  %69 = load i32, i32* %3, align 4
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** @advance_cycle_insn_decl, align 8
  %71 = call %struct.TYPE_8__* @DECL_INSN_RESERV(%struct.TYPE_6__* %70)
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = icmp eq i32 %69, %73
  %75 = zext i1 %74 to i32
  %76 = call i32 @gcc_assert(i32 %75)
  %77 = load i32, i32* @output_file, align 4
  %78 = load i8*, i8** @NOTHING_NAME, align 8
  %79 = load i8*, i8** @INTERNAL_INSN_CODE_NAME, align 8
  %80 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %77, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i8* %78, i8* %79)
  %81 = load i32, i32* @output_file, align 4
  %82 = load i8*, i8** @INSN_PARAMETER_NAME, align 8
  %83 = load i8*, i8** @INTERNAL_INSN_CODE_NAME, align 8
  %84 = load i8*, i8** @ADVANCE_CYCLE_VALUE_NAME, align 8
  %85 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %81, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0), i8* %82, i8* %83, i8* %84)
  %86 = load i32, i32* @output_file, align 4
  %87 = load i8*, i8** @INTERNAL_INSN_CODE_NAME, align 8
  %88 = load i8*, i8** @DFA_INSN_CODE_FUNC_NAME, align 8
  %89 = load i8*, i8** @INSN_PARAMETER_NAME, align 8
  %90 = load i8*, i8** @INTERNAL_INSN_CODE_NAME, align 8
  %91 = load i8*, i8** @ADVANCE_CYCLE_VALUE_NAME, align 8
  %92 = load i8*, i8** @INTERNAL_INSN_CODE_NAME, align 8
  %93 = load i8*, i8** @ADVANCE_CYCLE_VALUE_NAME, align 8
  %94 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %86, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.6, i64 0, i64 0), i8* %87, i8* %88, i8* %89, i8* %90, i8* %91, i8* %92, i8* %93)
  %95 = load i32, i32* @output_file, align 4
  %96 = load i8*, i8** @INTERNAL_INSN_CODE_NAME, align 8
  %97 = load i8*, i8** @FILE_PARAMETER_NAME, align 8
  %98 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %95, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.7, i64 0, i64 0), i8* %96, i8* %97)
  br label %99

99:                                               ; preds = %68, %14
  ret void
}

declare dso_local i32 @fprintf(i32, i8*, i8*, ...) #1

declare dso_local %struct.TYPE_8__* @DECL_INSN_RESERV(%struct.TYPE_6__*) #1

declare dso_local i32 @fputs(i8*, i32) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i8* @regexp_representation(i32) #1

declare dso_local i32 @finish_regexp_representation(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
