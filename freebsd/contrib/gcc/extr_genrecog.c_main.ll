; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genrecog.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genrecog.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.decision_head = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"genrecog\00", align 1
@progname = common dso_local global i8* null, align 8
@SUCCESS_EXIT_CODE = common dso_local global i64 0, align 8
@FATAL_EXIT_CODE = common dso_local global i32 0, align 4
@next_insn_code = common dso_local global i64 0, align 8
@pattern_lineno = common dso_local global i32 0, align 4
@RECOG = common dso_local global i32 0, align 4
@SPLIT = common dso_local global i32 0, align 4
@PEEPHOLE2 = common dso_local global i32 0, align 4
@error_count = common dso_local global i64 0, align 8
@have_error = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"\0A\0A\00", align 1
@stdout = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.decision_head, align 4
  %8 = alloca %struct.decision_head, align 4
  %9 = alloca %struct.decision_head, align 4
  %10 = alloca %struct.decision_head, align 4
  %11 = alloca %struct.decision_head, align 4
  %12 = alloca %struct.decision_head, align 4
  %13 = alloca %struct.decision_head, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8** @progname, align 8
  %14 = call i32 @memset(%struct.decision_head* %7, i32 0, i32 4)
  %15 = call i32 @memset(%struct.decision_head* %8, i32 0, i32 4)
  %16 = call i32 @memset(%struct.decision_head* %9, i32 0, i32 4)
  %17 = load i32, i32* %4, align 4
  %18 = load i8**, i8*** %5, align 8
  %19 = call i64 @init_md_reader_args(i32 %17, i8** %18)
  %20 = load i64, i64* @SUCCESS_EXIT_CODE, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %2
  %23 = load i32, i32* @FATAL_EXIT_CODE, align 4
  store i32 %23, i32* %3, align 4
  br label %92

24:                                               ; preds = %2
  store i64 0, i64* @next_insn_code, align 8
  %25 = call i32 (...) @write_header()
  br label %26

26:                                               ; preds = %24, %62
  %27 = call i32* @read_md_rtx(i32* @pattern_lineno, i64* @next_insn_code)
  store i32* %27, i32** %6, align 8
  %28 = load i32*, i32** %6, align 8
  %29 = icmp eq i32* %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  br label %63

31:                                               ; preds = %26
  %32 = load i32*, i32** %6, align 8
  %33 = call i32 @GET_CODE(i32* %32)
  switch i32 %33, label %61 [
    i32 130, label %34
    i32 129, label %34
    i32 132, label %37
    i32 128, label %45
    i32 131, label %53
  ]

34:                                               ; preds = %31, %31
  %35 = load i32*, i32** %6, align 8
  %36 = call i32 @process_define_predicate(i32* %35)
  br label %62

37:                                               ; preds = %31
  %38 = load i32*, i32** %6, align 8
  %39 = load i32, i32* @RECOG, align 4
  %40 = call i32 @make_insn_sequence(i32* %38, i32 %39)
  %41 = getelementptr inbounds %struct.decision_head, %struct.decision_head* %11, i32 0, i32 0
  store i32 %40, i32* %41, align 4
  %42 = bitcast %struct.decision_head* %10 to i8*
  %43 = bitcast %struct.decision_head* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %42, i8* align 4 %43, i64 4, i1 false)
  %44 = call i32 @merge_trees(%struct.decision_head* %7, %struct.decision_head* %10)
  br label %62

45:                                               ; preds = %31
  %46 = load i32*, i32** %6, align 8
  %47 = load i32, i32* @SPLIT, align 4
  %48 = call i32 @make_insn_sequence(i32* %46, i32 %47)
  %49 = getelementptr inbounds %struct.decision_head, %struct.decision_head* %12, i32 0, i32 0
  store i32 %48, i32* %49, align 4
  %50 = bitcast %struct.decision_head* %10 to i8*
  %51 = bitcast %struct.decision_head* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %50, i8* align 4 %51, i64 4, i1 false)
  %52 = call i32 @merge_trees(%struct.decision_head* %8, %struct.decision_head* %10)
  br label %62

53:                                               ; preds = %31
  %54 = load i32*, i32** %6, align 8
  %55 = load i32, i32* @PEEPHOLE2, align 4
  %56 = call i32 @make_insn_sequence(i32* %54, i32 %55)
  %57 = getelementptr inbounds %struct.decision_head, %struct.decision_head* %13, i32 0, i32 0
  store i32 %56, i32* %57, align 4
  %58 = bitcast %struct.decision_head* %10 to i8*
  %59 = bitcast %struct.decision_head* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %58, i8* align 4 %59, i64 4, i1 false)
  %60 = call i32 @merge_trees(%struct.decision_head* %9, %struct.decision_head* %10)
  br label %61

61:                                               ; preds = %31, %53
  br label %62

62:                                               ; preds = %61, %45, %37, %34
  br label %26

63:                                               ; preds = %30
  %64 = load i64, i64* @error_count, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %69, label %66

66:                                               ; preds = %63
  %67 = load i64, i64* @have_error, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %66, %63
  %70 = load i32, i32* @FATAL_EXIT_CODE, align 4
  store i32 %70, i32* %3, align 4
  br label %92

71:                                               ; preds = %66
  %72 = call i32 @puts(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %73 = load i32, i32* @RECOG, align 4
  %74 = call i32 @process_tree(%struct.decision_head* %7, i32 %73)
  %75 = load i32, i32* @SPLIT, align 4
  %76 = call i32 @process_tree(%struct.decision_head* %8, i32 %75)
  %77 = load i32, i32* @PEEPHOLE2, align 4
  %78 = call i32 @process_tree(%struct.decision_head* %9, i32 %77)
  %79 = load i32, i32* @stdout, align 4
  %80 = call i32 @fflush(i32 %79)
  %81 = load i32, i32* @stdout, align 4
  %82 = call i64 @ferror(i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %71
  %85 = load i32, i32* @FATAL_EXIT_CODE, align 4
  %86 = sext i32 %85 to i64
  br label %89

87:                                               ; preds = %71
  %88 = load i64, i64* @SUCCESS_EXIT_CODE, align 8
  br label %89

89:                                               ; preds = %87, %84
  %90 = phi i64 [ %86, %84 ], [ %88, %87 ]
  %91 = trunc i64 %90 to i32
  store i32 %91, i32* %3, align 4
  br label %92

92:                                               ; preds = %89, %69, %22
  %93 = load i32, i32* %3, align 4
  ret i32 %93
}

declare dso_local i32 @memset(%struct.decision_head*, i32, i32) #1

declare dso_local i64 @init_md_reader_args(i32, i8**) #1

declare dso_local i32 @write_header(...) #1

declare dso_local i32* @read_md_rtx(i32*, i64*) #1

declare dso_local i32 @GET_CODE(i32*) #1

declare dso_local i32 @process_define_predicate(i32*) #1

declare dso_local i32 @make_insn_sequence(i32*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @merge_trees(%struct.decision_head*, %struct.decision_head*) #1

declare dso_local i32 @puts(i8*) #1

declare dso_local i32 @process_tree(%struct.decision_head*, i32) #1

declare dso_local i32 @fflush(i32) #1

declare dso_local i64 @ferror(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
