; ModuleID = '/home/carl/AnghaBench/freebsd/bin/date/extr_vary.c_adjyear.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/date/extr_vary.c_adjyear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tm = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tm*, i8, i32, i32)* @adjyear to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adjyear(%struct.tm* %0, i8 signext %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.tm*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.tm* %0, %struct.tm** %5, align 8
  store i8 %1, i8* %6, align 1
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load i8, i8* %6, align 1
  %10 = sext i8 %9 to i32
  switch i32 %10, label %23 [
    i32 43, label %11
    i32 45, label %17
  ]

11:                                               ; preds = %4
  %12 = load i32, i32* %7, align 4
  %13 = load %struct.tm*, %struct.tm** %5, align 8
  %14 = getelementptr inbounds %struct.tm, %struct.tm* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = add nsw i32 %15, %12
  store i32 %16, i32* %14, align 4
  br label %48

17:                                               ; preds = %4
  %18 = load i32, i32* %7, align 4
  %19 = load %struct.tm*, %struct.tm** %5, align 8
  %20 = getelementptr inbounds %struct.tm, %struct.tm* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = sub nsw i32 %21, %18
  store i32 %22, i32* %20, align 4
  br label %48

23:                                               ; preds = %4
  %24 = load i32, i32* %7, align 4
  %25 = load %struct.tm*, %struct.tm** %5, align 8
  %26 = getelementptr inbounds %struct.tm, %struct.tm* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  %27 = load %struct.tm*, %struct.tm** %5, align 8
  %28 = getelementptr inbounds %struct.tm, %struct.tm* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp slt i32 %29, 69
  br i1 %30, label %31, label %36

31:                                               ; preds = %23
  %32 = load %struct.tm*, %struct.tm** %5, align 8
  %33 = getelementptr inbounds %struct.tm, %struct.tm* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = add nsw i32 %34, 100
  store i32 %35, i32* %33, align 4
  br label %47

36:                                               ; preds = %23
  %37 = load %struct.tm*, %struct.tm** %5, align 8
  %38 = getelementptr inbounds %struct.tm, %struct.tm* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = icmp sgt i32 %39, 1900
  br i1 %40, label %41, label %46

41:                                               ; preds = %36
  %42 = load %struct.tm*, %struct.tm** %5, align 8
  %43 = getelementptr inbounds %struct.tm, %struct.tm* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = sub nsw i32 %44, 1900
  store i32 %45, i32* %43, align 4
  br label %46

46:                                               ; preds = %41, %36
  br label %47

47:                                               ; preds = %46, %31
  br label %48

48:                                               ; preds = %47, %17, %11
  %49 = load i32, i32* %8, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %48
  %52 = load %struct.tm*, %struct.tm** %5, align 8
  %53 = load i8, i8* %6, align 1
  %54 = call i32 @domktime(%struct.tm* %52, i8 signext %53)
  %55 = icmp ne i32 %54, -1
  br label %56

56:                                               ; preds = %51, %48
  %57 = phi i1 [ true, %48 ], [ %55, %51 ]
  %58 = zext i1 %57 to i32
  ret i32 %58
}

declare dso_local i32 @domktime(%struct.tm*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
