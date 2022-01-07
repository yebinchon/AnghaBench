; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_gensupport.c_process_include.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_gensupport.c_process_include.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file_name_list = type { i32, %struct.file_name_list* }

@first_dir_md_include = common dso_local global %struct.file_name_list* null, align 8
@process_include.sep = internal constant [2 x i8] c"\80\00", align 1
@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@base_dir = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [28 x i8] c"include file `%s' not found\00", align 1
@errors = common dso_local global i32 0, align 4
@read_rtx_filename = common dso_local global i8* null, align 8
@read_rtx_lineno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @process_include to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_include(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.file_name_list*, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %11 = load i32, i32* %3, align 4
  %12 = call i8* @XSTR(i32 %11, i32 0)
  store i8* %12, i8** %5, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = call i32 @IS_ABSOLUTE_PATH(i8* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %41, label %16

16:                                               ; preds = %2
  %17 = load %struct.file_name_list*, %struct.file_name_list** @first_dir_md_include, align 8
  store %struct.file_name_list* %17, %struct.file_name_list** %10, align 8
  br label %18

18:                                               ; preds = %36, %16
  %19 = load %struct.file_name_list*, %struct.file_name_list** %10, align 8
  %20 = icmp ne %struct.file_name_list* %19, null
  br i1 %20, label %21, label %40

21:                                               ; preds = %18
  %22 = load %struct.file_name_list*, %struct.file_name_list** %10, align 8
  %23 = getelementptr inbounds %struct.file_name_list, %struct.file_name_list* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = sext i32 %24 to i64
  %26 = load i8*, i8** %5, align 8
  %27 = call i8* (i64, i8*, i8*, ...) @concat(i64 %25, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @process_include.sep, i64 0, i64 0), i8* %26, i8* null)
  store i8* %27, i8** %8, align 8
  %28 = load i8*, i8** %8, align 8
  %29 = call i32* @fopen(i8* %28, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %29, i32** %9, align 8
  %30 = load i32*, i32** %9, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %21
  br label %63

33:                                               ; preds = %21
  %34 = load i8*, i8** %8, align 8
  %35 = call i32 @free(i8* %34)
  br label %36

36:                                               ; preds = %33
  %37 = load %struct.file_name_list*, %struct.file_name_list** %10, align 8
  %38 = getelementptr inbounds %struct.file_name_list, %struct.file_name_list* %37, i32 0, i32 1
  %39 = load %struct.file_name_list*, %struct.file_name_list** %38, align 8
  store %struct.file_name_list* %39, %struct.file_name_list** %10, align 8
  br label %18

40:                                               ; preds = %18
  br label %41

41:                                               ; preds = %40, %2
  %42 = load i64, i64* @base_dir, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %41
  %45 = load i64, i64* @base_dir, align 8
  %46 = load i8*, i8** %5, align 8
  %47 = call i8* (i64, i8*, i8*, ...) @concat(i64 %45, i8* %46, i8* null)
  store i8* %47, i8** %8, align 8
  br label %51

48:                                               ; preds = %41
  %49 = load i8*, i8** %5, align 8
  %50 = call i8* @xstrdup(i8* %49)
  store i8* %50, i8** %8, align 8
  br label %51

51:                                               ; preds = %48, %44
  %52 = load i8*, i8** %8, align 8
  %53 = call i32* @fopen(i8* %52, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %53, i32** %9, align 8
  %54 = load i32*, i32** %9, align 8
  %55 = icmp eq i32* %54, null
  br i1 %55, label %56, label %62

56:                                               ; preds = %51
  %57 = load i8*, i8** %8, align 8
  %58 = call i32 @free(i8* %57)
  %59 = load i32, i32* %4, align 4
  %60 = load i8*, i8** %5, align 8
  %61 = call i32 @message_with_line(i32 %59, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i8* %60)
  store i32 1, i32* @errors, align 4
  br label %84

62:                                               ; preds = %51
  br label %63

63:                                               ; preds = %62, %32
  %64 = load i8*, i8** @read_rtx_filename, align 8
  store i8* %64, i8** %6, align 8
  %65 = load i32, i32* @read_rtx_lineno, align 4
  store i32 %65, i32* %7, align 4
  %66 = load i8*, i8** %8, align 8
  store i8* %66, i8** @read_rtx_filename, align 8
  store i32 1, i32* @read_rtx_lineno, align 4
  br i1 true, label %67, label %70

67:                                               ; preds = %63
  %68 = load i8*, i8** %8, align 8
  %69 = call i32 @include_callback(i8* %68)
  br label %70

70:                                               ; preds = %67, %63
  br label %71

71:                                               ; preds = %75, %70
  %72 = load i32*, i32** %9, align 8
  %73 = call i64 @read_rtx(i32* %72, i32* %3, i32* %4)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %71
  %76 = load i32, i32* %3, align 4
  %77 = load i32, i32* %4, align 4
  %78 = call i32 @process_rtx(i32 %76, i32 %77)
  br label %71

79:                                               ; preds = %71
  %80 = load i8*, i8** %6, align 8
  store i8* %80, i8** @read_rtx_filename, align 8
  %81 = load i32, i32* %7, align 4
  store i32 %81, i32* @read_rtx_lineno, align 4
  %82 = load i32*, i32** %9, align 8
  %83 = call i32 @fclose(i32* %82)
  br label %84

84:                                               ; preds = %79, %56
  ret void
}

declare dso_local i8* @XSTR(i32, i32) #1

declare dso_local i32 @IS_ABSOLUTE_PATH(i8*) #1

declare dso_local i8* @concat(i64, i8*, i8*, ...) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i8* @xstrdup(i8*) #1

declare dso_local i32 @message_with_line(i32, i8*, i8*) #1

declare dso_local i32 @include_callback(i8*) #1

declare dso_local i64 @read_rtx(i32*, i32*, i32*) #1

declare dso_local i32 @process_rtx(i32, i32) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
