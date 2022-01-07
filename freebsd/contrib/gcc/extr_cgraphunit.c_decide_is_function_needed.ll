; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_cgraphunit.c_decide_is_function_needed.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_cgraphunit.c_decide_is_function_needed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cgraph_node = type { %struct.TYPE_2__, i32, i64 }
%struct.TYPE_2__ = type { i32, i32, i32 }

@flag_unit_at_a_time = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"used\00", align 1
@optimize = common dso_local global i32 0, align 4
@flag_whole_program = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cgraph_node*, i64)* @decide_is_function_needed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decide_is_function_needed(%struct.cgraph_node* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cgraph_node*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.cgraph_node* %0, %struct.cgraph_node** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load i64, i64* %5, align 8
  %8 = call i32 @DECL_NAME(i64 %7)
  %9 = call i64 @MAIN_NAME_P(i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %19

11:                                               ; preds = %2
  %12 = load i64, i64* %5, align 8
  %13 = call i64 @TREE_PUBLIC(i64 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %11
  %16 = load %struct.cgraph_node*, %struct.cgraph_node** %4, align 8
  %17 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  store i32 1, i32* %18, align 8
  store i32 1, i32* %3, align 4
  br label %149

19:                                               ; preds = %11, %2
  %20 = load %struct.cgraph_node*, %struct.cgraph_node** %4, align 8
  %21 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  store i32 1, i32* %3, align 4
  br label %149

26:                                               ; preds = %19
  %27 = load i64, i64* @flag_unit_at_a_time, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %35, label %29

29:                                               ; preds = %26
  %30 = load i64, i64* %5, align 8
  %31 = call i32 @DECL_ATTRIBUTES(i64 %30)
  %32 = call i64 @lookup_attribute(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  store i32 1, i32* %3, align 4
  br label %149

35:                                               ; preds = %29, %26
  %36 = load i64, i64* %5, align 8
  %37 = call i64 @DECL_ASSEMBLER_NAME_SET_P(i64 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %35
  %40 = load i64, i64* %5, align 8
  %41 = call i32 @DECL_ASSEMBLER_NAME(i64 %40)
  %42 = call i64 @TREE_SYMBOL_REFERENCED(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %39
  store i32 1, i32* %3, align 4
  br label %149

45:                                               ; preds = %39, %35
  %46 = load %struct.cgraph_node*, %struct.cgraph_node** %4, align 8
  %47 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %45
  store i32 1, i32* %3, align 4
  br label %149

51:                                               ; preds = %45
  %52 = load i64, i64* %5, align 8
  %53 = call i64 @TREE_PUBLIC(i64 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %73, label %55

55:                                               ; preds = %51
  %56 = load i32, i32* @optimize, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %85, label %58

58:                                               ; preds = %55
  %59 = load %struct.cgraph_node*, %struct.cgraph_node** %4, align 8
  %60 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %85, label %64

64:                                               ; preds = %58
  %65 = load i64, i64* %5, align 8
  %66 = call i32 @DECL_DECLARED_INLINE_P(i64 %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %85, label %68

68:                                               ; preds = %64
  %69 = load %struct.cgraph_node*, %struct.cgraph_node** %4, align 8
  %70 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %85, label %73

73:                                               ; preds = %68, %51
  %74 = load i32, i32* @flag_whole_program, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %85, label %76

76:                                               ; preds = %73
  %77 = load i64, i64* %5, align 8
  %78 = call i64 @DECL_COMDAT(i64 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %85, label %80

80:                                               ; preds = %76
  %81 = load i64, i64* %5, align 8
  %82 = call i64 @DECL_EXTERNAL(i64 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %85, label %84

84:                                               ; preds = %80
  store i32 1, i32* %3, align 4
  br label %149

85:                                               ; preds = %80, %76, %73, %68, %64, %58, %55
  %86 = load i64, i64* %5, align 8
  %87 = call i64 @DECL_STATIC_CONSTRUCTOR(i64 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %93, label %89

89:                                               ; preds = %85
  %90 = load i64, i64* %5, align 8
  %91 = call i64 @DECL_STATIC_DESTRUCTOR(i64 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %89, %85
  store i32 1, i32* %3, align 4
  br label %149

94:                                               ; preds = %89
  %95 = load i64, i64* @flag_unit_at_a_time, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %94
  store i32 0, i32* %3, align 4
  br label %149

98:                                               ; preds = %94
  %99 = load i64, i64* %5, align 8
  %100 = call i64 @DECL_EXTERNAL(i64 %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %98
  store i32 0, i32* %3, align 4
  br label %149

103:                                              ; preds = %98
  %104 = load i64, i64* %5, align 8
  %105 = call i64 @decl_function_context(i64 %104)
  store i64 %105, i64* %6, align 8
  br label %106

106:                                              ; preds = %115, %103
  %107 = load i64, i64* %6, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %118

109:                                              ; preds = %106
  %110 = load i64, i64* %6, align 8
  %111 = call i64 @DECL_EXTERNAL(i64 %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %109
  store i32 0, i32* %3, align 4
  br label %149

114:                                              ; preds = %109
  br label %115

115:                                              ; preds = %114
  %116 = load i64, i64* %6, align 8
  %117 = call i64 @decl_function_context(i64 %116)
  store i64 %117, i64* %6, align 8
  br label %106

118:                                              ; preds = %106
  %119 = load i64, i64* %5, align 8
  %120 = call i64 @DECL_COMDAT(i64 %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %118
  store i32 0, i32* %3, align 4
  br label %149

123:                                              ; preds = %118
  %124 = load i64, i64* %5, align 8
  %125 = call i32 @DECL_INLINE(i64 %124)
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %147

127:                                              ; preds = %123
  %128 = load %struct.cgraph_node*, %struct.cgraph_node** %4, align 8
  %129 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 8
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %148, label %133

133:                                              ; preds = %127
  %134 = load i64, i64* %5, align 8
  %135 = call i32 @DECL_DECLARED_INLINE_P(i64 %134)
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %148, label %137

137:                                              ; preds = %133
  %138 = load %struct.cgraph_node*, %struct.cgraph_node** %4, align 8
  %139 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %147

143:                                              ; preds = %137
  %144 = load %struct.cgraph_node*, %struct.cgraph_node** %4, align 8
  %145 = call i32 @cgraph_default_inline_p(%struct.cgraph_node* %144, i32* null)
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %148, label %147

147:                                              ; preds = %143, %137, %123
  store i32 1, i32* %3, align 4
  br label %149

148:                                              ; preds = %143, %133, %127
  store i32 0, i32* %3, align 4
  br label %149

149:                                              ; preds = %148, %147, %122, %113, %102, %97, %93, %84, %50, %44, %34, %25, %15
  %150 = load i32, i32* %3, align 4
  ret i32 %150
}

declare dso_local i64 @MAIN_NAME_P(i32) #1

declare dso_local i32 @DECL_NAME(i64) #1

declare dso_local i64 @TREE_PUBLIC(i64) #1

declare dso_local i64 @lookup_attribute(i8*, i32) #1

declare dso_local i32 @DECL_ATTRIBUTES(i64) #1

declare dso_local i64 @DECL_ASSEMBLER_NAME_SET_P(i64) #1

declare dso_local i64 @TREE_SYMBOL_REFERENCED(i32) #1

declare dso_local i32 @DECL_ASSEMBLER_NAME(i64) #1

declare dso_local i32 @DECL_DECLARED_INLINE_P(i64) #1

declare dso_local i64 @DECL_COMDAT(i64) #1

declare dso_local i64 @DECL_EXTERNAL(i64) #1

declare dso_local i64 @DECL_STATIC_CONSTRUCTOR(i64) #1

declare dso_local i64 @DECL_STATIC_DESTRUCTOR(i64) #1

declare dso_local i64 @decl_function_context(i64) #1

declare dso_local i32 @DECL_INLINE(i64) #1

declare dso_local i32 @cgraph_default_inline_p(%struct.cgraph_node*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
