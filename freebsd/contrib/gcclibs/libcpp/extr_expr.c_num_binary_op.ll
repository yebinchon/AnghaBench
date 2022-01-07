; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcclibs/libcpp/extr_expr.c_num_binary_op.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcclibs/libcpp/extr_expr.c_num_binary_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { %struct.TYPE_20__ }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_22__ = type { i32, i64, i32, i64 }

@c99 = common dso_local global i32 0, align 4
@CPP_DL_PEDWARN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"comma operator in operand of #if\00", align 1
@precision = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_22__*, %struct.TYPE_21__*, %struct.TYPE_22__*, %struct.TYPE_22__*, i32)* @num_binary_op to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @num_binary_op(%struct.TYPE_22__* noalias sret %0, %struct.TYPE_21__* %1, %struct.TYPE_22__* byval(%struct.TYPE_22__) align 8 %2, %struct.TYPE_22__* byval(%struct.TYPE_22__) align 8 %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_21__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_22__, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_22__, align 8
  %12 = alloca %struct.TYPE_22__, align 8
  %13 = alloca %struct.TYPE_22__, align 8
  %14 = alloca %struct.TYPE_22__, align 8
  %15 = alloca %struct.TYPE_22__, align 8
  %16 = alloca i32, align 4
  store %struct.TYPE_21__* %1, %struct.TYPE_21__** %6, align 8
  store i32 %4, i32* %7, align 4
  %17 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %18 = load i64, i64* %9, align 8
  %19 = trunc i64 %18 to i32
  %20 = call i64 @CPP_OPTION(%struct.TYPE_21__* %17, i32 %19)
  store i64 %20, i64* %9, align 8
  %21 = load i32, i32* %7, align 4
  switch i32 %21, label %125 [
    i32 131, label %22
    i32 128, label %22
    i32 130, label %61
    i32 129, label %65
  ]

22:                                               ; preds = %5, %5
  %23 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %3, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %39, label %26

26:                                               ; preds = %22
  %27 = load i64, i64* %9, align 8
  %28 = call i32 @num_positive(%struct.TYPE_22__* byval(%struct.TYPE_22__) align 8 %3, i64 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %39, label %30

30:                                               ; preds = %26
  %31 = load i32, i32* %7, align 4
  %32 = icmp eq i32 %31, 131
  br i1 %32, label %33, label %34

33:                                               ; preds = %30
  store i32 128, i32* %7, align 4
  br label %35

34:                                               ; preds = %30
  store i32 131, i32* %7, align 4
  br label %35

35:                                               ; preds = %34, %33
  %36 = load i64, i64* %9, align 8
  call void @num_negate(%struct.TYPE_22__* sret %11, %struct.TYPE_22__* byval(%struct.TYPE_22__) align 8 %3, i64 %36)
  %37 = bitcast %struct.TYPE_22__* %3 to i8*
  %38 = bitcast %struct.TYPE_22__* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %37, i8* align 8 %38, i64 32, i1 false)
  br label %39

39:                                               ; preds = %35, %26, %22
  %40 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %3, i32 0, i32 3
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %39
  store i64 -1, i64* %10, align 8
  br label %47

44:                                               ; preds = %39
  %45 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %3, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  store i64 %46, i64* %10, align 8
  br label %47

47:                                               ; preds = %44, %43
  %48 = load i32, i32* %7, align 4
  %49 = icmp eq i32 %48, 131
  br i1 %49, label %50, label %55

50:                                               ; preds = %47
  %51 = load i64, i64* %9, align 8
  %52 = load i64, i64* %10, align 8
  call void @num_lshift(%struct.TYPE_22__* sret %12, %struct.TYPE_22__* byval(%struct.TYPE_22__) align 8 %2, i64 %51, i64 %52)
  %53 = bitcast %struct.TYPE_22__* %2 to i8*
  %54 = bitcast %struct.TYPE_22__* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %53, i8* align 8 %54, i64 32, i1 false)
  br label %60

55:                                               ; preds = %47
  %56 = load i64, i64* %9, align 8
  %57 = load i64, i64* %10, align 8
  call void @num_rshift(%struct.TYPE_22__* sret %13, %struct.TYPE_22__* byval(%struct.TYPE_22__) align 8 %2, i64 %56, i64 %57)
  %58 = bitcast %struct.TYPE_22__* %2 to i8*
  %59 = bitcast %struct.TYPE_22__* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %58, i8* align 8 %59, i64 32, i1 false)
  br label %60

60:                                               ; preds = %55, %50
  br label %147

61:                                               ; preds = %5
  %62 = load i64, i64* %9, align 8
  call void @num_negate(%struct.TYPE_22__* sret %14, %struct.TYPE_22__* byval(%struct.TYPE_22__) align 8 %3, i64 %62)
  %63 = bitcast %struct.TYPE_22__* %3 to i8*
  %64 = bitcast %struct.TYPE_22__* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %63, i8* align 8 %64, i64 32, i1 false)
  br label %65

65:                                               ; preds = %5, %61
  %66 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %2, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %3, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = add i64 %67, %69
  %71 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %8, i32 0, i32 1
  store i64 %70, i64* %71, align 8
  %72 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %2, i32 0, i32 3
  %73 = load i64, i64* %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %3, i32 0, i32 3
  %75 = load i64, i64* %74, align 8
  %76 = add nsw i64 %73, %75
  %77 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %8, i32 0, i32 3
  store i64 %76, i64* %77, align 8
  %78 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %8, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %2, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = icmp ult i64 %79, %81
  br i1 %82, label %83, label %87

83:                                               ; preds = %65
  %84 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %8, i32 0, i32 3
  %85 = load i64, i64* %84, align 8
  %86 = add nsw i64 %85, 1
  store i64 %86, i64* %84, align 8
  br label %87

87:                                               ; preds = %83, %65
  %88 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %2, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %95, label %91

91:                                               ; preds = %87
  %92 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %3, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = icmp ne i32 %93, 0
  br label %95

95:                                               ; preds = %91, %87
  %96 = phi i1 [ true, %87 ], [ %94, %91 ]
  %97 = zext i1 %96 to i32
  %98 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %8, i32 0, i32 0
  store i32 %97, i32* %98, align 8
  %99 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %8, i32 0, i32 2
  store i32 0, i32* %99, align 8
  %100 = load i64, i64* %9, align 8
  call void @num_trim(%struct.TYPE_22__* sret %15, %struct.TYPE_22__* byval(%struct.TYPE_22__) align 8 %8, i64 %100)
  %101 = bitcast %struct.TYPE_22__* %8 to i8*
  %102 = bitcast %struct.TYPE_22__* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %101, i8* align 8 %102, i64 32, i1 false)
  %103 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %8, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %122, label %106

106:                                              ; preds = %95
  %107 = load i64, i64* %9, align 8
  %108 = call i32 @num_positive(%struct.TYPE_22__* byval(%struct.TYPE_22__) align 8 %2, i64 %107)
  store i32 %108, i32* %16, align 4
  %109 = load i32, i32* %16, align 4
  %110 = load i64, i64* %9, align 8
  %111 = call i32 @num_positive(%struct.TYPE_22__* byval(%struct.TYPE_22__) align 8 %3, i64 %110)
  %112 = icmp eq i32 %109, %111
  br i1 %112, label %113, label %118

113:                                              ; preds = %106
  %114 = load i32, i32* %16, align 4
  %115 = load i64, i64* %9, align 8
  %116 = call i32 @num_positive(%struct.TYPE_22__* byval(%struct.TYPE_22__) align 8 %8, i64 %115)
  %117 = icmp ne i32 %114, %116
  br label %118

118:                                              ; preds = %113, %106
  %119 = phi i1 [ false, %106 ], [ %117, %113 ]
  %120 = zext i1 %119 to i32
  %121 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %8, i32 0, i32 2
  store i32 %120, i32* %121, align 8
  br label %122

122:                                              ; preds = %118, %95
  %123 = bitcast %struct.TYPE_22__* %0 to i8*
  %124 = bitcast %struct.TYPE_22__* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %123, i8* align 8 %124, i64 32, i1 false)
  br label %150

125:                                              ; preds = %5
  %126 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %127 = call i32 @CPP_PEDANTIC(%struct.TYPE_21__* %126)
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %144

129:                                              ; preds = %125
  %130 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %131 = load i32, i32* @c99, align 4
  %132 = call i64 @CPP_OPTION(%struct.TYPE_21__* %130, i32 %131)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %140

134:                                              ; preds = %129
  %135 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %136 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %144, label %140

140:                                              ; preds = %134, %129
  %141 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %142 = load i32, i32* @CPP_DL_PEDWARN, align 4
  %143 = call i32 @cpp_error(%struct.TYPE_21__* %141, i32 %142, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %144

144:                                              ; preds = %140, %134, %125
  %145 = bitcast %struct.TYPE_22__* %2 to i8*
  %146 = bitcast %struct.TYPE_22__* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %145, i8* align 8 %146, i64 32, i1 false)
  br label %147

147:                                              ; preds = %144, %60
  %148 = bitcast %struct.TYPE_22__* %0 to i8*
  %149 = bitcast %struct.TYPE_22__* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %148, i8* align 8 %149, i64 32, i1 false)
  br label %150

150:                                              ; preds = %147, %122
  ret void
}

declare dso_local i64 @CPP_OPTION(%struct.TYPE_21__*, i32) #1

declare dso_local i32 @num_positive(%struct.TYPE_22__* byval(%struct.TYPE_22__) align 8, i64) #1

declare dso_local void @num_negate(%struct.TYPE_22__* sret, %struct.TYPE_22__* byval(%struct.TYPE_22__) align 8, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local void @num_lshift(%struct.TYPE_22__* sret, %struct.TYPE_22__* byval(%struct.TYPE_22__) align 8, i64, i64) #1

declare dso_local void @num_rshift(%struct.TYPE_22__* sret, %struct.TYPE_22__* byval(%struct.TYPE_22__) align 8, i64, i64) #1

declare dso_local void @num_trim(%struct.TYPE_22__* sret, %struct.TYPE_22__* byval(%struct.TYPE_22__) align 8, i64) #1

declare dso_local i32 @CPP_PEDANTIC(%struct.TYPE_21__*) #1

declare dso_local i32 @cpp_error(%struct.TYPE_21__*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
