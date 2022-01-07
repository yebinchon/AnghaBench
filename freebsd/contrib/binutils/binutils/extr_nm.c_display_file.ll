; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_nm.c_display_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_nm.c_display_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (i8*)* }

@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@target = common dso_local global i32 0, align 4
@bfd_archive = common dso_local global i32 0, align 4
@bfd_object = common dso_local global i32 0, align 4
@format = common dso_local global %struct.TYPE_2__* null, align 8
@bfd_error_file_ambiguously_recognized = common dso_local global i64 0, align 8
@lineno_cache_bfd = common dso_local global i32* null, align 8
@lineno_cache_rel_bfd = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @display_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @display_file(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8**, align 8
  store i8* %0, i8** %3, align 8
  %7 = load i32, i32* @TRUE, align 4
  store i32 %7, i32* %4, align 4
  %8 = load i8*, i8** %3, align 8
  %9 = call i32 @get_file_size(i8* %8)
  %10 = icmp slt i32 %9, 1
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i32, i32* @FALSE, align 4
  store i32 %12, i32* %2, align 4
  br label %69

13:                                               ; preds = %1
  %14 = load i8*, i8** %3, align 8
  %15 = load i32, i32* @target, align 4
  %16 = call i32* @bfd_openr(i8* %14, i32 %15)
  store i32* %16, i32** %5, align 8
  %17 = load i32*, i32** %5, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %19, label %23

19:                                               ; preds = %13
  %20 = load i8*, i8** %3, align 8
  %21 = call i32 @bfd_nonfatal(i8* %20)
  %22 = load i32, i32* @FALSE, align 4
  store i32 %22, i32* %2, align 4
  br label %69

23:                                               ; preds = %13
  %24 = load i32*, i32** %5, align 8
  %25 = load i32, i32* @bfd_archive, align 4
  %26 = call i64 @bfd_check_format(i32* %24, i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %23
  %29 = load i32*, i32** %5, align 8
  %30 = call i32 @display_archive(i32* %29)
  br label %60

31:                                               ; preds = %23
  %32 = load i32*, i32** %5, align 8
  %33 = load i32, i32* @bfd_object, align 4
  %34 = call i64 @bfd_check_format_matches(i32* %32, i32 %33, i8*** %6)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %46

36:                                               ; preds = %31
  %37 = load i32*, i32** %5, align 8
  %38 = call i32 @set_print_width(i32* %37)
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** @format, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32 (i8*)*, i32 (i8*)** %40, align 8
  %42 = load i8*, i8** %3, align 8
  %43 = call i32 %41(i8* %42)
  %44 = load i32*, i32** %5, align 8
  %45 = call i32 @display_rel_file(i32* %44, i32* null)
  br label %59

46:                                               ; preds = %31
  %47 = load i8*, i8** %3, align 8
  %48 = call i32 @bfd_nonfatal(i8* %47)
  %49 = call i64 (...) @bfd_get_error()
  %50 = load i64, i64* @bfd_error_file_ambiguously_recognized, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %57

52:                                               ; preds = %46
  %53 = load i8**, i8*** %6, align 8
  %54 = call i32 @list_matching_formats(i8** %53)
  %55 = load i8**, i8*** %6, align 8
  %56 = call i32 @free(i8** %55)
  br label %57

57:                                               ; preds = %52, %46
  %58 = load i32, i32* @FALSE, align 4
  store i32 %58, i32* %4, align 4
  br label %59

59:                                               ; preds = %57, %36
  br label %60

60:                                               ; preds = %59, %28
  %61 = load i32*, i32** %5, align 8
  %62 = call i32 @bfd_close(i32* %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %67, label %64

64:                                               ; preds = %60
  %65 = load i8*, i8** %3, align 8
  %66 = call i32 @bfd_fatal(i8* %65)
  br label %67

67:                                               ; preds = %64, %60
  store i32* null, i32** @lineno_cache_bfd, align 8
  store i32* null, i32** @lineno_cache_rel_bfd, align 8
  %68 = load i32, i32* %4, align 4
  store i32 %68, i32* %2, align 4
  br label %69

69:                                               ; preds = %67, %19, %11
  %70 = load i32, i32* %2, align 4
  ret i32 %70
}

declare dso_local i32 @get_file_size(i8*) #1

declare dso_local i32* @bfd_openr(i8*, i32) #1

declare dso_local i32 @bfd_nonfatal(i8*) #1

declare dso_local i64 @bfd_check_format(i32*, i32) #1

declare dso_local i32 @display_archive(i32*) #1

declare dso_local i64 @bfd_check_format_matches(i32*, i32, i8***) #1

declare dso_local i32 @set_print_width(i32*) #1

declare dso_local i32 @display_rel_file(i32*, i32*) #1

declare dso_local i64 @bfd_get_error(...) #1

declare dso_local i32 @list_matching_formats(i8**) #1

declare dso_local i32 @free(i8**) #1

declare dso_local i32 @bfd_close(i32*) #1

declare dso_local i32 @bfd_fatal(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
