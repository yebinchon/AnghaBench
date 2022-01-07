; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/libiberty/extr_fibheap.c_fibheap_consolidate.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/libiberty/extr_fibheap.c_fibheap_consolidate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_15__*, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_16__*)* @fibheap_consolidate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fibheap_consolidate(%struct.TYPE_16__* %0) #0 {
  %2 = alloca %struct.TYPE_16__*, align 8
  %3 = alloca [65 x %struct.TYPE_15__*], align 16
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_15__*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %2, align 8
  store i32 65, i32* %9, align 4
  %11 = getelementptr inbounds [65 x %struct.TYPE_15__*], [65 x %struct.TYPE_15__*]* %3, i64 0, i64 0
  %12 = load i32, i32* %9, align 4
  %13 = sext i32 %12 to i64
  %14 = mul i64 8, %13
  %15 = trunc i64 %14 to i32
  %16 = call i32 @memset(%struct.TYPE_15__** %11, i32 0, i32 %15)
  br label %17

17:                                               ; preds = %60, %1
  %18 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %18, i32 0, i32 1
  %20 = load %struct.TYPE_15__*, %struct.TYPE_15__** %19, align 8
  store %struct.TYPE_15__* %20, %struct.TYPE_15__** %4, align 8
  %21 = icmp ne %struct.TYPE_15__* %20, null
  br i1 %21, label %22, label %65

22:                                               ; preds = %17
  %23 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  store %struct.TYPE_15__* %23, %struct.TYPE_15__** %6, align 8
  %24 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %25 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %26 = call i32 @fibheap_rem_root(%struct.TYPE_16__* %24, %struct.TYPE_15__* %25)
  %27 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %8, align 4
  br label %30

30:                                               ; preds = %50, %22
  %31 = load i32, i32* %8, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [65 x %struct.TYPE_15__*], [65 x %struct.TYPE_15__*]* %3, i64 0, i64 %32
  %34 = load %struct.TYPE_15__*, %struct.TYPE_15__** %33, align 8
  %35 = icmp ne %struct.TYPE_15__* %34, null
  br i1 %35, label %36, label %60

36:                                               ; preds = %30
  %37 = load i32, i32* %8, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [65 x %struct.TYPE_15__*], [65 x %struct.TYPE_15__*]* %3, i64 0, i64 %38
  %40 = load %struct.TYPE_15__*, %struct.TYPE_15__** %39, align 8
  store %struct.TYPE_15__* %40, %struct.TYPE_15__** %5, align 8
  %41 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %42 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %43 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %44 = call i64 @fibheap_compare(%struct.TYPE_16__* %41, %struct.TYPE_15__* %42, %struct.TYPE_15__* %43)
  %45 = icmp sgt i64 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %36
  %47 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  store %struct.TYPE_15__* %47, %struct.TYPE_15__** %10, align 8
  %48 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  store %struct.TYPE_15__* %48, %struct.TYPE_15__** %6, align 8
  %49 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  store %struct.TYPE_15__* %49, %struct.TYPE_15__** %5, align 8
  br label %50

50:                                               ; preds = %46, %36
  %51 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %52 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %53 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %54 = call i32 @fibheap_link(%struct.TYPE_16__* %51, %struct.TYPE_15__* %52, %struct.TYPE_15__* %53)
  %55 = load i32, i32* %8, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds [65 x %struct.TYPE_15__*], [65 x %struct.TYPE_15__*]* %3, i64 0, i64 %56
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %57, align 8
  %58 = load i32, i32* %8, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %8, align 4
  br label %30

60:                                               ; preds = %30
  %61 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %62 = load i32, i32* %8, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds [65 x %struct.TYPE_15__*], [65 x %struct.TYPE_15__*]* %3, i64 0, i64 %63
  store %struct.TYPE_15__* %61, %struct.TYPE_15__** %64, align 8
  br label %17

65:                                               ; preds = %17
  %66 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %67 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %66, i32 0, i32 0
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %67, align 8
  store i32 0, i32* %7, align 4
  br label %68

68:                                               ; preds = %109, %65
  %69 = load i32, i32* %7, align 4
  %70 = load i32, i32* %9, align 4
  %71 = icmp slt i32 %69, %70
  br i1 %71, label %72, label %112

72:                                               ; preds = %68
  %73 = load i32, i32* %7, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds [65 x %struct.TYPE_15__*], [65 x %struct.TYPE_15__*]* %3, i64 0, i64 %74
  %76 = load %struct.TYPE_15__*, %struct.TYPE_15__** %75, align 8
  %77 = icmp ne %struct.TYPE_15__* %76, null
  br i1 %77, label %78, label %108

78:                                               ; preds = %72
  %79 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %80 = load i32, i32* %7, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds [65 x %struct.TYPE_15__*], [65 x %struct.TYPE_15__*]* %3, i64 0, i64 %81
  %83 = load %struct.TYPE_15__*, %struct.TYPE_15__** %82, align 8
  %84 = call i32 @fibheap_ins_root(%struct.TYPE_16__* %79, %struct.TYPE_15__* %83)
  %85 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %86 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %85, i32 0, i32 0
  %87 = load %struct.TYPE_15__*, %struct.TYPE_15__** %86, align 8
  %88 = icmp eq %struct.TYPE_15__* %87, null
  br i1 %88, label %100, label %89

89:                                               ; preds = %78
  %90 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %91 = load i32, i32* %7, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds [65 x %struct.TYPE_15__*], [65 x %struct.TYPE_15__*]* %3, i64 0, i64 %92
  %94 = load %struct.TYPE_15__*, %struct.TYPE_15__** %93, align 8
  %95 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %96 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %95, i32 0, i32 0
  %97 = load %struct.TYPE_15__*, %struct.TYPE_15__** %96, align 8
  %98 = call i64 @fibheap_compare(%struct.TYPE_16__* %90, %struct.TYPE_15__* %94, %struct.TYPE_15__* %97)
  %99 = icmp slt i64 %98, 0
  br i1 %99, label %100, label %107

100:                                              ; preds = %89, %78
  %101 = load i32, i32* %7, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds [65 x %struct.TYPE_15__*], [65 x %struct.TYPE_15__*]* %3, i64 0, i64 %102
  %104 = load %struct.TYPE_15__*, %struct.TYPE_15__** %103, align 8
  %105 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %106 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %105, i32 0, i32 0
  store %struct.TYPE_15__* %104, %struct.TYPE_15__** %106, align 8
  br label %107

107:                                              ; preds = %100, %89
  br label %108

108:                                              ; preds = %107, %72
  br label %109

109:                                              ; preds = %108
  %110 = load i32, i32* %7, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %7, align 4
  br label %68

112:                                              ; preds = %68
  ret void
}

declare dso_local i32 @memset(%struct.TYPE_15__**, i32, i32) #1

declare dso_local i32 @fibheap_rem_root(%struct.TYPE_16__*, %struct.TYPE_15__*) #1

declare dso_local i64 @fibheap_compare(%struct.TYPE_16__*, %struct.TYPE_15__*, %struct.TYPE_15__*) #1

declare dso_local i32 @fibheap_link(%struct.TYPE_16__*, %struct.TYPE_15__*, %struct.TYPE_15__*) #1

declare dso_local i32 @fibheap_ins_root(%struct.TYPE_16__*, %struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
