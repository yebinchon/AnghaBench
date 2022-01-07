; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/gcov/extr_gcc_3_4.c_gcov_iter_next.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/gcov/extr_gcc_3_4.c_gcov_iter_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gcov_iterator = type { i32, i64, i64, %struct.TYPE_4__*, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_6__ = type { i32* }
%struct.TYPE_5__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gcov_iter_next(%struct.gcov_iterator* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gcov_iterator*, align 8
  store %struct.gcov_iterator* %0, %struct.gcov_iterator** %3, align 8
  %4 = load %struct.gcov_iterator*, %struct.gcov_iterator** %3, align 8
  %5 = getelementptr inbounds %struct.gcov_iterator, %struct.gcov_iterator* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  switch i32 %6, label %84 [
    i32 134, label %7
    i32 129, label %7
    i32 131, label %7
    i32 130, label %7
    i32 132, label %7
    i32 135, label %7
    i32 137, label %12
    i32 136, label %17
    i32 133, label %49
    i32 128, label %67
  ]

7:                                                ; preds = %1, %1, %1, %1, %1, %1
  %8 = load %struct.gcov_iterator*, %struct.gcov_iterator** %3, align 8
  %9 = getelementptr inbounds %struct.gcov_iterator, %struct.gcov_iterator* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = add nsw i32 %10, 1
  store i32 %11, i32* %9, align 8
  br label %84

12:                                               ; preds = %1
  %13 = load %struct.gcov_iterator*, %struct.gcov_iterator** %3, align 8
  %14 = getelementptr inbounds %struct.gcov_iterator, %struct.gcov_iterator* %13, i32 0, i32 5
  %15 = load i32, i32* %14, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %14, align 4
  br label %17

17:                                               ; preds = %1, %12
  %18 = load %struct.gcov_iterator*, %struct.gcov_iterator** %3, align 8
  %19 = getelementptr inbounds %struct.gcov_iterator, %struct.gcov_iterator* %18, i32 0, i32 5
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.gcov_iterator*, %struct.gcov_iterator** %3, align 8
  %22 = call %struct.TYPE_6__* @get_func(%struct.gcov_iterator* %21)
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = load %struct.gcov_iterator*, %struct.gcov_iterator** %3, align 8
  %26 = getelementptr inbounds %struct.gcov_iterator, %struct.gcov_iterator* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr inbounds i32, i32* %24, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = icmp slt i32 %20, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %17
  %32 = load %struct.gcov_iterator*, %struct.gcov_iterator** %3, align 8
  %33 = getelementptr inbounds %struct.gcov_iterator, %struct.gcov_iterator* %32, i32 0, i32 0
  store i32 9, i32* %33, align 8
  br label %84

34:                                               ; preds = %17
  %35 = load %struct.gcov_iterator*, %struct.gcov_iterator** %3, align 8
  %36 = getelementptr inbounds %struct.gcov_iterator, %struct.gcov_iterator* %35, i32 0, i32 5
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.gcov_iterator*, %struct.gcov_iterator** %3, align 8
  %39 = call %struct.TYPE_5__* @get_type(%struct.gcov_iterator* %38)
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = add nsw i32 %41, %37
  store i32 %42, i32* %40, align 4
  %43 = load %struct.gcov_iterator*, %struct.gcov_iterator** %3, align 8
  %44 = getelementptr inbounds %struct.gcov_iterator, %struct.gcov_iterator* %43, i32 0, i32 5
  store i32 0, i32* %44, align 4
  %45 = load %struct.gcov_iterator*, %struct.gcov_iterator** %3, align 8
  %46 = getelementptr inbounds %struct.gcov_iterator, %struct.gcov_iterator* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = add i64 %47, 1
  store i64 %48, i64* %46, align 8
  br label %49

49:                                               ; preds = %1, %34
  %50 = load %struct.gcov_iterator*, %struct.gcov_iterator** %3, align 8
  %51 = getelementptr inbounds %struct.gcov_iterator, %struct.gcov_iterator* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.gcov_iterator*, %struct.gcov_iterator** %3, align 8
  %54 = getelementptr inbounds %struct.gcov_iterator, %struct.gcov_iterator* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = icmp ult i64 %52, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %49
  %58 = load %struct.gcov_iterator*, %struct.gcov_iterator** %3, align 8
  %59 = getelementptr inbounds %struct.gcov_iterator, %struct.gcov_iterator* %58, i32 0, i32 0
  store i32 7, i32* %59, align 8
  br label %84

60:                                               ; preds = %49
  %61 = load %struct.gcov_iterator*, %struct.gcov_iterator** %3, align 8
  %62 = getelementptr inbounds %struct.gcov_iterator, %struct.gcov_iterator* %61, i32 0, i32 1
  store i64 0, i64* %62, align 8
  %63 = load %struct.gcov_iterator*, %struct.gcov_iterator** %3, align 8
  %64 = getelementptr inbounds %struct.gcov_iterator, %struct.gcov_iterator* %63, i32 0, i32 4
  %65 = load i32, i32* %64, align 8
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %64, align 8
  br label %67

67:                                               ; preds = %1, %60
  %68 = load %struct.gcov_iterator*, %struct.gcov_iterator** %3, align 8
  %69 = getelementptr inbounds %struct.gcov_iterator, %struct.gcov_iterator* %68, i32 0, i32 4
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.gcov_iterator*, %struct.gcov_iterator** %3, align 8
  %72 = getelementptr inbounds %struct.gcov_iterator, %struct.gcov_iterator* %71, i32 0, i32 3
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = icmp slt i32 %70, %75
  br i1 %76, label %77, label %80

77:                                               ; preds = %67
  %78 = load %struct.gcov_iterator*, %struct.gcov_iterator** %3, align 8
  %79 = getelementptr inbounds %struct.gcov_iterator, %struct.gcov_iterator* %78, i32 0, i32 0
  store i32 3, i32* %79, align 8
  br label %83

80:                                               ; preds = %67
  %81 = load %struct.gcov_iterator*, %struct.gcov_iterator** %3, align 8
  %82 = getelementptr inbounds %struct.gcov_iterator, %struct.gcov_iterator* %81, i32 0, i32 0
  store i32 -1, i32* %82, align 8
  br label %83

83:                                               ; preds = %80, %77
  br label %84

84:                                               ; preds = %1, %83, %57, %31, %7
  %85 = load %struct.gcov_iterator*, %struct.gcov_iterator** %3, align 8
  %86 = getelementptr inbounds %struct.gcov_iterator, %struct.gcov_iterator* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = icmp eq i32 %87, -1
  br i1 %88, label %89, label %92

89:                                               ; preds = %84
  %90 = load i32, i32* @EINVAL, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %2, align 4
  br label %93

92:                                               ; preds = %84
  store i32 0, i32* %2, align 4
  br label %93

93:                                               ; preds = %92, %89
  %94 = load i32, i32* %2, align 4
  ret i32 %94
}

declare dso_local %struct.TYPE_6__* @get_func(%struct.gcov_iterator*) #1

declare dso_local %struct.TYPE_5__* @get_type(%struct.gcov_iterator*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
