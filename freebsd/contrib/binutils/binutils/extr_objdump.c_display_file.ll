; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_objdump.c_display_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_objdump.c_display_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@exit_status = common dso_local global i32 0, align 4
@bfd_archive = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"In archive %s:\0A\00", align 1
@bfd_error_no_error = common dso_local global i32 0, align 4
@bfd_error_no_more_archived_files = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*)* @display_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @display_file(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  store i32* null, i32** %6, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = call i32 @get_file_size(i8* %8)
  %10 = icmp slt i32 %9, 1
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i32 1, i32* @exit_status, align 4
  br label %71

12:                                               ; preds = %2
  %13 = load i8*, i8** %3, align 8
  %14 = load i8*, i8** %4, align 8
  %15 = call i32* @bfd_openr(i8* %13, i8* %14)
  store i32* %15, i32** %5, align 8
  %16 = load i32*, i32** %5, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %12
  %19 = load i8*, i8** %3, align 8
  %20 = call i32 @nonfatal(i8* %19)
  br label %71

21:                                               ; preds = %12
  %22 = load i32*, i32** %5, align 8
  %23 = load i32, i32* @bfd_archive, align 4
  %24 = call i64 @bfd_check_format(i32* %22, i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %65

26:                                               ; preds = %21
  store i32* null, i32** %7, align 8
  %27 = call i8* @_(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %28 = load i32*, i32** %5, align 8
  %29 = call i8* @bfd_get_filename(i32* %28)
  %30 = call i32 @printf(i8* %27, i8* %29)
  br label %31

31:                                               ; preds = %56, %26
  %32 = load i32, i32* @bfd_error_no_error, align 4
  %33 = call i32 @bfd_set_error(i32 %32)
  %34 = load i32*, i32** %5, align 8
  %35 = load i32*, i32** %6, align 8
  %36 = call i32* @bfd_openr_next_archived_file(i32* %34, i32* %35)
  store i32* %36, i32** %6, align 8
  %37 = load i32*, i32** %6, align 8
  %38 = icmp eq i32* %37, null
  br i1 %38, label %39, label %48

39:                                               ; preds = %31
  %40 = call i64 (...) @bfd_get_error()
  %41 = load i64, i64* @bfd_error_no_more_archived_files, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %39
  %44 = load i32*, i32** %5, align 8
  %45 = call i8* @bfd_get_filename(i32* %44)
  %46 = call i32 @nonfatal(i8* %45)
  br label %47

47:                                               ; preds = %43, %39
  br label %58

48:                                               ; preds = %31
  %49 = load i32*, i32** %6, align 8
  %50 = call i32 @display_bfd(i32* %49)
  %51 = load i32*, i32** %7, align 8
  %52 = icmp ne i32* %51, null
  br i1 %52, label %53, label %56

53:                                               ; preds = %48
  %54 = load i32*, i32** %7, align 8
  %55 = call i32 @bfd_close(i32* %54)
  br label %56

56:                                               ; preds = %53, %48
  %57 = load i32*, i32** %6, align 8
  store i32* %57, i32** %7, align 8
  br label %31

58:                                               ; preds = %47
  %59 = load i32*, i32** %7, align 8
  %60 = icmp ne i32* %59, null
  br i1 %60, label %61, label %64

61:                                               ; preds = %58
  %62 = load i32*, i32** %7, align 8
  %63 = call i32 @bfd_close(i32* %62)
  br label %64

64:                                               ; preds = %61, %58
  br label %68

65:                                               ; preds = %21
  %66 = load i32*, i32** %5, align 8
  %67 = call i32 @display_bfd(i32* %66)
  br label %68

68:                                               ; preds = %65, %64
  %69 = load i32*, i32** %5, align 8
  %70 = call i32 @bfd_close(i32* %69)
  br label %71

71:                                               ; preds = %68, %18, %11
  ret void
}

declare dso_local i32 @get_file_size(i8*) #1

declare dso_local i32* @bfd_openr(i8*, i8*) #1

declare dso_local i32 @nonfatal(i8*) #1

declare dso_local i64 @bfd_check_format(i32*, i32) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i8* @_(i8*) #1

declare dso_local i8* @bfd_get_filename(i32*) #1

declare dso_local i32 @bfd_set_error(i32) #1

declare dso_local i32* @bfd_openr_next_archived_file(i32*, i32*) #1

declare dso_local i64 @bfd_get_error(...) #1

declare dso_local i32 @display_bfd(i32*) #1

declare dso_local i32 @bfd_close(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
