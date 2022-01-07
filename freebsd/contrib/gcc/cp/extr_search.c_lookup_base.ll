; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_search.c_lookup_base.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_search.c_lookup_base.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lookup_base_data_s = type { i64, i32, i32, i32, i32, i64, i64 }

@error_mark_node = common dso_local global i64 0, align 8
@NULL_TREE = common dso_local global i64 0, align 8
@ba_any = common dso_local global i64 0, align 8
@dfs_lookup_base = common dso_local global i32 0, align 4
@bk_same_type = common dso_local global i32 0, align 4
@bk_via_virtual = common dso_local global i32 0, align 4
@bk_proper_base = common dso_local global i32 0, align 4
@ba_quiet = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [32 x i8] c"%qT is an ambiguous base of %qT\00", align 1
@ba_check_bit = common dso_local global i64 0, align 8
@ba_ignore_scope = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [35 x i8] c"%qT is an inaccessible base of %qT\00", align 1
@bk_inaccessible = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @lookup_base(i64 %0, i64 %1, i64 %2, i32* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.lookup_base_data_s, align 8
  store i64 %0, i64* %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i32* %3, i32** %9, align 8
  %14 = load i64, i64* %6, align 8
  %15 = load i64, i64* @error_mark_node, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %21, label %17

17:                                               ; preds = %4
  %18 = load i64, i64* %7, align 8
  %19 = load i64, i64* @error_mark_node, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %28

21:                                               ; preds = %17, %4
  %22 = load i32*, i32** %9, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %21
  %25 = load i32*, i32** %9, align 8
  store i32 128, i32* %25, align 4
  br label %26

26:                                               ; preds = %24, %21
  %27 = load i64, i64* @error_mark_node, align 8
  store i64 %27, i64* %5, align 8
  br label %162

28:                                               ; preds = %17
  %29 = load i64, i64* %7, align 8
  %30 = call i32 @TYPE_P(i64 %29)
  %31 = call i32 @gcc_assert(i32 %30)
  %32 = load i64, i64* %6, align 8
  %33 = call i32 @TYPE_P(i64 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %39, label %35

35:                                               ; preds = %28
  %36 = load i64, i64* %6, align 8
  store i64 %36, i64* %11, align 8
  %37 = load i64, i64* %6, align 8
  %38 = call i64 @BINFO_TYPE(i64 %37)
  store i64 %38, i64* %6, align 8
  br label %45

39:                                               ; preds = %28
  %40 = load i64, i64* %6, align 8
  %41 = call i32 @TYPE_MAIN_VARIANT(i64 %40)
  %42 = call i64 @complete_type(i32 %41)
  store i64 %42, i64* %6, align 8
  %43 = load i64, i64* %6, align 8
  %44 = call i64 @TYPE_BINFO(i64 %43)
  store i64 %44, i64* %11, align 8
  br label %45

45:                                               ; preds = %39, %35
  %46 = load i64, i64* %7, align 8
  %47 = call i32 @TYPE_MAIN_VARIANT(i64 %46)
  %48 = call i64 @complete_type(i32 %47)
  store i64 %48, i64* %7, align 8
  %49 = load i64, i64* %11, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %98

51:                                               ; preds = %45
  %52 = load i64, i64* %6, align 8
  %53 = getelementptr inbounds %struct.lookup_base_data_s, %struct.lookup_base_data_s* %13, i32 0, i32 6
  store i64 %52, i64* %53, align 8
  %54 = load i64, i64* %7, align 8
  %55 = getelementptr inbounds %struct.lookup_base_data_s, %struct.lookup_base_data_s* %13, i32 0, i32 5
  store i64 %54, i64* %55, align 8
  %56 = load i64, i64* @NULL_TREE, align 8
  %57 = getelementptr inbounds %struct.lookup_base_data_s, %struct.lookup_base_data_s* %13, i32 0, i32 0
  store i64 %56, i64* %57, align 8
  %58 = getelementptr inbounds %struct.lookup_base_data_s, %struct.lookup_base_data_s* %13, i32 0, i32 2
  store i32 0, i32* %58, align 4
  %59 = getelementptr inbounds %struct.lookup_base_data_s, %struct.lookup_base_data_s* %13, i32 0, i32 1
  store i32 0, i32* %59, align 8
  %60 = load i64, i64* %6, align 8
  %61 = call i32 @CLASSTYPE_REPEATED_BASE_P(i64 %60)
  %62 = getelementptr inbounds %struct.lookup_base_data_s, %struct.lookup_base_data_s* %13, i32 0, i32 4
  store i32 %61, i32* %62, align 4
  %63 = load i64, i64* %8, align 8
  %64 = load i64, i64* @ba_any, align 8
  %65 = icmp eq i64 %63, %64
  %66 = zext i1 %65 to i32
  %67 = getelementptr inbounds %struct.lookup_base_data_s, %struct.lookup_base_data_s* %13, i32 0, i32 3
  store i32 %66, i32* %67, align 8
  %68 = load i64, i64* %11, align 8
  %69 = load i32, i32* @dfs_lookup_base, align 4
  %70 = call i32 @dfs_walk_once(i64 %68, i32 %69, i32* null, %struct.lookup_base_data_s* %13)
  %71 = getelementptr inbounds %struct.lookup_base_data_s, %struct.lookup_base_data_s* %13, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  store i64 %72, i64* %10, align 8
  %73 = load i64, i64* %10, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %81, label %75

75:                                               ; preds = %51
  %76 = getelementptr inbounds %struct.lookup_base_data_s, %struct.lookup_base_data_s* %13, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = icmp ne i32 %77, 0
  %79 = zext i1 %78 to i64
  %80 = select i1 %78, i32 129, i32 128
  store i32 %80, i32* %12, align 4
  br label %97

81:                                               ; preds = %51
  %82 = load i64, i64* %10, align 8
  %83 = load i64, i64* %11, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %87

85:                                               ; preds = %81
  %86 = load i32, i32* @bk_same_type, align 4
  store i32 %86, i32* %12, align 4
  br label %96

87:                                               ; preds = %81
  %88 = getelementptr inbounds %struct.lookup_base_data_s, %struct.lookup_base_data_s* %13, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %87
  %92 = load i32, i32* @bk_via_virtual, align 4
  store i32 %92, i32* %12, align 4
  br label %95

93:                                               ; preds = %87
  %94 = load i32, i32* @bk_proper_base, align 4
  store i32 %94, i32* %12, align 4
  br label %95

95:                                               ; preds = %93, %91
  br label %96

96:                                               ; preds = %95, %85
  br label %97

97:                                               ; preds = %96, %75
  br label %100

98:                                               ; preds = %45
  %99 = load i64, i64* @NULL_TREE, align 8
  store i64 %99, i64* %10, align 8
  store i32 128, i32* %12, align 4
  br label %100

100:                                              ; preds = %98, %97
  %101 = load i64, i64* %8, align 8
  %102 = load i64, i64* @ba_any, align 8
  %103 = icmp ne i64 %101, %102
  br i1 %103, label %104, label %154

104:                                              ; preds = %100
  %105 = load i32, i32* %12, align 4
  switch i32 %105, label %118 [
    i32 128, label %106
    i32 129, label %107
  ]

106:                                              ; preds = %104
  br label %153

107:                                              ; preds = %104
  %108 = load i64, i64* %8, align 8
  %109 = load i64, i64* @ba_quiet, align 8
  %110 = and i64 %108, %109
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %117, label %112

112:                                              ; preds = %107
  %113 = load i64, i64* %7, align 8
  %114 = load i64, i64* %6, align 8
  %115 = call i32 @error(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i64 %113, i64 %114)
  %116 = load i64, i64* @error_mark_node, align 8
  store i64 %116, i64* %10, align 8
  br label %117

117:                                              ; preds = %112, %107
  br label %153

118:                                              ; preds = %104
  %119 = load i64, i64* %8, align 8
  %120 = load i64, i64* @ba_check_bit, align 8
  %121 = and i64 %119, %120
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %152

123:                                              ; preds = %118
  %124 = load i64, i64* %7, align 8
  %125 = call i32 @COMPLETE_TYPE_P(i64 %124)
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %152

127:                                              ; preds = %123
  %128 = load i64, i64* %6, align 8
  %129 = load i64, i64* %7, align 8
  %130 = load i64, i64* %8, align 8
  %131 = load i64, i64* @ba_ignore_scope, align 8
  %132 = and i64 %130, %131
  %133 = icmp ne i64 %132, 0
  %134 = xor i1 %133, true
  %135 = zext i1 %134 to i32
  %136 = call i32 @accessible_base_p(i64 %128, i64 %129, i32 %135)
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %152, label %138

138:                                              ; preds = %127
  %139 = load i64, i64* %8, align 8
  %140 = load i64, i64* @ba_quiet, align 8
  %141 = and i64 %139, %140
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %148, label %143

143:                                              ; preds = %138
  %144 = load i64, i64* %7, align 8
  %145 = load i64, i64* %6, align 8
  %146 = call i32 @error(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i64 %144, i64 %145)
  %147 = load i64, i64* @error_mark_node, align 8
  store i64 %147, i64* %10, align 8
  br label %150

148:                                              ; preds = %138
  %149 = load i64, i64* @NULL_TREE, align 8
  store i64 %149, i64* %10, align 8
  br label %150

150:                                              ; preds = %148, %143
  %151 = load i32, i32* @bk_inaccessible, align 4
  store i32 %151, i32* %12, align 4
  br label %152

152:                                              ; preds = %150, %127, %123, %118
  br label %153

153:                                              ; preds = %152, %117, %106
  br label %154

154:                                              ; preds = %153, %100
  %155 = load i32*, i32** %9, align 8
  %156 = icmp ne i32* %155, null
  br i1 %156, label %157, label %160

157:                                              ; preds = %154
  %158 = load i32, i32* %12, align 4
  %159 = load i32*, i32** %9, align 8
  store i32 %158, i32* %159, align 4
  br label %160

160:                                              ; preds = %157, %154
  %161 = load i64, i64* %10, align 8
  store i64 %161, i64* %5, align 8
  br label %162

162:                                              ; preds = %160, %26
  %163 = load i64, i64* %5, align 8
  ret i64 %163
}

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i32 @TYPE_P(i64) #1

declare dso_local i64 @BINFO_TYPE(i64) #1

declare dso_local i64 @complete_type(i32) #1

declare dso_local i32 @TYPE_MAIN_VARIANT(i64) #1

declare dso_local i64 @TYPE_BINFO(i64) #1

declare dso_local i32 @CLASSTYPE_REPEATED_BASE_P(i64) #1

declare dso_local i32 @dfs_walk_once(i64, i32, i32*, %struct.lookup_base_data_s*) #1

declare dso_local i32 @error(i8*, i64, i64) #1

declare dso_local i32 @COMPLETE_TYPE_P(i64) #1

declare dso_local i32 @accessible_base_p(i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
