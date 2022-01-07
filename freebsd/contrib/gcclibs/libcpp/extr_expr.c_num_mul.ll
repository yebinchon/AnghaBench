; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcclibs/libcpp/extr_expr.c_num_mul.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcclibs/libcpp/extr_expr.c_num_mul.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32, i64, i64 }

@precision = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_14__*, i32*, %struct.TYPE_14__*, %struct.TYPE_14__*)* @num_mul to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @num_mul(%struct.TYPE_14__* noalias sret %0, i32* %1, %struct.TYPE_14__* byval(%struct.TYPE_14__) align 8 %2, %struct.TYPE_14__* byval(%struct.TYPE_14__) align 8 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_14__, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_14__, align 8
  %12 = alloca %struct.TYPE_14__, align 8
  %13 = alloca %struct.TYPE_14__, align 8
  %14 = alloca %struct.TYPE_14__, align 8
  %15 = alloca %struct.TYPE_14__, align 8
  %16 = alloca %struct.TYPE_14__, align 8
  %17 = alloca %struct.TYPE_14__, align 8
  store i32* %1, i32** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %2, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %4
  %22 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %3, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  br label %25

25:                                               ; preds = %21, %4
  %26 = phi i1 [ true, %4 ], [ %24, %21 ]
  %27 = zext i1 %26 to i32
  store i32 %27, i32* %7, align 4
  store i32 0, i32* %9, align 4
  %28 = load i32*, i32** %5, align 8
  %29 = load i64, i64* %10, align 8
  %30 = trunc i64 %29 to i32
  %31 = call i64 @CPP_OPTION(i32* %28, i32 %30)
  store i64 %31, i64* %10, align 8
  %32 = load i32, i32* %7, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %59, label %34

34:                                               ; preds = %25
  %35 = load i64, i64* %10, align 8
  %36 = call i32 @num_positive(%struct.TYPE_14__* byval(%struct.TYPE_14__) align 8 %2, i64 %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %46, label %38

38:                                               ; preds = %34
  %39 = load i32, i32* %9, align 4
  %40 = icmp ne i32 %39, 0
  %41 = xor i1 %40, true
  %42 = zext i1 %41 to i32
  store i32 %42, i32* %9, align 4
  %43 = load i64, i64* %10, align 8
  call void @num_negate(%struct.TYPE_14__* sret %11, %struct.TYPE_14__* byval(%struct.TYPE_14__) align 8 %2, i64 %43)
  %44 = bitcast %struct.TYPE_14__* %2 to i8*
  %45 = bitcast %struct.TYPE_14__* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %44, i8* align 8 %45, i64 24, i1 false)
  br label %46

46:                                               ; preds = %38, %34
  %47 = load i64, i64* %10, align 8
  %48 = call i32 @num_positive(%struct.TYPE_14__* byval(%struct.TYPE_14__) align 8 %3, i64 %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %58, label %50

50:                                               ; preds = %46
  %51 = load i32, i32* %9, align 4
  %52 = icmp ne i32 %51, 0
  %53 = xor i1 %52, true
  %54 = zext i1 %53 to i32
  store i32 %54, i32* %9, align 4
  %55 = load i64, i64* %10, align 8
  call void @num_negate(%struct.TYPE_14__* sret %12, %struct.TYPE_14__* byval(%struct.TYPE_14__) align 8 %3, i64 %55)
  %56 = bitcast %struct.TYPE_14__* %3 to i8*
  %57 = bitcast %struct.TYPE_14__* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %56, i8* align 8 %57, i64 24, i1 false)
  br label %58

58:                                               ; preds = %50, %46
  br label %59

59:                                               ; preds = %58, %25
  %60 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %2, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %59
  %64 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %3, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br label %67

67:                                               ; preds = %63, %59
  %68 = phi i1 [ false, %59 ], [ %66, %63 ]
  %69 = zext i1 %68 to i32
  store i32 %69, i32* %8, align 4
  %70 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %2, i32 0, i32 3
  %71 = load i64, i64* %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %3, i32 0, i32 3
  %73 = load i64, i64* %72, align 8
  call void @num_part_mul(%struct.TYPE_14__* sret %13, i64 %71, i64 %73)
  %74 = bitcast %struct.TYPE_14__* %0 to i8*
  %75 = bitcast %struct.TYPE_14__* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %74, i8* align 8 %75, i64 24, i1 false)
  %76 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %2, i32 0, i32 2
  %77 = load i64, i64* %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %3, i32 0, i32 3
  %79 = load i64, i64* %78, align 8
  call void @num_part_mul(%struct.TYPE_14__* sret %14, i64 %77, i64 %79)
  %80 = bitcast %struct.TYPE_14__* %6 to i8*
  %81 = bitcast %struct.TYPE_14__* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %80, i8* align 8 %81, i64 24, i1 false)
  %82 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %6, i32 0, i32 3
  %83 = load i64, i64* %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %0, i32 0, i32 2
  %85 = load i64, i64* %84, align 8
  %86 = add nsw i64 %85, %83
  store i64 %86, i64* %84, align 8
  %87 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %6, i32 0, i32 2
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %67
  store i32 1, i32* %8, align 4
  br label %91

91:                                               ; preds = %90, %67
  %92 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %2, i32 0, i32 3
  %93 = load i64, i64* %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %3, i32 0, i32 2
  %95 = load i64, i64* %94, align 8
  call void @num_part_mul(%struct.TYPE_14__* sret %15, i64 %93, i64 %95)
  %96 = bitcast %struct.TYPE_14__* %6 to i8*
  %97 = bitcast %struct.TYPE_14__* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %96, i8* align 8 %97, i64 24, i1 false)
  %98 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %6, i32 0, i32 3
  %99 = load i64, i64* %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %0, i32 0, i32 2
  %101 = load i64, i64* %100, align 8
  %102 = add nsw i64 %101, %99
  store i64 %102, i64* %100, align 8
  %103 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %6, i32 0, i32 2
  %104 = load i64, i64* %103, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %91
  store i32 1, i32* %8, align 4
  br label %107

107:                                              ; preds = %106, %91
  %108 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %0, i32 0, i32 3
  %109 = load i64, i64* %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %6, i32 0, i32 3
  store i64 %109, i64* %110, align 8
  %111 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %0, i32 0, i32 2
  %112 = load i64, i64* %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %6, i32 0, i32 2
  store i64 %112, i64* %113, align 8
  %114 = load i64, i64* %10, align 8
  call void @num_trim(%struct.TYPE_14__* sret %16, %struct.TYPE_14__* byval(%struct.TYPE_14__) align 8 %0, i64 %114)
  %115 = bitcast %struct.TYPE_14__* %0 to i8*
  %116 = bitcast %struct.TYPE_14__* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %115, i8* align 8 %116, i64 24, i1 false)
  %117 = call i32 @num_eq(%struct.TYPE_14__* byval(%struct.TYPE_14__) align 8 %0, %struct.TYPE_14__* byval(%struct.TYPE_14__) align 8 %6)
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %120, label %119

119:                                              ; preds = %107
  store i32 1, i32* %8, align 4
  br label %120

120:                                              ; preds = %119, %107
  %121 = load i32, i32* %9, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %127

123:                                              ; preds = %120
  %124 = load i64, i64* %10, align 8
  call void @num_negate(%struct.TYPE_14__* sret %17, %struct.TYPE_14__* byval(%struct.TYPE_14__) align 8 %0, i64 %124)
  %125 = bitcast %struct.TYPE_14__* %0 to i8*
  %126 = bitcast %struct.TYPE_14__* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %125, i8* align 8 %126, i64 24, i1 false)
  br label %127

127:                                              ; preds = %123, %120
  %128 = load i32, i32* %7, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %132

130:                                              ; preds = %127
  %131 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %0, i32 0, i32 1
  store i32 0, i32* %131, align 4
  br label %154

132:                                              ; preds = %127
  %133 = load i32, i32* %8, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %150, label %135

135:                                              ; preds = %132
  %136 = load i64, i64* %10, align 8
  %137 = call i32 @num_positive(%struct.TYPE_14__* byval(%struct.TYPE_14__) align 8 %0, i64 %136)
  %138 = load i32, i32* %9, align 4
  %139 = icmp ne i32 %138, 0
  %140 = xor i1 %139, true
  %141 = zext i1 %140 to i32
  %142 = xor i32 %137, %141
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %148

144:                                              ; preds = %135
  %145 = call i32 @num_zerop(%struct.TYPE_14__* byval(%struct.TYPE_14__) align 8 %0)
  %146 = icmp ne i32 %145, 0
  %147 = xor i1 %146, true
  br label %148

148:                                              ; preds = %144, %135
  %149 = phi i1 [ false, %135 ], [ %147, %144 ]
  br label %150

150:                                              ; preds = %148, %132
  %151 = phi i1 [ true, %132 ], [ %149, %148 ]
  %152 = zext i1 %151 to i32
  %153 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %0, i32 0, i32 1
  store i32 %152, i32* %153, align 4
  br label %154

154:                                              ; preds = %150, %130
  %155 = load i32, i32* %7, align 4
  %156 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %0, i32 0, i32 0
  store i32 %155, i32* %156, align 8
  ret void
}

declare dso_local i64 @CPP_OPTION(i32*, i32) #1

declare dso_local i32 @num_positive(%struct.TYPE_14__* byval(%struct.TYPE_14__) align 8, i64) #1

declare dso_local void @num_negate(%struct.TYPE_14__* sret, %struct.TYPE_14__* byval(%struct.TYPE_14__) align 8, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local void @num_part_mul(%struct.TYPE_14__* sret, i64, i64) #1

declare dso_local void @num_trim(%struct.TYPE_14__* sret, %struct.TYPE_14__* byval(%struct.TYPE_14__) align 8, i64) #1

declare dso_local i32 @num_eq(%struct.TYPE_14__* byval(%struct.TYPE_14__) align 8, %struct.TYPE_14__* byval(%struct.TYPE_14__) align 8) #1

declare dso_local i32 @num_zerop(%struct.TYPE_14__* byval(%struct.TYPE_14__) align 8) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
