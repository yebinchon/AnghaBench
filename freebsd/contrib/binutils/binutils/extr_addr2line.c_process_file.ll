; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_addr2line.c_process_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_addr2line.c_process_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@bfd_archive = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"%s: cannot get addresses from archive\00", align 1
@bfd_object = common dso_local global i32 0, align 4
@bfd_error_file_ambiguously_recognized = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [27 x i8] c"%s: cannot find section %s\00", align 1
@syms = common dso_local global i8** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8*)* @process_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_file(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8**, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = call i32 @get_file_size(i8* %11)
  %13 = icmp slt i32 %12, 1
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %82

15:                                               ; preds = %3
  %16 = load i8*, i8** %5, align 8
  %17 = load i8*, i8** %7, align 8
  %18 = call i32* @bfd_openr(i8* %16, i8* %17)
  store i32* %18, i32** %8, align 8
  %19 = load i32*, i32** %8, align 8
  %20 = icmp eq i32* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %15
  %22 = load i8*, i8** %5, align 8
  %23 = call i32 @bfd_fatal(i8* %22)
  br label %24

24:                                               ; preds = %21, %15
  %25 = load i32*, i32** %8, align 8
  %26 = load i32, i32* @bfd_archive, align 4
  %27 = call i64 @bfd_check_format(i32* %25, i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %24
  %30 = call i32 @_(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %31 = load i8*, i8** %5, align 8
  %32 = call i32 (i32, i8*, ...) @fatal(i32 %30, i8* %31)
  br label %33

33:                                               ; preds = %29, %24
  %34 = load i32*, i32** %8, align 8
  %35 = load i32, i32* @bfd_object, align 4
  %36 = call i32 @bfd_check_format_matches(i32* %34, i32 %35, i8*** %10)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %52, label %38

38:                                               ; preds = %33
  %39 = load i32*, i32** %8, align 8
  %40 = call i32 @bfd_get_filename(i32* %39)
  %41 = call i32 @bfd_nonfatal(i32 %40)
  %42 = call i64 (...) @bfd_get_error()
  %43 = load i64, i64* @bfd_error_file_ambiguously_recognized, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %50

45:                                               ; preds = %38
  %46 = load i8**, i8*** %10, align 8
  %47 = call i32 @list_matching_formats(i8** %46)
  %48 = load i8**, i8*** %10, align 8
  %49 = call i32 @free(i8** %48)
  br label %50

50:                                               ; preds = %45, %38
  %51 = call i32 @xexit(i32 1)
  br label %52

52:                                               ; preds = %50, %33
  %53 = load i8*, i8** %6, align 8
  %54 = icmp ne i8* %53, null
  br i1 %54, label %55, label %67

55:                                               ; preds = %52
  %56 = load i32*, i32** %8, align 8
  %57 = load i8*, i8** %6, align 8
  %58 = call i32* @bfd_get_section_by_name(i32* %56, i8* %57)
  store i32* %58, i32** %9, align 8
  %59 = load i32*, i32** %9, align 8
  %60 = icmp eq i32* %59, null
  br i1 %60, label %61, label %66

61:                                               ; preds = %55
  %62 = call i32 @_(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %63 = load i8*, i8** %5, align 8
  %64 = load i8*, i8** %6, align 8
  %65 = call i32 (i32, i8*, ...) @fatal(i32 %62, i8* %63, i8* %64)
  br label %66

66:                                               ; preds = %61, %55
  br label %68

67:                                               ; preds = %52
  store i32* null, i32** %9, align 8
  br label %68

68:                                               ; preds = %67, %66
  %69 = load i32*, i32** %8, align 8
  %70 = call i32 @slurp_symtab(i32* %69)
  %71 = load i32*, i32** %8, align 8
  %72 = load i32*, i32** %9, align 8
  %73 = call i32 @translate_addresses(i32* %71, i32* %72)
  %74 = load i8**, i8*** @syms, align 8
  %75 = icmp ne i8** %74, null
  br i1 %75, label %76, label %79

76:                                               ; preds = %68
  %77 = load i8**, i8*** @syms, align 8
  %78 = call i32 @free(i8** %77)
  store i8** null, i8*** @syms, align 8
  br label %79

79:                                               ; preds = %76, %68
  %80 = load i32*, i32** %8, align 8
  %81 = call i32 @bfd_close(i32* %80)
  store i32 0, i32* %4, align 4
  br label %82

82:                                               ; preds = %79, %14
  %83 = load i32, i32* %4, align 4
  ret i32 %83
}

declare dso_local i32 @get_file_size(i8*) #1

declare dso_local i32* @bfd_openr(i8*, i8*) #1

declare dso_local i32 @bfd_fatal(i8*) #1

declare dso_local i64 @bfd_check_format(i32*, i32) #1

declare dso_local i32 @fatal(i32, i8*, ...) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @bfd_check_format_matches(i32*, i32, i8***) #1

declare dso_local i32 @bfd_nonfatal(i32) #1

declare dso_local i32 @bfd_get_filename(i32*) #1

declare dso_local i64 @bfd_get_error(...) #1

declare dso_local i32 @list_matching_formats(i8**) #1

declare dso_local i32 @free(i8**) #1

declare dso_local i32 @xexit(i32) #1

declare dso_local i32* @bfd_get_section_by_name(i32*, i8*) #1

declare dso_local i32 @slurp_symtab(i32*) #1

declare dso_local i32 @translate_addresses(i32*, i32*) #1

declare dso_local i32 @bfd_close(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
