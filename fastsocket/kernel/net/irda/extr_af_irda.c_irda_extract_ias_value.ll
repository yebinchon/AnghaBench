; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/irda/extr_af_irda.c_irda_extract_ias_value.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/irda/extr_af_irda.c_irda_extract_ias_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irda_ias_set = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__, %struct.TYPE_5__, i32 }
%struct.TYPE_7__ = type { i64, i8*, i32 }
%struct.TYPE_5__ = type { i64, i8* }
%struct.ias_value = type { i32, i64, %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.irda_ias_set*, %struct.ias_value*)* @irda_extract_ias_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @irda_extract_ias_value(%struct.irda_ias_set* %0, %struct.ias_value* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.irda_ias_set*, align 8
  %5 = alloca %struct.ias_value*, align 8
  store %struct.irda_ias_set* %0, %struct.irda_ias_set** %4, align 8
  store %struct.ias_value* %1, %struct.ias_value** %5, align 8
  %6 = load %struct.ias_value*, %struct.ias_value** %5, align 8
  %7 = getelementptr inbounds %struct.ias_value, %struct.ias_value* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  switch i32 %8, label %76 [
    i32 131, label %9
    i32 129, label %17
    i32 128, label %38
    i32 130, label %75
  ]

9:                                                ; preds = %2
  %10 = load %struct.ias_value*, %struct.ias_value** %5, align 8
  %11 = getelementptr inbounds %struct.ias_value, %struct.ias_value* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.irda_ias_set*, %struct.irda_ias_set** %4, align 8
  %15 = getelementptr inbounds %struct.irda_ias_set, %struct.irda_ias_set* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 2
  store i32 %13, i32* %16, align 8
  br label %79

17:                                               ; preds = %2
  %18 = load %struct.ias_value*, %struct.ias_value** %5, align 8
  %19 = getelementptr inbounds %struct.ias_value, %struct.ias_value* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.irda_ias_set*, %struct.irda_ias_set** %4, align 8
  %22 = getelementptr inbounds %struct.irda_ias_set, %struct.irda_ias_set* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  store i64 %20, i64* %24, align 8
  %25 = load %struct.irda_ias_set*, %struct.irda_ias_set** %4, align 8
  %26 = getelementptr inbounds %struct.irda_ias_set, %struct.irda_ias_set* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 1
  %29 = load i8*, i8** %28, align 8
  %30 = load %struct.ias_value*, %struct.ias_value** %5, align 8
  %31 = getelementptr inbounds %struct.ias_value, %struct.ias_value* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.ias_value*, %struct.ias_value** %5, align 8
  %35 = getelementptr inbounds %struct.ias_value, %struct.ias_value* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = call i32 @memcpy(i8* %29, i32 %33, i64 %36)
  br label %79

38:                                               ; preds = %2
  %39 = load %struct.ias_value*, %struct.ias_value** %5, align 8
  %40 = getelementptr inbounds %struct.ias_value, %struct.ias_value* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.irda_ias_set*, %struct.irda_ias_set** %4, align 8
  %43 = getelementptr inbounds %struct.irda_ias_set, %struct.irda_ias_set* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  store i64 %41, i64* %45, align 8
  %46 = load %struct.ias_value*, %struct.ias_value** %5, align 8
  %47 = getelementptr inbounds %struct.ias_value, %struct.ias_value* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.irda_ias_set*, %struct.irda_ias_set** %4, align 8
  %50 = getelementptr inbounds %struct.irda_ias_set, %struct.irda_ias_set* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 2
  store i32 %48, i32* %52, align 8
  %53 = load %struct.irda_ias_set*, %struct.irda_ias_set** %4, align 8
  %54 = getelementptr inbounds %struct.irda_ias_set, %struct.irda_ias_set* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 1
  %57 = load i8*, i8** %56, align 8
  %58 = load %struct.ias_value*, %struct.ias_value** %5, align 8
  %59 = getelementptr inbounds %struct.ias_value, %struct.ias_value* %58, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.ias_value*, %struct.ias_value** %5, align 8
  %63 = getelementptr inbounds %struct.ias_value, %struct.ias_value* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = call i32 @memcpy(i8* %57, i32 %61, i64 %64)
  %66 = load %struct.irda_ias_set*, %struct.irda_ias_set** %4, align 8
  %67 = getelementptr inbounds %struct.irda_ias_set, %struct.irda_ias_set* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 1
  %70 = load i8*, i8** %69, align 8
  %71 = load %struct.ias_value*, %struct.ias_value** %5, align 8
  %72 = getelementptr inbounds %struct.ias_value, %struct.ias_value* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = getelementptr inbounds i8, i8* %70, i64 %73
  store i8 0, i8* %74, align 1
  br label %79

75:                                               ; preds = %2
  br label %76

76:                                               ; preds = %2, %75
  %77 = load i32, i32* @EINVAL, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %3, align 4
  br label %85

79:                                               ; preds = %38, %17, %9
  %80 = load %struct.ias_value*, %struct.ias_value** %5, align 8
  %81 = getelementptr inbounds %struct.ias_value, %struct.ias_value* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.irda_ias_set*, %struct.irda_ias_set** %4, align 8
  %84 = getelementptr inbounds %struct.irda_ias_set, %struct.irda_ias_set* %83, i32 0, i32 0
  store i32 %82, i32* %84, align 8
  store i32 0, i32* %3, align 4
  br label %85

85:                                               ; preds = %79, %76
  %86 = load i32, i32* %3, align 4
  ret i32 %86
}

declare dso_local i32 @memcpy(i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
