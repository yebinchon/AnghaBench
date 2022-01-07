; ModuleID = '/home/carl/AnghaBench/freebsd/bin/date/extr_vary.c_daysinmonth.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/date/extr_vary.c_daysinmonth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tm = type { i32, i32 }

@mdays = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tm*)* @daysinmonth to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @daysinmonth(%struct.tm* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tm*, align 8
  %4 = alloca i32, align 4
  store %struct.tm* %0, %struct.tm** %3, align 8
  %5 = load %struct.tm*, %struct.tm** %3, align 8
  %6 = getelementptr inbounds %struct.tm, %struct.tm* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = add nsw i32 %7, 1900
  store i32 %8, i32* %4, align 4
  %9 = load %struct.tm*, %struct.tm** %3, align 8
  %10 = getelementptr inbounds %struct.tm, %struct.tm* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = icmp eq i32 %11, 1
  br i1 %12, label %13, label %29

13:                                               ; preds = %1
  %14 = load i32, i32* %4, align 4
  %15 = srem i32 %14, 400
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %13
  store i32 29, i32* %2, align 4
  br label %49

18:                                               ; preds = %13
  %19 = load i32, i32* %4, align 4
  %20 = srem i32 %19, 100
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %18
  store i32 28, i32* %2, align 4
  br label %49

23:                                               ; preds = %18
  %24 = load i32, i32* %4, align 4
  %25 = srem i32 %24, 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %23
  store i32 29, i32* %2, align 4
  br label %49

28:                                               ; preds = %23
  store i32 28, i32* %2, align 4
  br label %49

29:                                               ; preds = %1
  %30 = load %struct.tm*, %struct.tm** %3, align 8
  %31 = getelementptr inbounds %struct.tm, %struct.tm* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = icmp sge i32 %32, 0
  br i1 %33, label %34, label %47

34:                                               ; preds = %29
  %35 = load %struct.tm*, %struct.tm** %3, align 8
  %36 = getelementptr inbounds %struct.tm, %struct.tm* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = icmp slt i32 %37, 12
  br i1 %38, label %39, label %47

39:                                               ; preds = %34
  %40 = load i32*, i32** @mdays, align 8
  %41 = load %struct.tm*, %struct.tm** %3, align 8
  %42 = getelementptr inbounds %struct.tm, %struct.tm* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %40, i64 %44
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %2, align 4
  br label %49

47:                                               ; preds = %34, %29
  br label %48

48:                                               ; preds = %47
  store i32 0, i32* %2, align 4
  br label %49

49:                                               ; preds = %48, %39, %28, %27, %22, %17
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
