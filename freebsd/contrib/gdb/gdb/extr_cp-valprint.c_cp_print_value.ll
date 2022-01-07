; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_cp-valprint.c_cp_print_value.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_cp-valprint.c_cp_print_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.obstack = type { i32 }
%struct.type = type { i32 }
%struct.ui_file = type { i32 }

@dont_print_vb_obstack = common dso_local global %struct.obstack zeroinitializer, align 4
@.str = private unnamed_addr constant [63 x i8] c"Virtual base class offset not found from vtable while printing\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"<\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"> = \00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"<invalid address>\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c", \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.type*, %struct.type*, i8*, i32, i64, %struct.ui_file*, i32, i32, i32, %struct.type**)* @cp_print_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cp_print_value(%struct.type* %0, %struct.type* %1, i8* %2, i32 %3, i64 %4, %struct.ui_file* %5, i32 %6, i32 %7, i32 %8, %struct.type** %9) #0 {
  %11 = alloca %struct.type*, align 8
  %12 = alloca %struct.type*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca %struct.ui_file*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.type**, align 8
  %21 = alloca %struct.obstack, align 4
  %22 = alloca %struct.type**, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca %struct.type*, align 8
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca %struct.type*, align 8
  %30 = alloca i8*, align 8
  %31 = alloca i8*, align 8
  %32 = alloca %struct.type**, align 8
  %33 = alloca i32, align 4
  store %struct.type* %0, %struct.type** %11, align 8
  store %struct.type* %1, %struct.type** %12, align 8
  store i8* %2, i8** %13, align 8
  store i32 %3, i32* %14, align 4
  store i64 %4, i64* %15, align 8
  store %struct.ui_file* %5, %struct.ui_file** %16, align 8
  store i32 %6, i32* %17, align 4
  store i32 %7, i32* %18, align 4
  store i32 %8, i32* %19, align 4
  store %struct.type** %9, %struct.type*** %20, align 8
  %34 = call i64 @obstack_next_free(%struct.obstack* @dont_print_vb_obstack)
  %35 = inttoptr i64 %34 to %struct.type**
  store %struct.type** %35, %struct.type*** %22, align 8
  %36 = load %struct.type*, %struct.type** %11, align 8
  %37 = call i32 @TYPE_N_BASECLASSES(%struct.type* %36)
  store i32 %37, i32* %24, align 4
  %38 = load %struct.type**, %struct.type*** %20, align 8
  %39 = icmp eq %struct.type** %38, null
  br i1 %39, label %40, label %43

40:                                               ; preds = %10
  %41 = bitcast %struct.obstack* %21 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %41, i8* align 4 bitcast (%struct.obstack* @dont_print_vb_obstack to i8*), i64 4, i1 false)
  %42 = call i32 @obstack_finish(%struct.obstack* @dont_print_vb_obstack)
  br label %43

43:                                               ; preds = %40, %10
  store i32 0, i32* %23, align 4
  br label %44

44:                                               ; preds = %229, %43
  %45 = load i32, i32* %23, align 4
  %46 = load i32, i32* %24, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %232

48:                                               ; preds = %44
  %49 = load %struct.type*, %struct.type** %11, align 8
  %50 = load i32, i32* %23, align 4
  %51 = call i32 @TYPE_BASECLASS(%struct.type* %49, i32 %50)
  %52 = call %struct.type* @check_typedef(i32 %51)
  store %struct.type* %52, %struct.type** %29, align 8
  %53 = load %struct.type*, %struct.type** %29, align 8
  %54 = call i8* @TYPE_NAME(%struct.type* %53)
  store i8* %54, i8** %30, align 8
  %55 = load %struct.type*, %struct.type** %11, align 8
  %56 = load i32, i32* %23, align 4
  %57 = call i64 @BASETYPE_VIA_VIRTUAL(%struct.type* %55, i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %87

59:                                               ; preds = %48
  %60 = call i64 @obstack_base(%struct.obstack* @dont_print_vb_obstack)
  %61 = inttoptr i64 %60 to %struct.type**
  store %struct.type** %61, %struct.type*** %32, align 8
  %62 = call i64 @obstack_next_free(%struct.obstack* @dont_print_vb_obstack)
  %63 = inttoptr i64 %62 to %struct.type**
  %64 = load %struct.type**, %struct.type*** %32, align 8
  %65 = ptrtoint %struct.type** %63 to i64
  %66 = ptrtoint %struct.type** %64 to i64
  %67 = sub i64 %65, %66
  %68 = sdiv exact i64 %67, 8
  %69 = trunc i64 %68 to i32
  store i32 %69, i32* %33, align 4
  br label %70

70:                                               ; preds = %83, %59
  %71 = load i32, i32* %33, align 4
  %72 = add nsw i32 %71, -1
  store i32 %72, i32* %33, align 4
  %73 = icmp sge i32 %72, 0
  br i1 %73, label %74, label %84

74:                                               ; preds = %70
  %75 = load %struct.type*, %struct.type** %29, align 8
  %76 = load %struct.type**, %struct.type*** %32, align 8
  %77 = load i32, i32* %33, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.type*, %struct.type** %76, i64 %78
  %80 = load %struct.type*, %struct.type** %79, align 8
  %81 = icmp eq %struct.type* %75, %80
  br i1 %81, label %82, label %83

82:                                               ; preds = %74
  br label %228

83:                                               ; preds = %74
  br label %70

84:                                               ; preds = %70
  %85 = load %struct.type*, %struct.type** %29, align 8
  %86 = call i32 @obstack_ptr_grow(%struct.obstack* @dont_print_vb_obstack, %struct.type* %85)
  br label %87

87:                                               ; preds = %84, %48
  %88 = load i32, i32* %14, align 4
  store i32 %88, i32* %25, align 4
  %89 = load %struct.type*, %struct.type** %12, align 8
  store %struct.type* %89, %struct.type** %26, align 8
  %90 = load %struct.type*, %struct.type** %11, align 8
  %91 = call i64 @TYPE_HAS_VTABLE(%struct.type* %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %112

93:                                               ; preds = %87
  %94 = load %struct.type*, %struct.type** %11, align 8
  %95 = load i32, i32* %23, align 4
  %96 = call i64 @BASETYPE_VIA_VIRTUAL(%struct.type* %94, i32 %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %112

98:                                               ; preds = %93
  %99 = load %struct.type*, %struct.type** %11, align 8
  %100 = load %struct.type*, %struct.type** %11, align 8
  %101 = load i32, i32* %23, align 4
  %102 = call i32 @TYPE_BASECLASS(%struct.type* %100, i32 %101)
  %103 = load i8*, i8** %13, align 8
  %104 = load i32, i32* %14, align 4
  %105 = call i32 @find_rt_vbase_offset(%struct.type* %99, i32 %102, i8* %103, i32 %104, i32* %27, i32* %28)
  %106 = load i32, i32* %28, align 4
  %107 = icmp sge i32 %106, 0
  br i1 %107, label %108, label %110

108:                                              ; preds = %98
  %109 = call i32 @error(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0))
  br label %110

110:                                              ; preds = %108, %98
  %111 = load i8*, i8** %13, align 8
  store i8* %111, i8** %31, align 8
  br label %178

112:                                              ; preds = %93, %87
  %113 = load %struct.type*, %struct.type** %11, align 8
  %114 = load i32, i32* %23, align 4
  %115 = load i8*, i8** %13, align 8
  %116 = load i32, i32* %14, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i8, i8* %115, i64 %117
  %119 = load i64, i64* %15, align 8
  %120 = call i32 @baseclass_offset(%struct.type* %113, i32 %114, i8* %118, i64 %119)
  store i32 %120, i32* %27, align 4
  %121 = load i32, i32* %27, align 4
  %122 = icmp eq i32 %121, -1
  br i1 %122, label %128, label %123

123:                                              ; preds = %112
  %124 = load i32, i32* %27, align 4
  %125 = load i32, i32* %14, align 4
  %126 = add nsw i32 %124, %125
  %127 = icmp slt i32 %126, 0
  br label %128

128:                                              ; preds = %123, %112
  %129 = phi i1 [ true, %112 ], [ %127, %123 ]
  %130 = zext i1 %129 to i64
  %131 = select i1 %129, i32 1, i32 -1
  store i32 %131, i32* %28, align 4
  %132 = load %struct.type*, %struct.type** %11, align 8
  %133 = load i32, i32* %23, align 4
  %134 = call i64 @BASETYPE_VIA_VIRTUAL(%struct.type* %132, i32 %133)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %175

136:                                              ; preds = %128
  %137 = load i32, i32* %27, align 4
  %138 = icmp ne i32 %137, -1
  br i1 %138, label %139, label %172

139:                                              ; preds = %136
  %140 = load i32, i32* %27, align 4
  %141 = load i32, i32* %14, align 4
  %142 = add nsw i32 %140, %141
  %143 = icmp slt i32 %142, 0
  br i1 %143, label %151, label %144

144:                                              ; preds = %139
  %145 = load i32, i32* %27, align 4
  %146 = load i32, i32* %14, align 4
  %147 = add nsw i32 %145, %146
  %148 = load %struct.type*, %struct.type** %11, align 8
  %149 = call i32 @TYPE_LENGTH(%struct.type* %148)
  %150 = icmp sge i32 %147, %149
  br i1 %150, label %151, label %172

151:                                              ; preds = %144, %139
  %152 = load %struct.type*, %struct.type** %29, align 8
  %153 = call i32 @TYPE_LENGTH(%struct.type* %152)
  %154 = call i64 @alloca(i32 %153)
  %155 = inttoptr i64 %154 to i8*
  store i8* %155, i8** %31, align 8
  %156 = load i64, i64* %15, align 8
  %157 = load i32, i32* %27, align 4
  %158 = sext i32 %157 to i64
  %159 = add nsw i64 %156, %158
  %160 = load i8*, i8** %31, align 8
  %161 = load %struct.type*, %struct.type** %29, align 8
  %162 = call i32 @TYPE_LENGTH(%struct.type* %161)
  %163 = call i64 @target_read_memory(i64 %159, i8* %160, i32 %162)
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %166

165:                                              ; preds = %151
  store i32 1, i32* %28, align 4
  br label %166

166:                                              ; preds = %165, %151
  %167 = load i64, i64* %15, align 8
  %168 = load i32, i32* %27, align 4
  %169 = sext i32 %168 to i64
  %170 = add nsw i64 %167, %169
  store i64 %170, i64* %15, align 8
  store i32 0, i32* %25, align 4
  store i32 0, i32* %27, align 4
  %171 = load %struct.type*, %struct.type** %29, align 8
  store %struct.type* %171, %struct.type** %26, align 8
  br label %174

172:                                              ; preds = %144, %136
  %173 = load i8*, i8** %13, align 8
  store i8* %173, i8** %31, align 8
  br label %174

174:                                              ; preds = %172, %166
  br label %177

175:                                              ; preds = %128
  %176 = load i8*, i8** %13, align 8
  store i8* %176, i8** %31, align 8
  br label %177

177:                                              ; preds = %175, %174
  br label %178

178:                                              ; preds = %177, %110
  %179 = load i32, i32* %19, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %188

181:                                              ; preds = %178
  %182 = load %struct.ui_file*, %struct.ui_file** %16, align 8
  %183 = call i32 @fprintf_filtered(%struct.ui_file* %182, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %184 = load i32, i32* %18, align 4
  %185 = mul nsw i32 2, %184
  %186 = load %struct.ui_file*, %struct.ui_file** %16, align 8
  %187 = call i32 @print_spaces_filtered(i32 %185, %struct.ui_file* %186)
  br label %188

188:                                              ; preds = %181, %178
  %189 = load %struct.ui_file*, %struct.ui_file** %16, align 8
  %190 = call i32 @fputs_filtered(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), %struct.ui_file* %189)
  %191 = load i8*, i8** %30, align 8
  %192 = icmp ne i8* %191, null
  br i1 %192, label %193, label %195

193:                                              ; preds = %188
  %194 = load i8*, i8** %30, align 8
  br label %196

195:                                              ; preds = %188
  br label %196

196:                                              ; preds = %195, %193
  %197 = phi i8* [ %194, %193 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), %195 ]
  %198 = load %struct.ui_file*, %struct.ui_file** %16, align 8
  %199 = call i32 @fputs_filtered(i8* %197, %struct.ui_file* %198)
  %200 = load %struct.ui_file*, %struct.ui_file** %16, align 8
  %201 = call i32 @fputs_filtered(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), %struct.ui_file* %200)
  %202 = load i32, i32* %28, align 4
  %203 = icmp sge i32 %202, 1
  br i1 %203, label %204, label %207

204:                                              ; preds = %196
  %205 = load %struct.ui_file*, %struct.ui_file** %16, align 8
  %206 = call i32 @fprintf_filtered(%struct.ui_file* %205, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0))
  br label %225

207:                                              ; preds = %196
  %208 = load %struct.type*, %struct.type** %29, align 8
  %209 = load %struct.type*, %struct.type** %26, align 8
  %210 = load i8*, i8** %31, align 8
  %211 = load i32, i32* %25, align 4
  %212 = load i32, i32* %27, align 4
  %213 = add nsw i32 %211, %212
  %214 = load i64, i64* %15, align 8
  %215 = load i32, i32* %27, align 4
  %216 = sext i32 %215 to i64
  %217 = add nsw i64 %214, %216
  %218 = load %struct.ui_file*, %struct.ui_file** %16, align 8
  %219 = load i32, i32* %17, align 4
  %220 = load i32, i32* %18, align 4
  %221 = load i32, i32* %19, align 4
  %222 = call i64 @obstack_base(%struct.obstack* @dont_print_vb_obstack)
  %223 = inttoptr i64 %222 to %struct.type**
  %224 = call i32 @cp_print_value_fields(%struct.type* %208, %struct.type* %209, i8* %210, i32 %213, i64 %217, %struct.ui_file* %218, i32 %219, i32 %220, i32 %221, %struct.type** %223, i32 0)
  br label %225

225:                                              ; preds = %207, %204
  %226 = load %struct.ui_file*, %struct.ui_file** %16, align 8
  %227 = call i32 @fputs_filtered(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), %struct.ui_file* %226)
  br label %228

228:                                              ; preds = %225, %82
  br label %229

229:                                              ; preds = %228
  %230 = load i32, i32* %23, align 4
  %231 = add nsw i32 %230, 1
  store i32 %231, i32* %23, align 4
  br label %44

232:                                              ; preds = %44
  %233 = load %struct.type**, %struct.type*** %20, align 8
  %234 = icmp eq %struct.type** %233, null
  br i1 %234, label %235, label %239

235:                                              ; preds = %232
  %236 = load %struct.type**, %struct.type*** %22, align 8
  %237 = call i32 @obstack_free(%struct.obstack* @dont_print_vb_obstack, %struct.type** %236)
  %238 = bitcast %struct.obstack* %21 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 bitcast (%struct.obstack* @dont_print_vb_obstack to i8*), i8* align 4 %238, i64 4, i1 false)
  br label %239

239:                                              ; preds = %235, %232
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

declare dso_local i64 @TYPE_HAS_VTABLE(%struct.type*) #1

declare dso_local i32 @find_rt_vbase_offset(%struct.type*, i32, i8*, i32, i32*, i32*) #1

declare dso_local i32 @error(i8*) #1

declare dso_local i32 @baseclass_offset(%struct.type*, i32, i8*, i64) #1

declare dso_local i32 @TYPE_LENGTH(%struct.type*) #1

declare dso_local i64 @alloca(i32) #1

declare dso_local i64 @target_read_memory(i64, i8*, i32) #1

declare dso_local i32 @fprintf_filtered(%struct.ui_file*, i8*) #1

declare dso_local i32 @print_spaces_filtered(i32, %struct.ui_file*) #1

declare dso_local i32 @fputs_filtered(i8*, %struct.ui_file*) #1

declare dso_local i32 @cp_print_value_fields(%struct.type*, %struct.type*, i8*, i32, i64, %struct.ui_file*, i32, i32, i32, %struct.type**, i32) #1

declare dso_local i32 @obstack_free(%struct.obstack*, %struct.type**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
