; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_ar.c_ranlib_touch.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_ar.c_ranlib_touch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@O_RDWR = common dso_local global i32 0, align 4
@O_BINARY = common dso_local global i32 0, align 4
@bfd_error_system_call = common dso_local global i32 0, align 4
@bfd_archive = common dso_local global i32 0, align 4
@bfd_error_file_ambiguously_recognized = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [29 x i8] c"%s: no archive map to update\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @ranlib_touch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ranlib_touch(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8**, align 8
  store i8* %0, i8** %3, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = call i32 @get_file_size(i8* %7)
  %9 = icmp slt i32 %8, 1
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %69

11:                                               ; preds = %1
  %12 = load i8*, i8** %3, align 8
  %13 = load i32, i32* @O_RDWR, align 4
  %14 = load i32, i32* @O_BINARY, align 4
  %15 = or i32 %13, %14
  %16 = call i32 @open(i8* %12, i32 %15, i32 0)
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %11
  %20 = load i32, i32* @bfd_error_system_call, align 4
  %21 = call i32 @bfd_set_error(i32 %20)
  %22 = load i8*, i8** %3, align 8
  %23 = call i32 @bfd_fatal(i8* %22)
  br label %24

24:                                               ; preds = %19, %11
  %25 = load i8*, i8** %3, align 8
  %26 = load i32, i32* %4, align 4
  %27 = call i32* @bfd_fdopenr(i8* %25, i8* null, i32 %26)
  store i32* %27, i32** %5, align 8
  %28 = load i32*, i32** %5, align 8
  %29 = icmp eq i32* %28, null
  br i1 %29, label %30, label %33

30:                                               ; preds = %24
  %31 = load i8*, i8** %3, align 8
  %32 = call i32 @bfd_fatal(i8* %31)
  br label %33

33:                                               ; preds = %30, %24
  %34 = load i32*, i32** %5, align 8
  %35 = load i32, i32* @bfd_archive, align 4
  %36 = call i32 @bfd_check_format_matches(i32* %34, i32 %35, i8*** %6)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %51, label %38

38:                                               ; preds = %33
  %39 = load i8*, i8** %3, align 8
  %40 = call i32 @bfd_nonfatal(i8* %39)
  %41 = call i64 (...) @bfd_get_error()
  %42 = load i64, i64* @bfd_error_file_ambiguously_recognized, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %49

44:                                               ; preds = %38
  %45 = load i8**, i8*** %6, align 8
  %46 = call i32 @list_matching_formats(i8** %45)
  %47 = load i8**, i8*** %6, align 8
  %48 = call i32 @free(i8** %47)
  br label %49

49:                                               ; preds = %44, %38
  %50 = call i32 @xexit(i32 1)
  br label %51

51:                                               ; preds = %49, %33
  %52 = load i32*, i32** %5, align 8
  %53 = call i32 @bfd_has_map(i32* %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %59, label %55

55:                                               ; preds = %51
  %56 = call i32 @_(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %57 = load i8*, i8** %3, align 8
  %58 = call i32 @fatal(i32 %56, i8* %57)
  br label %59

59:                                               ; preds = %55, %51
  %60 = load i32*, i32** %5, align 8
  %61 = call i32 @bfd_update_armap_timestamp(i32* %60)
  %62 = load i32*, i32** %5, align 8
  %63 = call i32 @bfd_close(i32* %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %68, label %65

65:                                               ; preds = %59
  %66 = load i8*, i8** %3, align 8
  %67 = call i32 @bfd_fatal(i8* %66)
  br label %68

68:                                               ; preds = %65, %59
  store i32 0, i32* %2, align 4
  br label %69

69:                                               ; preds = %68, %10
  %70 = load i32, i32* %2, align 4
  ret i32 %70
}

declare dso_local i32 @get_file_size(i8*) #1

declare dso_local i32 @open(i8*, i32, i32) #1

declare dso_local i32 @bfd_set_error(i32) #1

declare dso_local i32 @bfd_fatal(i8*) #1

declare dso_local i32* @bfd_fdopenr(i8*, i8*, i32) #1

declare dso_local i32 @bfd_check_format_matches(i32*, i32, i8***) #1

declare dso_local i32 @bfd_nonfatal(i8*) #1

declare dso_local i64 @bfd_get_error(...) #1

declare dso_local i32 @list_matching_formats(i8**) #1

declare dso_local i32 @free(i8**) #1

declare dso_local i32 @xexit(i32) #1

declare dso_local i32 @bfd_has_map(i32*) #1

declare dso_local i32 @fatal(i32, i8*) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @bfd_update_armap_timestamp(i32*) #1

declare dso_local i32 @bfd_close(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
