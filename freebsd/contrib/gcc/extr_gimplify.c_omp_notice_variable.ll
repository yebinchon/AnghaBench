; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_gimplify.c_omp_notice_variable.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_gimplify.c_omp_notice_variable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 (i64)*, i32 (i64, i32)* }
%struct.gimplify_omp_ctx = type { i32, %struct.gimplify_omp_ctx*, i32, i32, i32 }
%struct.TYPE_6__ = type { i32 }

@GOVD_SEEN = common dso_local global i32 0, align 4
@error_mark_node = common dso_local global i64 0, align 8
@lang_hooks = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@OMP_CLAUSE_DEFAULT_UNSPECIFIED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"%qs not specified in enclosing parallel\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"%Henclosing parallel\00", align 1
@GOVD_SHARED = common dso_local global i32 0, align 4
@GOVD_PRIVATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gimplify_omp_ctx*, i64, i32)* @omp_notice_variable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omp_notice_variable(%struct.gimplify_omp_ctx* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.gimplify_omp_ctx*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.gimplify_omp_ctx* %0, %struct.gimplify_omp_ctx** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i32, i32* @GOVD_SEEN, align 4
  br label %20

19:                                               ; preds = %3
  br label %20

20:                                               ; preds = %19, %17
  %21 = phi i32 [ %18, %17 ], [ 0, %19 ]
  store i32 %21, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %22 = load i64, i64* %6, align 8
  %23 = load i64, i64* @error_mark_node, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %30, label %25

25:                                               ; preds = %20
  %26 = load i64, i64* %6, align 8
  %27 = call i64 @TREE_TYPE(i64 %26)
  %28 = load i64, i64* @error_mark_node, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %25, %20
  store i32 0, i32* %4, align 4
  br label %177

31:                                               ; preds = %25
  %32 = load i64, i64* %6, align 8
  %33 = call i64 @is_global_var(i64 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %61

35:                                               ; preds = %31
  %36 = load i64, i64* %6, align 8
  %37 = call i64 @DECL_THREAD_LOCAL_P(i64 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %35
  store i32 0, i32* %4, align 4
  br label %177

40:                                               ; preds = %35
  %41 = load i64, i64* %6, align 8
  %42 = call i64 @DECL_HAS_VALUE_EXPR_P(i64 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %60

44:                                               ; preds = %40
  %45 = load i64, i64* %6, align 8
  %46 = call i32 @DECL_VALUE_EXPR(i64 %45)
  %47 = call i64 @get_base_address(i32 %46)
  store i64 %47, i64* %12, align 8
  %48 = load i64, i64* %12, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %59

50:                                               ; preds = %44
  %51 = load i64, i64* %12, align 8
  %52 = call i64 @DECL_P(i64 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %50
  %55 = load i64, i64* %12, align 8
  %56 = call i64 @DECL_THREAD_LOCAL_P(i64 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %54
  store i32 0, i32* %4, align 4
  br label %177

59:                                               ; preds = %54, %50, %44
  br label %60

60:                                               ; preds = %59, %40
  br label %61

61:                                               ; preds = %60, %31
  %62 = load %struct.gimplify_omp_ctx*, %struct.gimplify_omp_ctx** %5, align 8
  %63 = getelementptr inbounds %struct.gimplify_omp_ctx, %struct.gimplify_omp_ctx* %62, i32 0, i32 4
  %64 = load i32, i32* %63, align 8
  %65 = load i64, i64* %6, align 8
  %66 = trunc i64 %65 to i32
  %67 = call %struct.TYPE_6__* @splay_tree_lookup(i32 %64, i32 %66)
  store %struct.TYPE_6__* %67, %struct.TYPE_6__** %8, align 8
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %69 = icmp eq %struct.TYPE_6__* %68, null
  br i1 %69, label %70, label %122

70:                                               ; preds = %61
  %71 = load %struct.gimplify_omp_ctx*, %struct.gimplify_omp_ctx** %5, align 8
  %72 = getelementptr inbounds %struct.gimplify_omp_ctx, %struct.gimplify_omp_ctx* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %76, label %75

75:                                               ; preds = %70
  br label %154

76:                                               ; preds = %70
  %77 = load %struct.gimplify_omp_ctx*, %struct.gimplify_omp_ctx** %5, align 8
  %78 = getelementptr inbounds %struct.gimplify_omp_ctx, %struct.gimplify_omp_ctx* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  store i32 %79, i32* %13, align 4
  %80 = load i32 (i64)*, i32 (i64)** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @lang_hooks, i32 0, i32 0, i32 0), align 8
  %81 = load i64, i64* %6, align 8
  %82 = call i32 %80(i64 %81)
  store i32 %82, i32* %14, align 4
  %83 = load i32, i32* %14, align 4
  %84 = load i32, i32* @OMP_CLAUSE_DEFAULT_UNSPECIFIED, align 4
  %85 = icmp ne i32 %83, %84
  br i1 %85, label %86, label %88

86:                                               ; preds = %76
  %87 = load i32, i32* %14, align 4
  store i32 %87, i32* %13, align 4
  br label %88

88:                                               ; preds = %86, %76
  %89 = load i32, i32* %13, align 4
  switch i32 %89, label %106 [
    i32 130, label %90
    i32 128, label %98
    i32 129, label %102
  ]

90:                                               ; preds = %88
  %91 = load i64, i64* %6, align 8
  %92 = call i32 @DECL_NAME(i64 %91)
  %93 = call i32* @IDENTIFIER_POINTER(i32 %92)
  %94 = call i32 @error(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32* %93)
  %95 = load %struct.gimplify_omp_ctx*, %struct.gimplify_omp_ctx** %5, align 8
  %96 = getelementptr inbounds %struct.gimplify_omp_ctx, %struct.gimplify_omp_ctx* %95, i32 0, i32 2
  %97 = call i32 @error(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32* %96)
  br label %98

98:                                               ; preds = %88, %90
  %99 = load i32, i32* @GOVD_SHARED, align 4
  %100 = load i32, i32* %9, align 4
  %101 = or i32 %100, %99
  store i32 %101, i32* %9, align 4
  br label %108

102:                                              ; preds = %88
  %103 = load i32, i32* @GOVD_PRIVATE, align 4
  %104 = load i32, i32* %9, align 4
  %105 = or i32 %104, %103
  store i32 %105, i32* %9, align 4
  br label %108

106:                                              ; preds = %88
  %107 = call i32 (...) @gcc_unreachable()
  br label %108

108:                                              ; preds = %106, %102, %98
  %109 = load %struct.gimplify_omp_ctx*, %struct.gimplify_omp_ctx** %5, align 8
  %110 = load i64, i64* %6, align 8
  %111 = load i32, i32* %9, align 4
  %112 = call i32 @omp_add_variable(%struct.gimplify_omp_ctx* %109, i64 %110, i32 %111)
  %113 = load i32, i32* %9, align 4
  %114 = load i32, i32* @GOVD_SHARED, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  %117 = zext i1 %116 to i32
  store i32 %117, i32* %11, align 4
  %118 = load i32 (i64, i32)*, i32 (i64, i32)** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @lang_hooks, i32 0, i32 0, i32 1), align 8
  %119 = load i64, i64* %6, align 8
  %120 = load i32, i32* %11, align 4
  %121 = call i32 %118(i64 %119, i32 %120)
  store i32 %121, i32* %10, align 4
  br label %154

122:                                              ; preds = %61
  %123 = load i32, i32* %9, align 4
  %124 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = or i32 %123, %126
  %128 = load i32, i32* @GOVD_SHARED, align 4
  %129 = and i32 %127, %128
  %130 = icmp ne i32 %129, 0
  %131 = zext i1 %130 to i32
  store i32 %131, i32* %11, align 4
  %132 = load i32 (i64, i32)*, i32 (i64, i32)** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @lang_hooks, i32 0, i32 0, i32 1), align 8
  %133 = load i64, i64* %6, align 8
  %134 = load i32, i32* %11, align 4
  %135 = call i32 %132(i64 %133, i32 %134)
  store i32 %135, i32* %10, align 4
  %136 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* %9, align 4
  %140 = and i32 %138, %139
  %141 = load i32, i32* %9, align 4
  %142 = icmp eq i32 %140, %141
  br i1 %142, label %143, label %145

143:                                              ; preds = %122
  %144 = load i32, i32* %10, align 4
  store i32 %144, i32* %4, align 4
  br label %177

145:                                              ; preds = %122
  %146 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %147 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = load i32, i32* %9, align 4
  %150 = or i32 %149, %148
  store i32 %150, i32* %9, align 4
  %151 = load i32, i32* %9, align 4
  %152 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %153 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %152, i32 0, i32 0
  store i32 %151, i32* %153, align 4
  br label %154

154:                                              ; preds = %145, %108, %75
  %155 = load i32, i32* %9, align 4
  %156 = load i32, i32* @GOVD_PRIVATE, align 4
  %157 = and i32 %155, %156
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %161

159:                                              ; preds = %154
  %160 = load i32, i32* %10, align 4
  store i32 %160, i32* %4, align 4
  br label %177

161:                                              ; preds = %154
  %162 = load %struct.gimplify_omp_ctx*, %struct.gimplify_omp_ctx** %5, align 8
  %163 = getelementptr inbounds %struct.gimplify_omp_ctx, %struct.gimplify_omp_ctx* %162, i32 0, i32 1
  %164 = load %struct.gimplify_omp_ctx*, %struct.gimplify_omp_ctx** %163, align 8
  %165 = icmp ne %struct.gimplify_omp_ctx* %164, null
  br i1 %165, label %166, label %175

166:                                              ; preds = %161
  %167 = load %struct.gimplify_omp_ctx*, %struct.gimplify_omp_ctx** %5, align 8
  %168 = getelementptr inbounds %struct.gimplify_omp_ctx, %struct.gimplify_omp_ctx* %167, i32 0, i32 1
  %169 = load %struct.gimplify_omp_ctx*, %struct.gimplify_omp_ctx** %168, align 8
  %170 = load i64, i64* %6, align 8
  %171 = load i32, i32* %7, align 4
  %172 = call i32 @omp_notice_variable(%struct.gimplify_omp_ctx* %169, i64 %170, i32 %171)
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %175

174:                                              ; preds = %166
  store i32 1, i32* %4, align 4
  br label %177

175:                                              ; preds = %166, %161
  %176 = load i32, i32* %10, align 4
  store i32 %176, i32* %4, align 4
  br label %177

177:                                              ; preds = %175, %174, %159, %143, %58, %39, %30
  %178 = load i32, i32* %4, align 4
  ret i32 %178
}

declare dso_local i64 @TREE_TYPE(i64) #1

declare dso_local i64 @is_global_var(i64) #1

declare dso_local i64 @DECL_THREAD_LOCAL_P(i64) #1

declare dso_local i64 @DECL_HAS_VALUE_EXPR_P(i64) #1

declare dso_local i64 @get_base_address(i32) #1

declare dso_local i32 @DECL_VALUE_EXPR(i64) #1

declare dso_local i64 @DECL_P(i64) #1

declare dso_local %struct.TYPE_6__* @splay_tree_lookup(i32, i32) #1

declare dso_local i32 @error(i8*, i32*) #1

declare dso_local i32* @IDENTIFIER_POINTER(i32) #1

declare dso_local i32 @DECL_NAME(i64) #1

declare dso_local i32 @gcc_unreachable(...) #1

declare dso_local i32 @omp_add_variable(%struct.gimplify_omp_ctx*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
