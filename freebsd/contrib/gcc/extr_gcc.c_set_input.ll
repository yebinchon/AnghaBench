; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_gcc.c_set_input.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_gcc.c_set_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@input_filename = common dso_local global i8* null, align 8
@input_filename_length = common dso_local global i8* null, align 8
@input_basename = common dso_local global i8* null, align 8
@basename_length = common dso_local global i32 0, align 4
@suffixed_basename_length = common dso_local global i32 0, align 4
@input_suffix = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@input_stat_set = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_input(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  store i8* %4, i8** @input_filename, align 8
  %5 = load i8*, i8** @input_filename, align 8
  %6 = call i8* @strlen(i8* %5)
  store i8* %6, i8** @input_filename_length, align 8
  %7 = load i8*, i8** @input_filename, align 8
  store i8* %7, i8** @input_basename, align 8
  %8 = load i8*, i8** @input_basename, align 8
  store i8* %8, i8** %3, align 8
  br label %9

9:                                                ; preds = %22, %1
  %10 = load i8*, i8** %3, align 8
  %11 = load i8, i8* %10, align 1
  %12 = icmp ne i8 %11, 0
  br i1 %12, label %13, label %25

13:                                               ; preds = %9
  %14 = load i8*, i8** %3, align 8
  %15 = load i8, i8* %14, align 1
  %16 = call i64 @IS_DIR_SEPARATOR(i8 signext %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %13
  %19 = load i8*, i8** %3, align 8
  %20 = getelementptr inbounds i8, i8* %19, i64 1
  store i8* %20, i8** @input_basename, align 8
  br label %21

21:                                               ; preds = %18, %13
  br label %22

22:                                               ; preds = %21
  %23 = load i8*, i8** %3, align 8
  %24 = getelementptr inbounds i8, i8* %23, i32 1
  store i8* %24, i8** %3, align 8
  br label %9

25:                                               ; preds = %9
  %26 = load i8*, i8** @input_basename, align 8
  %27 = call i8* @strlen(i8* %26)
  %28 = ptrtoint i8* %27 to i32
  store i32 %28, i32* @basename_length, align 4
  %29 = load i32, i32* @basename_length, align 4
  store i32 %29, i32* @suffixed_basename_length, align 4
  %30 = load i8*, i8** @input_basename, align 8
  %31 = load i32, i32* @basename_length, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i8, i8* %30, i64 %32
  store i8* %33, i8** %3, align 8
  br label %34

34:                                               ; preds = %45, %25
  %35 = load i8*, i8** %3, align 8
  %36 = load i8*, i8** @input_basename, align 8
  %37 = icmp ne i8* %35, %36
  br i1 %37, label %38, label %43

38:                                               ; preds = %34
  %39 = load i8*, i8** %3, align 8
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp ne i32 %41, 46
  br label %43

43:                                               ; preds = %38, %34
  %44 = phi i1 [ false, %34 ], [ %42, %38 ]
  br i1 %44, label %45, label %48

45:                                               ; preds = %43
  %46 = load i8*, i8** %3, align 8
  %47 = getelementptr inbounds i8, i8* %46, i32 -1
  store i8* %47, i8** %3, align 8
  br label %34

48:                                               ; preds = %43
  %49 = load i8*, i8** %3, align 8
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp eq i32 %51, 46
  br i1 %52, label %53, label %66

53:                                               ; preds = %48
  %54 = load i8*, i8** %3, align 8
  %55 = load i8*, i8** @input_basename, align 8
  %56 = icmp ne i8* %54, %55
  br i1 %56, label %57, label %66

57:                                               ; preds = %53
  %58 = load i8*, i8** %3, align 8
  %59 = load i8*, i8** @input_basename, align 8
  %60 = ptrtoint i8* %58 to i64
  %61 = ptrtoint i8* %59 to i64
  %62 = sub i64 %60, %61
  %63 = trunc i64 %62 to i32
  store i32 %63, i32* @basename_length, align 4
  %64 = load i8*, i8** %3, align 8
  %65 = getelementptr inbounds i8, i8* %64, i64 1
  store i8* %65, i8** @input_suffix, align 8
  br label %67

66:                                               ; preds = %53, %48
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** @input_suffix, align 8
  br label %67

67:                                               ; preds = %66, %57
  store i64 0, i64* @input_stat_set, align 8
  ret void
}

declare dso_local i8* @strlen(i8*) #1

declare dso_local i64 @IS_DIR_SEPARATOR(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
