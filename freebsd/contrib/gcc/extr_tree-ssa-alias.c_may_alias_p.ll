; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-alias.c_may_alias_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-alias.c_may_alias_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i64 }

@alias_stats = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@flag_argument_noalias = common dso_local global i32 0, align 4
@PARM_DECL = common dso_local global i64 0, align 8
@SYMBOL_MEMORY_TAG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64, i64, i64, i32)* @may_alias_p to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @may_alias_p(i64 %0, i64 %1, i64 %2, i64 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store i64 %0, i64* %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %16 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @alias_stats, i32 0, i32 8), align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @alias_stats, i32 0, i32 8), align 4
  %18 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @alias_stats, i32 0, i32 7), align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @alias_stats, i32 0, i32 7), align 4
  %20 = load i64, i64* %7, align 8
  %21 = call %struct.TYPE_3__* @var_ann(i64 %20)
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %12, align 8
  %24 = load i64, i64* %12, align 8
  %25 = load i64, i64* %9, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %32

27:                                               ; preds = %5
  %28 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @alias_stats, i32 0, i32 1), align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @alias_stats, i32 0, i32 1), align 4
  %30 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @alias_stats, i32 0, i32 6), align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @alias_stats, i32 0, i32 6), align 4
  store i32 0, i32* %6, align 4
  br label %161

32:                                               ; preds = %5
  %33 = load i32, i32* @flag_argument_noalias, align 4
  %34 = icmp sgt i32 %33, 2
  br i1 %34, label %35, label %45

35:                                               ; preds = %32
  %36 = load i64, i64* %7, align 8
  %37 = call i64 @TREE_CODE(i64 %36)
  %38 = load i64, i64* @PARM_DECL, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %45

40:                                               ; preds = %35
  %41 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @alias_stats, i32 0, i32 1), align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @alias_stats, i32 0, i32 1), align 4
  %43 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @alias_stats, i32 0, i32 6), align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @alias_stats, i32 0, i32 6), align 4
  store i32 0, i32* %6, align 4
  br label %161

45:                                               ; preds = %35, %32
  %46 = load i32, i32* @flag_argument_noalias, align 4
  %47 = icmp sgt i32 %46, 1
  br i1 %47, label %48, label %62

48:                                               ; preds = %45
  %49 = load i64, i64* %9, align 8
  %50 = call i64 @is_global_var(i64 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %62

52:                                               ; preds = %48
  %53 = load i64, i64* %7, align 8
  %54 = call i64 @TREE_CODE(i64 %53)
  %55 = load i64, i64* @PARM_DECL, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %62

57:                                               ; preds = %52
  %58 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @alias_stats, i32 0, i32 1), align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @alias_stats, i32 0, i32 1), align 4
  %60 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @alias_stats, i32 0, i32 6), align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @alias_stats, i32 0, i32 6), align 4
  store i32 0, i32* %6, align 4
  br label %161

62:                                               ; preds = %52, %48, %45
  %63 = load i64, i64* %12, align 8
  %64 = call i64 @unmodifiable_var_p(i64 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %62
  %67 = load i64, i64* %9, align 8
  %68 = call i64 @unmodifiable_var_p(i64 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %78

70:                                               ; preds = %66, %62
  %71 = load i64, i64* %9, align 8
  %72 = call i64 @unmodifiable_var_p(i64 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %83

74:                                               ; preds = %70
  %75 = load i64, i64* %12, align 8
  %76 = call i64 @unmodifiable_var_p(i64 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %83, label %78

78:                                               ; preds = %74, %66
  %79 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @alias_stats, i32 0, i32 1), align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @alias_stats, i32 0, i32 1), align 4
  %81 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @alias_stats, i32 0, i32 6), align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @alias_stats, i32 0, i32 6), align 4
  store i32 0, i32* %6, align 4
  br label %161

83:                                               ; preds = %74, %70
  %84 = load i64, i64* %12, align 8
  %85 = call i64 @TREE_CODE(i64 %84)
  %86 = load i64, i64* @SYMBOL_MEMORY_TAG, align 8
  %87 = icmp eq i64 %85, %86
  %88 = zext i1 %87 to i32
  %89 = call i32 @gcc_assert(i32 %88)
  %90 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @alias_stats, i32 0, i32 5), align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @alias_stats, i32 0, i32 5), align 4
  %92 = load i64, i64* %8, align 8
  %93 = load i64, i64* %10, align 8
  %94 = call i32 @alias_sets_conflict_p(i64 %92, i64 %93)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %101, label %96

96:                                               ; preds = %83
  %97 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @alias_stats, i32 0, i32 1), align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @alias_stats, i32 0, i32 1), align 4
  %99 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @alias_stats, i32 0, i32 4), align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @alias_stats, i32 0, i32 4), align 4
  store i32 0, i32* %6, align 4
  br label %161

101:                                              ; preds = %83
  %102 = load i64, i64* %8, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %158

104:                                              ; preds = %101
  %105 = load i64, i64* %10, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %158

107:                                              ; preds = %104
  %108 = load i64, i64* %7, align 8
  %109 = call i64 @TREE_TYPE(i64 %108)
  store i64 %109, i64* %13, align 8
  %110 = load i64, i64* %9, align 8
  %111 = call i64 @TREE_TYPE(i64 %110)
  store i64 %111, i64* %14, align 8
  %112 = load i32, i32* %11, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %157, label %114

114:                                              ; preds = %107
  %115 = load i64, i64* %14, align 8
  %116 = call i64 @ipa_type_escape_star_count_of_interesting_type(i64 %115)
  %117 = icmp sge i64 %116, 0
  br i1 %117, label %118, label %157

118:                                              ; preds = %114
  store i32 0, i32* %15, align 4
  br label %119

119:                                              ; preds = %123, %118
  %120 = load i64, i64* %13, align 8
  %121 = call i64 @POINTER_TYPE_P(i64 %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %128

123:                                              ; preds = %119
  %124 = load i64, i64* %13, align 8
  %125 = call i64 @TREE_TYPE(i64 %124)
  store i64 %125, i64* %13, align 8
  %126 = load i32, i32* %15, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %15, align 4
  br label %119

128:                                              ; preds = %119
  %129 = load i32, i32* %15, align 4
  %130 = icmp sgt i32 %129, 0
  br i1 %130, label %131, label %145

131:                                              ; preds = %128
  %132 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @alias_stats, i32 0, i32 3), align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @alias_stats, i32 0, i32 3), align 4
  %134 = load i64, i64* %14, align 8
  %135 = load i64, i64* %7, align 8
  %136 = call i64 @TREE_TYPE(i64 %135)
  %137 = call i64 @ipa_type_escape_field_does_not_clobber_p(i64 %134, i64 %136)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %144

139:                                              ; preds = %131
  %140 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @alias_stats, i32 0, i32 2), align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @alias_stats, i32 0, i32 2), align 4
  %142 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @alias_stats, i32 0, i32 1), align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @alias_stats, i32 0, i32 1), align 4
  store i32 0, i32* %6, align 4
  br label %161

144:                                              ; preds = %131
  br label %156

145:                                              ; preds = %128
  %146 = load i32, i32* %15, align 4
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %148, label %155

148:                                              ; preds = %145
  %149 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @alias_stats, i32 0, i32 3), align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @alias_stats, i32 0, i32 3), align 4
  %151 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @alias_stats, i32 0, i32 2), align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @alias_stats, i32 0, i32 2), align 4
  %153 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @alias_stats, i32 0, i32 1), align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @alias_stats, i32 0, i32 1), align 4
  store i32 0, i32* %6, align 4
  br label %161

155:                                              ; preds = %145
  br label %156

156:                                              ; preds = %155, %144
  br label %157

157:                                              ; preds = %156, %114, %107
  br label %158

158:                                              ; preds = %157, %104, %101
  %159 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @alias_stats, i32 0, i32 0), align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @alias_stats, i32 0, i32 0), align 4
  store i32 1, i32* %6, align 4
  br label %161

161:                                              ; preds = %158, %148, %139, %96, %78, %57, %40, %27
  %162 = load i32, i32* %6, align 4
  ret i32 %162
}

declare dso_local %struct.TYPE_3__* @var_ann(i64) #1

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i64 @is_global_var(i64) #1

declare dso_local i64 @unmodifiable_var_p(i64) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i32 @alias_sets_conflict_p(i64, i64) #1

declare dso_local i64 @TREE_TYPE(i64) #1

declare dso_local i64 @ipa_type_escape_star_count_of_interesting_type(i64) #1

declare dso_local i64 @POINTER_TYPE_P(i64) #1

declare dso_local i64 @ipa_type_escape_field_does_not_clobber_p(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
