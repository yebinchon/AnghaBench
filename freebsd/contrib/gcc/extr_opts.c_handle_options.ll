; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_opts.c_handle_options.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_opts.c_handle_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@main_input_filename = common dso_local global i8* null, align 8
@main_input_basename = common dso_local global i32 0, align 4
@main_input_baselength = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"unrecognized command line option \22%s\22\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8**, i32)* @handle_options to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_options(i32 %0, i8** %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 1, i32* %8, align 4
  br label %10

10:                                               ; preds = %54, %3
  %11 = load i32, i32* %8, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp ult i32 %11, %12
  br i1 %13, label %14, label %58

14:                                               ; preds = %10
  %15 = load i8**, i8*** %5, align 8
  %16 = load i32, i32* %8, align 4
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds i8*, i8** %15, i64 %17
  %19 = load i8*, i8** %18, align 8
  store i8* %19, i8** %9, align 8
  %20 = load i8*, i8** %9, align 8
  %21 = getelementptr inbounds i8, i8* %20, i64 0
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp ne i32 %23, 45
  br i1 %24, label %31, label %25

25:                                               ; preds = %14
  %26 = load i8*, i8** %9, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 1
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %41

31:                                               ; preds = %25, %14
  %32 = load i8*, i8** @main_input_filename, align 8
  %33 = icmp eq i8* %32, null
  br i1 %33, label %34, label %38

34:                                               ; preds = %31
  %35 = load i8*, i8** %9, align 8
  store i8* %35, i8** @main_input_filename, align 8
  %36 = load i8*, i8** @main_input_filename, align 8
  %37 = call i32 @base_of_path(i8* %36, i32* @main_input_basename)
  store i32 %37, i32* @main_input_baselength, align 4
  br label %38

38:                                               ; preds = %34, %31
  %39 = load i8*, i8** %9, align 8
  %40 = call i32 @add_input_filename(i8* %39)
  store i32 1, i32* %7, align 4
  br label %54

41:                                               ; preds = %25
  %42 = load i8**, i8*** %5, align 8
  %43 = load i32, i32* %8, align 4
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds i8*, i8** %42, i64 %44
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @handle_option(i8** %45, i32 %46)
  store i32 %47, i32* %7, align 4
  %48 = load i32, i32* %7, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %53, label %50

50:                                               ; preds = %41
  store i32 1, i32* %7, align 4
  %51 = load i8*, i8** %9, align 8
  %52 = call i32 @error(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i8* %51)
  br label %53

53:                                               ; preds = %50, %41
  br label %54

54:                                               ; preds = %53, %38
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* %8, align 4
  %57 = add i32 %56, %55
  store i32 %57, i32* %8, align 4
  br label %10

58:                                               ; preds = %10
  ret void
}

declare dso_local i32 @base_of_path(i8*, i32*) #1

declare dso_local i32 @add_input_filename(i8*) #1

declare dso_local i32 @handle_option(i8**, i32) #1

declare dso_local i32 @error(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
