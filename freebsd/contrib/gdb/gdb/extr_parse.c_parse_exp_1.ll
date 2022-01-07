; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_parse.c_parse_exp_1.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_parse.c_parse_exp_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.block = type { i32 }
%struct.expression = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (i32*)*, i64 (...)* }
%struct.cleanup = type { i32 }

@lexptr = common dso_local global i64* null, align 8
@prev_lexptr = common dso_local global i32* null, align 8
@paren_depth = common dso_local global i64 0, align 8
@type_stack_depth = common dso_local global i64 0, align 8
@comma_terminates = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"expression to compute\00", align 1
@free_funcalls = common dso_local global i32 0, align 4
@funcall_chain = common dso_local global i64 0, align 8
@expression_context_block = common dso_local global %struct.block* null, align 8
@expression_context_pc = common dso_local global i32 0, align 4
@namecopy = common dso_local global i8* null, align 8
@expout_size = common dso_local global i32 0, align 4
@expout_ptr = common dso_local global i32 0, align 4
@expout = common dso_local global %struct.expression* null, align 8
@current_language = common dso_local global %struct.TYPE_2__* null, align 8
@free_current_contents = common dso_local global i32 0, align 4
@expressiondebug = common dso_local global i64 0, align 8
@gdb_stdlog = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"before conversion to prefix form\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.expression* @parse_exp_1(i8** %0, %struct.block* %1, i32 %2) #0 {
  %4 = alloca i8**, align 8
  %5 = alloca %struct.block*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.cleanup*, align 8
  store i8** %0, i8*** %4, align 8
  store %struct.block* %1, %struct.block** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i8**, i8*** %4, align 8
  %9 = load i8*, i8** %8, align 8
  %10 = bitcast i8* %9 to i64*
  store i64* %10, i64** @lexptr, align 8
  store i32* null, i32** @prev_lexptr, align 8
  store i64 0, i64* @paren_depth, align 8
  store i64 0, i64* @type_stack_depth, align 8
  %11 = load i32, i32* %6, align 4
  store i32 %11, i32* @comma_terminates, align 4
  %12 = load i64*, i64** @lexptr, align 8
  %13 = icmp eq i64* %12, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %3
  %15 = load i64*, i64** @lexptr, align 8
  %16 = load i64, i64* %15, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %14, %3
  %19 = call i32 @error_no_arg(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %20

20:                                               ; preds = %18, %14
  %21 = load i32, i32* @free_funcalls, align 4
  %22 = call %struct.cleanup* @make_cleanup(i32 %21, %struct.expression** null)
  store %struct.cleanup* %22, %struct.cleanup** %7, align 8
  store i64 0, i64* @funcall_chain, align 8
  %23 = load %struct.block*, %struct.block** %5, align 8
  %24 = icmp ne %struct.block* %23, null
  br i1 %24, label %25, label %29

25:                                               ; preds = %20
  %26 = load %struct.block*, %struct.block** %5, align 8
  store %struct.block* %26, %struct.block** @expression_context_block, align 8
  %27 = load %struct.block*, %struct.block** %5, align 8
  %28 = call i32 @BLOCK_START(%struct.block* %27)
  store i32 %28, i32* @expression_context_pc, align 4
  br label %31

29:                                               ; preds = %20
  %30 = call %struct.block* @get_selected_block(i32* @expression_context_pc)
  store %struct.block* %30, %struct.block** @expression_context_block, align 8
  br label %31

31:                                               ; preds = %29, %25
  %32 = load i64*, i64** @lexptr, align 8
  %33 = call i64 @strlen(i64* %32)
  %34 = add nsw i64 %33, 1
  %35 = call i64 @alloca(i64 %34)
  %36 = inttoptr i64 %35 to i8*
  store i8* %36, i8** @namecopy, align 8
  store i32 10, i32* @expout_size, align 4
  store i32 0, i32* @expout_ptr, align 4
  %37 = load i32, i32* @expout_size, align 4
  %38 = call i64 @EXP_ELEM_TO_BYTES(i32 %37)
  %39 = add i64 16, %38
  %40 = call i64 @xmalloc(i64 %39)
  %41 = inttoptr i64 %40 to %struct.expression*
  store %struct.expression* %41, %struct.expression** @expout, align 8
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current_language, align 8
  %43 = load %struct.expression*, %struct.expression** @expout, align 8
  %44 = getelementptr inbounds %struct.expression, %struct.expression* %43, i32 0, i32 1
  store %struct.TYPE_2__* %42, %struct.TYPE_2__** %44, align 8
  %45 = load i32, i32* @free_current_contents, align 4
  %46 = call %struct.cleanup* @make_cleanup(i32 %45, %struct.expression** @expout)
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current_language, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 1
  %49 = load i64 (...)*, i64 (...)** %48, align 8
  %50 = call i64 (...) %49()
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %31
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current_language, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i32 (i32*)*, i32 (i32*)** %54, align 8
  %56 = call i32 %55(i32* null)
  br label %57

57:                                               ; preds = %52, %31
  %58 = load %struct.cleanup*, %struct.cleanup** %7, align 8
  %59 = call i32 @discard_cleanups(%struct.cleanup* %58)
  %60 = load i32, i32* @expout_ptr, align 4
  %61 = load %struct.expression*, %struct.expression** @expout, align 8
  %62 = getelementptr inbounds %struct.expression, %struct.expression* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 8
  %63 = load %struct.expression*, %struct.expression** @expout, align 8
  %64 = bitcast %struct.expression* %63 to i8*
  %65 = load i32, i32* @expout_ptr, align 4
  %66 = call i64 @EXP_ELEM_TO_BYTES(i32 %65)
  %67 = add i64 16, %66
  %68 = call i64 @xrealloc(i8* %64, i64 %67)
  %69 = inttoptr i64 %68 to %struct.expression*
  store %struct.expression* %69, %struct.expression** @expout, align 8
  %70 = load i64, i64* @expressiondebug, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %57
  %73 = load %struct.expression*, %struct.expression** @expout, align 8
  %74 = load i32, i32* @gdb_stdlog, align 4
  %75 = call i32 @dump_raw_expression(%struct.expression* %73, i32 %74, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  br label %76

76:                                               ; preds = %72, %57
  %77 = load %struct.expression*, %struct.expression** @expout, align 8
  %78 = call i32 @prefixify_expression(%struct.expression* %77)
  %79 = load i64, i64* @expressiondebug, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %76
  %82 = load %struct.expression*, %struct.expression** @expout, align 8
  %83 = load i32, i32* @gdb_stdlog, align 4
  %84 = call i32 @dump_prefix_expression(%struct.expression* %82, i32 %83)
  br label %85

85:                                               ; preds = %81, %76
  %86 = load i64*, i64** @lexptr, align 8
  %87 = bitcast i64* %86 to i8*
  %88 = load i8**, i8*** %4, align 8
  store i8* %87, i8** %88, align 8
  %89 = load %struct.expression*, %struct.expression** @expout, align 8
  ret %struct.expression* %89
}

declare dso_local i32 @error_no_arg(i8*) #1

declare dso_local %struct.cleanup* @make_cleanup(i32, %struct.expression**) #1

declare dso_local i32 @BLOCK_START(%struct.block*) #1

declare dso_local %struct.block* @get_selected_block(i32*) #1

declare dso_local i64 @alloca(i64) #1

declare dso_local i64 @strlen(i64*) #1

declare dso_local i64 @xmalloc(i64) #1

declare dso_local i64 @EXP_ELEM_TO_BYTES(i32) #1

declare dso_local i32 @discard_cleanups(%struct.cleanup*) #1

declare dso_local i64 @xrealloc(i8*, i64) #1

declare dso_local i32 @dump_raw_expression(%struct.expression*, i32, i8*) #1

declare dso_local i32 @prefixify_expression(%struct.expression*) #1

declare dso_local i32 @dump_prefix_expression(%struct.expression*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
