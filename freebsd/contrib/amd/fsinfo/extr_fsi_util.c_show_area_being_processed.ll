; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/amd/fsinfo/extr_fsi_util.c_show_area_being_processed.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/amd/fsinfo/extr_fsi_util.c_show_area_being_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@show_area_being_processed.last_area = internal global i8* null, align 8
@verbose = common dso_local global i64 0, align 8
@total_shown = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [2 x i8] c")\00", align 1
@stdout = common dso_local global i32 0, align 4
@col = common dso_local global i32 0, align 4
@show_range = common dso_local global i32 0, align 4
@total_mmm = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"[%s\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c" (\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @show_area_being_processed(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i64, i64* @verbose, align 8
  %6 = icmp slt i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %2
  br label %55

8:                                                ; preds = %2
  %9 = load i8*, i8** @show_area_being_processed.last_area, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %11, label %21

11:                                               ; preds = %8
  %12 = load i64, i64* @total_shown, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %11
  %15 = call i32 (...) @show_total()
  br label %16

16:                                               ; preds = %14, %11
  %17 = load i32, i32* @stdout, align 4
  %18 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load i32, i32* @col, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* @col, align 4
  br label %21

21:                                               ; preds = %16, %8
  %22 = load i8*, i8** @show_area_being_processed.last_area, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %29

24:                                               ; preds = %21
  %25 = load i8*, i8** %3, align 8
  %26 = load i8*, i8** @show_area_being_processed.last_area, align 8
  %27 = call i32 @STREQ(i8* %25, i8* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %45, label %29

29:                                               ; preds = %24, %21
  %30 = load i8*, i8** @show_area_being_processed.last_area, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %32, label %36

32:                                               ; preds = %29
  %33 = call i32 @col_cleanup(i32 0)
  store i64 0, i64* @total_shown, align 8
  %34 = load i32, i32* @show_range, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* @total_mmm, align 4
  br label %36

36:                                               ; preds = %32, %29
  %37 = load i8*, i8** %3, align 8
  %38 = call i64 @strlen(i8* %37)
  %39 = add nsw i64 %38, 2
  %40 = call i32 @col_output(i64 %39)
  %41 = load i32, i32* @stdout, align 4
  %42 = load i8*, i8** %3, align 8
  %43 = call i32 @fprintf(i32 %41, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %42)
  %44 = load i8*, i8** %3, align 8
  store i8* %44, i8** @show_area_being_processed.last_area, align 8
  br label %45

45:                                               ; preds = %36, %24
  %46 = load i32, i32* @stdout, align 4
  %47 = call i32 @fputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %46)
  %48 = load i32, i32* @col, align 4
  %49 = add nsw i32 %48, 2
  store i32 %49, i32* @col, align 4
  %50 = load i32, i32* %4, align 4
  store i32 %50, i32* @show_range, align 4
  %51 = load i32, i32* %4, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* @total_mmm, align 4
  %53 = load i32, i32* @stdout, align 4
  %54 = call i32 @fflush(i32 %53)
  br label %55

55:                                               ; preds = %45, %7
  ret void
}

declare dso_local i32 @show_total(...) #1

declare dso_local i32 @fputs(i8*, i32) #1

declare dso_local i32 @STREQ(i8*, i8*) #1

declare dso_local i32 @col_cleanup(i32) #1

declare dso_local i32 @col_output(i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i32 @fflush(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
