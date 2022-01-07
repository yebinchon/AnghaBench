; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/byacc/extr_output.c_output_table.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/byacc/extr_output.c_output_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@high = common dso_local global i32 0, align 4
@MAXYYINT = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"YYTABLESIZE: %ld\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"Table is longer than %d elements.\0A\00", align 1
@outline = common dso_local global i32 0, align 4
@code_file = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"#define YYTABLESIZE %ld\0A\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"table\00", align 1
@table = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @output_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @output_table() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32, i32* @high, align 4
  %4 = load i32, i32* @MAXYYINT, align 4
  %5 = icmp sge i32 %3, %4
  br i1 %5, label %6, label %14

6:                                                ; preds = %0
  %7 = load i32, i32* @stderr, align 4
  %8 = load i32, i32* @high, align 4
  %9 = call i32 @fprintf(i32 %7, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %8)
  %10 = load i32, i32* @stderr, align 4
  %11 = load i32, i32* @MAXYYINT, align 4
  %12 = call i32 @fprintf(i32 %10, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %11)
  %13 = call i32 @done(i32 1)
  br label %14

14:                                               ; preds = %6, %0
  %15 = load i32, i32* @outline, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* @outline, align 4
  %17 = load i32, i32* @code_file, align 4
  %18 = load i32, i32* @high, align 4
  %19 = call i32 @fprintf(i32 %17, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %18)
  %20 = load i32*, i32** @table, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @start_int_table(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 %22)
  store i32 10, i32* %2, align 4
  store i32 1, i32* %1, align 4
  br label %24

24:                                               ; preds = %43, %14
  %25 = load i32, i32* %1, align 4
  %26 = load i32, i32* @high, align 4
  %27 = icmp sle i32 %25, %26
  br i1 %27, label %28, label %46

28:                                               ; preds = %24
  %29 = load i32, i32* %2, align 4
  %30 = icmp sge i32 %29, 10
  br i1 %30, label %31, label %33

31:                                               ; preds = %28
  %32 = call i32 (...) @output_newline()
  store i32 1, i32* %2, align 4
  br label %36

33:                                               ; preds = %28
  %34 = load i32, i32* %2, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %2, align 4
  br label %36

36:                                               ; preds = %33, %31
  %37 = load i32*, i32** @table, align 8
  %38 = load i32, i32* %1, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @output_int(i32 %41)
  br label %43

43:                                               ; preds = %36
  %44 = load i32, i32* %1, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %1, align 4
  br label %24

46:                                               ; preds = %24
  %47 = call i32 (...) @end_table()
  %48 = load i32*, i32** @table, align 8
  %49 = call i32 @FREE(i32* %48)
  ret void
}

declare dso_local i32 @fprintf(i32, i8*, i32) #1

declare dso_local i32 @done(i32) #1

declare dso_local i32 @start_int_table(i8*, i32) #1

declare dso_local i32 @output_newline(...) #1

declare dso_local i32 @output_int(i32) #1

declare dso_local i32 @end_table(...) #1

declare dso_local i32 @FREE(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
