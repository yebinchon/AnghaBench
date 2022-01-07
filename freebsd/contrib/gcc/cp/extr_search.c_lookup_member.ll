; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_search.c_lookup_member.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_search.c_lookup_member.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lookup_field_info = type { i8*, i8*, i32, i8*, i8*, i8*, i8* }

@NULL_TREE = common dso_local global i8* null, align 8
@IDENTIFIER_NODE = common dso_local global i64 0, align 8
@TREE_BINFO = common dso_local global i64 0, align 8
@lookup_field_r = common dso_local global i32 0, align 4
@FUNCTION_DECL = common dso_local global i64 0, align 8
@error_mark_node = common dso_local global i8* null, align 8
@n_calls_lookup_field = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @lookup_member(i8* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.lookup_field_info, align 8
  %15 = alloca i8*, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %16 = load i8*, i8** @NULL_TREE, align 8
  store i8* %16, i8** %11, align 8
  %17 = load i8*, i8** @NULL_TREE, align 8
  store i8* %17, i8** %12, align 8
  %18 = load i8*, i8** @NULL_TREE, align 8
  store i8* %18, i8** %13, align 8
  store i8* null, i8** %15, align 8
  %19 = load i8*, i8** %7, align 8
  %20 = call i64 @TREE_CODE(i8* %19)
  %21 = load i64, i64* @IDENTIFIER_NODE, align 8
  %22 = icmp eq i64 %20, %21
  %23 = zext i1 %22 to i32
  %24 = call i32 @gcc_assert(i32 %23)
  %25 = load i8*, i8** %6, align 8
  %26 = call i64 @TREE_CODE(i8* %25)
  %27 = load i64, i64* @TREE_BINFO, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %4
  %30 = load i8*, i8** %6, align 8
  %31 = call i8* @BINFO_TYPE(i8* %30)
  store i8* %31, i8** %12, align 8
  %32 = load i8*, i8** %6, align 8
  store i8* %32, i8** %13, align 8
  br label %43

33:                                               ; preds = %4
  %34 = load i8*, i8** %6, align 8
  %35 = call i64 @TREE_CODE(i8* %34)
  %36 = call i32 @IS_AGGR_TYPE_CODE(i64 %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %40, label %38

38:                                               ; preds = %33
  %39 = load i8*, i8** @NULL_TREE, align 8
  store i8* %39, i8** %5, align 8
  br label %166

40:                                               ; preds = %33
  %41 = load i8*, i8** %6, align 8
  store i8* %41, i8** %12, align 8
  %42 = load i8*, i8** @NULL_TREE, align 8
  store i8* %42, i8** %6, align 8
  br label %43

43:                                               ; preds = %40, %29
  %44 = load i8*, i8** %12, align 8
  %45 = call i8* @complete_type(i8* %44)
  store i8* %45, i8** %12, align 8
  %46 = load i8*, i8** %13, align 8
  %47 = icmp ne i8* %46, null
  br i1 %47, label %51, label %48

48:                                               ; preds = %43
  %49 = load i8*, i8** %12, align 8
  %50 = call i8* @TYPE_BINFO(i8* %49)
  store i8* %50, i8** %13, align 8
  br label %51

51:                                               ; preds = %48, %43
  %52 = load i8*, i8** %13, align 8
  %53 = icmp ne i8* %52, null
  br i1 %53, label %56, label %54

54:                                               ; preds = %51
  %55 = load i8*, i8** @NULL_TREE, align 8
  store i8* %55, i8** %5, align 8
  br label %166

56:                                               ; preds = %51
  %57 = call i32 @memset(%struct.lookup_field_info* %14, i32 0, i32 56)
  %58 = load i8*, i8** %12, align 8
  %59 = getelementptr inbounds %struct.lookup_field_info, %struct.lookup_field_info* %14, i32 0, i32 0
  store i8* %58, i8** %59, align 8
  %60 = load i8*, i8** %7, align 8
  %61 = getelementptr inbounds %struct.lookup_field_info, %struct.lookup_field_info* %14, i32 0, i32 1
  store i8* %60, i8** %61, align 8
  %62 = load i32, i32* %9, align 4
  %63 = getelementptr inbounds %struct.lookup_field_info, %struct.lookup_field_info* %14, i32 0, i32 2
  store i32 %62, i32* %63, align 8
  %64 = load i8*, i8** %13, align 8
  %65 = call i32 @dfs_walk_all(i8* %64, i32* @lookup_field_r, i32* null, %struct.lookup_field_info* %14)
  %66 = getelementptr inbounds %struct.lookup_field_info, %struct.lookup_field_info* %14, i32 0, i32 3
  %67 = load i8*, i8** %66, align 8
  store i8* %67, i8** %10, align 8
  %68 = getelementptr inbounds %struct.lookup_field_info, %struct.lookup_field_info* %14, i32 0, i32 4
  %69 = load i8*, i8** %68, align 8
  store i8* %69, i8** %11, align 8
  %70 = load i8*, i8** %11, align 8
  %71 = icmp ne i8* %70, null
  br i1 %71, label %72, label %75

72:                                               ; preds = %56
  %73 = load i8*, i8** %11, align 8
  %74 = call i8* @BINFO_TYPE(i8* %73)
  store i8* %74, i8** %12, align 8
  br label %75

75:                                               ; preds = %72, %56
  %76 = getelementptr inbounds %struct.lookup_field_info, %struct.lookup_field_info* %14, i32 0, i32 5
  %77 = load i8*, i8** %76, align 8
  store i8* %77, i8** %15, align 8
  %78 = load i32, i32* %8, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %86, label %80

80:                                               ; preds = %75
  %81 = getelementptr inbounds %struct.lookup_field_info, %struct.lookup_field_info* %14, i32 0, i32 6
  %82 = load i8*, i8** %81, align 8
  %83 = icmp ne i8* %82, null
  br i1 %83, label %84, label %86

84:                                               ; preds = %80
  %85 = load i8*, i8** @NULL_TREE, align 8
  store i8* %85, i8** %5, align 8
  br label %166

86:                                               ; preds = %80, %75
  %87 = load i32, i32* %8, align 4
  %88 = icmp eq i32 %87, 2
  br i1 %88, label %89, label %98

89:                                               ; preds = %86
  %90 = getelementptr inbounds %struct.lookup_field_info, %struct.lookup_field_info* %14, i32 0, i32 6
  %91 = load i8*, i8** %90, align 8
  %92 = icmp ne i8* %91, null
  br i1 %92, label %93, label %96

93:                                               ; preds = %89
  %94 = getelementptr inbounds %struct.lookup_field_info, %struct.lookup_field_info* %14, i32 0, i32 6
  %95 = load i8*, i8** %94, align 8
  store i8* %95, i8** %5, align 8
  br label %166

96:                                               ; preds = %89
  store i32 0, i32* %8, align 4
  br label %97

97:                                               ; preds = %96
  br label %98

98:                                               ; preds = %97, %86
  %99 = load i8*, i8** %10, align 8
  %100 = icmp ne i8* %99, null
  br i1 %100, label %101, label %122

101:                                              ; preds = %98
  %102 = load i32, i32* %8, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %122

104:                                              ; preds = %101
  %105 = load i8*, i8** %10, align 8
  %106 = call i32 @really_overloaded_fn(i8* %105)
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %122, label %108

108:                                              ; preds = %104
  %109 = load i8*, i8** %10, align 8
  %110 = call i64 @TREE_CODE(i8* %109)
  %111 = load i64, i64* @FUNCTION_DECL, align 8
  %112 = icmp eq i64 %110, %111
  br i1 %112, label %113, label %117

113:                                              ; preds = %108
  %114 = load i8*, i8** %10, align 8
  %115 = call i64 @DECL_NONSTATIC_MEMBER_FUNCTION_P(i8* %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %122, label %117

117:                                              ; preds = %113, %108
  %118 = load i8*, i8** %13, align 8
  %119 = load i8*, i8** %10, align 8
  %120 = load i8*, i8** %10, align 8
  %121 = call i32 @perform_or_defer_access_check(i8* %118, i8* %119, i8* %120)
  br label %122

122:                                              ; preds = %117, %113, %104, %101, %98
  %123 = load i8*, i8** %15, align 8
  %124 = icmp ne i8* %123, null
  br i1 %124, label %125, label %142

125:                                              ; preds = %122
  %126 = load i32, i32* %8, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %142

128:                                              ; preds = %125
  %129 = load i8*, i8** %15, align 8
  %130 = load i8*, i8** %7, align 8
  %131 = load i8*, i8** %12, align 8
  %132 = call i32 @error(i8* %129, i8* %130, i8* %131)
  %133 = getelementptr inbounds %struct.lookup_field_info, %struct.lookup_field_info* %14, i32 0, i32 6
  %134 = load i8*, i8** %133, align 8
  %135 = icmp ne i8* %134, null
  br i1 %135, label %136, label %140

136:                                              ; preds = %128
  %137 = getelementptr inbounds %struct.lookup_field_info, %struct.lookup_field_info* %14, i32 0, i32 6
  %138 = load i8*, i8** %137, align 8
  %139 = call i32 @print_candidates(i8* %138)
  br label %140

140:                                              ; preds = %136, %128
  %141 = load i8*, i8** @error_mark_node, align 8
  store i8* %141, i8** %10, align 8
  br label %142

142:                                              ; preds = %140, %125, %122
  %143 = load i8*, i8** %10, align 8
  %144 = icmp ne i8* %143, null
  br i1 %144, label %145, label %164

145:                                              ; preds = %142
  %146 = load i8*, i8** %10, align 8
  %147 = call i64 @is_overloaded_fn(i8* %146)
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %164

149:                                              ; preds = %145
  %150 = load i8*, i8** %11, align 8
  %151 = load i8*, i8** %13, align 8
  %152 = load i8*, i8** %10, align 8
  %153 = load i8*, i8** %7, align 8
  %154 = call i64 @IDENTIFIER_TYPENAME_P(i8* %153)
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %159

156:                                              ; preds = %149
  %157 = load i8*, i8** %7, align 8
  %158 = call i8* @TREE_TYPE(i8* %157)
  br label %161

159:                                              ; preds = %149
  %160 = load i8*, i8** @NULL_TREE, align 8
  br label %161

161:                                              ; preds = %159, %156
  %162 = phi i8* [ %158, %156 ], [ %160, %159 ]
  %163 = call i8* @build_baselink(i8* %150, i8* %151, i8* %152, i8* %162)
  store i8* %163, i8** %10, align 8
  br label %164

164:                                              ; preds = %161, %145, %142
  %165 = load i8*, i8** %10, align 8
  store i8* %165, i8** %5, align 8
  br label %166

166:                                              ; preds = %164, %93, %84, %54, %38
  %167 = load i8*, i8** %5, align 8
  ret i8* %167
}

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i64 @TREE_CODE(i8*) #1

declare dso_local i8* @BINFO_TYPE(i8*) #1

declare dso_local i32 @IS_AGGR_TYPE_CODE(i64) #1

declare dso_local i8* @complete_type(i8*) #1

declare dso_local i8* @TYPE_BINFO(i8*) #1

declare dso_local i32 @memset(%struct.lookup_field_info*, i32, i32) #1

declare dso_local i32 @dfs_walk_all(i8*, i32*, i32*, %struct.lookup_field_info*) #1

declare dso_local i32 @really_overloaded_fn(i8*) #1

declare dso_local i64 @DECL_NONSTATIC_MEMBER_FUNCTION_P(i8*) #1

declare dso_local i32 @perform_or_defer_access_check(i8*, i8*, i8*) #1

declare dso_local i32 @error(i8*, i8*, i8*) #1

declare dso_local i32 @print_candidates(i8*) #1

declare dso_local i64 @is_overloaded_fn(i8*) #1

declare dso_local i8* @build_baselink(i8*, i8*, i8*, i8*) #1

declare dso_local i64 @IDENTIFIER_TYPENAME_P(i8*) #1

declare dso_local i8* @TREE_TYPE(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
