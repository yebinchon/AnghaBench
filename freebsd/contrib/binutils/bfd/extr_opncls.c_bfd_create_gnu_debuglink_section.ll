; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_opncls.c_bfd_create_gnu_debuglink_section.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_opncls.c_bfd_create_gnu_debuglink_section.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@bfd_error_invalid_operation = common dso_local global i32 0, align 4
@GNU_DEBUGLINK = common dso_local global i32 0, align 4
@SEC_HAS_CONTENTS = common dso_local global i32 0, align 4
@SEC_READONLY = common dso_local global i32 0, align 4
@SEC_DEBUGGING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @bfd_create_gnu_debuglink_section(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load i32*, i32** %4, align 8
  %10 = icmp eq i32* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = load i8*, i8** %5, align 8
  %13 = icmp eq i8* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %11, %2
  %15 = load i32, i32* @bfd_error_invalid_operation, align 4
  %16 = call i32 @bfd_set_error(i32 %15)
  store i32* null, i32** %3, align 8
  br label %59

17:                                               ; preds = %11
  %18 = load i8*, i8** %5, align 8
  %19 = call i8* @lbasename(i8* %18)
  store i8* %19, i8** %5, align 8
  %20 = load i32*, i32** %4, align 8
  %21 = load i32, i32* @GNU_DEBUGLINK, align 4
  %22 = call i32* @bfd_get_section_by_name(i32* %20, i32 %21)
  store i32* %22, i32** %6, align 8
  %23 = load i32*, i32** %6, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %17
  %26 = load i32, i32* @bfd_error_invalid_operation, align 4
  %27 = call i32 @bfd_set_error(i32 %26)
  store i32* null, i32** %3, align 8
  br label %59

28:                                               ; preds = %17
  %29 = load i32, i32* @SEC_HAS_CONTENTS, align 4
  %30 = load i32, i32* @SEC_READONLY, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @SEC_DEBUGGING, align 4
  %33 = or i32 %31, %32
  store i32 %33, i32* %8, align 4
  %34 = load i32*, i32** %4, align 8
  %35 = load i32, i32* @GNU_DEBUGLINK, align 4
  %36 = load i32, i32* %8, align 4
  %37 = call i32* @bfd_make_section_with_flags(i32* %34, i32 %35, i32 %36)
  store i32* %37, i32** %6, align 8
  %38 = load i32*, i32** %6, align 8
  %39 = icmp eq i32* %38, null
  br i1 %39, label %40, label %41

40:                                               ; preds = %28
  store i32* null, i32** %3, align 8
  br label %59

41:                                               ; preds = %28
  %42 = load i8*, i8** %5, align 8
  %43 = call i32 @strlen(i8* %42)
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* %7, align 4
  %46 = add nsw i32 %45, 3
  store i32 %46, i32* %7, align 4
  %47 = load i32, i32* %7, align 4
  %48 = and i32 %47, -4
  store i32 %48, i32* %7, align 4
  %49 = load i32, i32* %7, align 4
  %50 = add nsw i32 %49, 4
  store i32 %50, i32* %7, align 4
  %51 = load i32*, i32** %4, align 8
  %52 = load i32*, i32** %6, align 8
  %53 = load i32, i32* %7, align 4
  %54 = call i32 @bfd_set_section_size(i32* %51, i32* %52, i32 %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %41
  store i32* null, i32** %3, align 8
  br label %59

57:                                               ; preds = %41
  %58 = load i32*, i32** %6, align 8
  store i32* %58, i32** %3, align 8
  br label %59

59:                                               ; preds = %57, %56, %40, %25, %14
  %60 = load i32*, i32** %3, align 8
  ret i32* %60
}

declare dso_local i32 @bfd_set_error(i32) #1

declare dso_local i8* @lbasename(i8*) #1

declare dso_local i32* @bfd_get_section_by_name(i32*, i32) #1

declare dso_local i32* @bfd_make_section_with_flags(i32*, i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @bfd_set_section_size(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
