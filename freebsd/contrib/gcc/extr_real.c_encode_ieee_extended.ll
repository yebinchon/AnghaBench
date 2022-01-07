; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_real.c_encode_ieee_extended.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_real.c_encode_ieee_extended.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.real_format = type { i32, i32, i32 }
%struct.TYPE_4__ = type { i32*, i32, i32, i32 }

@SIGSZ = common dso_local global i32 0, align 4
@SIG_MSB = common dso_local global i32 0, align 4
@HOST_BITS_PER_LONG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.real_format*, i64*, %struct.TYPE_4__*)* @encode_ieee_extended to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @encode_ieee_extended(%struct.real_format* %0, i64* %1, %struct.TYPE_4__* %2) #0 {
  %4 = alloca %struct.real_format*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.real_format* %0, %struct.real_format** %4, align 8
  store i64* %1, i64** %5, align 8
  store %struct.TYPE_4__* %2, %struct.TYPE_4__** %6, align 8
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = load i32, i32* @SIGSZ, align 4
  %16 = sub nsw i32 %15, 1
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %14, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @SIG_MSB, align 4
  %21 = and i32 %19, %20
  %22 = icmp eq i32 %21, 0
  %23 = zext i1 %22 to i32
  store i32 %23, i32* %10, align 4
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = shl i32 %26, 15
  %28 = sext i32 %27 to i64
  store i64 %28, i64* %7, align 8
  store i64 0, i64* %9, align 8
  store i64 0, i64* %8, align 8
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  switch i32 %31, label %173 [
    i32 128, label %32
    i32 131, label %33
    i32 130, label %45
    i32 129, label %118
  ]

32:                                               ; preds = %3
  br label %175

33:                                               ; preds = %3
  %34 = load %struct.real_format*, %struct.real_format** %4, align 8
  %35 = getelementptr inbounds %struct.real_format, %struct.real_format* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %33
  %39 = load i64, i64* %7, align 8
  %40 = or i64 %39, 32767
  store i64 %40, i64* %7, align 8
  store i64 2147483648, i64* %8, align 8
  br label %44

41:                                               ; preds = %33
  %42 = load i64, i64* %7, align 8
  %43 = or i64 %42, 32767
  store i64 %43, i64* %7, align 8
  store i64 4294967295, i64* %8, align 8
  store i64 4294967295, i64* %9, align 8
  br label %44

44:                                               ; preds = %41, %38
  br label %175

45:                                               ; preds = %3
  %46 = load %struct.real_format*, %struct.real_format** %4, align 8
  %47 = getelementptr inbounds %struct.real_format, %struct.real_format* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %114

50:                                               ; preds = %45
  %51 = load i64, i64* %7, align 8
  %52 = or i64 %51, 32767
  store i64 %52, i64* %7, align 8
  %53 = load i32, i32* @HOST_BITS_PER_LONG, align 4
  %54 = icmp eq i32 %53, 32
  br i1 %54, label %55, label %74

55:                                               ; preds = %50
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = load i32, i32* @SIGSZ, align 4
  %60 = sub nsw i32 %59, 1
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %58, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = sext i32 %63 to i64
  store i64 %64, i64* %8, align 8
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = load i32, i32* @SIGSZ, align 4
  %69 = sub nsw i32 %68, 2
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %67, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = sext i32 %72 to i64
  store i64 %73, i64* %9, align 8
  br label %89

74:                                               ; preds = %50
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = load i32*, i32** %76, align 8
  %78 = load i32, i32* @SIGSZ, align 4
  %79 = sub nsw i32 %78, 1
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %77, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = sext i32 %82 to i64
  store i64 %83, i64* %9, align 8
  %84 = load i64, i64* %9, align 8
  %85 = lshr i64 %84, 31
  %86 = lshr i64 %85, 1
  store i64 %86, i64* %8, align 8
  %87 = load i64, i64* %9, align 8
  %88 = and i64 %87, 4294967295
  store i64 %88, i64* %9, align 8
  br label %89

89:                                               ; preds = %74, %55
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.real_format*, %struct.real_format** %4, align 8
  %94 = getelementptr inbounds %struct.real_format, %struct.real_format* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = icmp eq i32 %92, %95
  br i1 %96, label %97, label %100

97:                                               ; preds = %89
  %98 = load i64, i64* %8, align 8
  %99 = and i64 %98, -1073741825
  store i64 %99, i64* %8, align 8
  br label %103

100:                                              ; preds = %89
  %101 = load i64, i64* %8, align 8
  %102 = or i64 %101, 1073741824
  store i64 %102, i64* %8, align 8
  br label %103

103:                                              ; preds = %100, %97
  %104 = load i64, i64* %8, align 8
  %105 = and i64 %104, 2147483647
  %106 = icmp eq i64 %105, 0
  br i1 %106, label %107, label %111

107:                                              ; preds = %103
  %108 = load i64, i64* %9, align 8
  %109 = icmp eq i64 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %107
  store i64 536870912, i64* %8, align 8
  br label %111

111:                                              ; preds = %110, %107, %103
  %112 = load i64, i64* %8, align 8
  %113 = or i64 %112, 2147483648
  store i64 %113, i64* %8, align 8
  br label %117

114:                                              ; preds = %45
  %115 = load i64, i64* %7, align 8
  %116 = or i64 %115, 32767
  store i64 %116, i64* %7, align 8
  store i64 4294967295, i64* %8, align 8
  store i64 4294967295, i64* %9, align 8
  br label %117

117:                                              ; preds = %114, %111
  br label %175

118:                                              ; preds = %3
  %119 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %120 = call i32 @REAL_EXP(%struct.TYPE_4__* %119)
  store i32 %120, i32* %11, align 4
  %121 = load i32, i32* %10, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %118
  store i32 0, i32* %11, align 4
  br label %131

124:                                              ; preds = %118
  %125 = load i32, i32* %11, align 4
  %126 = add nsw i32 %125, 16382
  store i32 %126, i32* %11, align 4
  %127 = load i32, i32* %11, align 4
  %128 = icmp sge i32 %127, 0
  %129 = zext i1 %128 to i32
  %130 = call i32 @gcc_assert(i32 %129)
  br label %131

131:                                              ; preds = %124, %123
  %132 = load i32, i32* %11, align 4
  %133 = sext i32 %132 to i64
  %134 = load i64, i64* %7, align 8
  %135 = or i64 %134, %133
  store i64 %135, i64* %7, align 8
  %136 = load i32, i32* @HOST_BITS_PER_LONG, align 4
  %137 = icmp eq i32 %136, 32
  br i1 %137, label %138, label %157

138:                                              ; preds = %131
  %139 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %139, i32 0, i32 0
  %141 = load i32*, i32** %140, align 8
  %142 = load i32, i32* @SIGSZ, align 4
  %143 = sub nsw i32 %142, 1
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i32, i32* %141, i64 %144
  %146 = load i32, i32* %145, align 4
  %147 = sext i32 %146 to i64
  store i64 %147, i64* %8, align 8
  %148 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %149 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %148, i32 0, i32 0
  %150 = load i32*, i32** %149, align 8
  %151 = load i32, i32* @SIGSZ, align 4
  %152 = sub nsw i32 %151, 2
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i32, i32* %150, i64 %153
  %155 = load i32, i32* %154, align 4
  %156 = sext i32 %155 to i64
  store i64 %156, i64* %9, align 8
  br label %172

157:                                              ; preds = %131
  %158 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %159 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %158, i32 0, i32 0
  %160 = load i32*, i32** %159, align 8
  %161 = load i32, i32* @SIGSZ, align 4
  %162 = sub nsw i32 %161, 1
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i32, i32* %160, i64 %163
  %165 = load i32, i32* %164, align 4
  %166 = sext i32 %165 to i64
  store i64 %166, i64* %9, align 8
  %167 = load i64, i64* %9, align 8
  %168 = lshr i64 %167, 31
  %169 = lshr i64 %168, 1
  store i64 %169, i64* %8, align 8
  %170 = load i64, i64* %9, align 8
  %171 = and i64 %170, 4294967295
  store i64 %171, i64* %9, align 8
  br label %172

172:                                              ; preds = %157, %138
  br label %175

173:                                              ; preds = %3
  %174 = call i32 (...) @gcc_unreachable()
  br label %175

175:                                              ; preds = %173, %172, %117, %44, %32
  %176 = load i64, i64* %9, align 8
  %177 = load i64*, i64** %5, align 8
  %178 = getelementptr inbounds i64, i64* %177, i64 0
  store i64 %176, i64* %178, align 8
  %179 = load i64, i64* %8, align 8
  %180 = load i64*, i64** %5, align 8
  %181 = getelementptr inbounds i64, i64* %180, i64 1
  store i64 %179, i64* %181, align 8
  %182 = load i64, i64* %7, align 8
  %183 = load i64*, i64** %5, align 8
  %184 = getelementptr inbounds i64, i64* %183, i64 2
  store i64 %182, i64* %184, align 8
  ret void
}

declare dso_local i32 @REAL_EXP(%struct.TYPE_4__*) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i32 @gcc_unreachable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
