; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/cli/extr_cli-cmds.c_disassemble_command.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/cli/extr_cli-cmds.c_disassemble_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@deprecated_selected_frame = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"No frame selected.\0A\00", align 1
@.str.1 = private unnamed_addr constant [58 x i8] c"No function contains program counter for selected frame.\0A\00", align 1
@FUNCTION_START_OFFSET = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [41 x i8] c"No function contains specified address.\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"Dump of assembler code \00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"for function %s:\0A\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"from \00", align 1
@gdb_stdout = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [5 x i8] c" to \00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c":\0A\00", align 1
@uiout = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [24 x i8] c"End of assembler dump.\0A\00", align 1
@DISASSEM_WIN = common dso_local global i32 0, align 4
@tui_active = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @disassemble_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @disassemble_command(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  store i8* null, i8** %7, align 8
  %11 = load i8*, i8** %3, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %32, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @deprecated_selected_frame, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %13
  %17 = call i32 @error(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %18

18:                                               ; preds = %16, %13
  %19 = load i32, i32* @deprecated_selected_frame, align 4
  %20 = call i32 @get_frame_pc(i32 %19)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = call i64 @find_pc_partial_function(i32 %21, i8** %7, i32* %5, i32* %6)
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %18
  %25 = call i32 @error(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0))
  br label %26

26:                                               ; preds = %24, %18
  %27 = load i64, i64* @FUNCTION_START_OFFSET, align 8
  %28 = load i32, i32* %5, align 4
  %29 = sext i32 %28 to i64
  %30 = add nsw i64 %29, %27
  %31 = trunc i64 %30 to i32
  store i32 %31, i32* %5, align 4
  br label %59

32:                                               ; preds = %2
  %33 = load i8*, i8** %3, align 8
  %34 = call i64 @strchr(i8* %33, i8 signext 32)
  %35 = inttoptr i64 %34 to i8*
  store i8* %35, i8** %10, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %51, label %37

37:                                               ; preds = %32
  %38 = load i8*, i8** %3, align 8
  %39 = call i32 @parse_and_eval_address(i8* %38)
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %8, align 4
  %41 = call i64 @find_pc_partial_function(i32 %40, i8** %7, i32* %5, i32* %6)
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %37
  %44 = call i32 @error(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  br label %45

45:                                               ; preds = %43, %37
  %46 = load i64, i64* @FUNCTION_START_OFFSET, align 8
  %47 = load i32, i32* %5, align 4
  %48 = sext i32 %47 to i64
  %49 = add nsw i64 %48, %46
  %50 = trunc i64 %49 to i32
  store i32 %50, i32* %5, align 4
  br label %58

51:                                               ; preds = %32
  %52 = load i8*, i8** %10, align 8
  store i8 0, i8* %52, align 1
  %53 = load i8*, i8** %3, align 8
  %54 = call i32 @parse_and_eval_address(i8* %53)
  store i32 %54, i32* %5, align 4
  %55 = load i8*, i8** %10, align 8
  %56 = getelementptr inbounds i8, i8* %55, i64 1
  %57 = call i32 @parse_and_eval_address(i8* %56)
  store i32 %57, i32* %6, align 4
  br label %58

58:                                               ; preds = %51, %45
  br label %59

59:                                               ; preds = %58, %26
  %60 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  %61 = load i8*, i8** %7, align 8
  %62 = icmp ne i8* %61, null
  br i1 %62, label %63, label %66

63:                                               ; preds = %59
  %64 = load i8*, i8** %7, align 8
  %65 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i8* %64)
  br label %76

66:                                               ; preds = %59
  %67 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  %68 = load i32, i32* %5, align 4
  %69 = load i32, i32* @gdb_stdout, align 4
  %70 = call i32 @print_address_numeric(i32 %68, i32 1, i32 %69)
  %71 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  %72 = load i32, i32* %6, align 4
  %73 = load i32, i32* @gdb_stdout, align 4
  %74 = call i32 @print_address_numeric(i32 %72, i32 1, i32 %73)
  %75 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  br label %76

76:                                               ; preds = %66, %63
  %77 = load i32, i32* @uiout, align 4
  %78 = load i32, i32* %5, align 4
  %79 = load i32, i32* %6, align 4
  %80 = call i32 @gdb_disassembly(i32 %77, i32 0, i32 0, i32 0, i32 -1, i32 %78, i32 %79)
  %81 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0))
  %82 = load i32, i32* @gdb_stdout, align 4
  %83 = call i32 @gdb_flush(i32 %82)
  ret void
}

declare dso_local i32 @error(i8*) #1

declare dso_local i32 @get_frame_pc(i32) #1

declare dso_local i64 @find_pc_partial_function(i32, i8**, i32*, i32*) #1

declare dso_local i64 @strchr(i8*, i8 signext) #1

declare dso_local i32 @parse_and_eval_address(i8*) #1

declare dso_local i32 @printf_filtered(i8*, ...) #1

declare dso_local i32 @print_address_numeric(i32, i32, i32) #1

declare dso_local i32 @gdb_disassembly(i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @gdb_flush(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
