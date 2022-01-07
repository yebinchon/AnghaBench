; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-score.c_md_parse_option.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-score.c_md_parse_option.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@target_big_endian = common dso_local global i32 0, align 4
@fix_data_dependency = common dso_local global i32 0, align 4
@warn_fix_data_dependency = common dso_local global i32 0, align 4
@score7 = common dso_local global i32 0, align 4
@university_version = common dso_local global i32 0, align 4
@SCORE5_PIPELINE = common dso_local global i32 0, align 4
@vector_size = common dso_local global i32 0, align 4
@SCORE7_PIPELINE = common dso_local global i32 0, align 4
@nor1 = common dso_local global i32 0, align 4
@g_switch_value = common dso_local global i32 0, align 4
@g_opt = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Sunplus-v2-0-0-20060510\0A\00", align 1
@PIC = common dso_local global i32 0, align 4
@score_pic = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @md_parse_option(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %6 = load i32, i32* %4, align 4
  switch i32 %6, label %27 [
    i32 138, label %7
    i32 137, label %8
    i32 136, label %9
    i32 135, label %10
    i32 131, label %11
    i32 130, label %13
    i32 129, label %15
    i32 132, label %17
    i32 71, label %18
    i32 134, label %21
    i32 128, label %22
    i32 133, label %25
  ]

7:                                                ; preds = %2
  store i32 1, i32* @target_big_endian, align 4
  br label %28

8:                                                ; preds = %2
  store i32 0, i32* @target_big_endian, align 4
  br label %28

9:                                                ; preds = %2
  store i32 1, i32* @fix_data_dependency, align 4
  br label %28

10:                                               ; preds = %2
  store i32 0, i32* @warn_fix_data_dependency, align 4
  br label %28

11:                                               ; preds = %2
  store i32 0, i32* @score7, align 4
  store i32 0, i32* @university_version, align 4
  %12 = load i32, i32* @SCORE5_PIPELINE, align 4
  store i32 %12, i32* @vector_size, align 4
  br label %28

13:                                               ; preds = %2
  store i32 0, i32* @score7, align 4
  store i32 1, i32* @university_version, align 4
  %14 = load i32, i32* @SCORE5_PIPELINE, align 4
  store i32 %14, i32* @vector_size, align 4
  br label %28

15:                                               ; preds = %2
  store i32 1, i32* @score7, align 4
  store i32 0, i32* @university_version, align 4
  %16 = load i32, i32* @SCORE7_PIPELINE, align 4
  store i32 %16, i32* @vector_size, align 4
  br label %28

17:                                               ; preds = %2
  store i32 0, i32* @nor1, align 4
  br label %28

18:                                               ; preds = %2
  %19 = load i8*, i8** %5, align 8
  %20 = call i32 @atoi(i8* %19)
  store i32 %20, i32* @g_switch_value, align 4
  br label %28

21:                                               ; preds = %2
  store i32 0, i32* @g_opt, align 4
  br label %28

22:                                               ; preds = %2
  %23 = call i8* @_(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %24 = call i32 @printf(i8* %23)
  br label %28

25:                                               ; preds = %2
  %26 = load i32, i32* @PIC, align 4
  store i32 %26, i32* @score_pic, align 4
  store i32 0, i32* @g_switch_value, align 4
  br label %28

27:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %29

28:                                               ; preds = %25, %22, %21, %18, %17, %15, %13, %11, %10, %9, %8, %7
  store i32 1, i32* %3, align 4
  br label %29

29:                                               ; preds = %28, %27
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i8* @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
