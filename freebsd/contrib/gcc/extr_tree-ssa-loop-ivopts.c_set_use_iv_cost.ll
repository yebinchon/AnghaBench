; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-loop-ivopts.c_set_use_iv_cost.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-loop-ivopts.c_set_use_iv_cost.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ivopts_data = type { i64 }
%struct.iv_use = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i8*, i8*, %struct.iv_cand* }
%struct.iv_cand = type { i64 }

@INFTY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ivopts_data*, %struct.iv_use*, %struct.iv_cand*, i32, i8*, i8*)* @set_use_iv_cost to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_use_iv_cost(%struct.ivopts_data* %0, %struct.iv_use* %1, %struct.iv_cand* %2, i32 %3, i8* %4, i8* %5) #0 {
  %7 = alloca %struct.ivopts_data*, align 8
  %8 = alloca %struct.iv_use*, align 8
  %9 = alloca %struct.iv_cand*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.ivopts_data* %0, %struct.ivopts_data** %7, align 8
  store %struct.iv_use* %1, %struct.iv_use** %8, align 8
  store %struct.iv_cand* %2, %struct.iv_cand** %9, align 8
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  store i8* %5, i8** %12, align 8
  %15 = load i32, i32* %10, align 4
  %16 = load i32, i32* @INFTY, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %6
  %19 = load i8*, i8** %11, align 8
  %20 = call i32 @BITMAP_FREE(i8* %19)
  br label %151

21:                                               ; preds = %6
  %22 = load %struct.ivopts_data*, %struct.ivopts_data** %7, align 8
  %23 = getelementptr inbounds %struct.ivopts_data, %struct.ivopts_data* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %63

26:                                               ; preds = %21
  %27 = load %struct.iv_cand*, %struct.iv_cand** %9, align 8
  %28 = load %struct.iv_use*, %struct.iv_use** %8, align 8
  %29 = getelementptr inbounds %struct.iv_use, %struct.iv_use* %28, i32 0, i32 1
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = load %struct.iv_cand*, %struct.iv_cand** %9, align 8
  %32 = getelementptr inbounds %struct.iv_cand, %struct.iv_cand* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 3
  store %struct.iv_cand* %27, %struct.iv_cand** %35, align 8
  %36 = load i32, i32* %10, align 4
  %37 = load %struct.iv_use*, %struct.iv_use** %8, align 8
  %38 = getelementptr inbounds %struct.iv_use, %struct.iv_use* %37, i32 0, i32 1
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = load %struct.iv_cand*, %struct.iv_cand** %9, align 8
  %41 = getelementptr inbounds %struct.iv_cand, %struct.iv_cand* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  store i32 %36, i32* %44, align 8
  %45 = load i8*, i8** %11, align 8
  %46 = load %struct.iv_use*, %struct.iv_use** %8, align 8
  %47 = getelementptr inbounds %struct.iv_use, %struct.iv_use* %46, i32 0, i32 1
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = load %struct.iv_cand*, %struct.iv_cand** %9, align 8
  %50 = getelementptr inbounds %struct.iv_cand, %struct.iv_cand* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 2
  store i8* %45, i8** %53, align 8
  %54 = load i8*, i8** %12, align 8
  %55 = load %struct.iv_use*, %struct.iv_use** %8, align 8
  %56 = getelementptr inbounds %struct.iv_use, %struct.iv_use* %55, i32 0, i32 1
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = load %struct.iv_cand*, %struct.iv_cand** %9, align 8
  %59 = getelementptr inbounds %struct.iv_cand, %struct.iv_cand* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 1
  store i8* %54, i8** %62, align 8
  br label %151

63:                                               ; preds = %21
  %64 = load %struct.iv_cand*, %struct.iv_cand** %9, align 8
  %65 = getelementptr inbounds %struct.iv_cand, %struct.iv_cand* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.iv_use*, %struct.iv_use** %8, align 8
  %68 = getelementptr inbounds %struct.iv_use, %struct.iv_use* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = sub nsw i32 %69, 1
  %71 = sext i32 %70 to i64
  %72 = and i64 %66, %71
  %73 = trunc i64 %72 to i32
  store i32 %73, i32* %14, align 4
  %74 = load i32, i32* %14, align 4
  store i32 %74, i32* %13, align 4
  br label %75

75:                                               ; preds = %93, %63
  %76 = load i32, i32* %13, align 4
  %77 = load %struct.iv_use*, %struct.iv_use** %8, align 8
  %78 = getelementptr inbounds %struct.iv_use, %struct.iv_use* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = icmp ult i32 %76, %79
  br i1 %80, label %81, label %96

81:                                               ; preds = %75
  %82 = load %struct.iv_use*, %struct.iv_use** %8, align 8
  %83 = getelementptr inbounds %struct.iv_use, %struct.iv_use* %82, i32 0, i32 1
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** %83, align 8
  %85 = load i32, i32* %13, align 4
  %86 = zext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 3
  %89 = load %struct.iv_cand*, %struct.iv_cand** %88, align 8
  %90 = icmp ne %struct.iv_cand* %89, null
  br i1 %90, label %92, label %91

91:                                               ; preds = %81
  br label %118

92:                                               ; preds = %81
  br label %93

93:                                               ; preds = %92
  %94 = load i32, i32* %13, align 4
  %95 = add i32 %94, 1
  store i32 %95, i32* %13, align 4
  br label %75

96:                                               ; preds = %75
  store i32 0, i32* %13, align 4
  br label %97

97:                                               ; preds = %113, %96
  %98 = load i32, i32* %13, align 4
  %99 = load i32, i32* %14, align 4
  %100 = icmp ult i32 %98, %99
  br i1 %100, label %101, label %116

101:                                              ; preds = %97
  %102 = load %struct.iv_use*, %struct.iv_use** %8, align 8
  %103 = getelementptr inbounds %struct.iv_use, %struct.iv_use* %102, i32 0, i32 1
  %104 = load %struct.TYPE_2__*, %struct.TYPE_2__** %103, align 8
  %105 = load i32, i32* %13, align 4
  %106 = zext i32 %105 to i64
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i64 %106
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 3
  %109 = load %struct.iv_cand*, %struct.iv_cand** %108, align 8
  %110 = icmp ne %struct.iv_cand* %109, null
  br i1 %110, label %112, label %111

111:                                              ; preds = %101
  br label %118

112:                                              ; preds = %101
  br label %113

113:                                              ; preds = %112
  %114 = load i32, i32* %13, align 4
  %115 = add i32 %114, 1
  store i32 %115, i32* %13, align 4
  br label %97

116:                                              ; preds = %97
  %117 = call i32 (...) @gcc_unreachable()
  br label %118

118:                                              ; preds = %116, %111, %91
  %119 = load %struct.iv_cand*, %struct.iv_cand** %9, align 8
  %120 = load %struct.iv_use*, %struct.iv_use** %8, align 8
  %121 = getelementptr inbounds %struct.iv_use, %struct.iv_use* %120, i32 0, i32 1
  %122 = load %struct.TYPE_2__*, %struct.TYPE_2__** %121, align 8
  %123 = load i32, i32* %13, align 4
  %124 = zext i32 %123 to i64
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %122, i64 %124
  %126 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %125, i32 0, i32 3
  store %struct.iv_cand* %119, %struct.iv_cand** %126, align 8
  %127 = load i32, i32* %10, align 4
  %128 = load %struct.iv_use*, %struct.iv_use** %8, align 8
  %129 = getelementptr inbounds %struct.iv_use, %struct.iv_use* %128, i32 0, i32 1
  %130 = load %struct.TYPE_2__*, %struct.TYPE_2__** %129, align 8
  %131 = load i32, i32* %13, align 4
  %132 = zext i32 %131 to i64
  %133 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %130, i64 %132
  %134 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %133, i32 0, i32 0
  store i32 %127, i32* %134, align 8
  %135 = load i8*, i8** %11, align 8
  %136 = load %struct.iv_use*, %struct.iv_use** %8, align 8
  %137 = getelementptr inbounds %struct.iv_use, %struct.iv_use* %136, i32 0, i32 1
  %138 = load %struct.TYPE_2__*, %struct.TYPE_2__** %137, align 8
  %139 = load i32, i32* %13, align 4
  %140 = zext i32 %139 to i64
  %141 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %138, i64 %140
  %142 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %141, i32 0, i32 2
  store i8* %135, i8** %142, align 8
  %143 = load i8*, i8** %12, align 8
  %144 = load %struct.iv_use*, %struct.iv_use** %8, align 8
  %145 = getelementptr inbounds %struct.iv_use, %struct.iv_use* %144, i32 0, i32 1
  %146 = load %struct.TYPE_2__*, %struct.TYPE_2__** %145, align 8
  %147 = load i32, i32* %13, align 4
  %148 = zext i32 %147 to i64
  %149 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %146, i64 %148
  %150 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %149, i32 0, i32 1
  store i8* %143, i8** %150, align 8
  br label %151

151:                                              ; preds = %118, %26, %18
  ret void
}

declare dso_local i32 @BITMAP_FREE(i8*) #1

declare dso_local i32 @gcc_unreachable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
