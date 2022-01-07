; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-ppoutput.c_cb_line_change.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-ppoutput.c_cb_line_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i64, i64 }
%struct.TYPE_4__ = type { i64, i32 }
%struct.line_map = type { i32 }

@CPP_EOF = common dso_local global i64 0, align 8
@print = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@traditional = common dso_local global i32 0, align 4
@line_table = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_4__*, i32)* @cb_line_change to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cb_line_change(i32* %0, %struct.TYPE_4__* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.line_map*, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %7, align 4
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @CPP_EOF, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %21, label %18

18:                                               ; preds = %3
  %19 = load i32, i32* %6, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %18, %3
  br label %44

22:                                               ; preds = %18
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @maybe_print_line(i32 %23)
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @print, i32 0, i32 3), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @print, i32 0, i32 2), align 8
  %25 = load i32*, i32** %4, align 8
  %26 = load i32, i32* @traditional, align 4
  %27 = call i32 @CPP_OPTION(i32* %25, i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %44, label %29

29:                                               ; preds = %22
  %30 = load i32, i32* %7, align 4
  %31 = call %struct.line_map* @linemap_lookup(i32* @line_table, i32 %30)
  store %struct.line_map* %31, %struct.line_map** %8, align 8
  %32 = load %struct.line_map*, %struct.line_map** %8, align 8
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @SOURCE_COLUMN(%struct.line_map* %32, i32 %33)
  %35 = sub nsw i32 %34, 2
  store i32 %35, i32* %9, align 4
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @print, i32 0, i32 0), align 8
  br label %36

36:                                               ; preds = %40, %29
  %37 = load i32, i32* %9, align 4
  %38 = add nsw i32 %37, -1
  store i32 %38, i32* %9, align 4
  %39 = icmp sge i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %36
  %41 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @print, i32 0, i32 1), align 4
  %42 = call i32 @putc(i8 signext 32, i32 %41)
  br label %36

43:                                               ; preds = %36
  br label %44

44:                                               ; preds = %21, %43, %22
  ret void
}

declare dso_local i32 @maybe_print_line(i32) #1

declare dso_local i32 @CPP_OPTION(i32*, i32) #1

declare dso_local %struct.line_map* @linemap_lookup(i32*, i32) #1

declare dso_local i32 @SOURCE_COLUMN(%struct.line_map*, i32) #1

declare dso_local i32 @putc(i8 signext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
