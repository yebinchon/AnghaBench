; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_protoize.c_gen_aux_info_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_protoize.c_gen_aux_info_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@input_file_name_index = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@compile_params = common dso_local global i32* null, align 8
@aux_info_suffix = common dso_local global i32 0, align 4
@aux_info_file_name_index = common dso_local global i64 0, align 8
@quiet_flag = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"%s: compiling '%s'\0A\00", align 1
@pname = common dso_local global i8* null, align 8
@PEXECUTE_FIRST = common dso_local global i32 0, align 4
@PEXECUTE_LAST = common dso_local global i32 0, align 4
@PEXECUTE_SEARCH = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c": %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"%s: wait: %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"%s: subprocess got fatal signal %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"%s: %s exited with status %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @gen_aux_info_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gen_aux_info_file(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %9 = load i64, i64* @input_file_name_index, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %1
  %12 = call i32 @munge_compile_params(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  br label %13

13:                                               ; preds = %11, %1
  %14 = load i8*, i8** %3, align 8
  %15 = call i32 @shortpath(i32* null, i8* %14)
  %16 = load i32*, i32** @compile_params, align 8
  %17 = load i64, i64* @input_file_name_index, align 8
  %18 = getelementptr inbounds i32, i32* %16, i64 %17
  store i32 %15, i32* %18, align 4
  %19 = load i32*, i32** @compile_params, align 8
  %20 = load i64, i64* @input_file_name_index, align 8
  %21 = getelementptr inbounds i32, i32* %19, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @aux_info_suffix, align 4
  %24 = call i32 @concat(i32 %22, i32 %23, i32* null)
  %25 = load i32*, i32** @compile_params, align 8
  %26 = load i64, i64* @aux_info_file_name_index, align 8
  %27 = getelementptr inbounds i32, i32* %25, i64 %26
  store i32 %24, i32* %27, align 4
  %28 = load i32, i32* @quiet_flag, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %39, label %30

30:                                               ; preds = %13
  %31 = load i8*, i8** @pname, align 8
  %32 = load i32*, i32** @compile_params, align 8
  %33 = load i64, i64* @input_file_name_index, align 8
  %34 = getelementptr inbounds i32, i32* %32, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = sext i32 %35 to i64
  %37 = inttoptr i64 %36 to i8*
  %38 = call i32 (i8*, i8*, i8*, ...) @notice(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i8* %31, i8* %37)
  br label %39

39:                                               ; preds = %30, %13
  %40 = load i32*, i32** @compile_params, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32*, i32** @compile_params, align 8
  %44 = bitcast i32* %43 to i8**
  %45 = load i8*, i8** @pname, align 8
  %46 = load i32, i32* @PEXECUTE_FIRST, align 4
  %47 = load i32, i32* @PEXECUTE_LAST, align 4
  %48 = or i32 %46, %47
  %49 = load i32, i32* @PEXECUTE_SEARCH, align 4
  %50 = or i32 %48, %49
  %51 = call i32 @pexecute(i32 %42, i8** %44, i8* %45, i32* null, i8** %4, i8** %5, i32 %50)
  store i32 %51, i32* %7, align 4
  %52 = load i32, i32* %7, align 4
  %53 = icmp eq i32 %52, -1
  br i1 %53, label %54, label %67

54:                                               ; preds = %39
  %55 = load i32, i32* @errno, align 4
  store i32 %55, i32* %8, align 4
  %56 = load i32, i32* @stderr, align 4
  %57 = load i8*, i8** @pname, align 8
  %58 = call i32 @fprintf(i32 %56, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* %57)
  %59 = load i32, i32* @stderr, align 4
  %60 = load i8*, i8** %4, align 8
  %61 = load i8*, i8** %5, align 8
  %62 = call i32 @fprintf(i32 %59, i8* %60, i8* %61)
  %63 = load i32, i32* @stderr, align 4
  %64 = load i32, i32* %8, align 4
  %65 = call i8* @xstrerror(i32 %64)
  %66 = call i32 @fprintf(i32 %63, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* %65)
  store i32 0, i32* %2, align 4
  br label %109

67:                                               ; preds = %39
  %68 = load i32, i32* %7, align 4
  %69 = call i32 @pwait(i32 %68, i32* %6, i32 0)
  store i32 %69, i32* %7, align 4
  %70 = load i32, i32* %7, align 4
  %71 = icmp eq i32 %70, -1
  br i1 %71, label %72, label %77

72:                                               ; preds = %67
  %73 = load i8*, i8** @pname, align 8
  %74 = load i32, i32* @errno, align 4
  %75 = call i8* @xstrerror(i32 %74)
  %76 = call i32 (i8*, i8*, i8*, ...) @notice(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i8* %73, i8* %75)
  store i32 0, i32* %2, align 4
  br label %109

77:                                               ; preds = %67
  %78 = load i32, i32* %6, align 4
  %79 = call i64 @WIFSIGNALED(i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %88

81:                                               ; preds = %77
  %82 = load i8*, i8** @pname, align 8
  %83 = load i32, i32* %6, align 4
  %84 = call i32 @WTERMSIG(i32 %83)
  %85 = sext i32 %84 to i64
  %86 = inttoptr i64 %85 to i8*
  %87 = call i32 (i8*, i8*, i8*, ...) @notice(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0), i8* %82, i8* %86)
  store i32 0, i32* %2, align 4
  br label %109

88:                                               ; preds = %77
  %89 = load i32, i32* %6, align 4
  %90 = call i64 @WIFEXITED(i32 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %107

92:                                               ; preds = %88
  %93 = load i32, i32* %6, align 4
  %94 = call i64 @WEXITSTATUS(i32 %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %106

96:                                               ; preds = %92
  %97 = load i8*, i8** @pname, align 8
  %98 = load i32*, i32** @compile_params, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 0
  %100 = load i32, i32* %99, align 4
  %101 = sext i32 %100 to i64
  %102 = inttoptr i64 %101 to i8*
  %103 = load i32, i32* %6, align 4
  %104 = call i64 @WEXITSTATUS(i32 %103)
  %105 = call i32 (i8*, i8*, i8*, ...) @notice(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0), i8* %97, i8* %102, i64 %104)
  store i32 0, i32* %2, align 4
  br label %109

106:                                              ; preds = %92
  store i32 1, i32* %2, align 4
  br label %109

107:                                              ; preds = %88
  %108 = call i32 (...) @gcc_unreachable()
  br label %109

109:                                              ; preds = %107, %106, %96, %81, %72, %54
  %110 = load i32, i32* %2, align 4
  ret i32 %110
}

declare dso_local i32 @munge_compile_params(i8*) #1

declare dso_local i32 @shortpath(i32*, i8*) #1

declare dso_local i32 @concat(i32, i32, i32*) #1

declare dso_local i32 @notice(i8*, i8*, i8*, ...) #1

declare dso_local i32 @pexecute(i32, i8**, i8*, i32*, i8**, i8**, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i8* @xstrerror(i32) #1

declare dso_local i32 @pwait(i32, i32*, i32) #1

declare dso_local i64 @WIFSIGNALED(i32) #1

declare dso_local i32 @WTERMSIG(i32) #1

declare dso_local i64 @WIFEXITED(i32) #1

declare dso_local i64 @WEXITSTATUS(i32) #1

declare dso_local i32 @gcc_unreachable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
