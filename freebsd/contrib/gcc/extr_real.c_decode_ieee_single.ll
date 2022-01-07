; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_real.c_decode_ieee_single.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_real.c_decode_ieee_single.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.real_format = type { i64, i64, i64, i64, i64 }
%struct.TYPE_6__ = type { i32, i64*, i64, i8* }

@HOST_BITS_PER_LONG = common dso_local global i32 0, align 4
@SIG_MSB = common dso_local global i64 0, align 8
@rvc_normal = common dso_local global i8* null, align 8
@SIGSZ = common dso_local global i32 0, align 4
@rvc_nan = common dso_local global i8* null, align 8
@rvc_inf = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.real_format*, %struct.TYPE_6__*, i64*)* @decode_ieee_single to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @decode_ieee_single(%struct.real_format* %0, %struct.TYPE_6__* %1, i64* %2) #0 {
  %4 = alloca %struct.real_format*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.real_format* %0, %struct.real_format** %4, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %5, align 8
  store i64* %2, i64** %6, align 8
  %10 = load i64*, i64** %6, align 8
  %11 = getelementptr inbounds i64, i64* %10, i64 0
  %12 = load i64, i64* %11, align 8
  %13 = and i64 %12, 4294967295
  store i64 %13, i64* %7, align 8
  %14 = load i64, i64* %7, align 8
  %15 = lshr i64 %14, 31
  %16 = and i64 %15, 1
  %17 = trunc i64 %16 to i32
  store i32 %17, i32* %8, align 4
  %18 = load i64, i64* %7, align 8
  %19 = lshr i64 %18, 23
  %20 = and i64 %19, 255
  %21 = trunc i64 %20 to i32
  store i32 %21, i32* %9, align 4
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %23 = call i32 @memset(%struct.TYPE_6__* %22, i32 0, i32 32)
  %24 = load i32, i32* @HOST_BITS_PER_LONG, align 4
  %25 = sub nsw i32 %24, 24
  %26 = load i64, i64* %7, align 8
  %27 = zext i32 %25 to i64
  %28 = shl i64 %26, %27
  store i64 %28, i64* %7, align 8
  %29 = load i64, i64* @SIG_MSB, align 8
  %30 = xor i64 %29, -1
  %31 = load i64, i64* %7, align 8
  %32 = and i64 %31, %30
  store i64 %32, i64* %7, align 8
  %33 = load i32, i32* %9, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %74

35:                                               ; preds = %3
  %36 = load i64, i64* %7, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %63

38:                                               ; preds = %35
  %39 = load %struct.real_format*, %struct.real_format** %4, align 8
  %40 = getelementptr inbounds %struct.real_format, %struct.real_format* %39, i32 0, i32 4
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %63

43:                                               ; preds = %38
  %44 = load i8*, i8** @rvc_normal, align 8
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 3
  store i8* %44, i8** %46, align 8
  %47 = load i32, i32* %8, align 4
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 8
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %51 = call i32 @SET_REAL_EXP(%struct.TYPE_6__* %50, i32 -126)
  %52 = load i64, i64* %7, align 8
  %53 = shl i64 %52, 1
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 1
  %56 = load i64*, i64** %55, align 8
  %57 = load i32, i32* @SIGSZ, align 4
  %58 = sub nsw i32 %57, 1
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i64, i64* %56, i64 %59
  store i64 %53, i64* %60, align 8
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %62 = call i32 @normalize(%struct.TYPE_6__* %61)
  br label %73

63:                                               ; preds = %38, %35
  %64 = load %struct.real_format*, %struct.real_format** %4, align 8
  %65 = getelementptr inbounds %struct.real_format, %struct.real_format* %64, i32 0, i32 3
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %63
  %69 = load i32, i32* %8, align 4
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 8
  br label %72

72:                                               ; preds = %68, %63
  br label %73

73:                                               ; preds = %72, %43
  br label %148

74:                                               ; preds = %3
  %75 = load i32, i32* %9, align 4
  %76 = icmp eq i32 %75, 255
  br i1 %76, label %77, label %125

77:                                               ; preds = %74
  %78 = load %struct.real_format*, %struct.real_format** %4, align 8
  %79 = getelementptr inbounds %struct.real_format, %struct.real_format* %78, i32 0, i32 2
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %87, label %82

82:                                               ; preds = %77
  %83 = load %struct.real_format*, %struct.real_format** %4, align 8
  %84 = getelementptr inbounds %struct.real_format, %struct.real_format* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %125

87:                                               ; preds = %82, %77
  %88 = load i64, i64* %7, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %117

90:                                               ; preds = %87
  %91 = load i8*, i8** @rvc_nan, align 8
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 3
  store i8* %91, i8** %93, align 8
  %94 = load i32, i32* %8, align 4
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 0
  store i32 %94, i32* %96, align 8
  %97 = load i64, i64* %7, align 8
  %98 = load i32, i32* @HOST_BITS_PER_LONG, align 4
  %99 = sub nsw i32 %98, 2
  %100 = zext i32 %99 to i64
  %101 = lshr i64 %97, %100
  %102 = and i64 %101, 1
  %103 = load %struct.real_format*, %struct.real_format** %4, align 8
  %104 = getelementptr inbounds %struct.real_format, %struct.real_format* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = xor i64 %102, %105
  %107 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 2
  store i64 %106, i64* %108, align 8
  %109 = load i64, i64* %7, align 8
  %110 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 1
  %112 = load i64*, i64** %111, align 8
  %113 = load i32, i32* @SIGSZ, align 4
  %114 = sub nsw i32 %113, 1
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i64, i64* %112, i64 %115
  store i64 %109, i64* %116, align 8
  br label %124

117:                                              ; preds = %87
  %118 = load i8*, i8** @rvc_inf, align 8
  %119 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 3
  store i8* %118, i8** %120, align 8
  %121 = load i32, i32* %8, align 4
  %122 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 0
  store i32 %121, i32* %123, align 8
  br label %124

124:                                              ; preds = %117, %90
  br label %147

125:                                              ; preds = %82, %74
  %126 = load i8*, i8** @rvc_normal, align 8
  %127 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 3
  store i8* %126, i8** %128, align 8
  %129 = load i32, i32* %8, align 4
  %130 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 0
  store i32 %129, i32* %131, align 8
  %132 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %133 = load i32, i32* %9, align 4
  %134 = sub nsw i32 %133, 127
  %135 = add nsw i32 %134, 1
  %136 = call i32 @SET_REAL_EXP(%struct.TYPE_6__* %132, i32 %135)
  %137 = load i64, i64* %7, align 8
  %138 = load i64, i64* @SIG_MSB, align 8
  %139 = or i64 %137, %138
  %140 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %141 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %140, i32 0, i32 1
  %142 = load i64*, i64** %141, align 8
  %143 = load i32, i32* @SIGSZ, align 4
  %144 = sub nsw i32 %143, 1
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i64, i64* %142, i64 %145
  store i64 %139, i64* %146, align 8
  br label %147

147:                                              ; preds = %125, %124
  br label %148

148:                                              ; preds = %147, %73
  ret void
}

declare dso_local i32 @memset(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @SET_REAL_EXP(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @normalize(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
