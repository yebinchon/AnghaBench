; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/diff/src/extr_dir.c_dir_loop.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/diff/src/extr_dir.c_dir_loop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comparison = type { %struct.TYPE_2__*, %struct.comparison* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comparison*, i32)* @dir_loop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dir_loop(%struct.comparison* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.comparison*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.comparison*, align 8
  store %struct.comparison* %0, %struct.comparison** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.comparison*, %struct.comparison** %4, align 8
  store %struct.comparison* %7, %struct.comparison** %6, align 8
  br label %8

8:                                                ; preds = %31, %2
  %9 = load %struct.comparison*, %struct.comparison** %6, align 8
  %10 = getelementptr inbounds %struct.comparison, %struct.comparison* %9, i32 0, i32 1
  %11 = load %struct.comparison*, %struct.comparison** %10, align 8
  store %struct.comparison* %11, %struct.comparison** %6, align 8
  %12 = icmp ne %struct.comparison* %11, null
  br i1 %12, label %13, label %32

13:                                               ; preds = %8
  %14 = load %struct.comparison*, %struct.comparison** %6, align 8
  %15 = getelementptr inbounds %struct.comparison, %struct.comparison* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = load i32, i32* %5, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load %struct.comparison*, %struct.comparison** %4, align 8
  %22 = getelementptr inbounds %struct.comparison, %struct.comparison* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = load i32, i32* %5, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = call i64 @same_file(i32* %20, i32* %27)
  %29 = icmp slt i64 0, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %13
  store i32 1, i32* %3, align 4
  br label %33

31:                                               ; preds = %13
  br label %8

32:                                               ; preds = %8
  store i32 0, i32* %3, align 4
  br label %33

33:                                               ; preds = %32, %30
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local i64 @same_file(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
