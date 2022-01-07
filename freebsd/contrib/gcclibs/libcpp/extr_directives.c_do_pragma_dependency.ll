; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcclibs/libcpp/extr_directives.c_do_pragma_dependency.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcclibs/libcpp/extr_directives.c_do_pragma_dependency.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@CPP_DL_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"cannot find source file %s\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"current file is older than %s\00", align 1
@CPP_EOF = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @do_pragma_dependency to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_pragma_dependency(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %6 = load i32*, i32** %2, align 8
  %7 = call i8* @parse_include(i32* %6, i32* %4, i32* null)
  store i8* %7, i8** %3, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = icmp ne i8* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %48

11:                                               ; preds = %1
  %12 = load i32*, i32** %2, align 8
  %13 = load i8*, i8** %3, align 8
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @_cpp_compare_file_date(i32* %12, i8* %13, i32 %14)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %11
  %19 = load i32*, i32** %2, align 8
  %20 = load i32, i32* @CPP_DL_WARNING, align 4
  %21 = load i8*, i8** %3, align 8
  %22 = call i32 @cpp_error(i32* %19, i32 %20, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i8* %21)
  br label %45

23:                                               ; preds = %11
  %24 = load i32, i32* %5, align 4
  %25 = icmp sgt i32 %24, 0
  br i1 %25, label %26, label %44

26:                                               ; preds = %23
  %27 = load i32*, i32** %2, align 8
  %28 = load i32, i32* @CPP_DL_WARNING, align 4
  %29 = load i8*, i8** %3, align 8
  %30 = call i32 @cpp_error(i32* %27, i32 %28, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i8* %29)
  %31 = load i32*, i32** %2, align 8
  %32 = call %struct.TYPE_2__* @cpp_get_token(i32* %31)
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @CPP_EOF, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %43

37:                                               ; preds = %26
  %38 = load i32*, i32** %2, align 8
  %39 = call i32 @_cpp_backup_tokens(i32* %38, i32 1)
  %40 = load i32*, i32** %2, align 8
  %41 = load i32, i32* @CPP_DL_WARNING, align 4
  %42 = call i32 @do_diagnostic(i32* %40, i32 %41, i32 0)
  br label %43

43:                                               ; preds = %37, %26
  br label %44

44:                                               ; preds = %43, %23
  br label %45

45:                                               ; preds = %44, %18
  %46 = load i8*, i8** %3, align 8
  %47 = call i32 @free(i8* %46)
  br label %48

48:                                               ; preds = %45, %10
  ret void
}

declare dso_local i8* @parse_include(i32*, i32*, i32*) #1

declare dso_local i32 @_cpp_compare_file_date(i32*, i8*, i32) #1

declare dso_local i32 @cpp_error(i32*, i32, i8*, i8*) #1

declare dso_local %struct.TYPE_2__* @cpp_get_token(i32*) #1

declare dso_local i32 @_cpp_backup_tokens(i32*, i32) #1

declare dso_local i32 @do_diagnostic(i32*, i32, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
