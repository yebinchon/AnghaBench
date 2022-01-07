; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_real.c_lshift_significand.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_real.c_lshift_significand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32* }

@HOST_BITS_PER_LONG = common dso_local global i32 0, align 4
@SIGSZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*, %struct.TYPE_4__*, i32)* @lshift_significand to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lshift_significand(%struct.TYPE_4__* %0, %struct.TYPE_4__* %1, i32 %2) #0 {
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
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %69

18:                                               ; preds = %3
  store i32 0, i32* %7, align 4
  br label %19

19:                                               ; preds = %47, %18
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* %7, align 4
  %22 = add i32 %20, %21
  %23 = load i32, i32* @SIGSZ, align 4
  %24 = icmp ult i32 %22, %23
  br i1 %24, label %25, label %50

25:                                               ; preds = %19
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = load i32, i32* @SIGSZ, align 4
  %30 = sub i32 %29, 1
  %31 = load i32, i32* %7, align 4
  %32 = sub i32 %30, %31
  %33 = load i32, i32* %8, align 4
  %34 = sub i32 %32, %33
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %28, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = load i32, i32* @SIGSZ, align 4
  %42 = sub i32 %41, 1
  %43 = load i32, i32* %7, align 4
  %44 = sub i32 %42, %43
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %40, i64 %45
  store i32 %37, i32* %46, align 4
  br label %47

47:                                               ; preds = %25
  %48 = load i32, i32* %7, align 4
  %49 = add i32 %48, 1
  store i32 %49, i32* %7, align 4
  br label %19

50:                                               ; preds = %19
  br label %51

51:                                               ; preds = %65, %50
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* @SIGSZ, align 4
  %54 = icmp ult i32 %52, %53
  br i1 %54, label %55, label %68

55:                                               ; preds = %51
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = load i32, i32* @SIGSZ, align 4
  %60 = sub i32 %59, 1
  %61 = load i32, i32* %7, align 4
  %62 = sub i32 %60, %61
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %58, i64 %63
  store i32 0, i32* %64, align 4
  br label %65

65:                                               ; preds = %55
  %66 = load i32, i32* %7, align 4
  %67 = add i32 %66, 1
  store i32 %67, i32* %7, align 4
  br label %51

68:                                               ; preds = %51
  br label %139

69:                                               ; preds = %3
  store i32 0, i32* %7, align 4
  br label %70

70:                                               ; preds = %135, %69
  %71 = load i32, i32* %7, align 4
  %72 = load i32, i32* @SIGSZ, align 4
  %73 = icmp ult i32 %71, %72
  br i1 %73, label %74, label %138

74:                                               ; preds = %70
  %75 = load i32, i32* %8, align 4
  %76 = load i32, i32* %7, align 4
  %77 = add i32 %75, %76
  %78 = load i32, i32* @SIGSZ, align 4
  %79 = icmp uge i32 %77, %78
  br i1 %79, label %80, label %81

80:                                               ; preds = %74
  br label %94

81:                                               ; preds = %74
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  %84 = load i32*, i32** %83, align 8
  %85 = load i32, i32* @SIGSZ, align 4
  %86 = sub i32 %85, 1
  %87 = load i32, i32* %7, align 4
  %88 = sub i32 %86, %87
  %89 = load i32, i32* %8, align 4
  %90 = sub i32 %88, %89
  %91 = zext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %84, i64 %91
  %93 = load i32, i32* %92, align 4
  br label %94

94:                                               ; preds = %81, %80
  %95 = phi i32 [ 0, %80 ], [ %93, %81 ]
  %96 = load i32, i32* %6, align 4
  %97 = shl i32 %95, %96
  %98 = load i32, i32* %8, align 4
  %99 = load i32, i32* %7, align 4
  %100 = add i32 %98, %99
  %101 = add i32 %100, 1
  %102 = load i32, i32* @SIGSZ, align 4
  %103 = icmp uge i32 %101, %102
  br i1 %103, label %104, label %105

104:                                              ; preds = %94
  br label %119

105:                                              ; preds = %94
  %106 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 0
  %108 = load i32*, i32** %107, align 8
  %109 = load i32, i32* @SIGSZ, align 4
  %110 = sub i32 %109, 1
  %111 = load i32, i32* %7, align 4
  %112 = sub i32 %110, %111
  %113 = load i32, i32* %8, align 4
  %114 = sub i32 %112, %113
  %115 = sub i32 %114, 1
  %116 = zext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %108, i64 %116
  %118 = load i32, i32* %117, align 4
  br label %119

119:                                              ; preds = %105, %104
  %120 = phi i32 [ 0, %104 ], [ %118, %105 ]
  %121 = load i32, i32* @HOST_BITS_PER_LONG, align 4
  %122 = load i32, i32* %6, align 4
  %123 = sub i32 %121, %122
  %124 = lshr i32 %120, %123
  %125 = or i32 %97, %124
  %126 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i32 0, i32 0
  %128 = load i32*, i32** %127, align 8
  %129 = load i32, i32* @SIGSZ, align 4
  %130 = sub i32 %129, 1
  %131 = load i32, i32* %7, align 4
  %132 = sub i32 %130, %131
  %133 = zext i32 %132 to i64
  %134 = getelementptr inbounds i32, i32* %128, i64 %133
  store i32 %125, i32* %134, align 4
  br label %135

135:                                              ; preds = %119
  %136 = load i32, i32* %7, align 4
  %137 = add i32 %136, 1
  store i32 %137, i32* %7, align 4
  br label %70

138:                                              ; preds = %70
  br label %139

139:                                              ; preds = %138, %68
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
