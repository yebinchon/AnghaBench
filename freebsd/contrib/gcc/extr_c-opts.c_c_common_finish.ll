; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-opts.c_c_common_finish.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-opts.c_c_common_finish.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@cpp_opts = common dso_local global %struct.TYPE_4__* null, align 8
@DEPS_NONE = common dso_local global i64 0, align 8
@deps_file = common dso_local global i32 0, align 4
@out_stream = common dso_local global i32* null, align 8
@deps_append = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"opening dependency file %s: %m\00", align 1
@parse_in = common dso_local global i32 0, align 4
@errorcount = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"closing dependency file %s: %m\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"when writing output to %s: %m\00", align 1
@out_fname = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @c_common_finish() #0 {
  %1 = alloca i32*, align 8
  store i32* null, i32** %1, align 8
  %2 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cpp_opts, align 8
  %3 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 0
  %4 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @DEPS_NONE, align 8
  %7 = icmp ne i64 %5, %6
  br i1 %7, label %8, label %27

8:                                                ; preds = %0
  %9 = load i32, i32* @deps_file, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %8
  %12 = load i32*, i32** @out_stream, align 8
  store i32* %12, i32** %1, align 8
  br label %26

13:                                               ; preds = %8
  %14 = load i32, i32* @deps_file, align 4
  %15 = load i64, i64* @deps_append, align 8
  %16 = icmp ne i64 %15, 0
  %17 = zext i1 %16 to i64
  %18 = select i1 %16, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)
  %19 = call i32* @fopen(i32 %14, i8* %18)
  store i32* %19, i32** %1, align 8
  %20 = load i32*, i32** %1, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %13
  %23 = load i32, i32* @deps_file, align 4
  %24 = call i32 @fatal_error(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %23)
  br label %25

25:                                               ; preds = %22, %13
  br label %26

26:                                               ; preds = %25, %11
  br label %27

27:                                               ; preds = %26, %0
  %28 = load i32, i32* @parse_in, align 4
  %29 = load i32*, i32** %1, align 8
  %30 = call i64 @cpp_finish(i32 %28, i32* %29)
  %31 = load i32, i32* @errorcount, align 4
  %32 = sext i32 %31 to i64
  %33 = add nsw i64 %32, %30
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* @errorcount, align 4
  %35 = load i32*, i32** %1, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %37, label %52

37:                                               ; preds = %27
  %38 = load i32*, i32** %1, align 8
  %39 = load i32*, i32** @out_stream, align 8
  %40 = icmp ne i32* %38, %39
  br i1 %40, label %41, label %52

41:                                               ; preds = %37
  %42 = load i32*, i32** %1, align 8
  %43 = call i64 @ferror(i32* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %49, label %45

45:                                               ; preds = %41
  %46 = load i32*, i32** %1, align 8
  %47 = call i64 @fclose(i32* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %45, %41
  %50 = load i32, i32* @deps_file, align 4
  %51 = call i32 @fatal_error(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 %50)
  br label %52

52:                                               ; preds = %49, %45, %37, %27
  %53 = load i32*, i32** @out_stream, align 8
  %54 = icmp ne i32* %53, null
  br i1 %54, label %55, label %66

55:                                               ; preds = %52
  %56 = load i32*, i32** @out_stream, align 8
  %57 = call i64 @ferror(i32* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %63, label %59

59:                                               ; preds = %55
  %60 = load i32*, i32** @out_stream, align 8
  %61 = call i64 @fclose(i32* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %59, %55
  %64 = load i32, i32* @out_fname, align 4
  %65 = call i32 @fatal_error(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i32 %64)
  br label %66

66:                                               ; preds = %63, %59, %52
  ret void
}

declare dso_local i32* @fopen(i32, i8*) #1

declare dso_local i32 @fatal_error(i8*, i32) #1

declare dso_local i64 @cpp_finish(i32, i32*) #1

declare dso_local i64 @ferror(i32*) #1

declare dso_local i64 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
