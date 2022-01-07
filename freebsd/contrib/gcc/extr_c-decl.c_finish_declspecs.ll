; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-decl.c_finish_declspecs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-decl.c_finish_declspecs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.c_declspecs = type { i64, i32, i32, i64, i64, i64, i64, i64, i64, i64 }

@NULL_TREE = common dso_local global i64 0, align 8
@cts_none = common dso_local global i32 0, align 4
@pedantic = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [68 x i8] c"ISO C does not support plain %<complex%> meaning %<double complex%>\00", align 1
@void_type_node = common dso_local global i64 0, align 8
@boolean_type_node = common dso_local global i64 0, align 8
@signed_char_type_node = common dso_local global i64 0, align 8
@unsigned_char_type_node = common dso_local global i64 0, align 8
@char_type_node = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [45 x i8] c"ISO C does not support complex integer types\00", align 1
@long_long_unsigned_type_node = common dso_local global i64 0, align 8
@long_long_integer_type_node = common dso_local global i64 0, align 8
@long_unsigned_type_node = common dso_local global i64 0, align 8
@long_integer_type_node = common dso_local global i64 0, align 8
@short_unsigned_type_node = common dso_local global i64 0, align 8
@short_integer_type_node = common dso_local global i64 0, align 8
@unsigned_type_node = common dso_local global i64 0, align 8
@integer_type_node = common dso_local global i64 0, align 8
@complex_float_type_node = common dso_local global i64 0, align 8
@float_type_node = common dso_local global i64 0, align 8
@complex_long_double_type_node = common dso_local global i64 0, align 8
@long_double_type_node = common dso_local global i64 0, align 8
@complex_double_type_node = common dso_local global i64 0, align 8
@double_type_node = common dso_local global i64 0, align 8
@dfloat32_type_node = common dso_local global i64 0, align 8
@dfloat64_type_node = common dso_local global i64 0, align 8
@dfloat128_type_node = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.c_declspecs* @finish_declspecs(%struct.c_declspecs* %0) #0 {
  %2 = alloca %struct.c_declspecs*, align 8
  %3 = alloca %struct.c_declspecs*, align 8
  store %struct.c_declspecs* %0, %struct.c_declspecs** %3, align 8
  %4 = load %struct.c_declspecs*, %struct.c_declspecs** %3, align 8
  %5 = getelementptr inbounds %struct.c_declspecs, %struct.c_declspecs* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @NULL_TREE, align 8
  %8 = icmp ne i64 %6, %7
  br i1 %8, label %9, label %45

9:                                                ; preds = %1
  %10 = load %struct.c_declspecs*, %struct.c_declspecs** %3, align 8
  %11 = getelementptr inbounds %struct.c_declspecs, %struct.c_declspecs* %10, i32 0, i32 8
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %40, label %14

14:                                               ; preds = %9
  %15 = load %struct.c_declspecs*, %struct.c_declspecs** %3, align 8
  %16 = getelementptr inbounds %struct.c_declspecs, %struct.c_declspecs* %15, i32 0, i32 7
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %40, label %19

19:                                               ; preds = %14
  %20 = load %struct.c_declspecs*, %struct.c_declspecs** %3, align 8
  %21 = getelementptr inbounds %struct.c_declspecs, %struct.c_declspecs* %20, i32 0, i32 6
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %40, label %24

24:                                               ; preds = %19
  %25 = load %struct.c_declspecs*, %struct.c_declspecs** %3, align 8
  %26 = getelementptr inbounds %struct.c_declspecs, %struct.c_declspecs* %25, i32 0, i32 5
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %40, label %29

29:                                               ; preds = %24
  %30 = load %struct.c_declspecs*, %struct.c_declspecs** %3, align 8
  %31 = getelementptr inbounds %struct.c_declspecs, %struct.c_declspecs* %30, i32 0, i32 4
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %40, label %34

34:                                               ; preds = %29
  %35 = load %struct.c_declspecs*, %struct.c_declspecs** %3, align 8
  %36 = getelementptr inbounds %struct.c_declspecs, %struct.c_declspecs* %35, i32 0, i32 3
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  %39 = xor i1 %38, true
  br label %40

40:                                               ; preds = %34, %29, %24, %19, %14, %9
  %41 = phi i1 [ false, %29 ], [ false, %24 ], [ false, %19 ], [ false, %14 ], [ false, %9 ], [ %39, %34 ]
  %42 = zext i1 %41 to i32
  %43 = call i32 @gcc_assert(i32 %42)
  %44 = load %struct.c_declspecs*, %struct.c_declspecs** %3, align 8
  store %struct.c_declspecs* %44, %struct.c_declspecs** %2, align 8
  br label %510

45:                                               ; preds = %1
  %46 = load %struct.c_declspecs*, %struct.c_declspecs** %3, align 8
  %47 = getelementptr inbounds %struct.c_declspecs, %struct.c_declspecs* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @cts_none, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %94

51:                                               ; preds = %45
  %52 = load %struct.c_declspecs*, %struct.c_declspecs** %3, align 8
  %53 = getelementptr inbounds %struct.c_declspecs, %struct.c_declspecs* %52, i32 0, i32 8
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %71, label %56

56:                                               ; preds = %51
  %57 = load %struct.c_declspecs*, %struct.c_declspecs** %3, align 8
  %58 = getelementptr inbounds %struct.c_declspecs, %struct.c_declspecs* %57, i32 0, i32 6
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %71, label %61

61:                                               ; preds = %56
  %62 = load %struct.c_declspecs*, %struct.c_declspecs** %3, align 8
  %63 = getelementptr inbounds %struct.c_declspecs, %struct.c_declspecs* %62, i32 0, i32 5
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %71, label %66

66:                                               ; preds = %61
  %67 = load %struct.c_declspecs*, %struct.c_declspecs** %3, align 8
  %68 = getelementptr inbounds %struct.c_declspecs, %struct.c_declspecs* %67, i32 0, i32 4
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %66, %61, %56, %51
  %72 = load %struct.c_declspecs*, %struct.c_declspecs** %3, align 8
  %73 = getelementptr inbounds %struct.c_declspecs, %struct.c_declspecs* %72, i32 0, i32 1
  store i32 129, i32* %73, align 8
  br label %93

74:                                               ; preds = %66
  %75 = load %struct.c_declspecs*, %struct.c_declspecs** %3, align 8
  %76 = getelementptr inbounds %struct.c_declspecs, %struct.c_declspecs* %75, i32 0, i32 3
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %87

79:                                               ; preds = %74
  %80 = load %struct.c_declspecs*, %struct.c_declspecs** %3, align 8
  %81 = getelementptr inbounds %struct.c_declspecs, %struct.c_declspecs* %80, i32 0, i32 1
  store i32 131, i32* %81, align 8
  %82 = load i64, i64* @pedantic, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %79
  %85 = call i32 @pedwarn(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str, i64 0, i64 0))
  br label %86

86:                                               ; preds = %84, %79
  br label %92

87:                                               ; preds = %74
  %88 = load %struct.c_declspecs*, %struct.c_declspecs** %3, align 8
  %89 = getelementptr inbounds %struct.c_declspecs, %struct.c_declspecs* %88, i32 0, i32 1
  store i32 129, i32* %89, align 8
  %90 = load %struct.c_declspecs*, %struct.c_declspecs** %3, align 8
  %91 = getelementptr inbounds %struct.c_declspecs, %struct.c_declspecs* %90, i32 0, i32 2
  store i32 1, i32* %91, align 4
  br label %92

92:                                               ; preds = %87, %86
  br label %93

93:                                               ; preds = %92, %71
  br label %94

94:                                               ; preds = %93, %45
  %95 = load %struct.c_declspecs*, %struct.c_declspecs** %3, align 8
  %96 = getelementptr inbounds %struct.c_declspecs, %struct.c_declspecs* %95, i32 0, i32 5
  %97 = load i64, i64* %96, align 8
  %98 = load %struct.c_declspecs*, %struct.c_declspecs** %3, align 8
  %99 = getelementptr inbounds %struct.c_declspecs, %struct.c_declspecs* %98, i32 0, i32 9
  store i64 %97, i64* %99, align 8
  %100 = load %struct.c_declspecs*, %struct.c_declspecs** %3, align 8
  %101 = getelementptr inbounds %struct.c_declspecs, %struct.c_declspecs* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 8
  switch i32 %102, label %506 [
    i32 128, label %103
    i32 136, label %136
    i32 135, label %169
    i32 129, label %239
    i32 130, label %355
    i32 131, label %392
    i32 133, label %448
    i32 132, label %448
    i32 134, label %448
  ]

103:                                              ; preds = %94
  %104 = load %struct.c_declspecs*, %struct.c_declspecs** %3, align 8
  %105 = getelementptr inbounds %struct.c_declspecs, %struct.c_declspecs* %104, i32 0, i32 8
  %106 = load i64, i64* %105, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %129, label %108

108:                                              ; preds = %103
  %109 = load %struct.c_declspecs*, %struct.c_declspecs** %3, align 8
  %110 = getelementptr inbounds %struct.c_declspecs, %struct.c_declspecs* %109, i32 0, i32 6
  %111 = load i64, i64* %110, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %129, label %113

113:                                              ; preds = %108
  %114 = load %struct.c_declspecs*, %struct.c_declspecs** %3, align 8
  %115 = getelementptr inbounds %struct.c_declspecs, %struct.c_declspecs* %114, i32 0, i32 5
  %116 = load i64, i64* %115, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %129, label %118

118:                                              ; preds = %113
  %119 = load %struct.c_declspecs*, %struct.c_declspecs** %3, align 8
  %120 = getelementptr inbounds %struct.c_declspecs, %struct.c_declspecs* %119, i32 0, i32 4
  %121 = load i64, i64* %120, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %129, label %123

123:                                              ; preds = %118
  %124 = load %struct.c_declspecs*, %struct.c_declspecs** %3, align 8
  %125 = getelementptr inbounds %struct.c_declspecs, %struct.c_declspecs* %124, i32 0, i32 3
  %126 = load i64, i64* %125, align 8
  %127 = icmp ne i64 %126, 0
  %128 = xor i1 %127, true
  br label %129

129:                                              ; preds = %123, %118, %113, %108, %103
  %130 = phi i1 [ false, %118 ], [ false, %113 ], [ false, %108 ], [ false, %103 ], [ %128, %123 ]
  %131 = zext i1 %130 to i32
  %132 = call i32 @gcc_assert(i32 %131)
  %133 = load i64, i64* @void_type_node, align 8
  %134 = load %struct.c_declspecs*, %struct.c_declspecs** %3, align 8
  %135 = getelementptr inbounds %struct.c_declspecs, %struct.c_declspecs* %134, i32 0, i32 0
  store i64 %133, i64* %135, align 8
  br label %508

136:                                              ; preds = %94
  %137 = load %struct.c_declspecs*, %struct.c_declspecs** %3, align 8
  %138 = getelementptr inbounds %struct.c_declspecs, %struct.c_declspecs* %137, i32 0, i32 8
  %139 = load i64, i64* %138, align 8
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %162, label %141

141:                                              ; preds = %136
  %142 = load %struct.c_declspecs*, %struct.c_declspecs** %3, align 8
  %143 = getelementptr inbounds %struct.c_declspecs, %struct.c_declspecs* %142, i32 0, i32 6
  %144 = load i64, i64* %143, align 8
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %162, label %146

146:                                              ; preds = %141
  %147 = load %struct.c_declspecs*, %struct.c_declspecs** %3, align 8
  %148 = getelementptr inbounds %struct.c_declspecs, %struct.c_declspecs* %147, i32 0, i32 5
  %149 = load i64, i64* %148, align 8
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %162, label %151

151:                                              ; preds = %146
  %152 = load %struct.c_declspecs*, %struct.c_declspecs** %3, align 8
  %153 = getelementptr inbounds %struct.c_declspecs, %struct.c_declspecs* %152, i32 0, i32 4
  %154 = load i64, i64* %153, align 8
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %162, label %156

156:                                              ; preds = %151
  %157 = load %struct.c_declspecs*, %struct.c_declspecs** %3, align 8
  %158 = getelementptr inbounds %struct.c_declspecs, %struct.c_declspecs* %157, i32 0, i32 3
  %159 = load i64, i64* %158, align 8
  %160 = icmp ne i64 %159, 0
  %161 = xor i1 %160, true
  br label %162

162:                                              ; preds = %156, %151, %146, %141, %136
  %163 = phi i1 [ false, %151 ], [ false, %146 ], [ false, %141 ], [ false, %136 ], [ %161, %156 ]
  %164 = zext i1 %163 to i32
  %165 = call i32 @gcc_assert(i32 %164)
  %166 = load i64, i64* @boolean_type_node, align 8
  %167 = load %struct.c_declspecs*, %struct.c_declspecs** %3, align 8
  %168 = getelementptr inbounds %struct.c_declspecs, %struct.c_declspecs* %167, i32 0, i32 0
  store i64 %166, i64* %168, align 8
  br label %508

169:                                              ; preds = %94
  %170 = load %struct.c_declspecs*, %struct.c_declspecs** %3, align 8
  %171 = getelementptr inbounds %struct.c_declspecs, %struct.c_declspecs* %170, i32 0, i32 8
  %172 = load i64, i64* %171, align 8
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %180, label %174

174:                                              ; preds = %169
  %175 = load %struct.c_declspecs*, %struct.c_declspecs** %3, align 8
  %176 = getelementptr inbounds %struct.c_declspecs, %struct.c_declspecs* %175, i32 0, i32 6
  %177 = load i64, i64* %176, align 8
  %178 = icmp ne i64 %177, 0
  %179 = xor i1 %178, true
  br label %180

180:                                              ; preds = %174, %169
  %181 = phi i1 [ false, %169 ], [ %179, %174 ]
  %182 = zext i1 %181 to i32
  %183 = call i32 @gcc_assert(i32 %182)
  %184 = load %struct.c_declspecs*, %struct.c_declspecs** %3, align 8
  %185 = getelementptr inbounds %struct.c_declspecs, %struct.c_declspecs* %184, i32 0, i32 5
  %186 = load i64, i64* %185, align 8
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %188, label %193

188:                                              ; preds = %180
  %189 = load %struct.c_declspecs*, %struct.c_declspecs** %3, align 8
  %190 = getelementptr inbounds %struct.c_declspecs, %struct.c_declspecs* %189, i32 0, i32 4
  %191 = load i64, i64* %190, align 8
  %192 = icmp ne i64 %191, 0
  br label %193

193:                                              ; preds = %188, %180
  %194 = phi i1 [ false, %180 ], [ %192, %188 ]
  %195 = xor i1 %194, true
  %196 = zext i1 %195 to i32
  %197 = call i32 @gcc_assert(i32 %196)
  %198 = load %struct.c_declspecs*, %struct.c_declspecs** %3, align 8
  %199 = getelementptr inbounds %struct.c_declspecs, %struct.c_declspecs* %198, i32 0, i32 5
  %200 = load i64, i64* %199, align 8
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %202, label %206

202:                                              ; preds = %193
  %203 = load i64, i64* @signed_char_type_node, align 8
  %204 = load %struct.c_declspecs*, %struct.c_declspecs** %3, align 8
  %205 = getelementptr inbounds %struct.c_declspecs, %struct.c_declspecs* %204, i32 0, i32 0
  store i64 %203, i64* %205, align 8
  br label %220

206:                                              ; preds = %193
  %207 = load %struct.c_declspecs*, %struct.c_declspecs** %3, align 8
  %208 = getelementptr inbounds %struct.c_declspecs, %struct.c_declspecs* %207, i32 0, i32 4
  %209 = load i64, i64* %208, align 8
  %210 = icmp ne i64 %209, 0
  br i1 %210, label %211, label %215

211:                                              ; preds = %206
  %212 = load i64, i64* @unsigned_char_type_node, align 8
  %213 = load %struct.c_declspecs*, %struct.c_declspecs** %3, align 8
  %214 = getelementptr inbounds %struct.c_declspecs, %struct.c_declspecs* %213, i32 0, i32 0
  store i64 %212, i64* %214, align 8
  br label %219

215:                                              ; preds = %206
  %216 = load i64, i64* @char_type_node, align 8
  %217 = load %struct.c_declspecs*, %struct.c_declspecs** %3, align 8
  %218 = getelementptr inbounds %struct.c_declspecs, %struct.c_declspecs* %217, i32 0, i32 0
  store i64 %216, i64* %218, align 8
  br label %219

219:                                              ; preds = %215, %211
  br label %220

220:                                              ; preds = %219, %202
  %221 = load %struct.c_declspecs*, %struct.c_declspecs** %3, align 8
  %222 = getelementptr inbounds %struct.c_declspecs, %struct.c_declspecs* %221, i32 0, i32 3
  %223 = load i64, i64* %222, align 8
  %224 = icmp ne i64 %223, 0
  br i1 %224, label %225, label %238

225:                                              ; preds = %220
  %226 = load i64, i64* @pedantic, align 8
  %227 = icmp ne i64 %226, 0
  br i1 %227, label %228, label %230

228:                                              ; preds = %225
  %229 = call i32 @pedwarn(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  br label %230

230:                                              ; preds = %228, %225
  %231 = load %struct.c_declspecs*, %struct.c_declspecs** %3, align 8
  %232 = getelementptr inbounds %struct.c_declspecs, %struct.c_declspecs* %231, i32 0, i32 0
  %233 = load i64, i64* %232, align 8
  %234 = call i8* @build_complex_type(i64 %233)
  %235 = ptrtoint i8* %234 to i64
  %236 = load %struct.c_declspecs*, %struct.c_declspecs** %3, align 8
  %237 = getelementptr inbounds %struct.c_declspecs, %struct.c_declspecs* %236, i32 0, i32 0
  store i64 %235, i64* %237, align 8
  br label %238

238:                                              ; preds = %230, %220
  br label %508

239:                                              ; preds = %94
  %240 = load %struct.c_declspecs*, %struct.c_declspecs** %3, align 8
  %241 = getelementptr inbounds %struct.c_declspecs, %struct.c_declspecs* %240, i32 0, i32 8
  %242 = load i64, i64* %241, align 8
  %243 = icmp ne i64 %242, 0
  br i1 %243, label %244, label %249

244:                                              ; preds = %239
  %245 = load %struct.c_declspecs*, %struct.c_declspecs** %3, align 8
  %246 = getelementptr inbounds %struct.c_declspecs, %struct.c_declspecs* %245, i32 0, i32 6
  %247 = load i64, i64* %246, align 8
  %248 = icmp ne i64 %247, 0
  br label %249

249:                                              ; preds = %244, %239
  %250 = phi i1 [ false, %239 ], [ %248, %244 ]
  %251 = xor i1 %250, true
  %252 = zext i1 %251 to i32
  %253 = call i32 @gcc_assert(i32 %252)
  %254 = load %struct.c_declspecs*, %struct.c_declspecs** %3, align 8
  %255 = getelementptr inbounds %struct.c_declspecs, %struct.c_declspecs* %254, i32 0, i32 5
  %256 = load i64, i64* %255, align 8
  %257 = icmp ne i64 %256, 0
  br i1 %257, label %258, label %263

258:                                              ; preds = %249
  %259 = load %struct.c_declspecs*, %struct.c_declspecs** %3, align 8
  %260 = getelementptr inbounds %struct.c_declspecs, %struct.c_declspecs* %259, i32 0, i32 4
  %261 = load i64, i64* %260, align 8
  %262 = icmp ne i64 %261, 0
  br label %263

263:                                              ; preds = %258, %249
  %264 = phi i1 [ false, %249 ], [ %262, %258 ]
  %265 = xor i1 %264, true
  %266 = zext i1 %265 to i32
  %267 = call i32 @gcc_assert(i32 %266)
  %268 = load %struct.c_declspecs*, %struct.c_declspecs** %3, align 8
  %269 = getelementptr inbounds %struct.c_declspecs, %struct.c_declspecs* %268, i32 0, i32 7
  %270 = load i64, i64* %269, align 8
  %271 = icmp ne i64 %270, 0
  br i1 %271, label %272, label %285

272:                                              ; preds = %263
  %273 = load %struct.c_declspecs*, %struct.c_declspecs** %3, align 8
  %274 = getelementptr inbounds %struct.c_declspecs, %struct.c_declspecs* %273, i32 0, i32 4
  %275 = load i64, i64* %274, align 8
  %276 = icmp ne i64 %275, 0
  br i1 %276, label %277, label %279

277:                                              ; preds = %272
  %278 = load i64, i64* @long_long_unsigned_type_node, align 8
  br label %281

279:                                              ; preds = %272
  %280 = load i64, i64* @long_long_integer_type_node, align 8
  br label %281

281:                                              ; preds = %279, %277
  %282 = phi i64 [ %278, %277 ], [ %280, %279 ]
  %283 = load %struct.c_declspecs*, %struct.c_declspecs** %3, align 8
  %284 = getelementptr inbounds %struct.c_declspecs, %struct.c_declspecs* %283, i32 0, i32 0
  store i64 %282, i64* %284, align 8
  br label %336

285:                                              ; preds = %263
  %286 = load %struct.c_declspecs*, %struct.c_declspecs** %3, align 8
  %287 = getelementptr inbounds %struct.c_declspecs, %struct.c_declspecs* %286, i32 0, i32 8
  %288 = load i64, i64* %287, align 8
  %289 = icmp ne i64 %288, 0
  br i1 %289, label %290, label %303

290:                                              ; preds = %285
  %291 = load %struct.c_declspecs*, %struct.c_declspecs** %3, align 8
  %292 = getelementptr inbounds %struct.c_declspecs, %struct.c_declspecs* %291, i32 0, i32 4
  %293 = load i64, i64* %292, align 8
  %294 = icmp ne i64 %293, 0
  br i1 %294, label %295, label %297

295:                                              ; preds = %290
  %296 = load i64, i64* @long_unsigned_type_node, align 8
  br label %299

297:                                              ; preds = %290
  %298 = load i64, i64* @long_integer_type_node, align 8
  br label %299

299:                                              ; preds = %297, %295
  %300 = phi i64 [ %296, %295 ], [ %298, %297 ]
  %301 = load %struct.c_declspecs*, %struct.c_declspecs** %3, align 8
  %302 = getelementptr inbounds %struct.c_declspecs, %struct.c_declspecs* %301, i32 0, i32 0
  store i64 %300, i64* %302, align 8
  br label %335

303:                                              ; preds = %285
  %304 = load %struct.c_declspecs*, %struct.c_declspecs** %3, align 8
  %305 = getelementptr inbounds %struct.c_declspecs, %struct.c_declspecs* %304, i32 0, i32 6
  %306 = load i64, i64* %305, align 8
  %307 = icmp ne i64 %306, 0
  br i1 %307, label %308, label %321

308:                                              ; preds = %303
  %309 = load %struct.c_declspecs*, %struct.c_declspecs** %3, align 8
  %310 = getelementptr inbounds %struct.c_declspecs, %struct.c_declspecs* %309, i32 0, i32 4
  %311 = load i64, i64* %310, align 8
  %312 = icmp ne i64 %311, 0
  br i1 %312, label %313, label %315

313:                                              ; preds = %308
  %314 = load i64, i64* @short_unsigned_type_node, align 8
  br label %317

315:                                              ; preds = %308
  %316 = load i64, i64* @short_integer_type_node, align 8
  br label %317

317:                                              ; preds = %315, %313
  %318 = phi i64 [ %314, %313 ], [ %316, %315 ]
  %319 = load %struct.c_declspecs*, %struct.c_declspecs** %3, align 8
  %320 = getelementptr inbounds %struct.c_declspecs, %struct.c_declspecs* %319, i32 0, i32 0
  store i64 %318, i64* %320, align 8
  br label %334

321:                                              ; preds = %303
  %322 = load %struct.c_declspecs*, %struct.c_declspecs** %3, align 8
  %323 = getelementptr inbounds %struct.c_declspecs, %struct.c_declspecs* %322, i32 0, i32 4
  %324 = load i64, i64* %323, align 8
  %325 = icmp ne i64 %324, 0
  br i1 %325, label %326, label %328

326:                                              ; preds = %321
  %327 = load i64, i64* @unsigned_type_node, align 8
  br label %330

328:                                              ; preds = %321
  %329 = load i64, i64* @integer_type_node, align 8
  br label %330

330:                                              ; preds = %328, %326
  %331 = phi i64 [ %327, %326 ], [ %329, %328 ]
  %332 = load %struct.c_declspecs*, %struct.c_declspecs** %3, align 8
  %333 = getelementptr inbounds %struct.c_declspecs, %struct.c_declspecs* %332, i32 0, i32 0
  store i64 %331, i64* %333, align 8
  br label %334

334:                                              ; preds = %330, %317
  br label %335

335:                                              ; preds = %334, %299
  br label %336

336:                                              ; preds = %335, %281
  %337 = load %struct.c_declspecs*, %struct.c_declspecs** %3, align 8
  %338 = getelementptr inbounds %struct.c_declspecs, %struct.c_declspecs* %337, i32 0, i32 3
  %339 = load i64, i64* %338, align 8
  %340 = icmp ne i64 %339, 0
  br i1 %340, label %341, label %354

341:                                              ; preds = %336
  %342 = load i64, i64* @pedantic, align 8
  %343 = icmp ne i64 %342, 0
  br i1 %343, label %344, label %346

344:                                              ; preds = %341
  %345 = call i32 @pedwarn(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  br label %346

346:                                              ; preds = %344, %341
  %347 = load %struct.c_declspecs*, %struct.c_declspecs** %3, align 8
  %348 = getelementptr inbounds %struct.c_declspecs, %struct.c_declspecs* %347, i32 0, i32 0
  %349 = load i64, i64* %348, align 8
  %350 = call i8* @build_complex_type(i64 %349)
  %351 = ptrtoint i8* %350 to i64
  %352 = load %struct.c_declspecs*, %struct.c_declspecs** %3, align 8
  %353 = getelementptr inbounds %struct.c_declspecs, %struct.c_declspecs* %352, i32 0, i32 0
  store i64 %351, i64* %353, align 8
  br label %354

354:                                              ; preds = %346, %336
  br label %508

355:                                              ; preds = %94
  %356 = load %struct.c_declspecs*, %struct.c_declspecs** %3, align 8
  %357 = getelementptr inbounds %struct.c_declspecs, %struct.c_declspecs* %356, i32 0, i32 8
  %358 = load i64, i64* %357, align 8
  %359 = icmp ne i64 %358, 0
  br i1 %359, label %376, label %360

360:                                              ; preds = %355
  %361 = load %struct.c_declspecs*, %struct.c_declspecs** %3, align 8
  %362 = getelementptr inbounds %struct.c_declspecs, %struct.c_declspecs* %361, i32 0, i32 6
  %363 = load i64, i64* %362, align 8
  %364 = icmp ne i64 %363, 0
  br i1 %364, label %376, label %365

365:                                              ; preds = %360
  %366 = load %struct.c_declspecs*, %struct.c_declspecs** %3, align 8
  %367 = getelementptr inbounds %struct.c_declspecs, %struct.c_declspecs* %366, i32 0, i32 5
  %368 = load i64, i64* %367, align 8
  %369 = icmp ne i64 %368, 0
  br i1 %369, label %376, label %370

370:                                              ; preds = %365
  %371 = load %struct.c_declspecs*, %struct.c_declspecs** %3, align 8
  %372 = getelementptr inbounds %struct.c_declspecs, %struct.c_declspecs* %371, i32 0, i32 4
  %373 = load i64, i64* %372, align 8
  %374 = icmp ne i64 %373, 0
  %375 = xor i1 %374, true
  br label %376

376:                                              ; preds = %370, %365, %360, %355
  %377 = phi i1 [ false, %365 ], [ false, %360 ], [ false, %355 ], [ %375, %370 ]
  %378 = zext i1 %377 to i32
  %379 = call i32 @gcc_assert(i32 %378)
  %380 = load %struct.c_declspecs*, %struct.c_declspecs** %3, align 8
  %381 = getelementptr inbounds %struct.c_declspecs, %struct.c_declspecs* %380, i32 0, i32 3
  %382 = load i64, i64* %381, align 8
  %383 = icmp ne i64 %382, 0
  br i1 %383, label %384, label %386

384:                                              ; preds = %376
  %385 = load i64, i64* @complex_float_type_node, align 8
  br label %388

386:                                              ; preds = %376
  %387 = load i64, i64* @float_type_node, align 8
  br label %388

388:                                              ; preds = %386, %384
  %389 = phi i64 [ %385, %384 ], [ %387, %386 ]
  %390 = load %struct.c_declspecs*, %struct.c_declspecs** %3, align 8
  %391 = getelementptr inbounds %struct.c_declspecs, %struct.c_declspecs* %390, i32 0, i32 0
  store i64 %389, i64* %391, align 8
  br label %508

392:                                              ; preds = %94
  %393 = load %struct.c_declspecs*, %struct.c_declspecs** %3, align 8
  %394 = getelementptr inbounds %struct.c_declspecs, %struct.c_declspecs* %393, i32 0, i32 7
  %395 = load i64, i64* %394, align 8
  %396 = icmp ne i64 %395, 0
  br i1 %396, label %413, label %397

397:                                              ; preds = %392
  %398 = load %struct.c_declspecs*, %struct.c_declspecs** %3, align 8
  %399 = getelementptr inbounds %struct.c_declspecs, %struct.c_declspecs* %398, i32 0, i32 6
  %400 = load i64, i64* %399, align 8
  %401 = icmp ne i64 %400, 0
  br i1 %401, label %413, label %402

402:                                              ; preds = %397
  %403 = load %struct.c_declspecs*, %struct.c_declspecs** %3, align 8
  %404 = getelementptr inbounds %struct.c_declspecs, %struct.c_declspecs* %403, i32 0, i32 5
  %405 = load i64, i64* %404, align 8
  %406 = icmp ne i64 %405, 0
  br i1 %406, label %413, label %407

407:                                              ; preds = %402
  %408 = load %struct.c_declspecs*, %struct.c_declspecs** %3, align 8
  %409 = getelementptr inbounds %struct.c_declspecs, %struct.c_declspecs* %408, i32 0, i32 4
  %410 = load i64, i64* %409, align 8
  %411 = icmp ne i64 %410, 0
  %412 = xor i1 %411, true
  br label %413

413:                                              ; preds = %407, %402, %397, %392
  %414 = phi i1 [ false, %402 ], [ false, %397 ], [ false, %392 ], [ %412, %407 ]
  %415 = zext i1 %414 to i32
  %416 = call i32 @gcc_assert(i32 %415)
  %417 = load %struct.c_declspecs*, %struct.c_declspecs** %3, align 8
  %418 = getelementptr inbounds %struct.c_declspecs, %struct.c_declspecs* %417, i32 0, i32 8
  %419 = load i64, i64* %418, align 8
  %420 = icmp ne i64 %419, 0
  br i1 %420, label %421, label %434

421:                                              ; preds = %413
  %422 = load %struct.c_declspecs*, %struct.c_declspecs** %3, align 8
  %423 = getelementptr inbounds %struct.c_declspecs, %struct.c_declspecs* %422, i32 0, i32 3
  %424 = load i64, i64* %423, align 8
  %425 = icmp ne i64 %424, 0
  br i1 %425, label %426, label %428

426:                                              ; preds = %421
  %427 = load i64, i64* @complex_long_double_type_node, align 8
  br label %430

428:                                              ; preds = %421
  %429 = load i64, i64* @long_double_type_node, align 8
  br label %430

430:                                              ; preds = %428, %426
  %431 = phi i64 [ %427, %426 ], [ %429, %428 ]
  %432 = load %struct.c_declspecs*, %struct.c_declspecs** %3, align 8
  %433 = getelementptr inbounds %struct.c_declspecs, %struct.c_declspecs* %432, i32 0, i32 0
  store i64 %431, i64* %433, align 8
  br label %447

434:                                              ; preds = %413
  %435 = load %struct.c_declspecs*, %struct.c_declspecs** %3, align 8
  %436 = getelementptr inbounds %struct.c_declspecs, %struct.c_declspecs* %435, i32 0, i32 3
  %437 = load i64, i64* %436, align 8
  %438 = icmp ne i64 %437, 0
  br i1 %438, label %439, label %441

439:                                              ; preds = %434
  %440 = load i64, i64* @complex_double_type_node, align 8
  br label %443

441:                                              ; preds = %434
  %442 = load i64, i64* @double_type_node, align 8
  br label %443

443:                                              ; preds = %441, %439
  %444 = phi i64 [ %440, %439 ], [ %442, %441 ]
  %445 = load %struct.c_declspecs*, %struct.c_declspecs** %3, align 8
  %446 = getelementptr inbounds %struct.c_declspecs, %struct.c_declspecs* %445, i32 0, i32 0
  store i64 %444, i64* %446, align 8
  br label %447

447:                                              ; preds = %443, %430
  br label %508

448:                                              ; preds = %94, %94, %94
  %449 = load %struct.c_declspecs*, %struct.c_declspecs** %3, align 8
  %450 = getelementptr inbounds %struct.c_declspecs, %struct.c_declspecs* %449, i32 0, i32 8
  %451 = load i64, i64* %450, align 8
  %452 = icmp ne i64 %451, 0
  br i1 %452, label %479, label %453

453:                                              ; preds = %448
  %454 = load %struct.c_declspecs*, %struct.c_declspecs** %3, align 8
  %455 = getelementptr inbounds %struct.c_declspecs, %struct.c_declspecs* %454, i32 0, i32 7
  %456 = load i64, i64* %455, align 8
  %457 = icmp ne i64 %456, 0
  br i1 %457, label %479, label %458

458:                                              ; preds = %453
  %459 = load %struct.c_declspecs*, %struct.c_declspecs** %3, align 8
  %460 = getelementptr inbounds %struct.c_declspecs, %struct.c_declspecs* %459, i32 0, i32 6
  %461 = load i64, i64* %460, align 8
  %462 = icmp ne i64 %461, 0
  br i1 %462, label %479, label %463

463:                                              ; preds = %458
  %464 = load %struct.c_declspecs*, %struct.c_declspecs** %3, align 8
  %465 = getelementptr inbounds %struct.c_declspecs, %struct.c_declspecs* %464, i32 0, i32 5
  %466 = load i64, i64* %465, align 8
  %467 = icmp ne i64 %466, 0
  br i1 %467, label %479, label %468

468:                                              ; preds = %463
  %469 = load %struct.c_declspecs*, %struct.c_declspecs** %3, align 8
  %470 = getelementptr inbounds %struct.c_declspecs, %struct.c_declspecs* %469, i32 0, i32 4
  %471 = load i64, i64* %470, align 8
  %472 = icmp ne i64 %471, 0
  br i1 %472, label %479, label %473

473:                                              ; preds = %468
  %474 = load %struct.c_declspecs*, %struct.c_declspecs** %3, align 8
  %475 = getelementptr inbounds %struct.c_declspecs, %struct.c_declspecs* %474, i32 0, i32 3
  %476 = load i64, i64* %475, align 8
  %477 = icmp ne i64 %476, 0
  %478 = xor i1 %477, true
  br label %479

479:                                              ; preds = %473, %468, %463, %458, %453, %448
  %480 = phi i1 [ false, %468 ], [ false, %463 ], [ false, %458 ], [ false, %453 ], [ false, %448 ], [ %478, %473 ]
  %481 = zext i1 %480 to i32
  %482 = call i32 @gcc_assert(i32 %481)
  %483 = load %struct.c_declspecs*, %struct.c_declspecs** %3, align 8
  %484 = getelementptr inbounds %struct.c_declspecs, %struct.c_declspecs* %483, i32 0, i32 1
  %485 = load i32, i32* %484, align 8
  %486 = icmp eq i32 %485, 133
  br i1 %486, label %487, label %491

487:                                              ; preds = %479
  %488 = load i64, i64* @dfloat32_type_node, align 8
  %489 = load %struct.c_declspecs*, %struct.c_declspecs** %3, align 8
  %490 = getelementptr inbounds %struct.c_declspecs, %struct.c_declspecs* %489, i32 0, i32 0
  store i64 %488, i64* %490, align 8
  br label %505

491:                                              ; preds = %479
  %492 = load %struct.c_declspecs*, %struct.c_declspecs** %3, align 8
  %493 = getelementptr inbounds %struct.c_declspecs, %struct.c_declspecs* %492, i32 0, i32 1
  %494 = load i32, i32* %493, align 8
  %495 = icmp eq i32 %494, 132
  br i1 %495, label %496, label %500

496:                                              ; preds = %491
  %497 = load i64, i64* @dfloat64_type_node, align 8
  %498 = load %struct.c_declspecs*, %struct.c_declspecs** %3, align 8
  %499 = getelementptr inbounds %struct.c_declspecs, %struct.c_declspecs* %498, i32 0, i32 0
  store i64 %497, i64* %499, align 8
  br label %504

500:                                              ; preds = %491
  %501 = load i64, i64* @dfloat128_type_node, align 8
  %502 = load %struct.c_declspecs*, %struct.c_declspecs** %3, align 8
  %503 = getelementptr inbounds %struct.c_declspecs, %struct.c_declspecs* %502, i32 0, i32 0
  store i64 %501, i64* %503, align 8
  br label %504

504:                                              ; preds = %500, %496
  br label %505

505:                                              ; preds = %504, %487
  br label %508

506:                                              ; preds = %94
  %507 = call i32 (...) @gcc_unreachable()
  br label %508

508:                                              ; preds = %506, %505, %447, %388, %354, %238, %162, %129
  %509 = load %struct.c_declspecs*, %struct.c_declspecs** %3, align 8
  store %struct.c_declspecs* %509, %struct.c_declspecs** %2, align 8
  br label %510

510:                                              ; preds = %508, %40
  %511 = load %struct.c_declspecs*, %struct.c_declspecs** %2, align 8
  ret %struct.c_declspecs* %511
}

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i32 @pedwarn(i8*) #1

declare dso_local i8* @build_complex_type(i64) #1

declare dso_local i32 @gcc_unreachable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
