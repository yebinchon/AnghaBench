; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_kfifo.c___kfifo_get.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_kfifo.c___kfifo_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kfifo = type { i32, i32, i32, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__kfifo_get(%struct.kfifo* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.kfifo*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.kfifo* %0, %struct.kfifo** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %6, align 4
  %9 = load %struct.kfifo*, %struct.kfifo** %4, align 8
  %10 = getelementptr inbounds %struct.kfifo, %struct.kfifo* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load %struct.kfifo*, %struct.kfifo** %4, align 8
  %13 = getelementptr inbounds %struct.kfifo, %struct.kfifo* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = sub nsw i32 %11, %14
  %16 = call i32 @min(i32 %8, i32 %15)
  store i32 %16, i32* %6, align 4
  %17 = call i32 (...) @smp_rmb()
  %18 = load i32, i32* %6, align 4
  %19 = load %struct.kfifo*, %struct.kfifo** %4, align 8
  %20 = getelementptr inbounds %struct.kfifo, %struct.kfifo* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.kfifo*, %struct.kfifo** %4, align 8
  %23 = getelementptr inbounds %struct.kfifo, %struct.kfifo* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.kfifo*, %struct.kfifo** %4, align 8
  %26 = getelementptr inbounds %struct.kfifo, %struct.kfifo* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = sub nsw i32 %27, 1
  %29 = and i32 %24, %28
  %30 = sub nsw i32 %21, %29
  %31 = call i32 @min(i32 %18, i32 %30)
  store i32 %31, i32* %7, align 4
  %32 = load i8*, i8** %5, align 8
  %33 = load %struct.kfifo*, %struct.kfifo** %4, align 8
  %34 = getelementptr inbounds %struct.kfifo, %struct.kfifo* %33, i32 0, i32 3
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.kfifo*, %struct.kfifo** %4, align 8
  %37 = getelementptr inbounds %struct.kfifo, %struct.kfifo* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.kfifo*, %struct.kfifo** %4, align 8
  %40 = getelementptr inbounds %struct.kfifo, %struct.kfifo* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = sub nsw i32 %41, 1
  %43 = and i32 %38, %42
  %44 = sext i32 %43 to i64
  %45 = add nsw i64 %35, %44
  %46 = load i32, i32* %7, align 4
  %47 = call i32 @memcpy(i8* %32, i64 %45, i32 %46)
  %48 = load i8*, i8** %5, align 8
  %49 = load i32, i32* %7, align 4
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds i8, i8* %48, i64 %50
  %52 = load %struct.kfifo*, %struct.kfifo** %4, align 8
  %53 = getelementptr inbounds %struct.kfifo, %struct.kfifo* %52, i32 0, i32 3
  %54 = load i64, i64* %53, align 8
  %55 = load i32, i32* %6, align 4
  %56 = load i32, i32* %7, align 4
  %57 = sub i32 %55, %56
  %58 = call i32 @memcpy(i8* %51, i64 %54, i32 %57)
  %59 = call i32 (...) @smp_mb()
  %60 = load i32, i32* %6, align 4
  %61 = load %struct.kfifo*, %struct.kfifo** %4, align 8
  %62 = getelementptr inbounds %struct.kfifo, %struct.kfifo* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = add i32 %63, %60
  store i32 %64, i32* %62, align 4
  %65 = load i32, i32* %6, align 4
  ret i32 %65
}

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @smp_rmb(...) #1

declare dso_local i32 @memcpy(i8*, i64, i32) #1

declare dso_local i32 @smp_mb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
