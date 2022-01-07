; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_p-valprint.c_pascal_object_print_value.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_p-valprint.c_pascal_object_print_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.obstack = type { i32 }
%struct.type = type { i32 }
%struct.ui_file = type { i32 }

@dont_print_vb_obstack = common dso_local global %struct.obstack zeroinitializer, align 4
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"<\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"> = \00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"<invalid address>\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c", \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pascal_object_print_value(%struct.type* %0, i8* %1, i64 %2, %struct.ui_file* %3, i32 %4, i32 %5, i32 %6, %struct.type** %7) #0 {
  %9 = alloca %struct.type*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.ui_file*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.type**, align 8
  %17 = alloca %struct.obstack, align 4
  %18 = alloca %struct.type**, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca %struct.type*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca %struct.type**, align 8
  %26 = alloca i32, align 4
  store %struct.type* %0, %struct.type** %9, align 8
  store i8* %1, i8** %10, align 8
  store i64 %2, i64* %11, align 8
  store %struct.ui_file* %3, %struct.ui_file** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store %struct.type** %7, %struct.type*** %16, align 8
  %27 = call i64 @obstack_next_free(%struct.obstack* @dont_print_vb_obstack)
  %28 = inttoptr i64 %27 to %struct.type**
  store %struct.type** %28, %struct.type*** %18, align 8
  %29 = load %struct.type*, %struct.type** %9, align 8
  %30 = call i32 @TYPE_N_BASECLASSES(%struct.type* %29)
  store i32 %30, i32* %20, align 4
  %31 = load %struct.type**, %struct.type*** %16, align 8
  %32 = icmp eq %struct.type** %31, null
  br i1 %32, label %33, label %36

33:                                               ; preds = %8
  %34 = bitcast %struct.obstack* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %34, i8* align 4 bitcast (%struct.obstack* @dont_print_vb_obstack to i8*), i64 4, i1 false)
  %35 = call i32 @obstack_finish(%struct.obstack* @dont_print_vb_obstack)
  br label %36

36:                                               ; preds = %33, %8
  store i32 0, i32* %19, align 4
  br label %37

37:                                               ; preds = %164, %36
  %38 = load i32, i32* %19, align 4
  %39 = load i32, i32* %20, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %167

41:                                               ; preds = %37
  %42 = load %struct.type*, %struct.type** %9, align 8
  %43 = load i32, i32* %19, align 4
  %44 = call i32 @TYPE_BASECLASS(%struct.type* %42, i32 %43)
  %45 = call %struct.type* @check_typedef(i32 %44)
  store %struct.type* %45, %struct.type** %22, align 8
  %46 = load %struct.type*, %struct.type** %22, align 8
  %47 = call i8* @TYPE_NAME(%struct.type* %46)
  store i8* %47, i8** %23, align 8
  %48 = load %struct.type*, %struct.type** %9, align 8
  %49 = load i32, i32* %19, align 4
  %50 = call i64 @BASETYPE_VIA_VIRTUAL(%struct.type* %48, i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %80

52:                                               ; preds = %41
  %53 = call i64 @obstack_base(%struct.obstack* @dont_print_vb_obstack)
  %54 = inttoptr i64 %53 to %struct.type**
  store %struct.type** %54, %struct.type*** %25, align 8
  %55 = call i64 @obstack_next_free(%struct.obstack* @dont_print_vb_obstack)
  %56 = inttoptr i64 %55 to %struct.type**
  %57 = load %struct.type**, %struct.type*** %25, align 8
  %58 = ptrtoint %struct.type** %56 to i64
  %59 = ptrtoint %struct.type** %57 to i64
  %60 = sub i64 %58, %59
  %61 = sdiv exact i64 %60, 8
  %62 = trunc i64 %61 to i32
  store i32 %62, i32* %26, align 4
  br label %63

63:                                               ; preds = %76, %52
  %64 = load i32, i32* %26, align 4
  %65 = add nsw i32 %64, -1
  store i32 %65, i32* %26, align 4
  %66 = icmp sge i32 %65, 0
  br i1 %66, label %67, label %77

67:                                               ; preds = %63
  %68 = load %struct.type*, %struct.type** %22, align 8
  %69 = load %struct.type**, %struct.type*** %25, align 8
  %70 = load i32, i32* %26, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.type*, %struct.type** %69, i64 %71
  %73 = load %struct.type*, %struct.type** %72, align 8
  %74 = icmp eq %struct.type* %68, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %67
  br label %163

76:                                               ; preds = %67
  br label %63

77:                                               ; preds = %63
  %78 = load %struct.type*, %struct.type** %22, align 8
  %79 = call i32 @obstack_ptr_grow(%struct.obstack* @dont_print_vb_obstack, %struct.type* %78)
  br label %80

80:                                               ; preds = %77, %41
  %81 = load %struct.type*, %struct.type** %9, align 8
  %82 = load i32, i32* %19, align 4
  %83 = load i8*, i8** %10, align 8
  %84 = load i64, i64* %11, align 8
  %85 = call i32 @baseclass_offset(%struct.type* %81, i32 %82, i8* %83, i64 %84)
  store i32 %85, i32* %21, align 4
  %86 = load i32, i32* %15, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %95

88:                                               ; preds = %80
  %89 = load %struct.ui_file*, %struct.ui_file** %12, align 8
  %90 = call i32 @fprintf_filtered(%struct.ui_file* %89, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %91 = load i32, i32* %14, align 4
  %92 = mul nsw i32 2, %91
  %93 = load %struct.ui_file*, %struct.ui_file** %12, align 8
  %94 = call i32 @print_spaces_filtered(i32 %92, %struct.ui_file* %93)
  br label %95

95:                                               ; preds = %88, %80
  %96 = load %struct.ui_file*, %struct.ui_file** %12, align 8
  %97 = call i32 @fputs_filtered(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), %struct.ui_file* %96)
  %98 = load i8*, i8** %23, align 8
  %99 = icmp ne i8* %98, null
  br i1 %99, label %100, label %102

100:                                              ; preds = %95
  %101 = load i8*, i8** %23, align 8
  br label %103

102:                                              ; preds = %95
  br label %103

103:                                              ; preds = %102, %100
  %104 = phi i8* [ %101, %100 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), %102 ]
  %105 = load %struct.ui_file*, %struct.ui_file** %12, align 8
  %106 = call i32 @fputs_filtered(i8* %104, %struct.ui_file* %105)
  %107 = load %struct.ui_file*, %struct.ui_file** %12, align 8
  %108 = call i32 @fputs_filtered(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), %struct.ui_file* %107)
  %109 = load i32, i32* %21, align 4
  %110 = icmp ne i32 %109, -1
  br i1 %110, label %111, label %135

111:                                              ; preds = %103
  %112 = load i32, i32* %21, align 4
  %113 = icmp slt i32 %112, 0
  br i1 %113, label %119, label %114

114:                                              ; preds = %111
  %115 = load i32, i32* %21, align 4
  %116 = load %struct.type*, %struct.type** %9, align 8
  %117 = call i32 @TYPE_LENGTH(%struct.type* %116)
  %118 = icmp sge i32 %115, %117
  br i1 %118, label %119, label %135

119:                                              ; preds = %114, %111
  %120 = load %struct.type*, %struct.type** %22, align 8
  %121 = call i32 @TYPE_LENGTH(%struct.type* %120)
  %122 = call i64 @alloca(i32 %121)
  %123 = inttoptr i64 %122 to i8*
  store i8* %123, i8** %24, align 8
  %124 = load i64, i64* %11, align 8
  %125 = load i32, i32* %21, align 4
  %126 = sext i32 %125 to i64
  %127 = add nsw i64 %124, %126
  %128 = load i8*, i8** %24, align 8
  %129 = load %struct.type*, %struct.type** %22, align 8
  %130 = call i32 @TYPE_LENGTH(%struct.type* %129)
  %131 = call i64 @target_read_memory(i64 %127, i8* %128, i32 %130)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %134

133:                                              ; preds = %119
  store i32 -1, i32* %21, align 4
  br label %134

134:                                              ; preds = %133, %119
  br label %140

135:                                              ; preds = %114, %103
  %136 = load i8*, i8** %10, align 8
  %137 = load i32, i32* %21, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i8, i8* %136, i64 %138
  store i8* %139, i8** %24, align 8
  br label %140

140:                                              ; preds = %135, %134
  %141 = load i32, i32* %21, align 4
  %142 = icmp eq i32 %141, -1
  br i1 %142, label %143, label %146

143:                                              ; preds = %140
  %144 = load %struct.ui_file*, %struct.ui_file** %12, align 8
  %145 = call i32 @fprintf_filtered(%struct.ui_file* %144, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  br label %160

146:                                              ; preds = %140
  %147 = load %struct.type*, %struct.type** %22, align 8
  %148 = load i8*, i8** %24, align 8
  %149 = load i64, i64* %11, align 8
  %150 = load i32, i32* %21, align 4
  %151 = sext i32 %150 to i64
  %152 = add nsw i64 %149, %151
  %153 = load %struct.ui_file*, %struct.ui_file** %12, align 8
  %154 = load i32, i32* %13, align 4
  %155 = load i32, i32* %14, align 4
  %156 = load i32, i32* %15, align 4
  %157 = call i64 @obstack_base(%struct.obstack* @dont_print_vb_obstack)
  %158 = inttoptr i64 %157 to %struct.type**
  %159 = call i32 @pascal_object_print_value_fields(%struct.type* %147, i8* %148, i64 %152, %struct.ui_file* %153, i32 %154, i32 %155, i32 %156, %struct.type** %158, i32 0)
  br label %160

160:                                              ; preds = %146, %143
  %161 = load %struct.ui_file*, %struct.ui_file** %12, align 8
  %162 = call i32 @fputs_filtered(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), %struct.ui_file* %161)
  br label %163

163:                                              ; preds = %160, %75
  br label %164

164:                                              ; preds = %163
  %165 = load i32, i32* %19, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %19, align 4
  br label %37

167:                                              ; preds = %37
  %168 = load %struct.type**, %struct.type*** %16, align 8
  %169 = icmp eq %struct.type** %168, null
  br i1 %169, label %170, label %174

170:                                              ; preds = %167
  %171 = load %struct.type**, %struct.type*** %18, align 8
  %172 = call i32 @obstack_free(%struct.obstack* @dont_print_vb_obstack, %struct.type** %171)
  %173 = bitcast %struct.obstack* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 bitcast (%struct.obstack* @dont_print_vb_obstack to i8*), i8* align 4 %173, i64 4, i1 false)
  br label %174

174:                                              ; preds = %170, %167
  ret void
}

declare dso_local i64 @obstack_next_free(%struct.obstack*) #1

declare dso_local i32 @TYPE_N_BASECLASSES(%struct.type*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @obstack_finish(%struct.obstack*) #1

declare dso_local %struct.type* @check_typedef(i32) #1

declare dso_local i32 @TYPE_BASECLASS(%struct.type*, i32) #1

declare dso_local i8* @TYPE_NAME(%struct.type*) #1

declare dso_local i64 @BASETYPE_VIA_VIRTUAL(%struct.type*, i32) #1

declare dso_local i64 @obstack_base(%struct.obstack*) #1

declare dso_local i32 @obstack_ptr_grow(%struct.obstack*, %struct.type*) #1

declare dso_local i32 @baseclass_offset(%struct.type*, i32, i8*, i64) #1

declare dso_local i32 @fprintf_filtered(%struct.ui_file*, i8*) #1

declare dso_local i32 @print_spaces_filtered(i32, %struct.ui_file*) #1

declare dso_local i32 @fputs_filtered(i8*, %struct.ui_file*) #1

declare dso_local i32 @TYPE_LENGTH(%struct.type*) #1

declare dso_local i64 @alloca(i32) #1

declare dso_local i64 @target_read_memory(i64, i8*, i32) #1

declare dso_local i32 @pascal_object_print_value_fields(%struct.type*, i8*, i64, %struct.ui_file*, i32, i32, i32, %struct.type**, i32) #1

declare dso_local i32 @obstack_free(%struct.obstack*, %struct.type**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
