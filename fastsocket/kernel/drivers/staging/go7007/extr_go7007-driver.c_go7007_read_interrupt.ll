; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/go7007/extr_go7007-driver.c_go7007_read_interrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/go7007/extr_go7007-driver.c_go7007_read_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.go7007 = type { i32, i32, i64, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.go7007*)* }

@HZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"timeout waiting for read interrupt\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @go7007_read_interrupt(%struct.go7007* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.go7007*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  store %struct.go7007* %0, %struct.go7007** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %8 = load %struct.go7007*, %struct.go7007** %5, align 8
  %9 = getelementptr inbounds %struct.go7007, %struct.go7007* %8, i32 0, i32 2
  store i64 0, i64* %9, align 8
  %10 = load %struct.go7007*, %struct.go7007** %5, align 8
  %11 = getelementptr inbounds %struct.go7007, %struct.go7007* %10, i32 0, i32 5
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32 (%struct.go7007*)*, i32 (%struct.go7007*)** %13, align 8
  %15 = load %struct.go7007*, %struct.go7007** %5, align 8
  %16 = call i32 %14(%struct.go7007* %15)
  %17 = load %struct.go7007*, %struct.go7007** %5, align 8
  %18 = getelementptr inbounds %struct.go7007, %struct.go7007* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.go7007*, %struct.go7007** %5, align 8
  %21 = getelementptr inbounds %struct.go7007, %struct.go7007* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = load i32, i32* @HZ, align 4
  %24 = mul nsw i32 5, %23
  %25 = call i64 @wait_event_timeout(i32 %19, i64 %22, i32 %24)
  %26 = icmp slt i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %3
  %28 = load %struct.go7007*, %struct.go7007** %5, align 8
  %29 = getelementptr inbounds %struct.go7007, %struct.go7007* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @v4l2_err(i32 %30, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %50

32:                                               ; preds = %3
  %33 = load %struct.go7007*, %struct.go7007** %5, align 8
  %34 = getelementptr inbounds %struct.go7007, %struct.go7007* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %32
  store i32 -1, i32* %4, align 4
  br label %50

38:                                               ; preds = %32
  %39 = load %struct.go7007*, %struct.go7007** %5, align 8
  %40 = getelementptr inbounds %struct.go7007, %struct.go7007* %39, i32 0, i32 2
  store i64 0, i64* %40, align 8
  %41 = load %struct.go7007*, %struct.go7007** %5, align 8
  %42 = getelementptr inbounds %struct.go7007, %struct.go7007* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = and i32 %43, 65534
  %45 = load i32*, i32** %6, align 8
  store i32 %44, i32* %45, align 4
  %46 = load %struct.go7007*, %struct.go7007** %5, align 8
  %47 = getelementptr inbounds %struct.go7007, %struct.go7007* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load i32*, i32** %7, align 8
  store i32 %48, i32* %49, align 4
  store i32 0, i32* %4, align 4
  br label %50

50:                                               ; preds = %38, %37, %27
  %51 = load i32, i32* %4, align 4
  ret i32 %51
}

declare dso_local i64 @wait_event_timeout(i32, i64, i32) #1

declare dso_local i32 @v4l2_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
