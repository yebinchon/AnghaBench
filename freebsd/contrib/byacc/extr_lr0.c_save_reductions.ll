; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/byacc/extr_lr0.c_save_reductions.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/byacc/extr_lr0.c_save_reductions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i64, i64*, %struct.TYPE_5__*, i32 }

@itemset = common dso_local global i64* null, align 8
@itemsetend = common dso_local global i64* null, align 8
@ritem = common dso_local global i32* null, align 8
@redset = common dso_local global i64* null, align 8
@this_state = common dso_local global %struct.TYPE_6__* null, align 8
@last_reduction = common dso_local global %struct.TYPE_5__* null, align 8
@first_reduction = common dso_local global %struct.TYPE_5__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @save_reductions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @save_reductions() #0 {
  %1 = alloca i64*, align 8
  %2 = alloca i64*, align 8
  %3 = alloca i64*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i64*, align 8
  store i64 0, i64* %5, align 8
  %8 = load i64*, i64** @itemset, align 8
  store i64* %8, i64** %1, align 8
  br label %9

9:                                                ; preds = %30, %0
  %10 = load i64*, i64** %1, align 8
  %11 = load i64*, i64** @itemsetend, align 8
  %12 = icmp ult i64* %10, %11
  br i1 %12, label %13, label %33

13:                                               ; preds = %9
  %14 = load i32*, i32** @ritem, align 8
  %15 = load i64*, i64** %1, align 8
  %16 = load i64, i64* %15, align 8
  %17 = getelementptr inbounds i32, i32* %14, i64 %16
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %4, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %13
  %22 = load i32, i32* %4, align 4
  %23 = sub nsw i32 0, %22
  %24 = sext i32 %23 to i64
  %25 = load i64*, i64** @redset, align 8
  %26 = load i64, i64* %5, align 8
  %27 = add i64 %26, 1
  store i64 %27, i64* %5, align 8
  %28 = getelementptr inbounds i64, i64* %25, i64 %26
  store i64 %24, i64* %28, align 8
  br label %29

29:                                               ; preds = %21, %13
  br label %30

30:                                               ; preds = %29
  %31 = load i64*, i64** %1, align 8
  %32 = getelementptr inbounds i64, i64* %31, i32 1
  store i64* %32, i64** %1, align 8
  br label %9

33:                                               ; preds = %9
  %34 = load i64, i64* %5, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %83

36:                                               ; preds = %33
  %37 = load i64, i64* %5, align 8
  %38 = sub i64 %37, 1
  %39 = trunc i64 %38 to i32
  %40 = zext i32 %39 to i64
  %41 = mul i64 %40, 8
  %42 = add i64 32, %41
  %43 = trunc i64 %42 to i32
  %44 = call i64 @allocate(i32 %43)
  %45 = inttoptr i64 %44 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %45, %struct.TYPE_5__** %6, align 8
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** @this_state, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 3
  store i32 %48, i32* %50, align 8
  %51 = load i64, i64* %5, align 8
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  store i64 %51, i64* %53, align 8
  %54 = load i64*, i64** @redset, align 8
  store i64* %54, i64** %2, align 8
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 1
  %57 = load i64*, i64** %56, align 8
  store i64* %57, i64** %3, align 8
  %58 = load i64*, i64** %2, align 8
  %59 = load i64, i64* %5, align 8
  %60 = getelementptr inbounds i64, i64* %58, i64 %59
  store i64* %60, i64** %7, align 8
  br label %61

61:                                               ; preds = %65, %36
  %62 = load i64*, i64** %2, align 8
  %63 = load i64*, i64** %7, align 8
  %64 = icmp ult i64* %62, %63
  br i1 %64, label %65, label %71

65:                                               ; preds = %61
  %66 = load i64*, i64** %2, align 8
  %67 = getelementptr inbounds i64, i64* %66, i32 1
  store i64* %67, i64** %2, align 8
  %68 = load i64, i64* %66, align 8
  %69 = load i64*, i64** %3, align 8
  %70 = getelementptr inbounds i64, i64* %69, i32 1
  store i64* %70, i64** %3, align 8
  store i64 %68, i64* %69, align 8
  br label %61

71:                                               ; preds = %61
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** @last_reduction, align 8
  %73 = icmp ne %struct.TYPE_5__* %72, null
  br i1 %73, label %74, label %79

74:                                               ; preds = %71
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** @last_reduction, align 8
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 2
  store %struct.TYPE_5__* %75, %struct.TYPE_5__** %77, align 8
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  store %struct.TYPE_5__* %78, %struct.TYPE_5__** @last_reduction, align 8
  br label %82

79:                                               ; preds = %71
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  store %struct.TYPE_5__* %80, %struct.TYPE_5__** @first_reduction, align 8
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  store %struct.TYPE_5__* %81, %struct.TYPE_5__** @last_reduction, align 8
  br label %82

82:                                               ; preds = %79, %74
  br label %83

83:                                               ; preds = %82, %33
  ret void
}

declare dso_local i64 @allocate(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
