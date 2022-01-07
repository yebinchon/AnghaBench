; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_gimplify.c_omp_add_variable.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_gimplify.c_omp_add_variable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 (i64)* }
%struct.gimplify_omp_ctx = type { i32 }
%struct.TYPE_6__ = type { i32 }

@error_mark_node = common dso_local global i64 0, align 8
@GOVD_SEEN = common dso_local global i32 0, align 4
@GOVD_DATA_SHARE_CLASS = common dso_local global i32 0, align 4
@GOVD_FIRSTPRIVATE = common dso_local global i32 0, align 4
@GOVD_LASTPRIVATE = common dso_local global i32 0, align 4
@INTEGER_CST = common dso_local global i64 0, align 8
@GOVD_LOCAL = common dso_local global i32 0, align 4
@GOVD_PRIVATE = common dso_local global i32 0, align 4
@INDIRECT_REF = common dso_local global i64 0, align 8
@GOVD_SHARED = common dso_local global i32 0, align 4
@GOVD_DEBUG_PRIVATE = common dso_local global i32 0, align 4
@GOVD_EXPLICIT = common dso_local global i32 0, align 4
@lang_hooks = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gimplify_omp_ctx*, i64, i32)* @omp_add_variable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @omp_add_variable(%struct.gimplify_omp_ctx* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.gimplify_omp_ctx*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.gimplify_omp_ctx* %0, %struct.gimplify_omp_ctx** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load i64, i64* %5, align 8
  %11 = load i64, i64* @error_mark_node, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %18, label %13

13:                                               ; preds = %3
  %14 = load i64, i64* %5, align 8
  %15 = call i64 @TREE_TYPE(i64 %14)
  %16 = load i64, i64* @error_mark_node, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %13, %3
  br label %201

19:                                               ; preds = %13
  %20 = load i64, i64* %5, align 8
  %21 = call i64 @TREE_TYPE(i64 %20)
  %22 = call i64 @TREE_ADDRESSABLE(i64 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %19
  %25 = load i64, i64* %5, align 8
  %26 = call i64 @TREE_TYPE(i64 %25)
  %27 = call i64 @TYPE_NEEDS_CONSTRUCTING(i64 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %24, %19
  %30 = load i32, i32* @GOVD_SEEN, align 4
  %31 = load i32, i32* %6, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %6, align 4
  br label %33

33:                                               ; preds = %29, %24
  %34 = load %struct.gimplify_omp_ctx*, %struct.gimplify_omp_ctx** %4, align 8
  %35 = getelementptr inbounds %struct.gimplify_omp_ctx, %struct.gimplify_omp_ctx* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i64, i64* %5, align 8
  %38 = trunc i64 %37 to i32
  %39 = call %struct.TYPE_6__* @splay_tree_lookup(i32 %36, i32 %38)
  store %struct.TYPE_6__* %39, %struct.TYPE_6__** %7, align 8
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %41 = icmp ne %struct.TYPE_6__* %40, null
  br i1 %41, label %42, label %70

42:                                               ; preds = %33
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @GOVD_DATA_SHARE_CLASS, align 4
  %47 = and i32 %45, %46
  %48 = load i32, i32* %6, align 4
  %49 = and i32 %47, %48
  %50 = icmp eq i32 %49, 0
  %51 = zext i1 %50 to i32
  %52 = call i32 @gcc_assert(i32 %51)
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %6, align 4
  %57 = or i32 %55, %56
  store i32 %57, i32* %8, align 4
  %58 = load i32, i32* %8, align 4
  %59 = load i32, i32* @GOVD_DATA_SHARE_CLASS, align 4
  %60 = and i32 %58, %59
  %61 = load i32, i32* @GOVD_FIRSTPRIVATE, align 4
  %62 = load i32, i32* @GOVD_LASTPRIVATE, align 4
  %63 = or i32 %61, %62
  %64 = icmp eq i32 %60, %63
  %65 = zext i1 %64 to i32
  %66 = call i32 @gcc_assert(i32 %65)
  %67 = load i32, i32* %8, align 4
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 4
  br label %201

70:                                               ; preds = %33
  %71 = load i64, i64* %5, align 8
  %72 = call i64 @DECL_SIZE(i64 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %157

74:                                               ; preds = %70
  %75 = load i64, i64* %5, align 8
  %76 = call i64 @DECL_SIZE(i64 %75)
  %77 = call i64 @TREE_CODE(i64 %76)
  %78 = load i64, i64* @INTEGER_CST, align 8
  %79 = icmp ne i64 %77, %78
  br i1 %79, label %80, label %157

80:                                               ; preds = %74
  %81 = load i32, i32* %6, align 4
  %82 = load i32, i32* @GOVD_LOCAL, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %117, label %85

85:                                               ; preds = %80
  %86 = load i32, i32* %6, align 4
  %87 = load i32, i32* @GOVD_PRIVATE, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %85
  %91 = load i32, i32* @GOVD_PRIVATE, align 4
  br label %94

92:                                               ; preds = %85
  %93 = load i32, i32* @GOVD_FIRSTPRIVATE, align 4
  br label %94

94:                                               ; preds = %92, %90
  %95 = phi i32 [ %91, %90 ], [ %93, %92 ]
  store i32 %95, i32* %8, align 4
  %96 = load i32, i32* %6, align 4
  %97 = load i32, i32* @GOVD_SEEN, align 4
  %98 = and i32 %96, %97
  %99 = load i32, i32* %8, align 4
  %100 = or i32 %99, %98
  store i32 %100, i32* %8, align 4
  %101 = load i64, i64* %5, align 8
  %102 = call i64 @DECL_VALUE_EXPR(i64 %101)
  store i64 %102, i64* %9, align 8
  %103 = load i64, i64* %9, align 8
  %104 = call i64 @TREE_CODE(i64 %103)
  %105 = load i64, i64* @INDIRECT_REF, align 8
  %106 = icmp eq i64 %104, %105
  %107 = zext i1 %106 to i32
  %108 = call i32 @gcc_assert(i32 %107)
  %109 = load i64, i64* %9, align 8
  %110 = call i64 @TREE_OPERAND(i64 %109, i32 0)
  store i64 %110, i64* %9, align 8
  %111 = load i64, i64* %9, align 8
  %112 = call i32 @DECL_P(i64 %111)
  %113 = call i32 @gcc_assert(i32 %112)
  %114 = load %struct.gimplify_omp_ctx*, %struct.gimplify_omp_ctx** %4, align 8
  %115 = load i64, i64* %9, align 8
  %116 = load i32, i32* %8, align 4
  call void @omp_add_variable(%struct.gimplify_omp_ctx* %114, i64 %115, i32 %116)
  br label %117

117:                                              ; preds = %94, %80
  %118 = load %struct.gimplify_omp_ctx*, %struct.gimplify_omp_ctx** %4, align 8
  %119 = load i64, i64* %5, align 8
  %120 = call i64 @DECL_SIZE_UNIT(i64 %119)
  %121 = call i32 @omp_firstprivatize_variable(%struct.gimplify_omp_ctx* %118, i64 %120)
  %122 = load %struct.gimplify_omp_ctx*, %struct.gimplify_omp_ctx** %4, align 8
  %123 = load i64, i64* %5, align 8
  %124 = call i64 @DECL_SIZE(i64 %123)
  %125 = call i32 @omp_firstprivatize_variable(%struct.gimplify_omp_ctx* %122, i64 %124)
  %126 = load %struct.gimplify_omp_ctx*, %struct.gimplify_omp_ctx** %4, align 8
  %127 = load i64, i64* %5, align 8
  %128 = call i64 @TREE_TYPE(i64 %127)
  %129 = call i32 @omp_firstprivatize_type_sizes(%struct.gimplify_omp_ctx* %126, i64 %128)
  %130 = load i32, i32* %6, align 4
  %131 = load i32, i32* @GOVD_SHARED, align 4
  %132 = and i32 %130, %131
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %144

134:                                              ; preds = %117
  %135 = load i32, i32* @GOVD_PRIVATE, align 4
  %136 = load i32, i32* @GOVD_DEBUG_PRIVATE, align 4
  %137 = or i32 %135, %136
  %138 = load i32, i32* %6, align 4
  %139 = load i32, i32* @GOVD_SEEN, align 4
  %140 = load i32, i32* @GOVD_EXPLICIT, align 4
  %141 = or i32 %139, %140
  %142 = and i32 %138, %141
  %143 = or i32 %137, %142
  store i32 %143, i32* %6, align 4
  br label %156

144:                                              ; preds = %117
  %145 = load i32, i32* %6, align 4
  %146 = load i32, i32* @GOVD_LOCAL, align 4
  %147 = and i32 %145, %146
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %155, label %149

149:                                              ; preds = %144
  %150 = load %struct.gimplify_omp_ctx*, %struct.gimplify_omp_ctx** %4, align 8
  %151 = load i64, i64* %5, align 8
  %152 = call i64 @TREE_TYPE(i64 %151)
  %153 = call i64 @TYPE_SIZE_UNIT(i64 %152)
  %154 = call i32 @omp_notice_variable(%struct.gimplify_omp_ctx* %150, i64 %153, i32 1)
  br label %155

155:                                              ; preds = %149, %144
  br label %156

156:                                              ; preds = %155, %134
  br label %193

157:                                              ; preds = %74, %70
  %158 = load i64 (i64)*, i64 (i64)** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @lang_hooks, i32 0, i32 0, i32 0), align 8
  %159 = load i64, i64* %5, align 8
  %160 = call i64 %158(i64 %159)
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %192

162:                                              ; preds = %157
  %163 = load i32, i32* %6, align 4
  %164 = load i32, i32* @GOVD_LOCAL, align 4
  %165 = and i32 %163, %164
  %166 = icmp eq i32 %165, 0
  %167 = zext i1 %166 to i32
  %168 = call i32 @gcc_assert(i32 %167)
  %169 = load %struct.gimplify_omp_ctx*, %struct.gimplify_omp_ctx** %4, align 8
  %170 = load i64, i64* %5, align 8
  %171 = call i64 @TREE_TYPE(i64 %170)
  %172 = call i32 @omp_firstprivatize_type_sizes(%struct.gimplify_omp_ctx* %169, i64 %171)
  %173 = load i32, i32* %6, align 4
  %174 = load i32, i32* @GOVD_SHARED, align 4
  %175 = and i32 %173, %174
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %177, label %191

177:                                              ; preds = %162
  %178 = load i64, i64* %5, align 8
  %179 = call i64 @TREE_TYPE(i64 %178)
  %180 = call i64 @TREE_TYPE(i64 %179)
  %181 = call i64 @TYPE_SIZE_UNIT(i64 %180)
  store i64 %181, i64* %9, align 8
  %182 = load i64, i64* %9, align 8
  %183 = call i64 @TREE_CODE(i64 %182)
  %184 = load i64, i64* @INTEGER_CST, align 8
  %185 = icmp ne i64 %183, %184
  br i1 %185, label %186, label %190

186:                                              ; preds = %177
  %187 = load %struct.gimplify_omp_ctx*, %struct.gimplify_omp_ctx** %4, align 8
  %188 = load i64, i64* %9, align 8
  %189 = call i32 @omp_notice_variable(%struct.gimplify_omp_ctx* %187, i64 %188, i32 1)
  br label %190

190:                                              ; preds = %186, %177
  br label %191

191:                                              ; preds = %190, %162
  br label %192

192:                                              ; preds = %191, %157
  br label %193

193:                                              ; preds = %192, %156
  %194 = load %struct.gimplify_omp_ctx*, %struct.gimplify_omp_ctx** %4, align 8
  %195 = getelementptr inbounds %struct.gimplify_omp_ctx, %struct.gimplify_omp_ctx* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 4
  %197 = load i64, i64* %5, align 8
  %198 = trunc i64 %197 to i32
  %199 = load i32, i32* %6, align 4
  %200 = call i32 @splay_tree_insert(i32 %196, i32 %198, i32 %199)
  br label %201

201:                                              ; preds = %193, %42, %18
  ret void
}

declare dso_local i64 @TREE_TYPE(i64) #1

declare dso_local i64 @TREE_ADDRESSABLE(i64) #1

declare dso_local i64 @TYPE_NEEDS_CONSTRUCTING(i64) #1

declare dso_local %struct.TYPE_6__* @splay_tree_lookup(i32, i32) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i64 @DECL_SIZE(i64) #1

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i64 @DECL_VALUE_EXPR(i64) #1

declare dso_local i64 @TREE_OPERAND(i64, i32) #1

declare dso_local i32 @DECL_P(i64) #1

declare dso_local i32 @omp_firstprivatize_variable(%struct.gimplify_omp_ctx*, i64) #1

declare dso_local i64 @DECL_SIZE_UNIT(i64) #1

declare dso_local i32 @omp_firstprivatize_type_sizes(%struct.gimplify_omp_ctx*, i64) #1

declare dso_local i32 @omp_notice_variable(%struct.gimplify_omp_ctx*, i64, i32) #1

declare dso_local i64 @TYPE_SIZE_UNIT(i64) #1

declare dso_local i32 @splay_tree_insert(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
