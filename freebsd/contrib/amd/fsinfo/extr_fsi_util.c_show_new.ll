; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/amd/fsinfo/extr_fsi_util.c_show_new.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/amd/fsinfo/extr_fsi_util.c_show_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@verbose = common dso_local global i64 0, align 8
@total_shown = common dso_local global i32 0, align 4
@total_mmm = common dso_local global i64 0, align 8
@show_range = common dso_local global i64 0, align 8
@stdout = common dso_local global i32 0, align 4
@col = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @show_new(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i64, i64* @verbose, align 8
  %4 = icmp slt i64 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  br label %28

6:                                                ; preds = %1
  %7 = load i32, i32* @total_shown, align 4
  %8 = add nsw i32 %7, 1
  store i32 %8, i32* @total_shown, align 4
  %9 = load i64, i64* @total_mmm, align 8
  %10 = load i64, i64* @show_range, align 8
  %11 = icmp sgt i64 %9, %10
  br i1 %11, label %12, label %14

12:                                               ; preds = %6
  %13 = call i32 (...) @show_total()
  br label %25

14:                                               ; preds = %6
  %15 = load i64, i64* @total_mmm, align 8
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %14
  %18 = load i32, i32* @stdout, align 4
  %19 = call i32 @fputc(i8 signext 42, i32 %18)
  %20 = load i32, i32* @stdout, align 4
  %21 = call i32 @fflush(i32 %20)
  %22 = load i32, i32* @col, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* @col, align 4
  br label %24

24:                                               ; preds = %17, %14
  br label %25

25:                                               ; preds = %24, %12
  %26 = load i64, i64* @total_mmm, align 8
  %27 = add nsw i64 %26, 1
  store i64 %27, i64* @total_mmm, align 8
  br label %28

28:                                               ; preds = %25, %5
  ret void
}

declare dso_local i32 @show_total(...) #1

declare dso_local i32 @fputc(i8 signext, i32) #1

declare dso_local i32 @fflush(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
