; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_rescoff.c_read_coff_rsrc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_rescoff.c_read_coff_rsrc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.coff_file_info = type { i8*, i64, i32*, i32* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@.str = private unnamed_addr constant [33 x i8] c"filename required for COFF input\00", align 1
@bfd_object = common dso_local global i32 0, align 4
@bfd_error_file_ambiguously_recognized = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [6 x i8] c".rsrc\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"%s: no resource section\00", align 1
@WR_KIND_BFD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @read_coff_rsrc(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.coff_file_info, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %13 = load i8*, i8** %3, align 8
  %14 = icmp eq i8* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = call i32 @_(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %17 = call i32 (i32, ...) @fatal(i32 %16)
  br label %18

18:                                               ; preds = %15, %2
  %19 = load i8*, i8** %3, align 8
  %20 = load i8*, i8** %4, align 8
  %21 = call i32* @bfd_openr(i8* %19, i8* %20)
  store i32* %21, i32** %6, align 8
  %22 = load i32*, i32** %6, align 8
  %23 = icmp eq i32* %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %18
  %25 = load i8*, i8** %3, align 8
  %26 = call i32 @bfd_fatal(i8* %25)
  br label %27

27:                                               ; preds = %24, %18
  %28 = load i32*, i32** %6, align 8
  %29 = load i32, i32* @bfd_object, align 4
  %30 = call i32 @bfd_check_format_matches(i32* %28, i32 %29, i8*** %8)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %44, label %32

32:                                               ; preds = %27
  %33 = load i32*, i32** %6, align 8
  %34 = call i32 @bfd_get_filename(i32* %33)
  %35 = call i32 @bfd_nonfatal(i32 %34)
  %36 = call i64 (...) @bfd_get_error()
  %37 = load i64, i64* @bfd_error_file_ambiguously_recognized, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %32
  %40 = load i8**, i8*** %8, align 8
  %41 = call i32 @list_matching_formats(i8** %40)
  br label %42

42:                                               ; preds = %39, %32
  %43 = call i32 @xexit(i32 1)
  br label %44

44:                                               ; preds = %42, %27
  %45 = load i32*, i32** %6, align 8
  %46 = call i32* @bfd_get_section_by_name(i32* %45, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  store i32* %46, i32** %9, align 8
  %47 = load i32*, i32** %9, align 8
  %48 = icmp eq i32* %47, null
  br i1 %48, label %49, label %53

49:                                               ; preds = %44
  %50 = call i32 @_(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %51 = load i8*, i8** %3, align 8
  %52 = call i32 (i32, ...) @fatal(i32 %50, i8* %51)
  br label %53

53:                                               ; preds = %49, %44
  %54 = load i32*, i32** %6, align 8
  %55 = load i32*, i32** %9, align 8
  %56 = load i32, i32* @WR_KIND_BFD, align 4
  %57 = call i32 @set_windres_bfd(i32* %7, i32* %54, i32* %55, i32 %56)
  %58 = load i32*, i32** %6, align 8
  %59 = load i32*, i32** %9, align 8
  %60 = call i32 @bfd_section_size(i32* %58, i32* %59)
  store i32 %60, i32* %10, align 4
  %61 = load i32, i32* %10, align 4
  %62 = call i64 @res_alloc(i32 %61)
  %63 = inttoptr i64 %62 to i32*
  store i32* %63, i32** %11, align 8
  %64 = load i32*, i32** %11, align 8
  %65 = load i32, i32* %10, align 4
  %66 = call i32 @get_windres_bfd_content(i32* %7, i32* %64, i32 0, i32 %65)
  %67 = load i8*, i8** %3, align 8
  %68 = getelementptr inbounds %struct.coff_file_info, %struct.coff_file_info* %12, i32 0, i32 0
  store i8* %67, i8** %68, align 8
  %69 = load i32*, i32** %11, align 8
  %70 = getelementptr inbounds %struct.coff_file_info, %struct.coff_file_info* %12, i32 0, i32 3
  store i32* %69, i32** %70, align 8
  %71 = load i32*, i32** %11, align 8
  %72 = load i32, i32* %10, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  %75 = getelementptr inbounds %struct.coff_file_info, %struct.coff_file_info* %12, i32 0, i32 2
  store i32* %74, i32** %75, align 8
  %76 = load i32*, i32** %6, align 8
  %77 = load i32*, i32** %9, align 8
  %78 = call i64 @bfd_get_section_vma(i32* %76, i32* %77)
  %79 = load i32*, i32** %6, align 8
  %80 = call %struct.TYPE_4__* @pe_data(i32* %79)
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = sub nsw i64 %78, %83
  %85 = getelementptr inbounds %struct.coff_file_info, %struct.coff_file_info* %12, i32 0, i32 1
  store i64 %84, i64* %85, align 8
  %86 = load i32*, i32** %11, align 8
  %87 = call i32* @read_coff_res_dir(i32* %7, i32* %86, %struct.coff_file_info* %12, i32* null, i32 0)
  store i32* %87, i32** %5, align 8
  %88 = load i32*, i32** %6, align 8
  %89 = call i32 @bfd_close(i32* %88)
  %90 = load i32*, i32** %5, align 8
  ret i32* %90
}

declare dso_local i32 @fatal(i32, ...) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32* @bfd_openr(i8*, i8*) #1

declare dso_local i32 @bfd_fatal(i8*) #1

declare dso_local i32 @bfd_check_format_matches(i32*, i32, i8***) #1

declare dso_local i32 @bfd_nonfatal(i32) #1

declare dso_local i32 @bfd_get_filename(i32*) #1

declare dso_local i64 @bfd_get_error(...) #1

declare dso_local i32 @list_matching_formats(i8**) #1

declare dso_local i32 @xexit(i32) #1

declare dso_local i32* @bfd_get_section_by_name(i32*, i8*) #1

declare dso_local i32 @set_windres_bfd(i32*, i32*, i32*, i32) #1

declare dso_local i32 @bfd_section_size(i32*, i32*) #1

declare dso_local i64 @res_alloc(i32) #1

declare dso_local i32 @get_windres_bfd_content(i32*, i32*, i32, i32) #1

declare dso_local i64 @bfd_get_section_vma(i32*, i32*) #1

declare dso_local %struct.TYPE_4__* @pe_data(i32*) #1

declare dso_local i32* @read_coff_res_dir(i32*, i32*, %struct.coff_file_info*, i32*, i32) #1

declare dso_local i32 @bfd_close(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
