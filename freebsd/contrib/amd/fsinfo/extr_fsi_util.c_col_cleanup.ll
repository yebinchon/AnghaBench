; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/amd/fsinfo/extr_fsi_util.c_col_cleanup.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/amd/fsinfo/extr_fsi_util.c_col_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@verbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [3 x i8] c")]\00", align 1
@stdout = common dso_local global i32 0, align 4
@col = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @col_cleanup(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i64, i64* @verbose, align 8
  %4 = icmp slt i64 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  br label %19

6:                                                ; preds = %1
  %7 = load i32, i32* %2, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %6
  %10 = call i32 (...) @show_total()
  %11 = load i32, i32* @stdout, align 4
  %12 = call i32 @fputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %11)
  br label %13

13:                                               ; preds = %9, %6
  %14 = load i64, i64* @col, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %13
  %17 = load i32, i32* @stdout, align 4
  %18 = call i32 @fputc(i8 signext 10, i32 %17)
  store i64 0, i64* @col, align 8
  br label %19

19:                                               ; preds = %5, %16, %13
  ret void
}

declare dso_local i32 @show_total(...) #1

declare dso_local i32 @fputs(i8*, i32) #1

declare dso_local i32 @fputc(i8 signext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
