; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcclibs/libiberty/extr_hashtab.c_htab_create_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcclibs/libiberty/extr_hashtab.c_htab_create_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { i64, i32, i32 (%struct.TYPE_7__*)*, i64 (i64, i32)*, i32, i32, i32, i32* }

@prime_tab = common dso_local global %struct.TYPE_8__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_7__* @htab_create_alloc(i64 %0, i32 %1, i32 %2, i32 %3, i64 (i64, i32)* %4, i32 (%struct.TYPE_7__*)* %5) #0 {
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64 (i64, i32)*, align 8
  %13 = alloca i32 (%struct.TYPE_7__*)*, align 8
  %14 = alloca %struct.TYPE_7__*, align 8
  %15 = alloca i32, align 4
  store i64 %0, i64* %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i64 (i64, i32)* %4, i64 (i64, i32)** %12, align 8
  store i32 (%struct.TYPE_7__*)* %5, i32 (%struct.TYPE_7__*)** %13, align 8
  %16 = load i64, i64* %8, align 8
  %17 = call i32 @higher_prime_index(i64 %16)
  store i32 %17, i32* %15, align 4
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** @prime_tab, align 8
  %19 = load i32, i32* %15, align 4
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %8, align 8
  %24 = load i64 (i64, i32)*, i64 (i64, i32)** %12, align 8
  %25 = call i64 %24(i64 1, i32 4)
  %26 = inttoptr i64 %25 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %26, %struct.TYPE_7__** %14, align 8
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %28 = icmp eq %struct.TYPE_7__* %27, null
  br i1 %28, label %29, label %30

29:                                               ; preds = %6
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %7, align 8
  br label %72

30:                                               ; preds = %6
  %31 = load i64 (i64, i32)*, i64 (i64, i32)** %12, align 8
  %32 = load i64, i64* %8, align 8
  %33 = call i64 %31(i64 %32, i32 4)
  %34 = inttoptr i64 %33 to i32*
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 7
  store i32* %34, i32** %36, align 8
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 7
  %39 = load i32*, i32** %38, align 8
  %40 = icmp eq i32* %39, null
  br i1 %40, label %41, label %49

41:                                               ; preds = %30
  %42 = load i32 (%struct.TYPE_7__*)*, i32 (%struct.TYPE_7__*)** %13, align 8
  %43 = icmp ne i32 (%struct.TYPE_7__*)* %42, null
  br i1 %43, label %44, label %48

44:                                               ; preds = %41
  %45 = load i32 (%struct.TYPE_7__*)*, i32 (%struct.TYPE_7__*)** %13, align 8
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %47 = call i32 %45(%struct.TYPE_7__* %46)
  br label %48

48:                                               ; preds = %44, %41
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %7, align 8
  br label %72

49:                                               ; preds = %30
  %50 = load i64, i64* %8, align 8
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  store i64 %50, i64* %52, align 8
  %53 = load i32, i32* %15, align 4
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 8
  %56 = load i32, i32* %9, align 4
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 6
  store i32 %56, i32* %58, align 8
  %59 = load i32, i32* %10, align 4
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 5
  store i32 %59, i32* %61, align 4
  %62 = load i32, i32* %11, align 4
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 4
  store i32 %62, i32* %64, align 8
  %65 = load i64 (i64, i32)*, i64 (i64, i32)** %12, align 8
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 3
  store i64 (i64, i32)* %65, i64 (i64, i32)** %67, align 8
  %68 = load i32 (%struct.TYPE_7__*)*, i32 (%struct.TYPE_7__*)** %13, align 8
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 2
  store i32 (%struct.TYPE_7__*)* %68, i32 (%struct.TYPE_7__*)** %70, align 8
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  store %struct.TYPE_7__* %71, %struct.TYPE_7__** %7, align 8
  br label %72

72:                                               ; preds = %49, %48, %29
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  ret %struct.TYPE_7__* %73
}

declare dso_local i32 @higher_prime_index(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
