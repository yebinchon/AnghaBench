; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_local-alloc.c_alloc_qty.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_local-alloc.c_alloc_qty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@next_qty = common dso_local global i32 0, align 4
@reg_qty = common dso_local global i32* null, align 8
@reg_offset = common dso_local global i64* null, align 8
@reg_next_in_qty = common dso_local global i32* null, align 8
@qty = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, i32)* @alloc_qty to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @alloc_qty(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load i32, i32* @next_qty, align 4
  %11 = add nsw i32 %10, 1
  store i32 %11, i32* @next_qty, align 4
  store i32 %10, i32* %9, align 4
  %12 = load i32, i32* %9, align 4
  %13 = load i32*, i32** @reg_qty, align 8
  %14 = load i32, i32* %5, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32, i32* %13, i64 %15
  store i32 %12, i32* %16, align 4
  %17 = load i64*, i64** @reg_offset, align 8
  %18 = load i32, i32* %5, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i64, i64* %17, i64 %19
  store i64 0, i64* %20, align 8
  %21 = load i32*, i32** @reg_next_in_qty, align 8
  %22 = load i32, i32* %5, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  store i32 -1, i32* %24, align 4
  %25 = load i32, i32* %5, align 4
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** @qty, align 8
  %27 = load i32, i32* %9, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  store i32 %25, i32* %30, align 4
  %31 = load i32, i32* %7, align 4
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** @qty, align 8
  %33 = load i32, i32* %9, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  store i32 %31, i32* %36, align 4
  %37 = load i32, i32* %6, align 4
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** @qty, align 8
  %39 = load i32, i32* %9, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 2
  store i32 %37, i32* %42, align 4
  %43 = load i32, i32* %8, align 4
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** @qty, align 8
  %45 = load i32, i32* %9, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 3
  store i32 %43, i32* %48, align 4
  %49 = load i32, i32* %5, align 4
  %50 = call i32 @REG_N_CALLS_CROSSED(i32 %49)
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** @qty, align 8
  %52 = load i32, i32* %9, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 9
  store i32 %50, i32* %55, align 4
  %56 = load i32, i32* %5, align 4
  %57 = call i32 @REG_N_THROWING_CALLS_CROSSED(i32 %56)
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** @qty, align 8
  %59 = load i32, i32* %9, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 8
  store i32 %57, i32* %62, align 4
  %63 = load i32, i32* %5, align 4
  %64 = call i32 @reg_preferred_class(i32 %63)
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** @qty, align 8
  %66 = load i32, i32* %9, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 7
  store i32 %64, i32* %69, align 4
  %70 = load i32, i32* %5, align 4
  %71 = call i32 @reg_alternate_class(i32 %70)
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** @qty, align 8
  %73 = load i32, i32* %9, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 6
  store i32 %71, i32* %76, align 4
  %77 = load i32, i32* %5, align 4
  %78 = call i32 @REG_N_REFS(i32 %77)
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** @qty, align 8
  %80 = load i32, i32* %9, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 5
  store i32 %78, i32* %83, align 4
  %84 = load i32, i32* %5, align 4
  %85 = call i32 @REG_FREQ(i32 %84)
  %86 = load %struct.TYPE_2__*, %struct.TYPE_2__** @qty, align 8
  %87 = load i32, i32* %9, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 4
  store i32 %85, i32* %90, align 4
  ret void
}

declare dso_local i32 @REG_N_CALLS_CROSSED(i32) #1

declare dso_local i32 @REG_N_THROWING_CALLS_CROSSED(i32) #1

declare dso_local i32 @reg_preferred_class(i32) #1

declare dso_local i32 @reg_alternate_class(i32) #1

declare dso_local i32 @REG_N_REFS(i32) #1

declare dso_local i32 @REG_FREQ(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
