; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_objdump.c_display_bfd.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_objdump.c_display_bfd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@bfd_object = common dso_local global i32 0, align 4
@bfd_error_file_ambiguously_recognized = common dso_local global i64 0, align 8
@bfd_error_file_not_recognized = common dso_local global i64 0, align 8
@bfd_core = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @display_bfd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @display_bfd(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i8**, align 8
  store i32* %0, i32** %2, align 8
  %4 = load i32*, i32** %2, align 8
  %5 = load i32, i32* @bfd_object, align 4
  %6 = call i64 @bfd_check_format_matches(i32* %4, i32 %5, i8*** %3)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = load i32*, i32** %2, align 8
  %10 = call i32 @dump_bfd(i32* %9)
  br label %51

11:                                               ; preds = %1
  %12 = call i64 (...) @bfd_get_error()
  %13 = load i64, i64* @bfd_error_file_ambiguously_recognized, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %23

15:                                               ; preds = %11
  %16 = load i32*, i32** %2, align 8
  %17 = call i32 @bfd_get_filename(i32* %16)
  %18 = call i32 @nonfatal(i32 %17)
  %19 = load i8**, i8*** %3, align 8
  %20 = call i32 @list_matching_formats(i8** %19)
  %21 = load i8**, i8*** %3, align 8
  %22 = call i32 @free(i8** %21)
  br label %51

23:                                               ; preds = %11
  %24 = call i64 (...) @bfd_get_error()
  %25 = load i64, i64* @bfd_error_file_not_recognized, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %23
  %28 = load i32*, i32** %2, align 8
  %29 = call i32 @bfd_get_filename(i32* %28)
  %30 = call i32 @nonfatal(i32 %29)
  br label %51

31:                                               ; preds = %23
  %32 = load i32*, i32** %2, align 8
  %33 = load i32, i32* @bfd_core, align 4
  %34 = call i64 @bfd_check_format_matches(i32* %32, i32 %33, i8*** %3)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %31
  %37 = load i32*, i32** %2, align 8
  %38 = call i32 @dump_bfd(i32* %37)
  br label %51

39:                                               ; preds = %31
  %40 = load i32*, i32** %2, align 8
  %41 = call i32 @bfd_get_filename(i32* %40)
  %42 = call i32 @nonfatal(i32 %41)
  %43 = call i64 (...) @bfd_get_error()
  %44 = load i64, i64* @bfd_error_file_ambiguously_recognized, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %51

46:                                               ; preds = %39
  %47 = load i8**, i8*** %3, align 8
  %48 = call i32 @list_matching_formats(i8** %47)
  %49 = load i8**, i8*** %3, align 8
  %50 = call i32 @free(i8** %49)
  br label %51

51:                                               ; preds = %8, %15, %27, %36, %46, %39
  ret void
}

declare dso_local i64 @bfd_check_format_matches(i32*, i32, i8***) #1

declare dso_local i32 @dump_bfd(i32*) #1

declare dso_local i64 @bfd_get_error(...) #1

declare dso_local i32 @nonfatal(i32) #1

declare dso_local i32 @bfd_get_filename(i32*) #1

declare dso_local i32 @list_matching_formats(i8**) #1

declare dso_local i32 @free(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
