; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/ld/extr_mri.c_mri_draw_tree.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/ld/extr_mri.c_mri_draw_tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.section_name_struct = type { i64, i32, %struct.section_name_struct*, i32, i32, i32*, i32* }
%struct.wildcard_list = type { %struct.TYPE_2__, i32* }
%struct.TYPE_2__ = type { i8*, i32*, i32 }

@done_tree = common dso_local global i32 0, align 4
@address = common dso_local global %struct.section_name_struct* null, align 8
@order = common dso_local global %struct.section_name_struct* null, align 8
@only_load = common dso_local global %struct.section_name_struct* null, align 8
@alignment = common dso_local global %struct.section_name_struct* null, align 8
@subalignment = common dso_local global %struct.section_name_struct* null, align 8
@base = common dso_local global i64 0, align 8
@NAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c".\00", align 1
@noload_section = common dso_local global i32 0, align 4
@none = common dso_local global i8* null, align 8
@FALSE = common dso_local global i32 0, align 4
@alias = common dso_local global %struct.section_name_struct* null, align 8
@.str.1 = private unnamed_addr constant [10 x i8] c"*default*\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mri_draw_tree() #0 {
  %1 = alloca %struct.section_name_struct*, align 8
  %2 = alloca %struct.section_name_struct*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.section_name_struct*, align 8
  %5 = alloca %struct.section_name_struct*, align 8
  %6 = alloca %struct.section_name_struct*, align 8
  %7 = alloca %struct.section_name_struct*, align 8
  %8 = alloca %struct.section_name_struct*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.wildcard_list*, align 8
  %12 = load i32, i32* @done_tree, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %0
  br label %281

15:                                               ; preds = %0
  %16 = load %struct.section_name_struct*, %struct.section_name_struct** @address, align 8
  %17 = icmp ne %struct.section_name_struct* %16, null
  br i1 %17, label %18, label %75

18:                                               ; preds = %15
  %19 = load %struct.section_name_struct*, %struct.section_name_struct** @order, align 8
  %20 = icmp eq %struct.section_name_struct* %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %18
  %22 = load %struct.section_name_struct*, %struct.section_name_struct** @address, align 8
  store %struct.section_name_struct* %22, %struct.section_name_struct** @order, align 8
  br label %23

23:                                               ; preds = %21, %18
  %24 = load %struct.section_name_struct*, %struct.section_name_struct** @address, align 8
  store %struct.section_name_struct* %24, %struct.section_name_struct** %1, align 8
  br label %25

25:                                               ; preds = %70, %23
  %26 = load %struct.section_name_struct*, %struct.section_name_struct** %1, align 8
  %27 = icmp ne %struct.section_name_struct* %26, null
  br i1 %27, label %28, label %74

28:                                               ; preds = %25
  store i32 0, i32* %3, align 4
  %29 = load %struct.section_name_struct*, %struct.section_name_struct** @order, align 8
  store %struct.section_name_struct* %29, %struct.section_name_struct** %2, align 8
  br label %30

30:                                               ; preds = %54, %28
  %31 = load i32, i32* %3, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %30
  %34 = load %struct.section_name_struct*, %struct.section_name_struct** %2, align 8
  %35 = icmp ne %struct.section_name_struct* %34, null
  br label %36

36:                                               ; preds = %33, %30
  %37 = phi i1 [ false, %30 ], [ %35, %33 ]
  br i1 %37, label %38, label %58

38:                                               ; preds = %36
  %39 = load %struct.section_name_struct*, %struct.section_name_struct** %1, align 8
  %40 = getelementptr inbounds %struct.section_name_struct, %struct.section_name_struct* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.section_name_struct*, %struct.section_name_struct** %2, align 8
  %43 = getelementptr inbounds %struct.section_name_struct, %struct.section_name_struct* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 8
  %45 = call i64 @strcmp(i32 %41, i32 %44)
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %38
  %48 = load %struct.section_name_struct*, %struct.section_name_struct** %1, align 8
  %49 = getelementptr inbounds %struct.section_name_struct, %struct.section_name_struct* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.section_name_struct*, %struct.section_name_struct** %2, align 8
  %52 = getelementptr inbounds %struct.section_name_struct, %struct.section_name_struct* %51, i32 0, i32 0
  store i64 %50, i64* %52, align 8
  store i32 1, i32* %3, align 4
  br label %53

53:                                               ; preds = %47, %38
  br label %54

54:                                               ; preds = %53
  %55 = load %struct.section_name_struct*, %struct.section_name_struct** %2, align 8
  %56 = getelementptr inbounds %struct.section_name_struct, %struct.section_name_struct* %55, i32 0, i32 2
  %57 = load %struct.section_name_struct*, %struct.section_name_struct** %56, align 8
  store %struct.section_name_struct* %57, %struct.section_name_struct** %2, align 8
  br label %30

58:                                               ; preds = %36
  %59 = load i32, i32* %3, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %69, label %61

61:                                               ; preds = %58
  %62 = load %struct.section_name_struct*, %struct.section_name_struct** %1, align 8
  %63 = getelementptr inbounds %struct.section_name_struct, %struct.section_name_struct* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.section_name_struct*, %struct.section_name_struct** %1, align 8
  %66 = getelementptr inbounds %struct.section_name_struct, %struct.section_name_struct* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = call i32 @mri_add_to_list(%struct.section_name_struct** @order, i32 %64, i64 %67, i32 0, i32 0, i32 0)
  br label %69

69:                                               ; preds = %61, %58
  br label %70

70:                                               ; preds = %69
  %71 = load %struct.section_name_struct*, %struct.section_name_struct** %1, align 8
  %72 = getelementptr inbounds %struct.section_name_struct, %struct.section_name_struct* %71, i32 0, i32 2
  %73 = load %struct.section_name_struct*, %struct.section_name_struct** %72, align 8
  store %struct.section_name_struct* %73, %struct.section_name_struct** %1, align 8
  br label %25

74:                                               ; preds = %25
  br label %75

75:                                               ; preds = %74, %15
  %76 = load %struct.section_name_struct*, %struct.section_name_struct** @only_load, align 8
  %77 = icmp ne %struct.section_name_struct* %76, null
  br i1 %77, label %78, label %116

78:                                               ; preds = %75
  %79 = load %struct.section_name_struct*, %struct.section_name_struct** @order, align 8
  %80 = icmp eq %struct.section_name_struct* %79, null
  br i1 %80, label %81, label %83

81:                                               ; preds = %78
  %82 = load %struct.section_name_struct*, %struct.section_name_struct** @only_load, align 8
  store %struct.section_name_struct* %82, %struct.section_name_struct** @order, align 8
  br label %83

83:                                               ; preds = %81, %78
  %84 = load %struct.section_name_struct*, %struct.section_name_struct** @only_load, align 8
  store %struct.section_name_struct* %84, %struct.section_name_struct** %4, align 8
  br label %85

85:                                               ; preds = %111, %83
  %86 = load %struct.section_name_struct*, %struct.section_name_struct** %4, align 8
  %87 = icmp ne %struct.section_name_struct* %86, null
  br i1 %87, label %88, label %115

88:                                               ; preds = %85
  %89 = load %struct.section_name_struct*, %struct.section_name_struct** @order, align 8
  store %struct.section_name_struct* %89, %struct.section_name_struct** %5, align 8
  br label %90

90:                                               ; preds = %106, %88
  %91 = load %struct.section_name_struct*, %struct.section_name_struct** %5, align 8
  %92 = icmp ne %struct.section_name_struct* %91, null
  br i1 %92, label %93, label %110

93:                                               ; preds = %90
  %94 = load %struct.section_name_struct*, %struct.section_name_struct** %5, align 8
  %95 = getelementptr inbounds %struct.section_name_struct, %struct.section_name_struct* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.section_name_struct*, %struct.section_name_struct** %4, align 8
  %98 = getelementptr inbounds %struct.section_name_struct, %struct.section_name_struct* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 8
  %100 = call i64 @strcmp(i32 %96, i32 %99)
  %101 = icmp eq i64 %100, 0
  br i1 %101, label %102, label %105

102:                                              ; preds = %93
  %103 = load %struct.section_name_struct*, %struct.section_name_struct** %5, align 8
  %104 = getelementptr inbounds %struct.section_name_struct, %struct.section_name_struct* %103, i32 0, i32 1
  store i32 1, i32* %104, align 8
  br label %105

105:                                              ; preds = %102, %93
  br label %106

106:                                              ; preds = %105
  %107 = load %struct.section_name_struct*, %struct.section_name_struct** %5, align 8
  %108 = getelementptr inbounds %struct.section_name_struct, %struct.section_name_struct* %107, i32 0, i32 2
  %109 = load %struct.section_name_struct*, %struct.section_name_struct** %108, align 8
  store %struct.section_name_struct* %109, %struct.section_name_struct** %5, align 8
  br label %90

110:                                              ; preds = %90
  br label %111

111:                                              ; preds = %110
  %112 = load %struct.section_name_struct*, %struct.section_name_struct** %4, align 8
  %113 = getelementptr inbounds %struct.section_name_struct, %struct.section_name_struct* %112, i32 0, i32 2
  %114 = load %struct.section_name_struct*, %struct.section_name_struct** %113, align 8
  store %struct.section_name_struct* %114, %struct.section_name_struct** %4, align 8
  br label %85

115:                                              ; preds = %85
  br label %129

116:                                              ; preds = %75
  %117 = load %struct.section_name_struct*, %struct.section_name_struct** @order, align 8
  store %struct.section_name_struct* %117, %struct.section_name_struct** %6, align 8
  br label %118

118:                                              ; preds = %124, %116
  %119 = load %struct.section_name_struct*, %struct.section_name_struct** %6, align 8
  %120 = icmp ne %struct.section_name_struct* %119, null
  br i1 %120, label %121, label %128

121:                                              ; preds = %118
  %122 = load %struct.section_name_struct*, %struct.section_name_struct** %6, align 8
  %123 = getelementptr inbounds %struct.section_name_struct, %struct.section_name_struct* %122, i32 0, i32 1
  store i32 1, i32* %123, align 8
  br label %124

124:                                              ; preds = %121
  %125 = load %struct.section_name_struct*, %struct.section_name_struct** %6, align 8
  %126 = getelementptr inbounds %struct.section_name_struct, %struct.section_name_struct* %125, i32 0, i32 2
  %127 = load %struct.section_name_struct*, %struct.section_name_struct** %126, align 8
  store %struct.section_name_struct* %127, %struct.section_name_struct** %6, align 8
  br label %118

128:                                              ; preds = %118
  br label %129

129:                                              ; preds = %128, %115
  %130 = load %struct.section_name_struct*, %struct.section_name_struct** @order, align 8
  %131 = icmp ne %struct.section_name_struct* %130, null
  br i1 %131, label %132, label %280

132:                                              ; preds = %129
  %133 = load %struct.section_name_struct*, %struct.section_name_struct** @order, align 8
  store %struct.section_name_struct* %133, %struct.section_name_struct** %7, align 8
  br label %134

134:                                              ; preds = %274, %132
  %135 = load %struct.section_name_struct*, %struct.section_name_struct** %7, align 8
  %136 = icmp ne %struct.section_name_struct* %135, null
  br i1 %136, label %137, label %279

137:                                              ; preds = %134
  store i32* null, i32** %9, align 8
  store i32* null, i32** %10, align 8
  %138 = load %struct.section_name_struct*, %struct.section_name_struct** @alignment, align 8
  store %struct.section_name_struct* %138, %struct.section_name_struct** %8, align 8
  br label %139

139:                                              ; preds = %156, %137
  %140 = load %struct.section_name_struct*, %struct.section_name_struct** %8, align 8
  %141 = icmp ne %struct.section_name_struct* %140, null
  br i1 %141, label %142, label %160

142:                                              ; preds = %139
  %143 = load %struct.section_name_struct*, %struct.section_name_struct** %8, align 8
  %144 = getelementptr inbounds %struct.section_name_struct, %struct.section_name_struct* %143, i32 0, i32 3
  %145 = load i32, i32* %144, align 8
  %146 = load %struct.section_name_struct*, %struct.section_name_struct** %7, align 8
  %147 = getelementptr inbounds %struct.section_name_struct, %struct.section_name_struct* %146, i32 0, i32 3
  %148 = load i32, i32* %147, align 8
  %149 = call i64 @strcmp(i32 %145, i32 %148)
  %150 = icmp eq i64 %149, 0
  br i1 %150, label %151, label %155

151:                                              ; preds = %142
  %152 = load %struct.section_name_struct*, %struct.section_name_struct** %8, align 8
  %153 = getelementptr inbounds %struct.section_name_struct, %struct.section_name_struct* %152, i32 0, i32 6
  %154 = load i32*, i32** %153, align 8
  store i32* %154, i32** %9, align 8
  br label %155

155:                                              ; preds = %151, %142
  br label %156

156:                                              ; preds = %155
  %157 = load %struct.section_name_struct*, %struct.section_name_struct** %8, align 8
  %158 = getelementptr inbounds %struct.section_name_struct, %struct.section_name_struct* %157, i32 0, i32 2
  %159 = load %struct.section_name_struct*, %struct.section_name_struct** %158, align 8
  store %struct.section_name_struct* %159, %struct.section_name_struct** %8, align 8
  br label %139

160:                                              ; preds = %139
  %161 = load %struct.section_name_struct*, %struct.section_name_struct** @subalignment, align 8
  store %struct.section_name_struct* %161, %struct.section_name_struct** %8, align 8
  br label %162

162:                                              ; preds = %179, %160
  %163 = load %struct.section_name_struct*, %struct.section_name_struct** %8, align 8
  %164 = icmp ne %struct.section_name_struct* %163, null
  br i1 %164, label %165, label %183

165:                                              ; preds = %162
  %166 = load %struct.section_name_struct*, %struct.section_name_struct** %8, align 8
  %167 = getelementptr inbounds %struct.section_name_struct, %struct.section_name_struct* %166, i32 0, i32 3
  %168 = load i32, i32* %167, align 8
  %169 = load %struct.section_name_struct*, %struct.section_name_struct** %7, align 8
  %170 = getelementptr inbounds %struct.section_name_struct, %struct.section_name_struct* %169, i32 0, i32 3
  %171 = load i32, i32* %170, align 8
  %172 = call i64 @strcmp(i32 %168, i32 %171)
  %173 = icmp eq i64 %172, 0
  br i1 %173, label %174, label %178

174:                                              ; preds = %165
  %175 = load %struct.section_name_struct*, %struct.section_name_struct** %8, align 8
  %176 = getelementptr inbounds %struct.section_name_struct, %struct.section_name_struct* %175, i32 0, i32 5
  %177 = load i32*, i32** %176, align 8
  store i32* %177, i32** %10, align 8
  br label %178

178:                                              ; preds = %174, %165
  br label %179

179:                                              ; preds = %178
  %180 = load %struct.section_name_struct*, %struct.section_name_struct** %8, align 8
  %181 = getelementptr inbounds %struct.section_name_struct, %struct.section_name_struct* %180, i32 0, i32 2
  %182 = load %struct.section_name_struct*, %struct.section_name_struct** %181, align 8
  store %struct.section_name_struct* %182, %struct.section_name_struct** %8, align 8
  br label %162

183:                                              ; preds = %162
  %184 = load i64, i64* @base, align 8
  %185 = icmp eq i64 %184, 0
  br i1 %185, label %186, label %200

186:                                              ; preds = %183
  %187 = load %struct.section_name_struct*, %struct.section_name_struct** %7, align 8
  %188 = getelementptr inbounds %struct.section_name_struct, %struct.section_name_struct* %187, i32 0, i32 0
  %189 = load i64, i64* %188, align 8
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %195

191:                                              ; preds = %186
  %192 = load %struct.section_name_struct*, %struct.section_name_struct** %7, align 8
  %193 = getelementptr inbounds %struct.section_name_struct, %struct.section_name_struct* %192, i32 0, i32 0
  %194 = load i64, i64* %193, align 8
  br label %198

195:                                              ; preds = %186
  %196 = load i32, i32* @NAME, align 4
  %197 = call i64 @exp_nameop(i32 %196, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %198

198:                                              ; preds = %195, %191
  %199 = phi i64 [ %194, %191 ], [ %197, %195 ]
  store i64 %199, i64* @base, align 8
  br label %200

200:                                              ; preds = %198, %183
  %201 = load %struct.section_name_struct*, %struct.section_name_struct** %7, align 8
  %202 = getelementptr inbounds %struct.section_name_struct, %struct.section_name_struct* %201, i32 0, i32 3
  %203 = load i32, i32* %202, align 8
  %204 = load i64, i64* @base, align 8
  %205 = load %struct.section_name_struct*, %struct.section_name_struct** %7, align 8
  %206 = getelementptr inbounds %struct.section_name_struct, %struct.section_name_struct* %205, i32 0, i32 1
  %207 = load i32, i32* %206, align 8
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %210

209:                                              ; preds = %200
  br label %212

210:                                              ; preds = %200
  %211 = load i32, i32* @noload_section, align 4
  br label %212

212:                                              ; preds = %210, %209
  %213 = phi i32 [ 0, %209 ], [ %211, %210 ]
  %214 = load i32*, i32** %9, align 8
  %215 = load i32*, i32** %10, align 8
  %216 = call i32 @lang_enter_output_section_statement(i32 %203, i64 %204, i32 %213, i32* %214, i32* %215, i32* null, i32 0)
  store i64 0, i64* @base, align 8
  %217 = call %struct.wildcard_list* @xmalloc(i32 32)
  store %struct.wildcard_list* %217, %struct.wildcard_list** %11, align 8
  %218 = load %struct.wildcard_list*, %struct.wildcard_list** %11, align 8
  %219 = getelementptr inbounds %struct.wildcard_list, %struct.wildcard_list* %218, i32 0, i32 1
  store i32* null, i32** %219, align 8
  %220 = load %struct.section_name_struct*, %struct.section_name_struct** %7, align 8
  %221 = getelementptr inbounds %struct.section_name_struct, %struct.section_name_struct* %220, i32 0, i32 3
  %222 = load i32, i32* %221, align 8
  %223 = load %struct.wildcard_list*, %struct.wildcard_list** %11, align 8
  %224 = getelementptr inbounds %struct.wildcard_list, %struct.wildcard_list* %223, i32 0, i32 0
  %225 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %224, i32 0, i32 2
  store i32 %222, i32* %225, align 8
  %226 = load %struct.wildcard_list*, %struct.wildcard_list** %11, align 8
  %227 = getelementptr inbounds %struct.wildcard_list, %struct.wildcard_list* %226, i32 0, i32 0
  %228 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %227, i32 0, i32 1
  store i32* null, i32** %228, align 8
  %229 = load i8*, i8** @none, align 8
  %230 = load %struct.wildcard_list*, %struct.wildcard_list** %11, align 8
  %231 = getelementptr inbounds %struct.wildcard_list, %struct.wildcard_list* %230, i32 0, i32 0
  %232 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %231, i32 0, i32 0
  store i8* %229, i8** %232, align 8
  %233 = load %struct.wildcard_list*, %struct.wildcard_list** %11, align 8
  %234 = load i32, i32* @FALSE, align 4
  %235 = call i32 @lang_add_wild(i32* null, %struct.wildcard_list* %233, i32 %234)
  %236 = load %struct.section_name_struct*, %struct.section_name_struct** @alias, align 8
  store %struct.section_name_struct* %236, %struct.section_name_struct** %8, align 8
  br label %237

237:                                              ; preds = %270, %212
  %238 = load %struct.section_name_struct*, %struct.section_name_struct** %8, align 8
  %239 = icmp ne %struct.section_name_struct* %238, null
  br i1 %239, label %240, label %274

240:                                              ; preds = %237
  %241 = load %struct.section_name_struct*, %struct.section_name_struct** %8, align 8
  %242 = getelementptr inbounds %struct.section_name_struct, %struct.section_name_struct* %241, i32 0, i32 4
  %243 = load i32, i32* %242, align 4
  %244 = load %struct.section_name_struct*, %struct.section_name_struct** %7, align 8
  %245 = getelementptr inbounds %struct.section_name_struct, %struct.section_name_struct* %244, i32 0, i32 3
  %246 = load i32, i32* %245, align 8
  %247 = call i64 @strcmp(i32 %243, i32 %246)
  %248 = icmp eq i64 %247, 0
  br i1 %248, label %249, label %269

249:                                              ; preds = %240
  %250 = call %struct.wildcard_list* @xmalloc(i32 32)
  store %struct.wildcard_list* %250, %struct.wildcard_list** %11, align 8
  %251 = load %struct.wildcard_list*, %struct.wildcard_list** %11, align 8
  %252 = getelementptr inbounds %struct.wildcard_list, %struct.wildcard_list* %251, i32 0, i32 1
  store i32* null, i32** %252, align 8
  %253 = load %struct.section_name_struct*, %struct.section_name_struct** %8, align 8
  %254 = getelementptr inbounds %struct.section_name_struct, %struct.section_name_struct* %253, i32 0, i32 3
  %255 = load i32, i32* %254, align 8
  %256 = load %struct.wildcard_list*, %struct.wildcard_list** %11, align 8
  %257 = getelementptr inbounds %struct.wildcard_list, %struct.wildcard_list* %256, i32 0, i32 0
  %258 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %257, i32 0, i32 2
  store i32 %255, i32* %258, align 8
  %259 = load %struct.wildcard_list*, %struct.wildcard_list** %11, align 8
  %260 = getelementptr inbounds %struct.wildcard_list, %struct.wildcard_list* %259, i32 0, i32 0
  %261 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %260, i32 0, i32 1
  store i32* null, i32** %261, align 8
  %262 = load i8*, i8** @none, align 8
  %263 = load %struct.wildcard_list*, %struct.wildcard_list** %11, align 8
  %264 = getelementptr inbounds %struct.wildcard_list, %struct.wildcard_list* %263, i32 0, i32 0
  %265 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %264, i32 0, i32 0
  store i8* %262, i8** %265, align 8
  %266 = load %struct.wildcard_list*, %struct.wildcard_list** %11, align 8
  %267 = load i32, i32* @FALSE, align 4
  %268 = call i32 @lang_add_wild(i32* null, %struct.wildcard_list* %266, i32 %267)
  br label %269

269:                                              ; preds = %249, %240
  br label %270

270:                                              ; preds = %269
  %271 = load %struct.section_name_struct*, %struct.section_name_struct** %8, align 8
  %272 = getelementptr inbounds %struct.section_name_struct, %struct.section_name_struct* %271, i32 0, i32 2
  %273 = load %struct.section_name_struct*, %struct.section_name_struct** %272, align 8
  store %struct.section_name_struct* %273, %struct.section_name_struct** %8, align 8
  br label %237

274:                                              ; preds = %237
  %275 = call i32 @lang_leave_output_section_statement(i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32* null, i32* null)
  %276 = load %struct.section_name_struct*, %struct.section_name_struct** %7, align 8
  %277 = getelementptr inbounds %struct.section_name_struct, %struct.section_name_struct* %276, i32 0, i32 2
  %278 = load %struct.section_name_struct*, %struct.section_name_struct** %277, align 8
  store %struct.section_name_struct* %278, %struct.section_name_struct** %7, align 8
  br label %134

279:                                              ; preds = %134
  br label %280

280:                                              ; preds = %279, %129
  store i32 1, i32* @done_tree, align 4
  br label %281

281:                                              ; preds = %280, %14
  ret void
}

declare dso_local i64 @strcmp(i32, i32) #1

declare dso_local i32 @mri_add_to_list(%struct.section_name_struct**, i32, i64, i32, i32, i32) #1

declare dso_local i64 @exp_nameop(i32, i8*) #1

declare dso_local i32 @lang_enter_output_section_statement(i32, i64, i32, i32*, i32*, i32*, i32) #1

declare dso_local %struct.wildcard_list* @xmalloc(i32) #1

declare dso_local i32 @lang_add_wild(i32*, %struct.wildcard_list*, i32) #1

declare dso_local i32 @lang_leave_output_section_statement(i32, i8*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
