; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/vt6656/extr_mib.c_STAvUpdate802_11Counter.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/vt6656/extr_mib.c_STAvUpdate802_11Counter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i8*, i32, i32, i32, i32, i8*, i8*, i8*, i8* }
%struct.TYPE_5__ = type { i64, i64, i64, i64, i64, i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @STAvUpdate802_11Counter(%struct.TYPE_6__* %0, %struct.TYPE_5__* %1, i64 %2, i64 %3, i64 %4, i64 %5) #0 {
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %7, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  store i64 %5, i64* %12, align 8
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 6
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 5
  %18 = load i64, i64* %17, align 8
  %19 = add nsw i64 %15, %18
  %20 = inttoptr i64 %19 to i8*
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 8
  store i8* %20, i8** %22, align 8
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 4
  %25 = load i64, i64* %24, align 8
  %26 = inttoptr i64 %25 to i8*
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 7
  store i8* %26, i8** %28, align 8
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 3
  %31 = load i64, i64* %30, align 8
  %32 = inttoptr i64 %31 to i8*
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 6
  store i8* %32, i8** %34, align 8
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = inttoptr i64 %37 to i8*
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 5
  store i8* %38, i8** %40, align 8
  %41 = load i64, i64* %9, align 8
  %42 = inttoptr i64 %41 to i8*
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr i8, i8* %42, i64 %46
  %48 = ptrtoint i8* %47 to i32
  store i32 %48, i32* %44, align 4
  %49 = load i64, i64* %10, align 8
  %50 = inttoptr i64 %49 to i8*
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 8
  %54 = sext i32 %53 to i64
  %55 = getelementptr i8, i8* %50, i64 %54
  %56 = ptrtoint i8* %55 to i32
  store i32 %56, i32* %52, align 8
  %57 = load i64, i64* %11, align 8
  %58 = inttoptr i64 %57 to i8*
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr i8, i8* %58, i64 %62
  %64 = ptrtoint i8* %63 to i32
  store i32 %64, i32* %60, align 4
  %65 = load i64, i64* %12, align 8
  %66 = inttoptr i64 %65 to i8*
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = sext i32 %69 to i64
  %71 = getelementptr i8, i8* %66, i64 %70
  %72 = ptrtoint i8* %71 to i32
  store i32 %72, i32* %68, align 8
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = add nsw i64 %75, %78
  %80 = inttoptr i64 %79 to i8*
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 0
  store i8* %80, i8** %82, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
