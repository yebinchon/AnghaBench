; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_name-lookup.c_qualified_lookup_using_namespace.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_name-lookup.c_qualified_lookup_using_namespace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scope_binding = type { i64, i32 }

@NULL_TREE = common dso_local global i64 0, align 8
@TV_NAME_LOOKUP = common dso_local global i32 0, align 4
@error_mark_node = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64, %struct.scope_binding*, i32)* @qualified_lookup_using_namespace to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qualified_lookup_using_namespace(i64 %0, i64 %1, %struct.scope_binding* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.scope_binding*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  store i64 %0, i64* %6, align 8
  store i64 %1, i64* %7, align 8
  store %struct.scope_binding* %2, %struct.scope_binding** %8, align 8
  store i32 %3, i32* %9, align 4
  %15 = load i64, i64* @NULL_TREE, align 8
  store i64 %15, i64* %10, align 8
  %16 = load i64, i64* @NULL_TREE, align 8
  store i64 %16, i64* %11, align 8
  %17 = load i64, i64* @NULL_TREE, align 8
  store i64 %17, i64* %12, align 8
  %18 = load i32, i32* @TV_NAME_LOOKUP, align 4
  %19 = call i32 @timevar_push(i32 %18)
  %20 = load i64, i64* %7, align 8
  %21 = call i64 @ORIGINAL_NAMESPACE(i64 %20)
  store i64 %21, i64* %7, align 8
  br label %22

22:                                               ; preds = %153, %4
  %23 = load i64, i64* %7, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %22
  %26 = load %struct.scope_binding*, %struct.scope_binding** %8, align 8
  %27 = getelementptr inbounds %struct.scope_binding, %struct.scope_binding* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @error_mark_node, align 8
  %30 = icmp ne i64 %28, %29
  br label %31

31:                                               ; preds = %25, %22
  %32 = phi i1 [ false, %22 ], [ %30, %25 ]
  br i1 %32, label %33, label %154

33:                                               ; preds = %31
  %34 = load i64, i64* %7, align 8
  %35 = call i32 @NAMESPACE_LEVEL(i64 %34)
  %36 = load i64, i64* %6, align 8
  %37 = call i32* @cxx_scope_find_binding_for_name(i32 %35, i64 %36)
  store i32* %37, i32** %14, align 8
  %38 = load i64, i64* %7, align 8
  %39 = load i64, i64* @NULL_TREE, align 8
  %40 = load i64, i64* %10, align 8
  %41 = call i64 @tree_cons(i64 %38, i64 %39, i64 %40)
  store i64 %41, i64* %10, align 8
  %42 = load i32*, i32** %14, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %44, label %49

44:                                               ; preds = %33
  %45 = load %struct.scope_binding*, %struct.scope_binding** %8, align 8
  %46 = load i32*, i32** %14, align 8
  %47 = load i32, i32* %9, align 4
  %48 = call i32 @ambiguous_decl(%struct.scope_binding* %45, i32* %46, i32 %47)
  br label %49

49:                                               ; preds = %44, %33
  %50 = load i64, i64* %7, align 8
  %51 = call i64 @DECL_NAMESPACE_USING(i64 %50)
  store i64 %51, i64* %13, align 8
  br label %52

52:                                               ; preds = %120, %49
  %53 = load i64, i64* %13, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %123

55:                                               ; preds = %52
  %56 = load i64, i64* %13, align 8
  %57 = call i32 @TREE_INDIRECT_USING(i64 %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %119, label %59

59:                                               ; preds = %55
  %60 = load i64, i64* %7, align 8
  %61 = load i64, i64* %13, align 8
  %62 = call i64 @TREE_PURPOSE(i64 %61)
  %63 = call i64 @is_associated_namespace(i64 %60, i64 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %83

65:                                               ; preds = %59
  %66 = load i64, i64* %13, align 8
  %67 = call i64 @TREE_PURPOSE(i64 %66)
  %68 = load i64, i64* %10, align 8
  %69 = call i32 @purpose_member(i64 %67, i64 %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %83, label %71

71:                                               ; preds = %65
  %72 = load i64, i64* %13, align 8
  %73 = call i64 @TREE_PURPOSE(i64 %72)
  %74 = load i64, i64* %11, align 8
  %75 = call i32 @purpose_member(i64 %73, i64 %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %83, label %77

77:                                               ; preds = %71
  %78 = load i64, i64* %13, align 8
  %79 = call i64 @TREE_PURPOSE(i64 %78)
  %80 = load i64, i64* @NULL_TREE, align 8
  %81 = load i64, i64* %11, align 8
  %82 = call i64 @tree_cons(i64 %79, i64 %80, i64 %81)
  store i64 %82, i64* %11, align 8
  br label %118

83:                                               ; preds = %71, %65, %59
  %84 = load %struct.scope_binding*, %struct.scope_binding** %8, align 8
  %85 = getelementptr inbounds %struct.scope_binding, %struct.scope_binding* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %117, label %88

88:                                               ; preds = %83
  %89 = load %struct.scope_binding*, %struct.scope_binding** %8, align 8
  %90 = getelementptr inbounds %struct.scope_binding, %struct.scope_binding* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %117, label %93

93:                                               ; preds = %88
  %94 = load i64, i64* %13, align 8
  %95 = call i64 @TREE_PURPOSE(i64 %94)
  %96 = load i64, i64* %10, align 8
  %97 = call i32 @purpose_member(i64 %95, i64 %96)
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %117, label %99

99:                                               ; preds = %93
  %100 = load i64, i64* %13, align 8
  %101 = call i64 @TREE_PURPOSE(i64 %100)
  %102 = load i64, i64* %11, align 8
  %103 = call i32 @purpose_member(i64 %101, i64 %102)
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %117, label %105

105:                                              ; preds = %99
  %106 = load i64, i64* %13, align 8
  %107 = call i64 @TREE_PURPOSE(i64 %106)
  %108 = load i64, i64* %12, align 8
  %109 = call i32 @purpose_member(i64 %107, i64 %108)
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %117, label %111

111:                                              ; preds = %105
  %112 = load i64, i64* %13, align 8
  %113 = call i64 @TREE_PURPOSE(i64 %112)
  %114 = load i64, i64* @NULL_TREE, align 8
  %115 = load i64, i64* %12, align 8
  %116 = call i64 @tree_cons(i64 %113, i64 %114, i64 %115)
  store i64 %116, i64* %12, align 8
  br label %117

117:                                              ; preds = %111, %105, %99, %93, %88, %83
  br label %118

118:                                              ; preds = %117, %77
  br label %119

119:                                              ; preds = %118, %55
  br label %120

120:                                              ; preds = %119
  %121 = load i64, i64* %13, align 8
  %122 = call i64 @TREE_CHAIN(i64 %121)
  store i64 %122, i64* %13, align 8
  br label %52

123:                                              ; preds = %52
  %124 = load i64, i64* %11, align 8
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %131

126:                                              ; preds = %123
  %127 = load i64, i64* %11, align 8
  %128 = call i64 @TREE_PURPOSE(i64 %127)
  store i64 %128, i64* %7, align 8
  %129 = load i64, i64* %11, align 8
  %130 = call i64 @TREE_CHAIN(i64 %129)
  store i64 %130, i64* %11, align 8
  br label %153

131:                                              ; preds = %123
  %132 = load i64, i64* %12, align 8
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %150

134:                                              ; preds = %131
  %135 = load %struct.scope_binding*, %struct.scope_binding** %8, align 8
  %136 = getelementptr inbounds %struct.scope_binding, %struct.scope_binding* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %150, label %139

139:                                              ; preds = %134
  %140 = load %struct.scope_binding*, %struct.scope_binding** %8, align 8
  %141 = getelementptr inbounds %struct.scope_binding, %struct.scope_binding* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 8
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %150, label %144

144:                                              ; preds = %139
  %145 = load i64, i64* %12, align 8
  %146 = call i64 @TREE_PURPOSE(i64 %145)
  store i64 %146, i64* %7, align 8
  %147 = load i64, i64* %12, align 8
  %148 = call i64 @TREE_CHAIN(i64 %147)
  store i64 %148, i64* %11, align 8
  %149 = load i64, i64* @NULL_TREE, align 8
  store i64 %149, i64* %12, align 8
  br label %152

150:                                              ; preds = %139, %134, %131
  %151 = load i64, i64* @NULL_TREE, align 8
  store i64 %151, i64* %7, align 8
  br label %152

152:                                              ; preds = %150, %144
  br label %153

153:                                              ; preds = %152, %126
  br label %22

154:                                              ; preds = %31
  %155 = load i32, i32* @TV_NAME_LOOKUP, align 4
  %156 = load %struct.scope_binding*, %struct.scope_binding** %8, align 8
  %157 = getelementptr inbounds %struct.scope_binding, %struct.scope_binding* %156, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  %159 = load i64, i64* @error_mark_node, align 8
  %160 = icmp ne i64 %158, %159
  %161 = zext i1 %160 to i32
  %162 = call i32 @POP_TIMEVAR_AND_RETURN(i32 %155, i32 %161)
  %163 = load i32, i32* %5, align 4
  ret i32 %163
}

declare dso_local i32 @timevar_push(i32) #1

declare dso_local i64 @ORIGINAL_NAMESPACE(i64) #1

declare dso_local i32* @cxx_scope_find_binding_for_name(i32, i64) #1

declare dso_local i32 @NAMESPACE_LEVEL(i64) #1

declare dso_local i64 @tree_cons(i64, i64, i64) #1

declare dso_local i32 @ambiguous_decl(%struct.scope_binding*, i32*, i32) #1

declare dso_local i64 @DECL_NAMESPACE_USING(i64) #1

declare dso_local i32 @TREE_INDIRECT_USING(i64) #1

declare dso_local i64 @is_associated_namespace(i64, i64) #1

declare dso_local i64 @TREE_PURPOSE(i64) #1

declare dso_local i32 @purpose_member(i64, i64) #1

declare dso_local i64 @TREE_CHAIN(i64) #1

declare dso_local i32 @POP_TIMEVAR_AND_RETURN(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
