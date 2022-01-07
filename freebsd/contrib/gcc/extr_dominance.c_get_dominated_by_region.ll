; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_dominance.c_get_dominated_by_region.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_dominance.c_get_dominated_by_region.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }

@BB_DUPLICATED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_dominated_by_region(i32 %0, %struct.TYPE_8__** %1, i32 %2, %struct.TYPE_8__** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_8__**, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_8__**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_8__*, align 8
  store i32 %0, i32* %5, align 4
  store %struct.TYPE_8__** %1, %struct.TYPE_8__*** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.TYPE_8__** %3, %struct.TYPE_8__*** %8, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %12

12:                                               ; preds = %26, %4
  %13 = load i32, i32* %10, align 4
  %14 = load i32, i32* %7, align 4
  %15 = icmp ult i32 %13, %14
  br i1 %15, label %16, label %29

16:                                               ; preds = %12
  %17 = load i32, i32* @BB_DUPLICATED, align 4
  %18 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %6, align 8
  %19 = load i32, i32* %10, align 4
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %18, i64 %20
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = or i32 %24, %17
  store i32 %25, i32* %23, align 4
  br label %26

26:                                               ; preds = %16
  %27 = load i32, i32* %10, align 4
  %28 = add i32 %27, 1
  store i32 %28, i32* %10, align 4
  br label %12

29:                                               ; preds = %12
  store i32 0, i32* %10, align 4
  br label %30

30:                                               ; preds = %65, %29
  %31 = load i32, i32* %10, align 4
  %32 = load i32, i32* %7, align 4
  %33 = icmp ult i32 %31, %32
  br i1 %33, label %34, label %68

34:                                               ; preds = %30
  %35 = load i32, i32* %5, align 4
  %36 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %6, align 8
  %37 = load i32, i32* %10, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %36, i64 %38
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %39, align 8
  %41 = call %struct.TYPE_8__* @first_dom_son(i32 %35, %struct.TYPE_8__* %40)
  store %struct.TYPE_8__* %41, %struct.TYPE_8__** %11, align 8
  br label %42

42:                                               ; preds = %60, %34
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %44 = icmp ne %struct.TYPE_8__* %43, null
  br i1 %44, label %45, label %64

45:                                               ; preds = %42
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @BB_DUPLICATED, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %59, label %52

52:                                               ; preds = %45
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %54 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %8, align 8
  %55 = load i32, i32* %9, align 4
  %56 = add i32 %55, 1
  store i32 %56, i32* %9, align 4
  %57 = zext i32 %55 to i64
  %58 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %54, i64 %57
  store %struct.TYPE_8__* %53, %struct.TYPE_8__** %58, align 8
  br label %59

59:                                               ; preds = %52, %45
  br label %60

60:                                               ; preds = %59
  %61 = load i32, i32* %5, align 4
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %63 = call %struct.TYPE_8__* @next_dom_son(i32 %61, %struct.TYPE_8__* %62)
  store %struct.TYPE_8__* %63, %struct.TYPE_8__** %11, align 8
  br label %42

64:                                               ; preds = %42
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* %10, align 4
  %67 = add i32 %66, 1
  store i32 %67, i32* %10, align 4
  br label %30

68:                                               ; preds = %30
  store i32 0, i32* %10, align 4
  br label %69

69:                                               ; preds = %84, %68
  %70 = load i32, i32* %10, align 4
  %71 = load i32, i32* %7, align 4
  %72 = icmp ult i32 %70, %71
  br i1 %72, label %73, label %87

73:                                               ; preds = %69
  %74 = load i32, i32* @BB_DUPLICATED, align 4
  %75 = xor i32 %74, -1
  %76 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %6, align 8
  %77 = load i32, i32* %10, align 4
  %78 = zext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %76, i64 %78
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = and i32 %82, %75
  store i32 %83, i32* %81, align 4
  br label %84

84:                                               ; preds = %73
  %85 = load i32, i32* %10, align 4
  %86 = add i32 %85, 1
  store i32 %86, i32* %10, align 4
  br label %69

87:                                               ; preds = %69
  %88 = load i32, i32* %9, align 4
  ret i32 %88
}

declare dso_local %struct.TYPE_8__* @first_dom_son(i32, %struct.TYPE_8__*) #1

declare dso_local %struct.TYPE_8__* @next_dom_son(i32, %struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
