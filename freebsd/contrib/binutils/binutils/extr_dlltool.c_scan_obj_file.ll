; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_dlltool.c_scan_obj_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_dlltool.c_scan_obj_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [31 x i8] c"Unable to open object file: %s\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"Scanning object file %s\00", align 1
@bfd_archive = common dso_local global i32 0, align 4
@bfd_object = common dso_local global i32 0, align 4
@mcore_elf_out_file = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @scan_obj_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @scan_obj_file(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = call i32* @bfd_openr(i8* %5, i32 0)
  store i32* %6, i32** %3, align 8
  %7 = load i32*, i32** %3, align 8
  %8 = icmp ne i32* %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %1
  %10 = call i32 @_(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %11 = load i8*, i8** %2, align 8
  %12 = call i32 @fatal(i32 %10, i8* %11)
  br label %13

13:                                               ; preds = %9, %1
  %14 = call i32 @_(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %15 = load i8*, i8** %2, align 8
  %16 = call i32 @inform(i32 %14, i8* %15)
  %17 = load i32*, i32** %3, align 8
  %18 = load i32, i32* @bfd_archive, align 4
  %19 = call i64 @bfd_check_format(i32* %17, i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %42

21:                                               ; preds = %13
  %22 = load i32*, i32** %3, align 8
  %23 = call i32* @bfd_openr_next_archived_file(i32* %22, i32* null)
  store i32* %23, i32** %4, align 8
  br label %24

24:                                               ; preds = %35, %21
  %25 = load i32*, i32** %4, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %41

27:                                               ; preds = %24
  %28 = load i32*, i32** %4, align 8
  %29 = load i32, i32* @bfd_object, align 4
  %30 = call i64 @bfd_check_format(i32* %28, i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %27
  %33 = load i32*, i32** %4, align 8
  %34 = call i32 @scan_open_obj_file(i32* %33)
  br label %35

35:                                               ; preds = %32, %27
  %36 = load i32*, i32** %4, align 8
  %37 = call i32 @bfd_close(i32* %36)
  %38 = load i32*, i32** %3, align 8
  %39 = load i32*, i32** %4, align 8
  %40 = call i32* @bfd_openr_next_archived_file(i32* %38, i32* %39)
  store i32* %40, i32** %4, align 8
  br label %24

41:                                               ; preds = %24
  br label %51

42:                                               ; preds = %13
  %43 = load i32*, i32** %3, align 8
  %44 = load i32, i32* @bfd_object, align 4
  %45 = call i64 @bfd_check_format(i32* %43, i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %42
  %48 = load i32*, i32** %3, align 8
  %49 = call i32 @scan_open_obj_file(i32* %48)
  br label %50

50:                                               ; preds = %47, %42
  br label %51

51:                                               ; preds = %50, %41
  %52 = load i32*, i32** %3, align 8
  %53 = call i32 @bfd_close(i32* %52)
  ret void
}

declare dso_local i32* @bfd_openr(i8*, i32) #1

declare dso_local i32 @fatal(i32, i8*) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @inform(i32, i8*) #1

declare dso_local i64 @bfd_check_format(i32*, i32) #1

declare dso_local i32* @bfd_openr_next_archived_file(i32*, i32*) #1

declare dso_local i32 @scan_open_obj_file(i32*) #1

declare dso_local i32 @bfd_close(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
