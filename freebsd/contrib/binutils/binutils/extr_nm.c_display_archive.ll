; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_nm.c_display_archive.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_nm.c_display_archive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (i32, i32)*, i32 (i32)* }

@format = common dso_local global %struct.TYPE_2__* null, align 8
@print_armap = common dso_local global i64 0, align 8
@bfd_error_no_more_archived_files = common dso_local global i64 0, align 8
@bfd_object = common dso_local global i32 0, align 4
@bfd_error_file_ambiguously_recognized = common dso_local global i64 0, align 8
@lineno_cache_bfd = common dso_local global i32* null, align 8
@lineno_cache_rel_bfd = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @display_archive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @display_archive(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8**, align 8
  store i32* %0, i32** %2, align 8
  store i32* null, i32** %3, align 8
  store i32* null, i32** %4, align 8
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** @format, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 1
  %8 = load i32 (i32)*, i32 (i32)** %7, align 8
  %9 = load i32*, i32** %2, align 8
  %10 = call i32 @bfd_get_filename(i32* %9)
  %11 = call i32 %8(i32 %10)
  %12 = load i64, i64* @print_armap, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = load i32*, i32** %2, align 8
  %16 = call i32 @print_symdef_entry(i32* %15)
  br label %17

17:                                               ; preds = %14, %1
  br label %18

18:                                               ; preds = %72, %17
  %19 = call i32 @PROGRESS(i32 1)
  %20 = load i32*, i32** %2, align 8
  %21 = load i32*, i32** %3, align 8
  %22 = call i32* @bfd_openr_next_archived_file(i32* %20, i32* %21)
  store i32* %22, i32** %3, align 8
  %23 = load i32*, i32** %3, align 8
  %24 = icmp eq i32* %23, null
  br i1 %24, label %25, label %34

25:                                               ; preds = %18
  %26 = call i64 (...) @bfd_get_error()
  %27 = load i64, i64* @bfd_error_no_more_archived_files, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %25
  %30 = load i32*, i32** %2, align 8
  %31 = call i32 @bfd_get_filename(i32* %30)
  %32 = call i32 @bfd_fatal(i32 %31)
  br label %33

33:                                               ; preds = %29, %25
  br label %74

34:                                               ; preds = %18
  %35 = load i32*, i32** %3, align 8
  %36 = load i32, i32* @bfd_object, align 4
  %37 = call i64 @bfd_check_format_matches(i32* %35, i32 %36, i8*** %5)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %53

39:                                               ; preds = %34
  %40 = load i32*, i32** %3, align 8
  %41 = call i32 @set_print_width(i32* %40)
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** @format, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32 (i32, i32)*, i32 (i32, i32)** %43, align 8
  %45 = load i32*, i32** %2, align 8
  %46 = call i32 @bfd_get_filename(i32* %45)
  %47 = load i32*, i32** %3, align 8
  %48 = call i32 @bfd_get_filename(i32* %47)
  %49 = call i32 %44(i32 %46, i32 %48)
  %50 = load i32*, i32** %3, align 8
  %51 = load i32*, i32** %2, align 8
  %52 = call i32 @display_rel_file(i32* %50, i32* %51)
  br label %66

53:                                               ; preds = %34
  %54 = load i32*, i32** %3, align 8
  %55 = call i32 @bfd_get_filename(i32* %54)
  %56 = call i32 @bfd_nonfatal(i32 %55)
  %57 = call i64 (...) @bfd_get_error()
  %58 = load i64, i64* @bfd_error_file_ambiguously_recognized, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %65

60:                                               ; preds = %53
  %61 = load i8**, i8*** %5, align 8
  %62 = call i32 @list_matching_formats(i8** %61)
  %63 = load i8**, i8*** %5, align 8
  %64 = call i32 @free(i8** %63)
  br label %65

65:                                               ; preds = %60, %53
  br label %66

66:                                               ; preds = %65, %39
  %67 = load i32*, i32** %4, align 8
  %68 = icmp ne i32* %67, null
  br i1 %68, label %69, label %72

69:                                               ; preds = %66
  %70 = load i32*, i32** %4, align 8
  %71 = call i32 @bfd_close(i32* %70)
  store i32* null, i32** @lineno_cache_bfd, align 8
  store i32* null, i32** @lineno_cache_rel_bfd, align 8
  br label %72

72:                                               ; preds = %69, %66
  %73 = load i32*, i32** %3, align 8
  store i32* %73, i32** %4, align 8
  br label %18

74:                                               ; preds = %33
  %75 = load i32*, i32** %4, align 8
  %76 = icmp ne i32* %75, null
  br i1 %76, label %77, label %80

77:                                               ; preds = %74
  %78 = load i32*, i32** %4, align 8
  %79 = call i32 @bfd_close(i32* %78)
  store i32* null, i32** @lineno_cache_bfd, align 8
  store i32* null, i32** @lineno_cache_rel_bfd, align 8
  br label %80

80:                                               ; preds = %77, %74
  ret void
}

declare dso_local i32 @bfd_get_filename(i32*) #1

declare dso_local i32 @print_symdef_entry(i32*) #1

declare dso_local i32 @PROGRESS(i32) #1

declare dso_local i32* @bfd_openr_next_archived_file(i32*, i32*) #1

declare dso_local i64 @bfd_get_error(...) #1

declare dso_local i32 @bfd_fatal(i32) #1

declare dso_local i64 @bfd_check_format_matches(i32*, i32, i8***) #1

declare dso_local i32 @set_print_width(i32*) #1

declare dso_local i32 @display_rel_file(i32*, i32*) #1

declare dso_local i32 @bfd_nonfatal(i32) #1

declare dso_local i32 @list_matching_formats(i8**) #1

declare dso_local i32 @free(i8**) #1

declare dso_local i32 @bfd_close(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
