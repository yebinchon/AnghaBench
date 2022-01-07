; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-score.c_s_score_ent.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-score.c_s_score_ent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32, i32, i32* }
%struct.TYPE_4__ = type { i32 }

@input_line_pointer = common dso_local global i8* null, align 8
@now_seg = common dso_local global i64 0, align 8
@data_section = common dso_local global i64 0, align 8
@bss_section = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [35 x i8] c".ent or .aent not in text section.\00", align 1
@cur_proc_ptr = common dso_local global %struct.TYPE_5__* null, align 8
@.str.1 = private unnamed_addr constant [13 x i8] c"missing .end\00", align 1
@cur_proc = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@BSF_FUNCTION = common dso_local global i32 0, align 4
@numprocs = common dso_local global i32 0, align 4
@debug_type = common dso_local global i64 0, align 8
@DEBUG_STABS = common dso_local global i64 0, align 8
@SEC_CODE = common dso_local global i32 0, align 4
@stdoutput = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @s_score_ent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s_score_ent(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = call i32* (...) @get_symbol()
  store i32* %5, i32** %3, align 8
  %6 = load i8*, i8** @input_line_pointer, align 8
  %7 = load i8, i8* %6, align 1
  %8 = sext i8 %7 to i32
  %9 = icmp eq i32 %8, 44
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load i8*, i8** @input_line_pointer, align 8
  %12 = getelementptr inbounds i8, i8* %11, i32 1
  store i8* %12, i8** @input_line_pointer, align 8
  br label %13

13:                                               ; preds = %10, %1
  %14 = call i32 (...) @SKIP_WHITESPACE()
  %15 = load i8*, i8** @input_line_pointer, align 8
  %16 = load i8, i8* %15, align 1
  %17 = call i64 @ISDIGIT(i8 signext %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %13
  %20 = load i8*, i8** @input_line_pointer, align 8
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp eq i32 %22, 45
  br i1 %23, label %24, label %26

24:                                               ; preds = %19, %13
  %25 = call i32 (...) @get_number()
  br label %26

26:                                               ; preds = %24, %19
  %27 = load i64, i64* @now_seg, align 8
  %28 = load i64, i64* @data_section, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %35

30:                                               ; preds = %26
  %31 = load i64, i64* @now_seg, align 8
  %32 = load i64, i64* @bss_section, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %30
  store i32 1, i32* %4, align 4
  br label %36

35:                                               ; preds = %30, %26
  store i32 0, i32* %4, align 4
  br label %36

36:                                               ; preds = %35, %34
  %37 = load i32, i32* %4, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %36
  %40 = call i32 @_(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %41 = call i32 @as_warn(i32 %40)
  br label %42

42:                                               ; preds = %39, %36
  %43 = load i32, i32* %2, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %51, label %45

45:                                               ; preds = %42
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** @cur_proc_ptr, align 8
  %47 = icmp ne %struct.TYPE_5__* %46, null
  br i1 %47, label %48, label %51

48:                                               ; preds = %45
  %49 = call i32 @_(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %50 = call i32 @as_warn(i32 %49)
  br label %51

51:                                               ; preds = %48, %45, %42
  %52 = load i32, i32* %2, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %90, label %54

54:                                               ; preds = %51
  store %struct.TYPE_5__* @cur_proc, %struct.TYPE_5__** @cur_proc_ptr, align 8
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** @cur_proc_ptr, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  store i32 -559038801, i32* %56, align 8
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** @cur_proc_ptr, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 1
  store i32 -559038801, i32* %58, align 4
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** @cur_proc_ptr, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 2
  store i32 -558907729, i32* %60, align 8
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** @cur_proc_ptr, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 3
  store i32 -558907729, i32* %62, align 4
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** @cur_proc_ptr, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 4
  store i32 -558907729, i32* %64, align 8
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** @cur_proc_ptr, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 5
  store i32 -558907729, i32* %66, align 4
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** @cur_proc_ptr, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 6
  store i32 -558907729, i32* %68, align 8
  %69 = load i32*, i32** %3, align 8
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** @cur_proc_ptr, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 7
  store i32* %69, i32** %71, align 8
  %72 = load i32, i32* @BSF_FUNCTION, align 4
  %73 = load i32*, i32** %3, align 8
  %74 = call %struct.TYPE_4__* @symbol_get_bfdsym(i32* %73)
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = or i32 %76, %72
  store i32 %77, i32* %75, align 4
  %78 = load i32, i32* @numprocs, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* @numprocs, align 4
  %80 = load i64, i64* @debug_type, align 8
  %81 = load i64, i64* @DEBUG_STABS, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %89

83:                                               ; preds = %54
  %84 = load i32*, i32** %3, align 8
  %85 = call i32 @S_GET_NAME(i32* %84)
  %86 = load i32*, i32** %3, align 8
  %87 = call i32 @S_GET_NAME(i32* %86)
  %88 = call i32 @stabs_generate_asm_func(i32 %85, i32 %87)
  br label %89

89:                                               ; preds = %83, %54
  br label %90

90:                                               ; preds = %89, %51
  %91 = call i32 (...) @demand_empty_rest_of_line()
  ret void
}

declare dso_local i32* @get_symbol(...) #1

declare dso_local i32 @SKIP_WHITESPACE(...) #1

declare dso_local i64 @ISDIGIT(i8 signext) #1

declare dso_local i32 @get_number(...) #1

declare dso_local i32 @as_warn(i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local %struct.TYPE_4__* @symbol_get_bfdsym(i32*) #1

declare dso_local i32 @stabs_generate_asm_func(i32, i32) #1

declare dso_local i32 @S_GET_NAME(i32*) #1

declare dso_local i32 @demand_empty_rest_of_line(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
