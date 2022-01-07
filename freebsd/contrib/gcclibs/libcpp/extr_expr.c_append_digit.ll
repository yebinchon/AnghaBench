; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcclibs/libcpp/extr_expr.c_append_digit.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcclibs/libcpp/extr_expr.c_append_digit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32, i32 }

@PART_PRECISION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast ({ i64, i64 } (i64, i64, i32, i32, i64)* @append_digit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal { i64, i64 } @append_digit(i64 %0, i64 %1, i32 %2, i32 %3, i64 %4) #0 {
  %6 = alloca %struct.TYPE_8__, align 4
  %7 = alloca %struct.TYPE_8__, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_8__, align 4
  %16 = bitcast %struct.TYPE_8__* %7 to { i64, i64 }*
  %17 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %16, i32 0, i32 0
  store i64 %0, i64* %17, align 4
  %18 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %16, i32 0, i32 1
  store i64 %1, i64* %18, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i64 %4, i64* %10, align 8
  %19 = load i32, i32* %9, align 4
  switch i32 %19, label %22 [
    i32 2, label %20
    i32 16, label %21
  ]

20:                                               ; preds = %5
  store i32 1, i32* %11, align 4
  br label %23

21:                                               ; preds = %5
  store i32 4, i32* %11, align 4
  br label %23

22:                                               ; preds = %5
  store i32 3, i32* %11, align 4
  br label %23

23:                                               ; preds = %22, %21, %20
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @PART_PRECISION, align 4
  %27 = load i32, i32* %11, align 4
  %28 = sub i32 %26, %27
  %29 = lshr i32 %25, %28
  %30 = icmp ne i32 %29, 0
  %31 = xor i1 %30, true
  %32 = xor i1 %31, true
  %33 = zext i1 %32 to i32
  store i32 %33, i32* %12, align 4
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %11, align 4
  %37 = shl i32 %35, %36
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 0
  store i32 %37, i32* %38, align 4
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %11, align 4
  %42 = shl i32 %40, %41
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 1
  store i32 %42, i32* %43, align 4
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @PART_PRECISION, align 4
  %47 = load i32, i32* %11, align 4
  %48 = sub i32 %46, %47
  %49 = lshr i32 %45, %48
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = or i32 %51, %49
  store i32 %52, i32* %50, align 4
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 3
  store i32 %54, i32* %55, align 4
  %56 = load i32, i32* %9, align 4
  %57 = icmp eq i32 %56, 10
  br i1 %57, label %58, label %71

58:                                               ; preds = %23
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = shl i32 %60, 1
  store i32 %61, i32* %14, align 4
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = shl i32 %63, 1
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @PART_PRECISION, align 4
  %68 = sub i32 %67, 1
  %69 = lshr i32 %66, %68
  %70 = add i32 %64, %69
  store i32 %70, i32* %13, align 4
  br label %72

71:                                               ; preds = %23
  store i32 0, i32* %14, align 4
  store i32 0, i32* %13, align 4
  br label %72

72:                                               ; preds = %71, %58
  %73 = load i32, i32* %14, align 4
  %74 = load i32, i32* %8, align 4
  %75 = add nsw i32 %73, %74
  %76 = load i32, i32* %14, align 4
  %77 = icmp slt i32 %75, %76
  br i1 %77, label %78, label %81

78:                                               ; preds = %72
  %79 = load i32, i32* %13, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %13, align 4
  br label %81

81:                                               ; preds = %78, %72
  %82 = load i32, i32* %8, align 4
  %83 = load i32, i32* %14, align 4
  %84 = add nsw i32 %83, %82
  store i32 %84, i32* %14, align 4
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* %14, align 4
  %88 = add i32 %86, %87
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = icmp ult i32 %88, %90
  br i1 %91, label %92, label %95

92:                                               ; preds = %81
  %93 = load i32, i32* %13, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %13, align 4
  br label %95

95:                                               ; preds = %92, %81
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* %13, align 4
  %99 = add i32 %97, %98
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = icmp ult i32 %99, %101
  br i1 %102, label %103, label %104

103:                                              ; preds = %95
  store i32 1, i32* %12, align 4
  br label %104

104:                                              ; preds = %103, %95
  %105 = load i32, i32* %14, align 4
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = add i32 %107, %105
  store i32 %108, i32* %106, align 4
  %109 = load i32, i32* %13, align 4
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = add i32 %111, %109
  store i32 %112, i32* %110, align 4
  %113 = load i32, i32* %12, align 4
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 2
  store i32 %113, i32* %114, align 4
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 1
  store i32 %116, i32* %117, align 4
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  store i32 %119, i32* %120, align 4
  %121 = load i64, i64* %10, align 8
  %122 = bitcast %struct.TYPE_8__* %6 to { i64, i64 }*
  %123 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 4
  %125 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %122, i32 0, i32 1
  %126 = load i64, i64* %125, align 4
  %127 = call { i64, i64 } @num_trim(i64 %124, i64 %126, i64 %121)
  %128 = bitcast %struct.TYPE_8__* %15 to { i64, i64 }*
  %129 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %128, i32 0, i32 0
  %130 = extractvalue { i64, i64 } %127, 0
  store i64 %130, i64* %129, align 4
  %131 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %128, i32 0, i32 1
  %132 = extractvalue { i64, i64 } %127, 1
  store i64 %132, i64* %131, align 4
  %133 = bitcast %struct.TYPE_8__* %6 to i8*
  %134 = bitcast %struct.TYPE_8__* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %133, i8* align 4 %134, i64 16, i1 false)
  %135 = bitcast %struct.TYPE_8__* %6 to { i64, i64 }*
  %136 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 4
  %138 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %135, i32 0, i32 1
  %139 = load i64, i64* %138, align 4
  %140 = bitcast %struct.TYPE_8__* %7 to { i64, i64 }*
  %141 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 4
  %143 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %140, i32 0, i32 1
  %144 = load i64, i64* %143, align 4
  %145 = call i32 @num_eq(i64 %137, i64 %139, i64 %142, i64 %144)
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %149, label %147

147:                                              ; preds = %104
  %148 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 2
  store i32 1, i32* %148, align 4
  br label %149

149:                                              ; preds = %147, %104
  %150 = bitcast %struct.TYPE_8__* %6 to { i64, i64 }*
  %151 = load { i64, i64 }, { i64, i64 }* %150, align 4
  ret { i64, i64 } %151
}

declare dso_local { i64, i64 } @num_trim(i64, i64, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @num_eq(i64, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
