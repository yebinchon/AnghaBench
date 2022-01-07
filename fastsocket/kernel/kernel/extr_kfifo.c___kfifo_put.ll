; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_kfifo.c___kfifo_put.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_kfifo.c___kfifo_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kfifo = type { i32, i32, i32, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__kfifo_put(%struct.kfifo* %0, i8* %1, i32 %2) #0 {
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
  %16 = load %struct.kfifo*, %struct.kfifo** %4, align 8
  %17 = getelementptr inbounds %struct.kfifo, %struct.kfifo* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = add nsw i32 %15, %18
  %20 = call i32 @min(i32 %8, i32 %19)
  store i32 %20, i32* %6, align 4
  %21 = call i32 (...) @smp_mb()
  %22 = load i32, i32* %6, align 4
  %23 = load %struct.kfifo*, %struct.kfifo** %4, align 8
  %24 = getelementptr inbounds %struct.kfifo, %struct.kfifo* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.kfifo*, %struct.kfifo** %4, align 8
  %27 = getelementptr inbounds %struct.kfifo, %struct.kfifo* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.kfifo*, %struct.kfifo** %4, align 8
  %30 = getelementptr inbounds %struct.kfifo, %struct.kfifo* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = sub nsw i32 %31, 1
  %33 = and i32 %28, %32
  %34 = sub nsw i32 %25, %33
  %35 = call i32 @min(i32 %22, i32 %34)
  store i32 %35, i32* %7, align 4
  %36 = load %struct.kfifo*, %struct.kfifo** %4, align 8
  %37 = getelementptr inbounds %struct.kfifo, %struct.kfifo* %36, i32 0, i32 3
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.kfifo*, %struct.kfifo** %4, align 8
  %40 = getelementptr inbounds %struct.kfifo, %struct.kfifo* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.kfifo*, %struct.kfifo** %4, align 8
  %43 = getelementptr inbounds %struct.kfifo, %struct.kfifo* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = sub nsw i32 %44, 1
  %46 = and i32 %41, %45
  %47 = sext i32 %46 to i64
  %48 = add nsw i64 %38, %47
  %49 = load i8*, i8** %5, align 8
  %50 = load i32, i32* %7, align 4
  %51 = call i32 @memcpy(i64 %48, i8* %49, i32 %50)
  %52 = load %struct.kfifo*, %struct.kfifo** %4, align 8
  %53 = getelementptr inbounds %struct.kfifo, %struct.kfifo* %52, i32 0, i32 3
  %54 = load i64, i64* %53, align 8
  %55 = load i8*, i8** %5, align 8
  %56 = load i32, i32* %7, align 4
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds i8, i8* %55, i64 %57
  %59 = load i32, i32* %6, align 4
  %60 = load i32, i32* %7, align 4
  %61 = sub i32 %59, %60
  %62 = call i32 @memcpy(i64 %54, i8* %58, i32 %61)
  %63 = call i32 (...) @smp_wmb()
  %64 = load i32, i32* %6, align 4
  %65 = load %struct.kfifo*, %struct.kfifo** %4, align 8
  %66 = getelementptr inbounds %struct.kfifo, %struct.kfifo* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = add i32 %67, %64
  store i32 %68, i32* %66, align 4
  %69 = load i32, i32* %6, align 4
  ret i32 %69
}

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @smp_mb(...) #1

declare dso_local i32 @memcpy(i64, i8*, i32) #1

declare dso_local i32 @smp_wmb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
