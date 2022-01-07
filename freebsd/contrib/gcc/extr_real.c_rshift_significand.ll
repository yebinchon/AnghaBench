; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_real.c_rshift_significand.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_real.c_rshift_significand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32* }

@HOST_BITS_PER_LONG = common dso_local global i32 0, align 4
@SIGSZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*, %struct.TYPE_4__*, i32)* @rshift_significand to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rshift_significand(%struct.TYPE_4__* %0, %struct.TYPE_4__* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = load i32, i32* @HOST_BITS_PER_LONG, align 4
  %11 = udiv i32 %9, %10
  store i32 %11, i32* %8, align 4
  %12 = load i32, i32* @HOST_BITS_PER_LONG, align 4
  %13 = sub i32 %12, 1
  %14 = load i32, i32* %6, align 4
  %15 = and i32 %14, %13
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %79

18:                                               ; preds = %3
  store i32 0, i32* %7, align 4
  br label %19

19:                                               ; preds = %75, %18
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* @SIGSZ, align 4
  %22 = icmp ult i32 %20, %21
  br i1 %22, label %23, label %78

23:                                               ; preds = %19
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* %7, align 4
  %26 = add i32 %24, %25
  %27 = load i32, i32* @SIGSZ, align 4
  %28 = icmp uge i32 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %23
  br label %40

30:                                               ; preds = %23
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* %7, align 4
  %36 = add i32 %34, %35
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %33, i64 %37
  %39 = load i32, i32* %38, align 4
  br label %40

40:                                               ; preds = %30, %29
  %41 = phi i32 [ 0, %29 ], [ %39, %30 ]
  %42 = load i32, i32* %6, align 4
  %43 = lshr i32 %41, %42
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* %7, align 4
  %46 = add i32 %44, %45
  %47 = add i32 %46, 1
  %48 = load i32, i32* @SIGSZ, align 4
  %49 = icmp uge i32 %47, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %40
  br label %62

51:                                               ; preds = %40
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* %7, align 4
  %57 = add i32 %55, %56
  %58 = add i32 %57, 1
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %54, i64 %59
  %61 = load i32, i32* %60, align 4
  br label %62

62:                                               ; preds = %51, %50
  %63 = phi i32 [ 0, %50 ], [ %61, %51 ]
  %64 = load i32, i32* @HOST_BITS_PER_LONG, align 4
  %65 = load i32, i32* %6, align 4
  %66 = sub i32 %64, %65
  %67 = shl i32 %63, %66
  %68 = or i32 %43, %67
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = load i32, i32* %7, align 4
  %73 = zext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  store i32 %68, i32* %74, align 4
  br label %75

75:                                               ; preds = %62
  %76 = load i32, i32* %7, align 4
  %77 = add i32 %76, 1
  store i32 %77, i32* %7, align 4
  br label %19

78:                                               ; preds = %19
  br label %121

79:                                               ; preds = %3
  store i32 0, i32* %7, align 4
  br label %80

80:                                               ; preds = %102, %79
  %81 = load i32, i32* %8, align 4
  %82 = load i32, i32* %7, align 4
  %83 = add i32 %81, %82
  %84 = load i32, i32* @SIGSZ, align 4
  %85 = icmp ult i32 %83, %84
  br i1 %85, label %86, label %105

86:                                               ; preds = %80
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  %89 = load i32*, i32** %88, align 8
  %90 = load i32, i32* %8, align 4
  %91 = load i32, i32* %7, align 4
  %92 = add i32 %90, %91
  %93 = zext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %89, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 0
  %98 = load i32*, i32** %97, align 8
  %99 = load i32, i32* %7, align 4
  %100 = zext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %98, i64 %100
  store i32 %95, i32* %101, align 4
  br label %102

102:                                              ; preds = %86
  %103 = load i32, i32* %7, align 4
  %104 = add i32 %103, 1
  store i32 %104, i32* %7, align 4
  br label %80

105:                                              ; preds = %80
  br label %106

106:                                              ; preds = %117, %105
  %107 = load i32, i32* %7, align 4
  %108 = load i32, i32* @SIGSZ, align 4
  %109 = icmp ult i32 %107, %108
  br i1 %109, label %110, label %120

110:                                              ; preds = %106
  %111 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 0
  %113 = load i32*, i32** %112, align 8
  %114 = load i32, i32* %7, align 4
  %115 = zext i32 %114 to i64
  %116 = getelementptr inbounds i32, i32* %113, i64 %115
  store i32 0, i32* %116, align 4
  br label %117

117:                                              ; preds = %110
  %118 = load i32, i32* %7, align 4
  %119 = add i32 %118, 1
  store i32 %119, i32* %7, align 4
  br label %106

120:                                              ; preds = %106
  br label %121

121:                                              ; preds = %120, %78
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
