; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_optabs.c_sign_expand_binop.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_optabs.c_sign_expand_binop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.optab = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i32 }

@OPTAB_DIRECT = common dso_local global i32 0, align 4
@CODE_FOR_nothing = common dso_local global i32 0, align 4
@OPTAB_WIDEN = common dso_local global i32 0, align 4
@OPTAB_LIB = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @sign_expand_binop(i32 %0, %struct.optab* %1, %struct.optab* %2, i64 %3, i64 %4, i64 %5, i32 %6, i32 %7) #0 {
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.optab*, align 8
  %12 = alloca %struct.optab*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca %struct.optab*, align 8
  %20 = alloca %struct.optab, align 8
  store i32 %0, i32* %10, align 4
  store %struct.optab* %1, %struct.optab** %11, align 8
  store %struct.optab* %2, %struct.optab** %12, align 8
  store i64 %3, i64* %13, align 8
  store i64 %4, i64* %14, align 8
  store i64 %5, i64* %15, align 8
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  %21 = load i32, i32* %16, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %8
  %24 = load %struct.optab*, %struct.optab** %11, align 8
  br label %27

25:                                               ; preds = %8
  %26 = load %struct.optab*, %struct.optab** %12, align 8
  br label %27

27:                                               ; preds = %25, %23
  %28 = phi %struct.optab* [ %24, %23 ], [ %26, %25 ]
  store %struct.optab* %28, %struct.optab** %19, align 8
  %29 = load i32, i32* %10, align 4
  %30 = load %struct.optab*, %struct.optab** %19, align 8
  %31 = load i64, i64* %13, align 8
  %32 = load i64, i64* %14, align 8
  %33 = load i64, i64* %15, align 8
  %34 = load i32, i32* %16, align 4
  %35 = load i32, i32* @OPTAB_DIRECT, align 4
  %36 = call i64 @expand_binop(i32 %29, %struct.optab* %30, i64 %31, i64 %32, i64 %33, i32 %34, i32 %35)
  store i64 %36, i64* %18, align 8
  %37 = load i64, i64* %18, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %43, label %39

39:                                               ; preds = %27
  %40 = load i32, i32* %17, align 4
  %41 = load i32, i32* @OPTAB_DIRECT, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %39, %27
  %44 = load i64, i64* %18, align 8
  store i64 %44, i64* %9, align 8
  br label %134

45:                                               ; preds = %39
  %46 = load %struct.optab*, %struct.optab** %12, align 8
  %47 = bitcast %struct.optab* %20 to i8*
  %48 = bitcast %struct.optab* %46 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %47, i8* align 8 %48, i64 8, i1 false)
  %49 = load i32, i32* @CODE_FOR_nothing, align 4
  %50 = getelementptr inbounds %struct.optab, %struct.optab* %20, i32 0, i32 0
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = load i32, i32* %10, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 1
  store i32 %49, i32* %55, align 8
  %56 = getelementptr inbounds %struct.optab, %struct.optab* %20, i32 0, i32 0
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = load i32, i32* %10, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  store i64 0, i64* %61, align 8
  %62 = load i32, i32* %10, align 4
  %63 = load i64, i64* %13, align 8
  %64 = load i64, i64* %14, align 8
  %65 = load i64, i64* %15, align 8
  %66 = load i32, i32* %16, align 4
  %67 = load i32, i32* @OPTAB_WIDEN, align 4
  %68 = call i64 @expand_binop(i32 %62, %struct.optab* %20, i64 %63, i64 %64, i64 %65, i32 %66, i32 %67)
  store i64 %68, i64* %18, align 8
  %69 = load i64, i64* %18, align 8
  %70 = icmp eq i64 %69, 0
  br i1 %70, label %71, label %83

71:                                               ; preds = %45
  %72 = load i32, i32* %16, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %83

74:                                               ; preds = %71
  %75 = load i32, i32* %10, align 4
  %76 = load %struct.optab*, %struct.optab** %11, align 8
  %77 = load i64, i64* %13, align 8
  %78 = load i64, i64* %14, align 8
  %79 = load i64, i64* %15, align 8
  %80 = load i32, i32* %16, align 4
  %81 = load i32, i32* @OPTAB_WIDEN, align 4
  %82 = call i64 @expand_binop(i32 %75, %struct.optab* %76, i64 %77, i64 %78, i64 %79, i32 %80, i32 %81)
  store i64 %82, i64* %18, align 8
  br label %83

83:                                               ; preds = %74, %71, %45
  %84 = load i64, i64* %18, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %90, label %86

86:                                               ; preds = %83
  %87 = load i32, i32* %17, align 4
  %88 = load i32, i32* @OPTAB_WIDEN, align 4
  %89 = icmp eq i32 %87, %88
  br i1 %89, label %90, label %92

90:                                               ; preds = %86, %83
  %91 = load i64, i64* %18, align 8
  store i64 %91, i64* %9, align 8
  br label %134

92:                                               ; preds = %86
  %93 = load i32, i32* %10, align 4
  %94 = load %struct.optab*, %struct.optab** %19, align 8
  %95 = load i64, i64* %13, align 8
  %96 = load i64, i64* %14, align 8
  %97 = load i64, i64* %15, align 8
  %98 = load i32, i32* %16, align 4
  %99 = load i32, i32* @OPTAB_LIB, align 4
  %100 = call i64 @expand_binop(i32 %93, %struct.optab* %94, i64 %95, i64 %96, i64 %97, i32 %98, i32 %99)
  store i64 %100, i64* %18, align 8
  %101 = load i64, i64* %18, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %107, label %103

103:                                              ; preds = %92
  %104 = load i32, i32* %17, align 4
  %105 = load i32, i32* @OPTAB_LIB, align 4
  %106 = icmp eq i32 %104, %105
  br i1 %106, label %107, label %109

107:                                              ; preds = %103, %92
  %108 = load i64, i64* %18, align 8
  store i64 %108, i64* %9, align 8
  br label %134

109:                                              ; preds = %103
  %110 = load i32, i32* %10, align 4
  %111 = load i64, i64* %13, align 8
  %112 = load i64, i64* %14, align 8
  %113 = load i64, i64* %15, align 8
  %114 = load i32, i32* %16, align 4
  %115 = load i32, i32* %17, align 4
  %116 = call i64 @expand_binop(i32 %110, %struct.optab* %20, i64 %111, i64 %112, i64 %113, i32 %114, i32 %115)
  store i64 %116, i64* %18, align 8
  %117 = load i64, i64* %18, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %121

119:                                              ; preds = %109
  %120 = load i64, i64* %18, align 8
  store i64 %120, i64* %9, align 8
  br label %134

121:                                              ; preds = %109
  %122 = load i32, i32* %16, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %133

124:                                              ; preds = %121
  %125 = load i32, i32* %10, align 4
  %126 = load %struct.optab*, %struct.optab** %11, align 8
  %127 = load i64, i64* %13, align 8
  %128 = load i64, i64* %14, align 8
  %129 = load i64, i64* %15, align 8
  %130 = load i32, i32* %16, align 4
  %131 = load i32, i32* %17, align 4
  %132 = call i64 @expand_binop(i32 %125, %struct.optab* %126, i64 %127, i64 %128, i64 %129, i32 %130, i32 %131)
  store i64 %132, i64* %9, align 8
  br label %134

133:                                              ; preds = %121
  store i64 0, i64* %9, align 8
  br label %134

134:                                              ; preds = %133, %124, %119, %107, %90, %43
  %135 = load i64, i64* %9, align 8
  ret i64 %135
}

declare dso_local i64 @expand_binop(i32, %struct.optab*, i64, i64, i64, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
