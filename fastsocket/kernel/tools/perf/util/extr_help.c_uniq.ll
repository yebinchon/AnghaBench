; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_help.c_uniq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_help.c_uniq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmdnames = type { i32, %struct.TYPE_2__** }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cmdnames*)* @uniq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uniq(%struct.cmdnames* %0) #0 {
  %2 = alloca %struct.cmdnames*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.cmdnames* %0, %struct.cmdnames** %2, align 8
  %5 = load %struct.cmdnames*, %struct.cmdnames** %2, align 8
  %6 = getelementptr inbounds %struct.cmdnames, %struct.cmdnames* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %62

10:                                               ; preds = %1
  store i32 1, i32* %4, align 4
  store i32 1, i32* %3, align 4
  br label %11

11:                                               ; preds = %55, %10
  %12 = load i32, i32* %3, align 4
  %13 = load %struct.cmdnames*, %struct.cmdnames** %2, align 8
  %14 = getelementptr inbounds %struct.cmdnames, %struct.cmdnames* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp ult i32 %12, %15
  br i1 %16, label %17, label %58

17:                                               ; preds = %11
  %18 = load %struct.cmdnames*, %struct.cmdnames** %2, align 8
  %19 = getelementptr inbounds %struct.cmdnames, %struct.cmdnames* %18, i32 0, i32 1
  %20 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %19, align 8
  %21 = load i32, i32* %3, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %20, i64 %22
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.cmdnames*, %struct.cmdnames** %2, align 8
  %28 = getelementptr inbounds %struct.cmdnames, %struct.cmdnames* %27, i32 0, i32 1
  %29 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %28, align 8
  %30 = load i32, i32* %3, align 4
  %31 = sub i32 %30, 1
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %29, i64 %32
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i64 @strcmp(i32 %26, i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %54

39:                                               ; preds = %17
  %40 = load %struct.cmdnames*, %struct.cmdnames** %2, align 8
  %41 = getelementptr inbounds %struct.cmdnames, %struct.cmdnames* %40, i32 0, i32 1
  %42 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %41, align 8
  %43 = load i32, i32* %3, align 4
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %42, i64 %44
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = load %struct.cmdnames*, %struct.cmdnames** %2, align 8
  %48 = getelementptr inbounds %struct.cmdnames, %struct.cmdnames* %47, i32 0, i32 1
  %49 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %48, align 8
  %50 = load i32, i32* %4, align 4
  %51 = add i32 %50, 1
  store i32 %51, i32* %4, align 4
  %52 = zext i32 %50 to i64
  %53 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %49, i64 %52
  store %struct.TYPE_2__* %46, %struct.TYPE_2__** %53, align 8
  br label %54

54:                                               ; preds = %39, %17
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %3, align 4
  %57 = add i32 %56, 1
  store i32 %57, i32* %3, align 4
  br label %11

58:                                               ; preds = %11
  %59 = load i32, i32* %4, align 4
  %60 = load %struct.cmdnames*, %struct.cmdnames** %2, align 8
  %61 = getelementptr inbounds %struct.cmdnames, %struct.cmdnames* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 8
  br label %62

62:                                               ; preds = %58, %9
  ret void
}

declare dso_local i64 @strcmp(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
