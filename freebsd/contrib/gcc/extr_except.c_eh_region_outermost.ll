; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_except.c_eh_region_outermost.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_except.c_eh_region_outermost.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.function = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i32, i32 }
%struct.eh_region = type { i32, %struct.eh_region* }

@eh_region = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @eh_region_outermost(%struct.function* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.function*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.eh_region*, align 8
  %9 = alloca %struct.eh_region*, align 8
  %10 = alloca i32, align 4
  store %struct.function* %0, %struct.function** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load %struct.function*, %struct.function** %5, align 8
  %12 = getelementptr inbounds %struct.function, %struct.function* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp sgt i64 %15, 0
  %17 = zext i1 %16 to i32
  %18 = call i32 @gcc_assert(i32 %17)
  %19 = load %struct.function*, %struct.function** %5, align 8
  %20 = getelementptr inbounds %struct.function, %struct.function* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @gcc_assert(i32 %23)
  %25 = load i32, i32* @eh_region, align 4
  %26 = load %struct.function*, %struct.function** %5, align 8
  %27 = getelementptr inbounds %struct.function, %struct.function* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %6, align 4
  %32 = call %struct.eh_region* @VEC_index(i32 %25, i32 %30, i32 %31)
  store %struct.eh_region* %32, %struct.eh_region** %8, align 8
  %33 = load i32, i32* @eh_region, align 4
  %34 = load %struct.function*, %struct.function** %5, align 8
  %35 = getelementptr inbounds %struct.function, %struct.function* %34, i32 0, i32 0
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %7, align 4
  %40 = call %struct.eh_region* @VEC_index(i32 %33, i32 %38, i32 %39)
  store %struct.eh_region* %40, %struct.eh_region** %9, align 8
  %41 = load %struct.eh_region*, %struct.eh_region** %8, align 8
  %42 = icmp ne %struct.eh_region* %41, null
  %43 = zext i1 %42 to i32
  %44 = call i32 @gcc_assert(i32 %43)
  %45 = load %struct.eh_region*, %struct.eh_region** %9, align 8
  %46 = icmp ne %struct.eh_region* %45, null
  %47 = zext i1 %46 to i32
  %48 = call i32 @gcc_assert(i32 %47)
  %49 = load %struct.function*, %struct.function** %5, align 8
  %50 = getelementptr inbounds %struct.function, %struct.function* %49, i32 0, i32 0
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = add nsw i64 %53, 1
  %55 = call i32 @sbitmap_alloc(i64 %54)
  store i32 %55, i32* %10, align 4
  %56 = load i32, i32* %10, align 4
  %57 = call i32 @sbitmap_zero(i32 %56)
  br label %58

58:                                               ; preds = %67, %3
  %59 = load i32, i32* %10, align 4
  %60 = load %struct.eh_region*, %struct.eh_region** %9, align 8
  %61 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @SET_BIT(i32 %59, i32 %62)
  %64 = load %struct.eh_region*, %struct.eh_region** %9, align 8
  %65 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %64, i32 0, i32 1
  %66 = load %struct.eh_region*, %struct.eh_region** %65, align 8
  store %struct.eh_region* %66, %struct.eh_region** %9, align 8
  br label %67

67:                                               ; preds = %58
  %68 = load %struct.eh_region*, %struct.eh_region** %9, align 8
  %69 = icmp ne %struct.eh_region* %68, null
  br i1 %69, label %58, label %70

70:                                               ; preds = %67
  br label %71

71:                                               ; preds = %88, %70
  %72 = load i32, i32* %10, align 4
  %73 = load %struct.eh_region*, %struct.eh_region** %8, align 8
  %74 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = call i64 @TEST_BIT(i32 %72, i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %84

78:                                               ; preds = %71
  %79 = load i32, i32* %10, align 4
  %80 = call i32 @sbitmap_free(i32 %79)
  %81 = load %struct.eh_region*, %struct.eh_region** %8, align 8
  %82 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  store i32 %83, i32* %4, align 4
  br label %94

84:                                               ; preds = %71
  %85 = load %struct.eh_region*, %struct.eh_region** %8, align 8
  %86 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %85, i32 0, i32 1
  %87 = load %struct.eh_region*, %struct.eh_region** %86, align 8
  store %struct.eh_region* %87, %struct.eh_region** %8, align 8
  br label %88

88:                                               ; preds = %84
  %89 = load %struct.eh_region*, %struct.eh_region** %8, align 8
  %90 = icmp ne %struct.eh_region* %89, null
  br i1 %90, label %71, label %91

91:                                               ; preds = %88
  %92 = load i32, i32* %10, align 4
  %93 = call i32 @sbitmap_free(i32 %92)
  store i32 -1, i32* %4, align 4
  br label %94

94:                                               ; preds = %91, %78
  %95 = load i32, i32* %4, align 4
  ret i32 %95
}

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local %struct.eh_region* @VEC_index(i32, i32, i32) #1

declare dso_local i32 @sbitmap_alloc(i64) #1

declare dso_local i32 @sbitmap_zero(i32) #1

declare dso_local i32 @SET_BIT(i32, i32) #1

declare dso_local i64 @TEST_BIT(i32, i32) #1

declare dso_local i32 @sbitmap_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
