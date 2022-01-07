; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-vect-transform.c_vect_get_vec_def_for_operand.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-vect-transform.c_vect_get_vec_def_for_operand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.loop = type { i32 }

@NULL_TREE = common dso_local global i32 0, align 4
@REPORT_DETAILS = common dso_local global i32 0, align 4
@vect_dump = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"vect_get_vec_def_for_operand: \00", align 1
@TDF_SLIM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"def =  \00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"  def_stmt =  \00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"Create vector_cst. nunits = %d\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"Create vector_inv.\00", align 1
@PHI_NODE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [25 x i8] c"induction - unsupported.\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"no support for induction\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32*)* @vect_get_vec_def_for_operand to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vect_get_vec_def_for_operand(i32 %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.loop*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32* null, i32** %11, align 8
  %24 = load i32, i32* %6, align 4
  %25 = call i32* @vinfo_for_stmt(i32 %24)
  store i32* %25, i32** %12, align 8
  %26 = load i32*, i32** %12, align 8
  %27 = call i32 @STMT_VINFO_VECTYPE(i32* %26)
  store i32 %27, i32* %13, align 4
  %28 = load i32, i32* %13, align 4
  %29 = call i32 @TYPE_VECTOR_SUBPARTS(i32 %28)
  store i32 %29, i32* %14, align 4
  %30 = load i32*, i32** %12, align 8
  %31 = call i32 @STMT_VINFO_LOOP_VINFO(i32* %30)
  store i32 %31, i32* %15, align 4
  %32 = load i32, i32* %15, align 4
  %33 = call %struct.loop* @LOOP_VINFO_LOOP(i32 %32)
  store %struct.loop* %33, %struct.loop** %16, align 8
  %34 = load i32, i32* @NULL_TREE, align 4
  store i32 %34, i32* %19, align 4
  %35 = load i32, i32* @REPORT_DETAILS, align 4
  %36 = call i64 @vect_print_dump_info(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %3
  %39 = load i32, i32* @vect_dump, align 4
  %40 = call i32 (i32, i8*, ...) @fprintf(i32 %39, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %41 = load i32, i32* @vect_dump, align 4
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* @TDF_SLIM, align 4
  %44 = call i32 @print_generic_expr(i32 %41, i32 %42, i32 %43)
  br label %45

45:                                               ; preds = %38, %3
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* %15, align 4
  %48 = call i32 @vect_is_simple_use(i32 %46, i32 %47, i32* %10, i32* %20, i32* %22)
  store i32 %48, i32* %23, align 4
  %49 = load i32, i32* %23, align 4
  %50 = call i32 @gcc_assert(i32 %49)
  %51 = load i32, i32* @REPORT_DETAILS, align 4
  %52 = call i64 @vect_print_dump_info(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %75

54:                                               ; preds = %45
  %55 = load i32, i32* %20, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %64

57:                                               ; preds = %54
  %58 = load i32, i32* @vect_dump, align 4
  %59 = call i32 (i32, i8*, ...) @fprintf(i32 %58, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %60 = load i32, i32* @vect_dump, align 4
  %61 = load i32, i32* %20, align 4
  %62 = load i32, i32* @TDF_SLIM, align 4
  %63 = call i32 @print_generic_expr(i32 %60, i32 %61, i32 %62)
  br label %64

64:                                               ; preds = %57, %54
  %65 = load i32, i32* %10, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %74

67:                                               ; preds = %64
  %68 = load i32, i32* @vect_dump, align 4
  %69 = call i32 (i32, i8*, ...) @fprintf(i32 %68, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %70 = load i32, i32* @vect_dump, align 4
  %71 = load i32, i32* %10, align 4
  %72 = load i32, i32* @TDF_SLIM, align 4
  %73 = call i32 @print_generic_expr(i32 %70, i32 %71, i32 %72)
  br label %74

74:                                               ; preds = %67, %64
  br label %75

75:                                               ; preds = %74, %45
  %76 = load i32, i32* %22, align 4
  switch i32 %76, label %186 [
    i32 132, label %77
    i32 130, label %112
    i32 129, label %146
    i32 128, label %162
    i32 131, label %177
  ]

77:                                               ; preds = %75
  %78 = load i32*, i32** %7, align 8
  %79 = icmp ne i32* %78, null
  br i1 %79, label %80, label %83

80:                                               ; preds = %77
  %81 = load i32, i32* %5, align 4
  %82 = load i32*, i32** %7, align 8
  store i32 %81, i32* %82, align 4
  br label %83

83:                                               ; preds = %80, %77
  %84 = load i32, i32* @REPORT_DETAILS, align 4
  %85 = call i64 @vect_print_dump_info(i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %91

87:                                               ; preds = %83
  %88 = load i32, i32* @vect_dump, align 4
  %89 = load i32, i32* %14, align 4
  %90 = call i32 (i32, i8*, ...) @fprintf(i32 %88, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 %89)
  br label %91

91:                                               ; preds = %87, %83
  %92 = load i32, i32* %14, align 4
  %93 = sub nsw i32 %92, 1
  store i32 %93, i32* %21, align 4
  br label %94

94:                                               ; preds = %102, %91
  %95 = load i32, i32* %21, align 4
  %96 = icmp sge i32 %95, 0
  br i1 %96, label %97, label %105

97:                                               ; preds = %94
  %98 = load i32, i32* @NULL_TREE, align 4
  %99 = load i32, i32* %5, align 4
  %100 = load i32, i32* %19, align 4
  %101 = call i32 @tree_cons(i32 %98, i32 %99, i32 %100)
  store i32 %101, i32* %19, align 4
  br label %102

102:                                              ; preds = %97
  %103 = load i32, i32* %21, align 4
  %104 = add nsw i32 %103, -1
  store i32 %104, i32* %21, align 4
  br label %94

105:                                              ; preds = %94
  %106 = load i32, i32* %13, align 4
  %107 = load i32, i32* %19, align 4
  %108 = call i32 @build_vector(i32 %106, i32 %107)
  store i32 %108, i32* %18, align 4
  %109 = load i32, i32* %6, align 4
  %110 = load i32, i32* %18, align 4
  %111 = call i32 @vect_init_vector(i32 %109, i32 %110)
  store i32 %111, i32* %4, align 4
  br label %188

112:                                              ; preds = %75
  %113 = load i32*, i32** %7, align 8
  %114 = icmp ne i32* %113, null
  br i1 %114, label %115, label %118

115:                                              ; preds = %112
  %116 = load i32, i32* %20, align 4
  %117 = load i32*, i32** %7, align 8
  store i32 %116, i32* %117, align 4
  br label %118

118:                                              ; preds = %115, %112
  %119 = load i32, i32* @REPORT_DETAILS, align 4
  %120 = call i64 @vect_print_dump_info(i32 %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %125

122:                                              ; preds = %118
  %123 = load i32, i32* @vect_dump, align 4
  %124 = call i32 (i32, i8*, ...) @fprintf(i32 %123, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  br label %125

125:                                              ; preds = %122, %118
  %126 = load i32, i32* %14, align 4
  %127 = sub nsw i32 %126, 1
  store i32 %127, i32* %21, align 4
  br label %128

128:                                              ; preds = %136, %125
  %129 = load i32, i32* %21, align 4
  %130 = icmp sge i32 %129, 0
  br i1 %130, label %131, label %139

131:                                              ; preds = %128
  %132 = load i32, i32* @NULL_TREE, align 4
  %133 = load i32, i32* %20, align 4
  %134 = load i32, i32* %19, align 4
  %135 = call i32 @tree_cons(i32 %132, i32 %133, i32 %134)
  store i32 %135, i32* %19, align 4
  br label %136

136:                                              ; preds = %131
  %137 = load i32, i32* %21, align 4
  %138 = add nsw i32 %137, -1
  store i32 %138, i32* %21, align 4
  br label %128

139:                                              ; preds = %128
  %140 = load i32, i32* %13, align 4
  %141 = load i32, i32* %19, align 4
  %142 = call i32 @build_constructor_from_list(i32 %140, i32 %141)
  store i32 %142, i32* %17, align 4
  %143 = load i32, i32* %6, align 4
  %144 = load i32, i32* %17, align 4
  %145 = call i32 @vect_init_vector(i32 %143, i32 %144)
  store i32 %145, i32* %4, align 4
  br label %188

146:                                              ; preds = %75
  %147 = load i32*, i32** %7, align 8
  %148 = icmp ne i32* %147, null
  br i1 %148, label %149, label %152

149:                                              ; preds = %146
  %150 = load i32, i32* %10, align 4
  %151 = load i32*, i32** %7, align 8
  store i32 %150, i32* %151, align 4
  br label %152

152:                                              ; preds = %149, %146
  %153 = load i32, i32* %10, align 4
  %154 = call i32* @vinfo_for_stmt(i32 %153)
  store i32* %154, i32** %11, align 8
  %155 = load i32*, i32** %11, align 8
  %156 = call i32 @STMT_VINFO_VEC_STMT(i32* %155)
  store i32 %156, i32* %9, align 4
  %157 = load i32, i32* %9, align 4
  %158 = call i32 @gcc_assert(i32 %157)
  %159 = load i32, i32* %9, align 4
  %160 = call i32 @TREE_OPERAND(i32 %159, i32 0)
  store i32 %160, i32* %8, align 4
  %161 = load i32, i32* %8, align 4
  store i32 %161, i32* %4, align 4
  br label %188

162:                                              ; preds = %75
  %163 = load i32, i32* %10, align 4
  %164 = call i32 @TREE_CODE(i32 %163)
  %165 = load i32, i32* @PHI_NODE, align 4
  %166 = icmp eq i32 %164, %165
  %167 = zext i1 %166 to i32
  %168 = call i32 @gcc_assert(i32 %167)
  %169 = load i32, i32* %10, align 4
  %170 = load %struct.loop*, %struct.loop** %16, align 8
  %171 = call i32 @loop_preheader_edge(%struct.loop* %170)
  %172 = call i32 @PHI_ARG_DEF_FROM_EDGE(i32 %169, i32 %171)
  store i32 %172, i32* %5, align 4
  %173 = load i32, i32* %6, align 4
  %174 = load i32, i32* %5, align 4
  %175 = load i32*, i32** %7, align 8
  %176 = call i32 @get_initial_def_for_reduction(i32 %173, i32 %174, i32* %175)
  store i32 %176, i32* %4, align 4
  br label %188

177:                                              ; preds = %75
  %178 = load i32, i32* @REPORT_DETAILS, align 4
  %179 = call i64 @vect_print_dump_info(i32 %178)
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %184

181:                                              ; preds = %177
  %182 = load i32, i32* @vect_dump, align 4
  %183 = call i32 (i32, i8*, ...) @fprintf(i32 %182, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0))
  br label %184

184:                                              ; preds = %181, %177
  %185 = call i32 @internal_error(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0))
  br label %186

186:                                              ; preds = %75, %184
  %187 = call i32 (...) @gcc_unreachable()
  br label %188

188:                                              ; preds = %105, %139, %152, %162, %186
  %189 = load i32, i32* %4, align 4
  ret i32 %189
}

declare dso_local i32* @vinfo_for_stmt(i32) #1

declare dso_local i32 @STMT_VINFO_VECTYPE(i32*) #1

declare dso_local i32 @TYPE_VECTOR_SUBPARTS(i32) #1

declare dso_local i32 @STMT_VINFO_LOOP_VINFO(i32*) #1

declare dso_local %struct.loop* @LOOP_VINFO_LOOP(i32) #1

declare dso_local i64 @vect_print_dump_info(i32) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @print_generic_expr(i32, i32, i32) #1

declare dso_local i32 @vect_is_simple_use(i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i32 @tree_cons(i32, i32, i32) #1

declare dso_local i32 @build_vector(i32, i32) #1

declare dso_local i32 @vect_init_vector(i32, i32) #1

declare dso_local i32 @build_constructor_from_list(i32, i32) #1

declare dso_local i32 @STMT_VINFO_VEC_STMT(i32*) #1

declare dso_local i32 @TREE_OPERAND(i32, i32) #1

declare dso_local i32 @TREE_CODE(i32) #1

declare dso_local i32 @PHI_ARG_DEF_FROM_EDGE(i32, i32) #1

declare dso_local i32 @loop_preheader_edge(%struct.loop*) #1

declare dso_local i32 @get_initial_def_for_reduction(i32, i32, i32*) #1

declare dso_local i32 @internal_error(i8*) #1

declare dso_local i32 @gcc_unreachable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
