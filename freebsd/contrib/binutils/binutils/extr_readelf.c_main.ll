; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_readelf.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_readelf.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PACKAGE = common dso_local global i32 0, align 4
@LOCALEDIR = common dso_local global i32 0, align 4
@num_dump_sects = common dso_local global i64 0, align 8
@cmdline_dump_sects = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [46 x i8] c"Out of memory allocating dump request table.\0A\00", align 1
@dump_sects = common dso_local global i32* null, align 8
@num_cmdline_dump_sects = common dso_local global i64 0, align 8
@optind = common dso_local global i32 0, align 4
@show_name = common dso_local global i32 0, align 4
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
  %12 = call i32 @expandargv(i32* %4, i8*** %5)
  %13 = load i32, i32* %4, align 4
  %14 = load i8**, i8*** %5, align 8
  %15 = call i32 @parse_args(i32 %13, i8** %14)
  %16 = load i64, i64* @num_dump_sects, align 8
  %17 = icmp sgt i64 %16, 0
  br i1 %17, label %18, label %33

18:                                               ; preds = %2
  %19 = load i64, i64* @num_dump_sects, align 8
  %20 = call i32* @malloc(i64 %19)
  store i32* %20, i32** @cmdline_dump_sects, align 8
  %21 = load i32*, i32** @cmdline_dump_sects, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %18
  %24 = call i32 @_(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  %25 = call i32 @error(i32 %24)
  br label %32

26:                                               ; preds = %18
  %27 = load i32*, i32** @cmdline_dump_sects, align 8
  %28 = load i32*, i32** @dump_sects, align 8
  %29 = load i64, i64* @num_dump_sects, align 8
  %30 = call i32 @memcpy(i32* %27, i32* %28, i64 %29)
  %31 = load i64, i64* @num_dump_sects, align 8
  store i64 %31, i64* @num_cmdline_dump_sects, align 8
  br label %32

32:                                               ; preds = %26, %23
  br label %33

33:                                               ; preds = %32, %2
  %34 = load i32, i32* @optind, align 4
  %35 = load i32, i32* %4, align 4
  %36 = sub nsw i32 %35, 1
  %37 = icmp slt i32 %34, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  store i32 1, i32* @show_name, align 4
  br label %39

39:                                               ; preds = %38, %33
  store i32 0, i32* %6, align 4
  br label %40

40:                                               ; preds = %44, %39
  %41 = load i32, i32* @optind, align 4
  %42 = load i32, i32* %4, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %54

44:                                               ; preds = %40
  %45 = load i8**, i8*** %5, align 8
  %46 = load i32, i32* @optind, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* @optind, align 4
  %48 = sext i32 %46 to i64
  %49 = getelementptr inbounds i8*, i8** %45, i64 %48
  %50 = load i8*, i8** %49, align 8
  %51 = call i32 @process_file(i8* %50)
  %52 = load i32, i32* %6, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %6, align 4
  br label %40

54:                                               ; preds = %40
  %55 = load i32*, i32** @dump_sects, align 8
  %56 = icmp ne i32* %55, null
  br i1 %56, label %57, label %60

57:                                               ; preds = %54
  %58 = load i32*, i32** @dump_sects, align 8
  %59 = call i32 @free(i32* %58)
  br label %60

60:                                               ; preds = %57, %54
  %61 = load i32*, i32** @cmdline_dump_sects, align 8
  %62 = icmp ne i32* %61, null
  br i1 %62, label %63, label %66

63:                                               ; preds = %60
  %64 = load i32*, i32** @cmdline_dump_sects, align 8
  %65 = call i32 @free(i32* %64)
  br label %66

66:                                               ; preds = %63, %60
  %67 = load i32, i32* %6, align 4
  ret i32 %67
}

declare dso_local i32 @bindtextdomain(i32, i32) #1

declare dso_local i32 @textdomain(i32) #1

declare dso_local i32 @expandargv(i32*, i8***) #1

declare dso_local i32 @parse_args(i32, i8**) #1

declare dso_local i32* @malloc(i64) #1

declare dso_local i32 @error(i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @memcpy(i32*, i32*, i64) #1

declare dso_local i32 @process_file(i8*) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
