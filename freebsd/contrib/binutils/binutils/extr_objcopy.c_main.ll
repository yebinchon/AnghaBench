; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_objcopy.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_objcopy.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PACKAGE = common dso_local global i32 0, align 4
@LOCALEDIR = common dso_local global i32 0, align 4
@program_name = common dso_local global i8* null, align 8
@STRIP_UNDEF = common dso_local global i32 0, align 4
@strip_symbols = common dso_local global i32 0, align 4
@LOCALS_UNDEF = common dso_local global i32 0, align 4
@discard_locals = common dso_local global i32 0, align 4
@is_strip = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"strip\00", align 1
@status = common dso_local global i32 0, align 4
@LC_CTYPE = common dso_local global i32 0, align 4
@LC_MESSAGES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %7 = load i32, i32* @PACKAGE, align 4
  %8 = load i32, i32* @LOCALEDIR, align 4
  %9 = call i32 @bindtextdomain(i32 %7, i32 %8)
  %10 = load i32, i32* @PACKAGE, align 4
  %11 = call i32 @textdomain(i32 %10)
  %12 = load i8**, i8*** %5, align 8
  %13 = getelementptr inbounds i8*, i8** %12, i64 0
  %14 = load i8*, i8** %13, align 8
  store i8* %14, i8** @program_name, align 8
  %15 = load i8*, i8** @program_name, align 8
  %16 = call i32 @xmalloc_set_program_name(i8* %15)
  %17 = load i8*, i8** @program_name, align 8
  %18 = call i32 @START_PROGRESS(i8* %17, i32 0)
  %19 = call i32 @expandargv(i32* %4, i8*** %5)
  %20 = load i32, i32* @STRIP_UNDEF, align 4
  store i32 %20, i32* @strip_symbols, align 4
  %21 = load i32, i32* @LOCALS_UNDEF, align 4
  store i32 %21, i32* @discard_locals, align 4
  %22 = call i32 (...) @bfd_init()
  %23 = call i32 (...) @set_default_bfd_target()
  %24 = load i32, i32* @is_strip, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %42

26:                                               ; preds = %2
  %27 = load i8*, i8** @program_name, align 8
  %28 = call i32 @strlen(i8* %27)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp sge i32 %29, 5
  br i1 %30, label %31, label %39

31:                                               ; preds = %26
  %32 = load i8*, i8** @program_name, align 8
  %33 = load i32, i32* %6, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i8, i8* %32, i64 %34
  %36 = getelementptr inbounds i8, i8* %35, i64 -5
  %37 = call i64 @FILENAME_CMP(i8* %36, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %38 = icmp eq i64 %37, 0
  br label %39

39:                                               ; preds = %31, %26
  %40 = phi i1 [ false, %26 ], [ %38, %31 ]
  %41 = zext i1 %40 to i32
  store i32 %41, i32* @is_strip, align 4
  br label %42

42:                                               ; preds = %39, %2
  %43 = load i32, i32* @is_strip, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %42
  %46 = load i32, i32* %4, align 4
  %47 = load i8**, i8*** %5, align 8
  %48 = call i32 @strip_main(i32 %46, i8** %47)
  br label %53

49:                                               ; preds = %42
  %50 = load i32, i32* %4, align 4
  %51 = load i8**, i8*** %5, align 8
  %52 = call i32 @copy_main(i32 %50, i8** %51)
  br label %53

53:                                               ; preds = %49, %45
  %54 = load i8*, i8** @program_name, align 8
  %55 = call i32 @END_PROGRESS(i8* %54)
  %56 = load i32, i32* @status, align 4
  ret i32 %56
}

declare dso_local i32 @bindtextdomain(i32, i32) #1

declare dso_local i32 @textdomain(i32) #1

declare dso_local i32 @xmalloc_set_program_name(i8*) #1

declare dso_local i32 @START_PROGRESS(i8*, i32) #1

declare dso_local i32 @expandargv(i32*, i8***) #1

declare dso_local i32 @bfd_init(...) #1

declare dso_local i32 @set_default_bfd_target(...) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @FILENAME_CMP(i8*, i8*) #1

declare dso_local i32 @strip_main(i32, i8**) #1

declare dso_local i32 @copy_main(i32, i8**) #1

declare dso_local i32 @END_PROGRESS(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
