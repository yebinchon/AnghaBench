; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_real.c_sticky_rshift_significand.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_real.c_sticky_rshift_significand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64* }

@HOST_BITS_PER_LONG = common dso_local global i32 0, align 4
@SIGSZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, %struct.TYPE_4__*, i32)* @sticky_rshift_significand to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sticky_rshift_significand(%struct.TYPE_4__* %0, %struct.TYPE_4__* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %5, align 8
  store i32 %2, i32* %6, align 4
  store i64 0, i64* %7, align 8
  store i32 0, i32* %9, align 4
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* @HOST_BITS_PER_LONG, align 4
  %12 = icmp uge i32 %10, %11
  br i1 %12, label %13, label %39

13:                                               ; preds = %3
  store i32 0, i32* %8, align 4
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @HOST_BITS_PER_LONG, align 4
  %16 = udiv i32 %14, %15
  store i32 %16, i32* %9, align 4
  br label %17

17:                                               ; preds = %31, %13
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* %9, align 4
  %20 = icmp ult i32 %18, %19
  br i1 %20, label %21, label %34

21:                                               ; preds = %17
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i64*, i64** %23, align 8
  %25 = load i32, i32* %8, align 4
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds i64, i64* %24, i64 %26
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* %7, align 8
  %30 = or i64 %29, %28
  store i64 %30, i64* %7, align 8
  br label %31

31:                                               ; preds = %21
  %32 = load i32, i32* %8, align 4
  %33 = add i32 %32, 1
  store i32 %33, i32* %8, align 4
  br label %17

34:                                               ; preds = %17
  %35 = load i32, i32* @HOST_BITS_PER_LONG, align 4
  %36 = sub i32 %35, 1
  %37 = load i32, i32* %6, align 4
  %38 = and i32 %37, %36
  store i32 %38, i32* %6, align 4
  br label %39

39:                                               ; preds = %34, %3
  %40 = load i32, i32* %6, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %119

42:                                               ; preds = %39
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i64*, i64** %44, align 8
  %46 = load i32, i32* %9, align 4
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds i64, i64* %45, i64 %47
  %49 = load i64, i64* %48, align 8
  %50 = load i32, i32* %6, align 4
  %51 = zext i32 %50 to i64
  %52 = shl i64 1, %51
  %53 = sub i64 %52, 1
  %54 = and i64 %49, %53
  %55 = load i64, i64* %7, align 8
  %56 = or i64 %55, %54
  store i64 %56, i64* %7, align 8
  store i32 0, i32* %8, align 4
  br label %57

57:                                               ; preds = %115, %42
  %58 = load i32, i32* %8, align 4
  %59 = load i32, i32* @SIGSZ, align 4
  %60 = icmp ult i32 %58, %59
  br i1 %60, label %61, label %118

61:                                               ; preds = %57
  %62 = load i32, i32* %9, align 4
  %63 = load i32, i32* %8, align 4
  %64 = add i32 %62, %63
  %65 = load i32, i32* @SIGSZ, align 4
  %66 = icmp uge i32 %64, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %61
  br label %78

68:                                               ; preds = %61
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = load i64*, i64** %70, align 8
  %72 = load i32, i32* %9, align 4
  %73 = load i32, i32* %8, align 4
  %74 = add i32 %72, %73
  %75 = zext i32 %74 to i64
  %76 = getelementptr inbounds i64, i64* %71, i64 %75
  %77 = load i64, i64* %76, align 8
  br label %78

78:                                               ; preds = %68, %67
  %79 = phi i64 [ 0, %67 ], [ %77, %68 ]
  %80 = load i32, i32* %6, align 4
  %81 = zext i32 %80 to i64
  %82 = lshr i64 %79, %81
  %83 = load i32, i32* %9, align 4
  %84 = load i32, i32* %8, align 4
  %85 = add i32 %83, %84
  %86 = add i32 %85, 1
  %87 = load i32, i32* @SIGSZ, align 4
  %88 = icmp uge i32 %86, %87
  br i1 %88, label %89, label %90

89:                                               ; preds = %78
  br label %101

90:                                               ; preds = %78
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 0
  %93 = load i64*, i64** %92, align 8
  %94 = load i32, i32* %9, align 4
  %95 = load i32, i32* %8, align 4
  %96 = add i32 %94, %95
  %97 = add i32 %96, 1
  %98 = zext i32 %97 to i64
  %99 = getelementptr inbounds i64, i64* %93, i64 %98
  %100 = load i64, i64* %99, align 8
  br label %101

101:                                              ; preds = %90, %89
  %102 = phi i64 [ 0, %89 ], [ %100, %90 ]
  %103 = load i32, i32* @HOST_BITS_PER_LONG, align 4
  %104 = load i32, i32* %6, align 4
  %105 = sub i32 %103, %104
  %106 = zext i32 %105 to i64
  %107 = shl i64 %102, %106
  %108 = or i64 %82, %107
  %109 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 0
  %111 = load i64*, i64** %110, align 8
  %112 = load i32, i32* %8, align 4
  %113 = zext i32 %112 to i64
  %114 = getelementptr inbounds i64, i64* %111, i64 %113
  store i64 %108, i64* %114, align 8
  br label %115

115:                                              ; preds = %101
  %116 = load i32, i32* %8, align 4
  %117 = add i32 %116, 1
  store i32 %117, i32* %8, align 4
  br label %57

118:                                              ; preds = %57
  br label %161

119:                                              ; preds = %39
  store i32 0, i32* %8, align 4
  br label %120

120:                                              ; preds = %142, %119
  %121 = load i32, i32* %9, align 4
  %122 = load i32, i32* %8, align 4
  %123 = add i32 %121, %122
  %124 = load i32, i32* @SIGSZ, align 4
  %125 = icmp ult i32 %123, %124
  br i1 %125, label %126, label %145

126:                                              ; preds = %120
  %127 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 0
  %129 = load i64*, i64** %128, align 8
  %130 = load i32, i32* %9, align 4
  %131 = load i32, i32* %8, align 4
  %132 = add i32 %130, %131
  %133 = zext i32 %132 to i64
  %134 = getelementptr inbounds i64, i64* %129, i64 %133
  %135 = load i64, i64* %134, align 8
  %136 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i32 0, i32 0
  %138 = load i64*, i64** %137, align 8
  %139 = load i32, i32* %8, align 4
  %140 = zext i32 %139 to i64
  %141 = getelementptr inbounds i64, i64* %138, i64 %140
  store i64 %135, i64* %141, align 8
  br label %142

142:                                              ; preds = %126
  %143 = load i32, i32* %8, align 4
  %144 = add i32 %143, 1
  store i32 %144, i32* %8, align 4
  br label %120

145:                                              ; preds = %120
  br label %146

146:                                              ; preds = %157, %145
  %147 = load i32, i32* %8, align 4
  %148 = load i32, i32* @SIGSZ, align 4
  %149 = icmp ult i32 %147, %148
  br i1 %149, label %150, label %160

150:                                              ; preds = %146
  %151 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %152 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %151, i32 0, i32 0
  %153 = load i64*, i64** %152, align 8
  %154 = load i32, i32* %8, align 4
  %155 = zext i32 %154 to i64
  %156 = getelementptr inbounds i64, i64* %153, i64 %155
  store i64 0, i64* %156, align 8
  br label %157

157:                                              ; preds = %150
  %158 = load i32, i32* %8, align 4
  %159 = add i32 %158, 1
  store i32 %159, i32* %8, align 4
  br label %146

160:                                              ; preds = %146
  br label %161

161:                                              ; preds = %160, %118
  %162 = load i64, i64* %7, align 8
  %163 = icmp ne i64 %162, 0
  %164 = zext i1 %163 to i32
  ret i32 %164
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
