; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-data-ref.c_address_analysis.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-data-ref.c_address_analysis.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.data_reference = type { i32 }
%struct.ptr_info_def = type { i32 }

@NULL_TREE = common dso_local global i32 0, align 4
@dump_file = common dso_local global i32 0, align 4
@dump_flags = common dso_local global i32 0, align 4
@TDF_DETAILS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"\0Aeither more than one address or no addresses in expr \00", align 1
@TDF_SLIM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@ssizetype = common dso_local global i32 0, align 4
@INTEGER_CST = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"\0Anot pointer SSA_NAME \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, %struct.data_reference*, i32*, i32*, i32*, i32*)* @address_analysis to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @address_analysis(i32 %0, i32 %1, i32 %2, %struct.data_reference* %3, i32* %4, i32* %5, i32* %6, i32* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.data_reference*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca %struct.ptr_info_def*, align 8
  %29 = alloca i32, align 4
  store i32 %0, i32* %10, align 4
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store %struct.data_reference* %3, %struct.data_reference** %13, align 8
  store i32* %4, i32** %14, align 8
  store i32* %5, i32** %15, align 8
  store i32* %6, i32** %16, align 8
  store i32* %7, i32** %17, align 8
  %30 = call i32 @ssize_int(i32 0)
  store i32 %30, i32* %24, align 4
  %31 = call i32 @ssize_int(i32 0)
  store i32 %31, i32* %25, align 4
  %32 = load i32, i32* @NULL_TREE, align 4
  store i32 %32, i32* %27, align 4
  %33 = load i32, i32* %10, align 4
  %34 = call i32 @TREE_CODE(i32 %33)
  switch i32 %34, label %188 [
    i32 129, label %35
    i32 130, label %35
    i32 131, label %139
    i32 128, label %150
  ]

35:                                               ; preds = %8, %8
  %36 = load i32, i32* %10, align 4
  %37 = call i32 @TREE_OPERAND(i32 %36, i32 0)
  store i32 %37, i32* %18, align 4
  %38 = load i32, i32* %10, align 4
  %39 = call i32 @TREE_OPERAND(i32 %38, i32 1)
  store i32 %39, i32* %19, align 4
  %40 = load i32, i32* %18, align 4
  %41 = call i32 @STRIP_NOPS(i32 %40)
  %42 = load i32, i32* %19, align 4
  %43 = call i32 @STRIP_NOPS(i32 %42)
  %44 = load i32, i32* %18, align 4
  %45 = load i32, i32* %11, align 4
  %46 = load i32, i32* %12, align 4
  %47 = load %struct.data_reference*, %struct.data_reference** %13, align 8
  %48 = load i32*, i32** %17, align 8
  %49 = call i32 @address_analysis(i32 %44, i32 %45, i32 %46, %struct.data_reference* %47, i32* %24, i32* %25, i32* %27, i32* %48)
  store i32 %49, i32* %22, align 4
  %50 = load i32, i32* %19, align 4
  %51 = load i32, i32* %11, align 4
  %52 = load i32, i32* %12, align 4
  %53 = load %struct.data_reference*, %struct.data_reference** %13, align 8
  %54 = load i32*, i32** %17, align 8
  %55 = call i32 @address_analysis(i32 %50, i32 %51, i32 %52, %struct.data_reference* %53, i32* %24, i32* %25, i32* %27, i32* %54)
  store i32 %55, i32* %23, align 4
  %56 = load i32, i32* %22, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %35
  %59 = load i32, i32* %23, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %67, label %61

61:                                               ; preds = %58, %35
  %62 = load i32, i32* %22, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %86, label %64

64:                                               ; preds = %61
  %65 = load i32, i32* %23, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %86, label %67

67:                                               ; preds = %64, %58
  %68 = load i32, i32* @dump_file, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %84

70:                                               ; preds = %67
  %71 = load i32, i32* @dump_flags, align 4
  %72 = load i32, i32* @TDF_DETAILS, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %84

75:                                               ; preds = %70
  %76 = load i32, i32* @dump_file, align 4
  %77 = call i32 @fprintf(i32 %76, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0))
  %78 = load i32, i32* @dump_file, align 4
  %79 = load i32, i32* %10, align 4
  %80 = load i32, i32* @TDF_SLIM, align 4
  %81 = call i32 @print_generic_expr(i32 %78, i32 %79, i32 %80)
  %82 = load i32, i32* @dump_file, align 4
  %83 = call i32 @fprintf(i32 %82, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %84

84:                                               ; preds = %75, %70, %67
  %85 = load i32, i32* @NULL_TREE, align 4
  store i32 %85, i32* %9, align 4
  br label %190

86:                                               ; preds = %64, %61
  %87 = load i32, i32* %10, align 4
  %88 = call i32 @TREE_OPERAND(i32 %87, i32 0)
  store i32 %88, i32* %18, align 4
  %89 = load i32, i32* %10, align 4
  %90 = call i32 @TREE_OPERAND(i32 %89, i32 1)
  store i32 %90, i32* %19, align 4
  %91 = load i32, i32* %22, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %97

93:                                               ; preds = %86
  %94 = load i32, i32* @ssizetype, align 4
  %95 = load i32, i32* %19, align 4
  %96 = call i32 @fold_convert(i32 %94, i32 %95)
  br label %101

97:                                               ; preds = %86
  %98 = load i32, i32* @ssizetype, align 4
  %99 = load i32, i32* %18, align 4
  %100 = call i32 @fold_convert(i32 %98, i32 %99)
  br label %101

101:                                              ; preds = %97, %93
  %102 = phi i32 [ %96, %93 ], [ %100, %97 ]
  store i32 %102, i32* %21, align 4
  %103 = load i32, i32* %21, align 4
  %104 = call i32 @TREE_CODE(i32 %103)
  %105 = load i32, i32* @INTEGER_CST, align 4
  %106 = icmp eq i32 %104, %105
  br i1 %106, label %107, label %119

107:                                              ; preds = %101
  %108 = load i32, i32* %25, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %119

110:                                              ; preds = %107
  %111 = load i32, i32* %10, align 4
  %112 = call i32 @TREE_CODE(i32 %111)
  %113 = load i32, i32* %25, align 4
  %114 = load i32, i32* %21, align 4
  %115 = call i32 @size_binop(i32 %112, i32 %113, i32 %114)
  %116 = load i32*, i32** %15, align 8
  store i32 %115, i32* %116, align 4
  %117 = load i32, i32* %27, align 4
  %118 = load i32*, i32** %16, align 8
  store i32 %117, i32* %118, align 4
  br label %124

119:                                              ; preds = %107, %101
  %120 = load i32, i32* @NULL_TREE, align 4
  %121 = load i32*, i32** %15, align 8
  store i32 %120, i32* %121, align 4
  %122 = load i32, i32* @NULL_TREE, align 4
  %123 = load i32*, i32** %16, align 8
  store i32 %122, i32* %123, align 4
  br label %124

124:                                              ; preds = %119, %110
  %125 = load i32, i32* %10, align 4
  %126 = call i32 @TREE_CODE(i32 %125)
  %127 = load i32, i32* %24, align 4
  %128 = load i32, i32* %21, align 4
  %129 = call i32 @size_binop(i32 %126, i32 %127, i32 %128)
  %130 = load i32*, i32** %14, align 8
  store i32 %129, i32* %130, align 4
  %131 = load i32, i32* %22, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %135

133:                                              ; preds = %124
  %134 = load i32, i32* %22, align 4
  br label %137

135:                                              ; preds = %124
  %136 = load i32, i32* %23, align 4
  br label %137

137:                                              ; preds = %135, %133
  %138 = phi i32 [ %134, %133 ], [ %136, %135 ]
  store i32 %138, i32* %9, align 4
  br label %190

139:                                              ; preds = %8
  %140 = load i32, i32* %10, align 4
  %141 = call i32 @TREE_OPERAND(i32 %140, i32 0)
  %142 = load i32, i32* %11, align 4
  %143 = load i32, i32* %12, align 4
  %144 = load i32*, i32** %14, align 8
  %145 = load i32*, i32** %15, align 8
  %146 = load i32*, i32** %16, align 8
  %147 = load i32*, i32** %17, align 8
  %148 = call i32 @object_analysis(i32 %141, i32 %142, i32 %143, %struct.data_reference** %13, i32* %144, i32* %145, i32* %146, i32* %147, i32* %26, %struct.ptr_info_def** %28, i32* %29)
  store i32 %148, i32* %20, align 4
  %149 = load i32, i32* %20, align 4
  store i32 %149, i32* %9, align 4
  br label %190

150:                                              ; preds = %8
  %151 = load i32, i32* %10, align 4
  %152 = call i32 @TREE_TYPE(i32 %151)
  %153 = call i32 @POINTER_TYPE_P(i32 %152)
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %174, label %155

155:                                              ; preds = %150
  %156 = load i32, i32* @dump_file, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %172

158:                                              ; preds = %155
  %159 = load i32, i32* @dump_flags, align 4
  %160 = load i32, i32* @TDF_DETAILS, align 4
  %161 = and i32 %159, %160
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %172

163:                                              ; preds = %158
  %164 = load i32, i32* @dump_file, align 4
  %165 = call i32 @fprintf(i32 %164, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %166 = load i32, i32* @dump_file, align 4
  %167 = load i32, i32* %10, align 4
  %168 = load i32, i32* @TDF_SLIM, align 4
  %169 = call i32 @print_generic_expr(i32 %166, i32 %167, i32 %168)
  %170 = load i32, i32* @dump_file, align 4
  %171 = call i32 @fprintf(i32 %170, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %172

172:                                              ; preds = %163, %158, %155
  %173 = load i32, i32* @NULL_TREE, align 4
  store i32 %173, i32* %9, align 4
  br label %190

174:                                              ; preds = %150
  %175 = load i32, i32* %10, align 4
  %176 = call i32 @TREE_TYPE(i32 %175)
  %177 = call i32 @TREE_TYPE(i32 %176)
  %178 = call i32 @TYPE_ALIGN_UNIT(i32 %177)
  %179 = call i32 @ssize_int(i32 %178)
  %180 = load i32*, i32** %16, align 8
  store i32 %179, i32* %180, align 4
  %181 = call i32 @ssize_int(i32 0)
  %182 = load i32*, i32** %15, align 8
  store i32 %181, i32* %182, align 4
  %183 = call i32 @ssize_int(i32 0)
  %184 = load i32*, i32** %14, align 8
  store i32 %183, i32* %184, align 4
  %185 = call i32 @ssize_int(i32 0)
  %186 = load i32*, i32** %17, align 8
  store i32 %185, i32* %186, align 4
  %187 = load i32, i32* %10, align 4
  store i32 %187, i32* %9, align 4
  br label %190

188:                                              ; preds = %8
  %189 = load i32, i32* @NULL_TREE, align 4
  store i32 %189, i32* %9, align 4
  br label %190

190:                                              ; preds = %188, %174, %172, %139, %137, %84
  %191 = load i32, i32* %9, align 4
  ret i32 %191
}

declare dso_local i32 @ssize_int(i32) #1

declare dso_local i32 @TREE_CODE(i32) #1

declare dso_local i32 @TREE_OPERAND(i32, i32) #1

declare dso_local i32 @STRIP_NOPS(i32) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32 @print_generic_expr(i32, i32, i32) #1

declare dso_local i32 @fold_convert(i32, i32) #1

declare dso_local i32 @size_binop(i32, i32, i32) #1

declare dso_local i32 @object_analysis(i32, i32, i32, %struct.data_reference**, i32*, i32*, i32*, i32*, i32*, %struct.ptr_info_def**, i32*) #1

declare dso_local i32 @POINTER_TYPE_P(i32) #1

declare dso_local i32 @TREE_TYPE(i32) #1

declare dso_local i32 @TYPE_ALIGN_UNIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
