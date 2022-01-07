; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_objdump.c_read_section_stabs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_objdump.c_read_section_stabs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [24 x i8] c"No %s section present\0A\0A\00", align 1
@FALSE = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [36 x i8] c"Reading %s section of %s failed: %s\00", align 1
@exit_status = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32*, i8*, i32*)* @read_section_stabs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @read_section_stabs(i32* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load i32*, i32** %5, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = call i32* @bfd_get_section_by_name(i32* %11, i8* %12)
  store i32* %13, i32** %8, align 8
  %14 = load i32*, i32** %8, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %16, label %21

16:                                               ; preds = %3
  %17 = call i8* @_(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %18 = load i8*, i8** %6, align 8
  %19 = call i32 @printf(i8* %17, i8* %18)
  %20 = load i8*, i8** @FALSE, align 8
  store i8* %20, i8** %4, align 8
  br label %47

21:                                               ; preds = %3
  %22 = load i32*, i32** %5, align 8
  %23 = load i32*, i32** %8, align 8
  %24 = call i32 @bfd_section_size(i32* %22, i32* %23)
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %9, align 4
  %26 = call i8* @xmalloc(i32 %25)
  store i8* %26, i8** %10, align 8
  %27 = load i32*, i32** %5, align 8
  %28 = load i32*, i32** %8, align 8
  %29 = load i8*, i8** %10, align 8
  %30 = load i32, i32* %9, align 4
  %31 = call i32 @bfd_get_section_contents(i32* %27, i32* %28, i8* %29, i32 0, i32 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %43, label %33

33:                                               ; preds = %21
  %34 = call i8* @_(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %35 = load i8*, i8** %6, align 8
  %36 = load i32*, i32** %5, align 8
  %37 = call i32 @bfd_get_filename(i32* %36)
  %38 = call i32 (...) @bfd_get_error()
  %39 = call i32 @bfd_errmsg(i32 %38)
  %40 = call i32 @non_fatal(i8* %34, i8* %35, i32 %37, i32 %39)
  %41 = load i8*, i8** %10, align 8
  %42 = call i32 @free(i8* %41)
  store i32 1, i32* @exit_status, align 4
  store i8* null, i8** %4, align 8
  br label %47

43:                                               ; preds = %21
  %44 = load i32, i32* %9, align 4
  %45 = load i32*, i32** %7, align 8
  store i32 %44, i32* %45, align 4
  %46 = load i8*, i8** %10, align 8
  store i8* %46, i8** %4, align 8
  br label %47

47:                                               ; preds = %43, %33, %16
  %48 = load i8*, i8** %4, align 8
  ret i8* %48
}

declare dso_local i32* @bfd_get_section_by_name(i32*, i8*) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i8* @_(i8*) #1

declare dso_local i32 @bfd_section_size(i32*, i32*) #1

declare dso_local i8* @xmalloc(i32) #1

declare dso_local i32 @bfd_get_section_contents(i32*, i32*, i8*, i32, i32) #1

declare dso_local i32 @non_fatal(i8*, i8*, i32, i32) #1

declare dso_local i32 @bfd_get_filename(i32*) #1

declare dso_local i32 @bfd_errmsg(i32) #1

declare dso_local i32 @bfd_get_error(...) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
