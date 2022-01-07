; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_except.c_collect_eh_region_array.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_except.c_collect_eh_region_array.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i64, %struct.eh_region* }
%struct.eh_region = type { %struct.eh_region*, %struct.eh_region*, %struct.eh_region*, i32 }

@cfun = common dso_local global %struct.TYPE_4__* null, align 8
@eh_region = common dso_local global i32 0, align 4
@gc = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @collect_eh_region_array() #0 {
  %1 = alloca %struct.eh_region*, align 8
  %2 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cfun, align 8
  %3 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 0
  %4 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %5 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 2
  %6 = load %struct.eh_region*, %struct.eh_region** %5, align 8
  store %struct.eh_region* %6, %struct.eh_region** %1, align 8
  %7 = load %struct.eh_region*, %struct.eh_region** %1, align 8
  %8 = icmp ne %struct.eh_region* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %0
  br label %81

10:                                               ; preds = %0
  %11 = load i32, i32* @eh_region, align 4
  %12 = load i32, i32* @gc, align 4
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cfun, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cfun, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = add nsw i64 %22, 1
  %24 = call i32 @VEC_safe_grow(i32 %11, i32 %12, i32 %17, i64 %23)
  %25 = load i32, i32* @eh_region, align 4
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cfun, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @VEC_replace(i32 %25, i32 %30, i32 0, %struct.eh_region* null)
  br label %32

32:                                               ; preds = %10, %80
  %33 = load i32, i32* @eh_region, align 4
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cfun, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.eh_region*, %struct.eh_region** %1, align 8
  %40 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.eh_region*, %struct.eh_region** %1, align 8
  %43 = call i32 @VEC_replace(i32 %33, i32 %38, i32 %41, %struct.eh_region* %42)
  %44 = load %struct.eh_region*, %struct.eh_region** %1, align 8
  %45 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %44, i32 0, i32 2
  %46 = load %struct.eh_region*, %struct.eh_region** %45, align 8
  %47 = icmp ne %struct.eh_region* %46, null
  br i1 %47, label %48, label %52

48:                                               ; preds = %32
  %49 = load %struct.eh_region*, %struct.eh_region** %1, align 8
  %50 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %49, i32 0, i32 2
  %51 = load %struct.eh_region*, %struct.eh_region** %50, align 8
  store %struct.eh_region* %51, %struct.eh_region** %1, align 8
  br label %80

52:                                               ; preds = %32
  %53 = load %struct.eh_region*, %struct.eh_region** %1, align 8
  %54 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %53, i32 0, i32 0
  %55 = load %struct.eh_region*, %struct.eh_region** %54, align 8
  %56 = icmp ne %struct.eh_region* %55, null
  br i1 %56, label %57, label %61

57:                                               ; preds = %52
  %58 = load %struct.eh_region*, %struct.eh_region** %1, align 8
  %59 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %58, i32 0, i32 0
  %60 = load %struct.eh_region*, %struct.eh_region** %59, align 8
  store %struct.eh_region* %60, %struct.eh_region** %1, align 8
  br label %79

61:                                               ; preds = %52
  br label %62

62:                                               ; preds = %70, %61
  %63 = load %struct.eh_region*, %struct.eh_region** %1, align 8
  %64 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %63, i32 0, i32 1
  %65 = load %struct.eh_region*, %struct.eh_region** %64, align 8
  store %struct.eh_region* %65, %struct.eh_region** %1, align 8
  %66 = load %struct.eh_region*, %struct.eh_region** %1, align 8
  %67 = icmp eq %struct.eh_region* %66, null
  br i1 %67, label %68, label %69

68:                                               ; preds = %62
  br label %81

69:                                               ; preds = %62
  br label %70

70:                                               ; preds = %69
  %71 = load %struct.eh_region*, %struct.eh_region** %1, align 8
  %72 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %71, i32 0, i32 0
  %73 = load %struct.eh_region*, %struct.eh_region** %72, align 8
  %74 = icmp eq %struct.eh_region* %73, null
  br i1 %74, label %62, label %75

75:                                               ; preds = %70
  %76 = load %struct.eh_region*, %struct.eh_region** %1, align 8
  %77 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %76, i32 0, i32 0
  %78 = load %struct.eh_region*, %struct.eh_region** %77, align 8
  store %struct.eh_region* %78, %struct.eh_region** %1, align 8
  br label %79

79:                                               ; preds = %75, %57
  br label %80

80:                                               ; preds = %79, %48
  br label %32

81:                                               ; preds = %68, %9
  ret void
}

declare dso_local i32 @VEC_safe_grow(i32, i32, i32, i64) #1

declare dso_local i32 @VEC_replace(i32, i32, i32, %struct.eh_region*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
