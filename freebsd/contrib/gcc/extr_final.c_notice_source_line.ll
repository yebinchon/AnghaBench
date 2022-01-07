; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_final.c_notice_source_line.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_final.c_notice_source_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@force_source_line = common dso_local global i32 0, align 4
@last_filename = common dso_local global i8* null, align 8
@last_linenum = common dso_local global i32 0, align 4
@high_block_linenum = common dso_local global i32 0, align 4
@high_function_linenum = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @notice_source_line to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @notice_source_line(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call i8* @insn_file(i32 %6)
  store i8* %7, i8** %4, align 8
  %8 = load i32, i32* %3, align 4
  %9 = call i32 @insn_line(i32 %8)
  store i32 %9, i32* %5, align 4
  %10 = load i8*, i8** %4, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %12, label %32

12:                                               ; preds = %1
  %13 = load i32, i32* @force_source_line, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %23, label %15

15:                                               ; preds = %12
  %16 = load i8*, i8** %4, align 8
  %17 = load i8*, i8** @last_filename, align 8
  %18 = icmp ne i8* %16, %17
  br i1 %18, label %23, label %19

19:                                               ; preds = %15
  %20 = load i32, i32* @last_linenum, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp ne i32 %20, %21
  br i1 %22, label %23, label %32

23:                                               ; preds = %19, %15, %12
  store i32 0, i32* @force_source_line, align 4
  %24 = load i8*, i8** %4, align 8
  store i8* %24, i8** @last_filename, align 8
  %25 = load i32, i32* %5, align 4
  store i32 %25, i32* @last_linenum, align 4
  %26 = load i32, i32* @last_linenum, align 4
  %27 = load i32, i32* @high_block_linenum, align 4
  %28 = call i32 @MAX(i32 %26, i32 %27)
  store i32 %28, i32* @high_block_linenum, align 4
  %29 = load i32, i32* @last_linenum, align 4
  %30 = load i32, i32* @high_function_linenum, align 4
  %31 = call i32 @MAX(i32 %29, i32 %30)
  store i32 %31, i32* @high_function_linenum, align 4
  store i32 1, i32* %2, align 4
  br label %33

32:                                               ; preds = %19, %1
  store i32 0, i32* %2, align 4
  br label %33

33:                                               ; preds = %32, %23
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local i8* @insn_file(i32) #1

declare dso_local i32 @insn_line(i32) #1

declare dso_local i32 @MAX(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
