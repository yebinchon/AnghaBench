; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_probe-finder.c_line_range_add_line.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_probe-finder.c_line_range_add_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.line_range = type { i32, i32* }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, %struct.line_range*)* @line_range_add_line to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @line_range_add_line(i8* %0, i32 %1, %struct.line_range* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.line_range*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.line_range* %2, %struct.line_range** %7, align 8
  %8 = load %struct.line_range*, %struct.line_range** %7, align 8
  %9 = getelementptr inbounds %struct.line_range, %struct.line_range* %8, i32 0, i32 1
  %10 = load i32*, i32** %9, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %25, label %12

12:                                               ; preds = %3
  %13 = load i8*, i8** %5, align 8
  %14 = call i32* @strdup(i8* %13)
  %15 = load %struct.line_range*, %struct.line_range** %7, align 8
  %16 = getelementptr inbounds %struct.line_range, %struct.line_range* %15, i32 0, i32 1
  store i32* %14, i32** %16, align 8
  %17 = load %struct.line_range*, %struct.line_range** %7, align 8
  %18 = getelementptr inbounds %struct.line_range, %struct.line_range* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  %20 = icmp eq i32* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %12
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %30

24:                                               ; preds = %12
  br label %25

25:                                               ; preds = %24, %3
  %26 = load %struct.line_range*, %struct.line_range** %7, align 8
  %27 = getelementptr inbounds %struct.line_range, %struct.line_range* %26, i32 0, i32 0
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @line_list__add_line(i32* %27, i32 %28)
  store i32 %29, i32* %4, align 4
  br label %30

30:                                               ; preds = %25, %21
  %31 = load i32, i32* %4, align 4
  ret i32 %31
}

declare dso_local i32* @strdup(i8*) #1

declare dso_local i32 @line_list__add_line(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
