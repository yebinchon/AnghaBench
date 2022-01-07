; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_obj-coff.c_add_lineno.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_obj-coff.c_add_lineno.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.line_no = type { %struct.TYPE_3__, i32*, %struct.line_no* }
%struct.TYPE_3__ = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@current_lineno_sym = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Line numbers must be positive integers\0A\00", align 1
@line_nos = common dso_local global %struct.line_no* null, align 8
@coff_n_line_nos = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32)* @add_lineno to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_lineno(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.line_no*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = call %struct.line_no* @xmalloc(i32 24)
  store %struct.line_no* %8, %struct.line_no** %7, align 8
  %9 = load i32, i32* @current_lineno_sym, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %3
  %12 = call i32 (...) @abort() #3
  unreachable

13:                                               ; preds = %3
  %14 = load i32, i32* %6, align 4
  %15 = icmp sle i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %13
  %17 = call i32 @_(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %18 = call i32 @as_warn(i32 %17)
  store i32 1, i32* %6, align 4
  br label %19

19:                                               ; preds = %16, %13
  %20 = load %struct.line_no*, %struct.line_no** @line_nos, align 8
  %21 = load %struct.line_no*, %struct.line_no** %7, align 8
  %22 = getelementptr inbounds %struct.line_no, %struct.line_no* %21, i32 0, i32 2
  store %struct.line_no* %20, %struct.line_no** %22, align 8
  %23 = load i32*, i32** %4, align 8
  %24 = load %struct.line_no*, %struct.line_no** %7, align 8
  %25 = getelementptr inbounds %struct.line_no, %struct.line_no* %24, i32 0, i32 1
  store i32* %23, i32** %25, align 8
  %26 = load i32, i32* %6, align 4
  %27 = load %struct.line_no*, %struct.line_no** %7, align 8
  %28 = getelementptr inbounds %struct.line_no, %struct.line_no* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  store i32 %26, i32* %29, align 8
  %30 = load i32, i32* %5, align 4
  %31 = load %struct.line_no*, %struct.line_no** %7, align 8
  %32 = getelementptr inbounds %struct.line_no, %struct.line_no* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  store i32 %30, i32* %34, align 4
  %35 = load %struct.line_no*, %struct.line_no** %7, align 8
  store %struct.line_no* %35, %struct.line_no** @line_nos, align 8
  %36 = load i32, i32* @coff_n_line_nos, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* @coff_n_line_nos, align 4
  ret void
}

declare dso_local %struct.line_no* @xmalloc(i32) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

declare dso_local i32 @as_warn(i32) #1

declare dso_local i32 @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
