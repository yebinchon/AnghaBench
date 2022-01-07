; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-data-ref.c_base_object_differ_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-data-ref.c_base_object_differ_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.data_reference = type { i32 }

@INDIRECT_REF = common dso_local global i64 0, align 8
@COMPONENT_REF = common dso_local global i64 0, align 8
@VAR_DECL = common dso_local global i64 0, align 8
@RECORD_TYPE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.data_reference*, %struct.data_reference*, i32*)* @base_object_differ_p to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @base_object_differ_p(%struct.data_reference* %0, %struct.data_reference* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.data_reference*, align 8
  %6 = alloca %struct.data_reference*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.data_reference* %0, %struct.data_reference** %5, align 8
  store %struct.data_reference* %1, %struct.data_reference** %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load %struct.data_reference*, %struct.data_reference** %5, align 8
  %12 = call i64 @DR_BASE_OBJECT(%struct.data_reference* %11)
  store i64 %12, i64* %8, align 8
  %13 = load %struct.data_reference*, %struct.data_reference** %6, align 8
  %14 = call i64 @DR_BASE_OBJECT(%struct.data_reference* %13)
  store i64 %14, i64* %9, align 8
  %15 = load i64, i64* %8, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load i64, i64* %9, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %17, %3
  store i32 0, i32* %4, align 4
  br label %201

21:                                               ; preds = %17
  %22 = load i64, i64* %8, align 8
  %23 = load i64, i64* %9, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %21
  %26 = load i32*, i32** %7, align 8
  store i32 0, i32* %26, align 4
  store i32 1, i32* %4, align 4
  br label %201

27:                                               ; preds = %21
  %28 = load i64, i64* %8, align 8
  %29 = call i64 @TREE_CODE(i64 %28)
  %30 = load i64, i64* @INDIRECT_REF, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %45

32:                                               ; preds = %27
  %33 = load i64, i64* %9, align 8
  %34 = call i64 @TREE_CODE(i64 %33)
  %35 = load i64, i64* @INDIRECT_REF, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %45

37:                                               ; preds = %32
  %38 = load i64, i64* %8, align 8
  %39 = call i64 @TREE_OPERAND(i64 %38, i32 0)
  %40 = load i64, i64* %9, align 8
  %41 = call i64 @TREE_OPERAND(i64 %40, i32 0)
  %42 = icmp eq i64 %39, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %37
  %44 = load i32*, i32** %7, align 8
  store i32 0, i32* %44, align 4
  store i32 1, i32* %4, align 4
  br label %201

45:                                               ; preds = %37, %32, %27
  %46 = load i64, i64* %8, align 8
  %47 = call i64 @TREE_CODE(i64 %46)
  %48 = load i64, i64* @COMPONENT_REF, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %69

50:                                               ; preds = %45
  %51 = load i64, i64* %9, align 8
  %52 = call i64 @TREE_CODE(i64 %51)
  %53 = load i64, i64* @COMPONENT_REF, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %69

55:                                               ; preds = %50
  %56 = load i64, i64* %8, align 8
  %57 = call i64 @TREE_OPERAND(i64 %56, i32 0)
  %58 = load i64, i64* %9, align 8
  %59 = call i64 @TREE_OPERAND(i64 %58, i32 0)
  %60 = icmp eq i64 %57, %59
  br i1 %60, label %61, label %69

61:                                               ; preds = %55
  %62 = load i64, i64* %8, align 8
  %63 = call i64 @TREE_OPERAND(i64 %62, i32 1)
  %64 = load i64, i64* %9, align 8
  %65 = call i64 @TREE_OPERAND(i64 %64, i32 1)
  %66 = icmp eq i64 %63, %65
  br i1 %66, label %67, label %69

67:                                               ; preds = %61
  %68 = load i32*, i32** %7, align 8
  store i32 0, i32* %68, align 4
  store i32 1, i32* %4, align 4
  br label %201

69:                                               ; preds = %61, %55, %50, %45
  %70 = load i64, i64* %8, align 8
  %71 = call i64 @TREE_CODE(i64 %70)
  %72 = load i64, i64* @VAR_DECL, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %81

74:                                               ; preds = %69
  %75 = load i64, i64* %9, align 8
  %76 = call i64 @TREE_CODE(i64 %75)
  %77 = load i64, i64* @VAR_DECL, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %81

79:                                               ; preds = %74
  %80 = load i32*, i32** %7, align 8
  store i32 1, i32* %80, align 4
  store i32 1, i32* %4, align 4
  br label %201

81:                                               ; preds = %74, %69
  %82 = load i64, i64* %8, align 8
  %83 = load i64, i64* %9, align 8
  %84 = load %struct.data_reference*, %struct.data_reference** %6, align 8
  %85 = call i64 @array_ptr_differ_p(i64 %82, i64 %83, %struct.data_reference* %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %93, label %87

87:                                               ; preds = %81
  %88 = load i64, i64* %9, align 8
  %89 = load i64, i64* %8, align 8
  %90 = load %struct.data_reference*, %struct.data_reference** %5, align 8
  %91 = call i64 @array_ptr_differ_p(i64 %88, i64 %89, %struct.data_reference* %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %87, %81
  %94 = load i32*, i32** %7, align 8
  store i32 1, i32* %94, align 4
  store i32 1, i32* %4, align 4
  br label %201

95:                                               ; preds = %87
  %96 = load i64, i64* %8, align 8
  %97 = call i64 @TREE_CODE(i64 %96)
  %98 = load i64, i64* @INDIRECT_REF, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %100, label %119

100:                                              ; preds = %95
  %101 = load i64, i64* %9, align 8
  %102 = call i64 @TREE_CODE(i64 %101)
  %103 = load i64, i64* @INDIRECT_REF, align 8
  %104 = icmp eq i64 %102, %103
  br i1 %104, label %105, label %119

105:                                              ; preds = %100
  %106 = load i64, i64* %8, align 8
  %107 = call i64 @TREE_OPERAND(i64 %106, i32 0)
  %108 = load i64, i64* %9, align 8
  %109 = call i64 @TREE_OPERAND(i64 %108, i32 0)
  %110 = load %struct.data_reference*, %struct.data_reference** %5, align 8
  %111 = load %struct.data_reference*, %struct.data_reference** %6, align 8
  %112 = call i64 @may_alias_p(i64 %107, i64 %109, %struct.data_reference* %110, %struct.data_reference* %111, i32* %10)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %119

114:                                              ; preds = %105
  %115 = load i32, i32* %10, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %119, label %117

117:                                              ; preds = %114
  %118 = load i32*, i32** %7, align 8
  store i32 1, i32* %118, align 4
  store i32 1, i32* %4, align 4
  br label %201

119:                                              ; preds = %114, %105, %100, %95
  %120 = load i64, i64* %8, align 8
  %121 = call i64 @TREE_CODE(i64 %120)
  %122 = load i64, i64* @COMPONENT_REF, align 8
  %123 = icmp eq i64 %121, %122
  br i1 %123, label %124, label %169

124:                                              ; preds = %119
  %125 = load i64, i64* %9, align 8
  %126 = call i64 @TREE_CODE(i64 %125)
  %127 = load i64, i64* @COMPONENT_REF, align 8
  %128 = icmp eq i64 %126, %127
  br i1 %128, label %129, label %169

129:                                              ; preds = %124
  %130 = load i64, i64* %8, align 8
  %131 = call i64 @TREE_OPERAND(i64 %130, i32 0)
  %132 = call i64 @TREE_CODE(i64 %131)
  %133 = load i64, i64* @VAR_DECL, align 8
  %134 = icmp eq i64 %132, %133
  br i1 %134, label %135, label %147

135:                                              ; preds = %129
  %136 = load i64, i64* %9, align 8
  %137 = call i64 @TREE_OPERAND(i64 %136, i32 0)
  %138 = call i64 @TREE_CODE(i64 %137)
  %139 = load i64, i64* @VAR_DECL, align 8
  %140 = icmp eq i64 %138, %139
  br i1 %140, label %141, label %147

141:                                              ; preds = %135
  %142 = load i64, i64* %8, align 8
  %143 = call i64 @TREE_OPERAND(i64 %142, i32 0)
  %144 = load i64, i64* %9, align 8
  %145 = call i64 @TREE_OPERAND(i64 %144, i32 0)
  %146 = icmp ne i64 %143, %145
  br i1 %146, label %167, label %147

147:                                              ; preds = %141, %135, %129
  %148 = load i64, i64* %8, align 8
  %149 = call i64 @TREE_OPERAND(i64 %148, i32 0)
  %150 = call i64 @TREE_TYPE(i64 %149)
  %151 = call i64 @TREE_CODE(i64 %150)
  %152 = load i64, i64* @RECORD_TYPE, align 8
  %153 = icmp eq i64 %151, %152
  br i1 %153, label %154, label %169

154:                                              ; preds = %147
  %155 = load i64, i64* %9, align 8
  %156 = call i64 @TREE_OPERAND(i64 %155, i32 0)
  %157 = call i64 @TREE_TYPE(i64 %156)
  %158 = call i64 @TREE_CODE(i64 %157)
  %159 = load i64, i64* @RECORD_TYPE, align 8
  %160 = icmp eq i64 %158, %159
  br i1 %160, label %161, label %169

161:                                              ; preds = %154
  %162 = load i64, i64* %8, align 8
  %163 = call i64 @TREE_OPERAND(i64 %162, i32 1)
  %164 = load i64, i64* %9, align 8
  %165 = call i64 @TREE_OPERAND(i64 %164, i32 1)
  %166 = icmp ne i64 %163, %165
  br i1 %166, label %167, label %169

167:                                              ; preds = %161, %141
  %168 = load i32*, i32** %7, align 8
  store i32 1, i32* %168, align 4
  store i32 1, i32* %4, align 4
  br label %201

169:                                              ; preds = %161, %154, %147, %124, %119
  %170 = load %struct.data_reference*, %struct.data_reference** %5, align 8
  %171 = load %struct.data_reference*, %struct.data_reference** %6, align 8
  %172 = call i64 @record_ptr_differ_p(%struct.data_reference* %170, %struct.data_reference* %171)
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %179, label %174

174:                                              ; preds = %169
  %175 = load %struct.data_reference*, %struct.data_reference** %6, align 8
  %176 = load %struct.data_reference*, %struct.data_reference** %5, align 8
  %177 = call i64 @record_ptr_differ_p(%struct.data_reference* %175, %struct.data_reference* %176)
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %181

179:                                              ; preds = %174, %169
  %180 = load i32*, i32** %7, align 8
  store i32 1, i32* %180, align 4
  store i32 1, i32* %4, align 4
  br label %201

181:                                              ; preds = %174
  %182 = load %struct.data_reference*, %struct.data_reference** %5, align 8
  %183 = load %struct.data_reference*, %struct.data_reference** %6, align 8
  %184 = call i64 @record_array_differ_p(%struct.data_reference* %182, %struct.data_reference* %183)
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %191, label %186

186:                                              ; preds = %181
  %187 = load %struct.data_reference*, %struct.data_reference** %6, align 8
  %188 = load %struct.data_reference*, %struct.data_reference** %5, align 8
  %189 = call i64 @record_array_differ_p(%struct.data_reference* %187, %struct.data_reference* %188)
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %193

191:                                              ; preds = %186, %181
  %192 = load i32*, i32** %7, align 8
  store i32 1, i32* %192, align 4
  store i32 1, i32* %4, align 4
  br label %201

193:                                              ; preds = %186
  %194 = load %struct.data_reference*, %struct.data_reference** %5, align 8
  %195 = load %struct.data_reference*, %struct.data_reference** %6, align 8
  %196 = call i64 @record_record_differ_p(%struct.data_reference* %194, %struct.data_reference* %195)
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %198, label %200

198:                                              ; preds = %193
  %199 = load i32*, i32** %7, align 8
  store i32 1, i32* %199, align 4
  store i32 1, i32* %4, align 4
  br label %201

200:                                              ; preds = %193
  store i32 0, i32* %4, align 4
  br label %201

201:                                              ; preds = %200, %198, %191, %179, %167, %117, %93, %79, %67, %43, %25, %20
  %202 = load i32, i32* %4, align 4
  ret i32 %202
}

declare dso_local i64 @DR_BASE_OBJECT(%struct.data_reference*) #1

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i64 @TREE_OPERAND(i64, i32) #1

declare dso_local i64 @array_ptr_differ_p(i64, i64, %struct.data_reference*) #1

declare dso_local i64 @may_alias_p(i64, i64, %struct.data_reference*, %struct.data_reference*, i32*) #1

declare dso_local i64 @TREE_TYPE(i64) #1

declare dso_local i64 @record_ptr_differ_p(%struct.data_reference*, %struct.data_reference*) #1

declare dso_local i64 @record_array_differ_p(%struct.data_reference*, %struct.data_reference*) #1

declare dso_local i64 @record_record_differ_p(%struct.data_reference*, %struct.data_reference*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
