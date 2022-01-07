; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_ggc-common.c_ggc_mark_roots.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_ggc-common.c_ggc_mark_roots.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ggc_root_tab = type { i64, i64, i32*, i32 (i8*)* }
%struct.ggc_cache_tab = type { %struct.TYPE_3__** }
%struct.TYPE_3__ = type { %struct.TYPE_3__* }

@gt_ggc_deletable_rtab = common dso_local global %struct.ggc_root_tab** null, align 8
@gt_ggc_rtab = common dso_local global %struct.ggc_root_tab** null, align 8
@gt_ggc_cache_rtab = common dso_local global %struct.ggc_cache_tab** null, align 8
@ggc_htab_delete = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ggc_mark_roots() #0 {
  %1 = alloca %struct.ggc_root_tab**, align 8
  %2 = alloca %struct.ggc_root_tab*, align 8
  %3 = alloca %struct.ggc_cache_tab**, align 8
  %4 = alloca %struct.ggc_cache_tab*, align 8
  %5 = alloca i64, align 8
  %6 = load %struct.ggc_root_tab**, %struct.ggc_root_tab*** @gt_ggc_deletable_rtab, align 8
  store %struct.ggc_root_tab** %6, %struct.ggc_root_tab*** %1, align 8
  br label %7

7:                                                ; preds = %31, %0
  %8 = load %struct.ggc_root_tab**, %struct.ggc_root_tab*** %1, align 8
  %9 = load %struct.ggc_root_tab*, %struct.ggc_root_tab** %8, align 8
  %10 = icmp ne %struct.ggc_root_tab* %9, null
  br i1 %10, label %11, label %34

11:                                               ; preds = %7
  %12 = load %struct.ggc_root_tab**, %struct.ggc_root_tab*** %1, align 8
  %13 = load %struct.ggc_root_tab*, %struct.ggc_root_tab** %12, align 8
  store %struct.ggc_root_tab* %13, %struct.ggc_root_tab** %2, align 8
  br label %14

14:                                               ; preds = %27, %11
  %15 = load %struct.ggc_root_tab*, %struct.ggc_root_tab** %2, align 8
  %16 = getelementptr inbounds %struct.ggc_root_tab, %struct.ggc_root_tab* %15, i32 0, i32 2
  %17 = load i32*, i32** %16, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %30

19:                                               ; preds = %14
  %20 = load %struct.ggc_root_tab*, %struct.ggc_root_tab** %2, align 8
  %21 = getelementptr inbounds %struct.ggc_root_tab, %struct.ggc_root_tab* %20, i32 0, i32 2
  %22 = load i32*, i32** %21, align 8
  %23 = load %struct.ggc_root_tab*, %struct.ggc_root_tab** %2, align 8
  %24 = getelementptr inbounds %struct.ggc_root_tab, %struct.ggc_root_tab* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = call i32 @memset(i32* %22, i32 0, i64 %25)
  br label %27

27:                                               ; preds = %19
  %28 = load %struct.ggc_root_tab*, %struct.ggc_root_tab** %2, align 8
  %29 = getelementptr inbounds %struct.ggc_root_tab, %struct.ggc_root_tab* %28, i32 1
  store %struct.ggc_root_tab* %29, %struct.ggc_root_tab** %2, align 8
  br label %14

30:                                               ; preds = %14
  br label %31

31:                                               ; preds = %30
  %32 = load %struct.ggc_root_tab**, %struct.ggc_root_tab*** %1, align 8
  %33 = getelementptr inbounds %struct.ggc_root_tab*, %struct.ggc_root_tab** %32, i32 1
  store %struct.ggc_root_tab** %33, %struct.ggc_root_tab*** %1, align 8
  br label %7

34:                                               ; preds = %7
  %35 = load %struct.ggc_root_tab**, %struct.ggc_root_tab*** @gt_ggc_rtab, align 8
  store %struct.ggc_root_tab** %35, %struct.ggc_root_tab*** %1, align 8
  br label %36

36:                                               ; preds = %80, %34
  %37 = load %struct.ggc_root_tab**, %struct.ggc_root_tab*** %1, align 8
  %38 = load %struct.ggc_root_tab*, %struct.ggc_root_tab** %37, align 8
  %39 = icmp ne %struct.ggc_root_tab* %38, null
  br i1 %39, label %40, label %83

40:                                               ; preds = %36
  %41 = load %struct.ggc_root_tab**, %struct.ggc_root_tab*** %1, align 8
  %42 = load %struct.ggc_root_tab*, %struct.ggc_root_tab** %41, align 8
  store %struct.ggc_root_tab* %42, %struct.ggc_root_tab** %2, align 8
  br label %43

43:                                               ; preds = %76, %40
  %44 = load %struct.ggc_root_tab*, %struct.ggc_root_tab** %2, align 8
  %45 = getelementptr inbounds %struct.ggc_root_tab, %struct.ggc_root_tab* %44, i32 0, i32 2
  %46 = load i32*, i32** %45, align 8
  %47 = icmp ne i32* %46, null
  br i1 %47, label %48, label %79

48:                                               ; preds = %43
  store i64 0, i64* %5, align 8
  br label %49

49:                                               ; preds = %72, %48
  %50 = load i64, i64* %5, align 8
  %51 = load %struct.ggc_root_tab*, %struct.ggc_root_tab** %2, align 8
  %52 = getelementptr inbounds %struct.ggc_root_tab, %struct.ggc_root_tab* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = icmp ult i64 %50, %53
  br i1 %54, label %55, label %75

55:                                               ; preds = %49
  %56 = load %struct.ggc_root_tab*, %struct.ggc_root_tab** %2, align 8
  %57 = getelementptr inbounds %struct.ggc_root_tab, %struct.ggc_root_tab* %56, i32 0, i32 3
  %58 = load i32 (i8*)*, i32 (i8*)** %57, align 8
  %59 = load %struct.ggc_root_tab*, %struct.ggc_root_tab** %2, align 8
  %60 = getelementptr inbounds %struct.ggc_root_tab, %struct.ggc_root_tab* %59, i32 0, i32 2
  %61 = load i32*, i32** %60, align 8
  %62 = bitcast i32* %61 to i8*
  %63 = load %struct.ggc_root_tab*, %struct.ggc_root_tab** %2, align 8
  %64 = getelementptr inbounds %struct.ggc_root_tab, %struct.ggc_root_tab* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* %5, align 8
  %67 = mul i64 %65, %66
  %68 = getelementptr inbounds i8, i8* %62, i64 %67
  %69 = bitcast i8* %68 to i8**
  %70 = load i8*, i8** %69, align 8
  %71 = call i32 %58(i8* %70)
  br label %72

72:                                               ; preds = %55
  %73 = load i64, i64* %5, align 8
  %74 = add i64 %73, 1
  store i64 %74, i64* %5, align 8
  br label %49

75:                                               ; preds = %49
  br label %76

76:                                               ; preds = %75
  %77 = load %struct.ggc_root_tab*, %struct.ggc_root_tab** %2, align 8
  %78 = getelementptr inbounds %struct.ggc_root_tab, %struct.ggc_root_tab* %77, i32 1
  store %struct.ggc_root_tab* %78, %struct.ggc_root_tab** %2, align 8
  br label %43

79:                                               ; preds = %43
  br label %80

80:                                               ; preds = %79
  %81 = load %struct.ggc_root_tab**, %struct.ggc_root_tab*** %1, align 8
  %82 = getelementptr inbounds %struct.ggc_root_tab*, %struct.ggc_root_tab** %81, i32 1
  store %struct.ggc_root_tab** %82, %struct.ggc_root_tab*** %1, align 8
  br label %36

83:                                               ; preds = %36
  %84 = call i32 (...) @ggc_mark_stringpool()
  %85 = load %struct.ggc_cache_tab**, %struct.ggc_cache_tab*** @gt_ggc_cache_rtab, align 8
  store %struct.ggc_cache_tab** %85, %struct.ggc_cache_tab*** %3, align 8
  br label %86

86:                                               ; preds = %130, %83
  %87 = load %struct.ggc_cache_tab**, %struct.ggc_cache_tab*** %3, align 8
  %88 = load %struct.ggc_cache_tab*, %struct.ggc_cache_tab** %87, align 8
  %89 = icmp ne %struct.ggc_cache_tab* %88, null
  br i1 %89, label %90, label %133

90:                                               ; preds = %86
  %91 = load %struct.ggc_cache_tab**, %struct.ggc_cache_tab*** %3, align 8
  %92 = load %struct.ggc_cache_tab*, %struct.ggc_cache_tab** %91, align 8
  store %struct.ggc_cache_tab* %92, %struct.ggc_cache_tab** %4, align 8
  br label %93

93:                                               ; preds = %126, %90
  %94 = load %struct.ggc_cache_tab*, %struct.ggc_cache_tab** %4, align 8
  %95 = getelementptr inbounds %struct.ggc_cache_tab, %struct.ggc_cache_tab* %94, i32 0, i32 0
  %96 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %95, align 8
  %97 = icmp ne %struct.TYPE_3__** %96, null
  br i1 %97, label %98, label %129

98:                                               ; preds = %93
  %99 = load %struct.ggc_cache_tab*, %struct.ggc_cache_tab** %4, align 8
  %100 = getelementptr inbounds %struct.ggc_cache_tab, %struct.ggc_cache_tab* %99, i32 0, i32 0
  %101 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %100, align 8
  %102 = load %struct.TYPE_3__*, %struct.TYPE_3__** %101, align 8
  %103 = icmp ne %struct.TYPE_3__* %102, null
  br i1 %103, label %104, label %125

104:                                              ; preds = %98
  %105 = load %struct.ggc_cache_tab*, %struct.ggc_cache_tab** %4, align 8
  %106 = getelementptr inbounds %struct.ggc_cache_tab, %struct.ggc_cache_tab* %105, i32 0, i32 0
  %107 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %106, align 8
  %108 = load %struct.TYPE_3__*, %struct.TYPE_3__** %107, align 8
  %109 = call i32 @ggc_set_mark(%struct.TYPE_3__* %108)
  %110 = load %struct.ggc_cache_tab*, %struct.ggc_cache_tab** %4, align 8
  %111 = getelementptr inbounds %struct.ggc_cache_tab, %struct.ggc_cache_tab* %110, i32 0, i32 0
  %112 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %111, align 8
  %113 = load %struct.TYPE_3__*, %struct.TYPE_3__** %112, align 8
  %114 = load i32, i32* @ggc_htab_delete, align 4
  %115 = load %struct.ggc_cache_tab*, %struct.ggc_cache_tab** %4, align 8
  %116 = bitcast %struct.ggc_cache_tab* %115 to i8*
  %117 = call i32 @htab_traverse_noresize(%struct.TYPE_3__* %113, i32 %114, i8* %116)
  %118 = load %struct.ggc_cache_tab*, %struct.ggc_cache_tab** %4, align 8
  %119 = getelementptr inbounds %struct.ggc_cache_tab, %struct.ggc_cache_tab* %118, i32 0, i32 0
  %120 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %119, align 8
  %121 = load %struct.TYPE_3__*, %struct.TYPE_3__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i32 0, i32 0
  %123 = load %struct.TYPE_3__*, %struct.TYPE_3__** %122, align 8
  %124 = call i32 @ggc_set_mark(%struct.TYPE_3__* %123)
  br label %125

125:                                              ; preds = %104, %98
  br label %126

126:                                              ; preds = %125
  %127 = load %struct.ggc_cache_tab*, %struct.ggc_cache_tab** %4, align 8
  %128 = getelementptr inbounds %struct.ggc_cache_tab, %struct.ggc_cache_tab* %127, i32 1
  store %struct.ggc_cache_tab* %128, %struct.ggc_cache_tab** %4, align 8
  br label %93

129:                                              ; preds = %93
  br label %130

130:                                              ; preds = %129
  %131 = load %struct.ggc_cache_tab**, %struct.ggc_cache_tab*** %3, align 8
  %132 = getelementptr inbounds %struct.ggc_cache_tab*, %struct.ggc_cache_tab** %131, i32 1
  store %struct.ggc_cache_tab** %132, %struct.ggc_cache_tab*** %3, align 8
  br label %86

133:                                              ; preds = %86
  ret void
}

declare dso_local i32 @memset(i32*, i32, i64) #1

declare dso_local i32 @ggc_mark_stringpool(...) #1

declare dso_local i32 @ggc_set_mark(%struct.TYPE_3__*) #1

declare dso_local i32 @htab_traverse_noresize(%struct.TYPE_3__*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
