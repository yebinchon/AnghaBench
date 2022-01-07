; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_ieee.c_ieee_end_class_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_ieee.c_ieee_end_class_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee_handle = type { %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__*, i64 }
%struct.TYPE_4__ = type { i32, i8*, i8, i32, i32, i32, i64 }

@TRUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@FALSE = common dso_local global i32 0, align 4
@ieee_nn_record = common dso_local global i64 0, align 8
@ieee_atn_record_enum = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @ieee_end_class_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ieee_end_class_type(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.ieee_handle*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = bitcast i8* %6 to %struct.ieee_handle*
  store %struct.ieee_handle* %7, %struct.ieee_handle** %4, align 8
  %8 = load %struct.ieee_handle*, %struct.ieee_handle** %4, align 8
  %9 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %8, i32 0, i32 0
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %11 = icmp ne %struct.TYPE_6__* %10, null
  br i1 %11, label %12, label %20

12:                                               ; preds = %1
  %13 = load %struct.ieee_handle*, %struct.ieee_handle** %4, align 8
  %14 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %13, i32 0, i32 0
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = icmp ne %struct.TYPE_4__* %18, null
  br label %20

20:                                               ; preds = %12, %1
  %21 = phi i1 [ false, %1 ], [ %19, %12 ]
  %22 = zext i1 %21 to i32
  %23 = call i32 @assert(i32 %22)
  %24 = load %struct.ieee_handle*, %struct.ieee_handle** %4, align 8
  %25 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %24, i32 0, i32 0
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %20
  %32 = load i32, i32* @TRUE, align 4
  store i32 %32, i32* %2, align 4
  br label %250

33:                                               ; preds = %20
  %34 = load %struct.ieee_handle*, %struct.ieee_handle** %4, align 8
  %35 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %34, i32 0, i32 0
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  store i32 %41, i32* %5, align 4
  %42 = load %struct.ieee_handle*, %struct.ieee_handle** %4, align 8
  %43 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %42, i32 0, i32 0
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 1
  %49 = load i8*, i8** %48, align 8
  %50 = icmp ne i8* %49, null
  br i1 %50, label %61, label %51

51:                                               ; preds = %33
  %52 = load %struct.ieee_handle*, %struct.ieee_handle** %4, align 8
  %53 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %52, i32 0, i32 0
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 6
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %148

61:                                               ; preds = %51, %33
  %62 = load %struct.ieee_handle*, %struct.ieee_handle** %4, align 8
  %63 = load %struct.ieee_handle*, %struct.ieee_handle** %4, align 8
  %64 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %63, i32 0, i32 0
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 5
  %70 = call i32 @ieee_change_buffer(%struct.ieee_handle* %62, i32* %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %95

72:                                               ; preds = %61
  %73 = load %struct.ieee_handle*, %struct.ieee_handle** %4, align 8
  %74 = load i32, i32* %5, align 4
  %75 = call i32 @ieee_write_asn(%struct.ieee_handle* %73, i32 %74, i8 signext 122)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %95

77:                                               ; preds = %72
  %78 = load %struct.ieee_handle*, %struct.ieee_handle** %4, align 8
  %79 = load i32, i32* %5, align 4
  %80 = call i32 @ieee_write_atn65(%struct.ieee_handle* %78, i32 %79, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %95

82:                                               ; preds = %77
  %83 = load %struct.ieee_handle*, %struct.ieee_handle** %4, align 8
  %84 = load i32, i32* %5, align 4
  %85 = load %struct.ieee_handle*, %struct.ieee_handle** %4, align 8
  %86 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %85, i32 0, i32 0
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 0
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 2
  %92 = load i8, i8* %91, align 8
  %93 = call i32 @ieee_write_asn(%struct.ieee_handle* %83, i32 %84, i8 signext %92)
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %97, label %95

95:                                               ; preds = %82, %77, %72, %61
  %96 = load i32, i32* @FALSE, align 4
  store i32 %96, i32* %2, align 4
  br label %250

97:                                               ; preds = %82
  %98 = load %struct.ieee_handle*, %struct.ieee_handle** %4, align 8
  %99 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %98, i32 0, i32 0
  %100 = load %struct.TYPE_6__*, %struct.TYPE_6__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 0
  %103 = load %struct.TYPE_4__*, %struct.TYPE_4__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 6
  %105 = load i64, i64* %104, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %115

107:                                              ; preds = %97
  %108 = load %struct.ieee_handle*, %struct.ieee_handle** %4, align 8
  %109 = load i32, i32* %5, align 4
  %110 = call i32 @ieee_write_atn65(%struct.ieee_handle* %108, i32 %109, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %114, label %112

112:                                              ; preds = %107
  %113 = load i32, i32* @FALSE, align 4
  store i32 %113, i32* %2, align 4
  br label %250

114:                                              ; preds = %107
  br label %131

115:                                              ; preds = %97
  %116 = load %struct.ieee_handle*, %struct.ieee_handle** %4, align 8
  %117 = load i32, i32* %5, align 4
  %118 = load %struct.ieee_handle*, %struct.ieee_handle** %4, align 8
  %119 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %118, i32 0, i32 0
  %120 = load %struct.TYPE_6__*, %struct.TYPE_6__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %121, i32 0, i32 0
  %123 = load %struct.TYPE_4__*, %struct.TYPE_4__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 1
  %125 = load i8*, i8** %124, align 8
  %126 = call i32 @ieee_write_atn65(%struct.ieee_handle* %116, i32 %117, i8* %125)
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %130, label %128

128:                                              ; preds = %115
  %129 = load i32, i32* @FALSE, align 4
  store i32 %129, i32* %2, align 4
  br label %250

130:                                              ; preds = %115
  br label %131

131:                                              ; preds = %130, %114
  %132 = load %struct.ieee_handle*, %struct.ieee_handle** %4, align 8
  %133 = load i32, i32* %5, align 4
  %134 = call i32 @ieee_write_asn(%struct.ieee_handle* %132, i32 %133, i8 signext 0)
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %138, label %136

136:                                              ; preds = %131
  %137 = load i32, i32* @FALSE, align 4
  store i32 %137, i32* %2, align 4
  br label %250

138:                                              ; preds = %131
  %139 = load %struct.ieee_handle*, %struct.ieee_handle** %4, align 8
  %140 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %139, i32 0, i32 0
  %141 = load %struct.TYPE_6__*, %struct.TYPE_6__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %142, i32 0, i32 0
  %144 = load %struct.TYPE_4__*, %struct.TYPE_4__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %144, i32 0, i32 3
  %146 = load i32, i32* %145, align 4
  %147 = add nsw i32 %146, 5
  store i32 %147, i32* %145, align 4
  br label %148

148:                                              ; preds = %138, %51
  %149 = load %struct.ieee_handle*, %struct.ieee_handle** %4, align 8
  %150 = load %struct.ieee_handle*, %struct.ieee_handle** %4, align 8
  %151 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %150, i32 0, i32 1
  %152 = call i32 @ieee_change_buffer(%struct.ieee_handle* %149, i32* %151)
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %204

154:                                              ; preds = %148
  %155 = load %struct.ieee_handle*, %struct.ieee_handle** %4, align 8
  %156 = load i64, i64* @ieee_nn_record, align 8
  %157 = trunc i64 %156 to i32
  %158 = call i32 @ieee_write_byte(%struct.ieee_handle* %155, i32 %157)
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %204

160:                                              ; preds = %154
  %161 = load %struct.ieee_handle*, %struct.ieee_handle** %4, align 8
  %162 = load i32, i32* %5, align 4
  %163 = call i32 @ieee_write_number(%struct.ieee_handle* %161, i32 %162)
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %204

165:                                              ; preds = %160
  %166 = load %struct.ieee_handle*, %struct.ieee_handle** %4, align 8
  %167 = call i32 @ieee_write_id(%struct.ieee_handle* %166, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %204

169:                                              ; preds = %165
  %170 = load %struct.ieee_handle*, %struct.ieee_handle** %4, align 8
  %171 = load i64, i64* @ieee_atn_record_enum, align 8
  %172 = trunc i64 %171 to i32
  %173 = call i32 @ieee_write_2bytes(%struct.ieee_handle* %170, i32 %172)
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %204

175:                                              ; preds = %169
  %176 = load %struct.ieee_handle*, %struct.ieee_handle** %4, align 8
  %177 = load i32, i32* %5, align 4
  %178 = call i32 @ieee_write_number(%struct.ieee_handle* %176, i32 %177)
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %204

180:                                              ; preds = %175
  %181 = load %struct.ieee_handle*, %struct.ieee_handle** %4, align 8
  %182 = call i32 @ieee_write_number(%struct.ieee_handle* %181, i32 0)
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %204

184:                                              ; preds = %180
  %185 = load %struct.ieee_handle*, %struct.ieee_handle** %4, align 8
  %186 = call i32 @ieee_write_number(%struct.ieee_handle* %185, i32 62)
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %204

188:                                              ; preds = %184
  %189 = load %struct.ieee_handle*, %struct.ieee_handle** %4, align 8
  %190 = call i32 @ieee_write_number(%struct.ieee_handle* %189, i32 80)
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %204

192:                                              ; preds = %188
  %193 = load %struct.ieee_handle*, %struct.ieee_handle** %4, align 8
  %194 = load %struct.ieee_handle*, %struct.ieee_handle** %4, align 8
  %195 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %194, i32 0, i32 0
  %196 = load %struct.TYPE_6__*, %struct.TYPE_6__** %195, align 8
  %197 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %196, i32 0, i32 0
  %198 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %197, i32 0, i32 0
  %199 = load %struct.TYPE_4__*, %struct.TYPE_4__** %198, align 8
  %200 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %199, i32 0, i32 3
  %201 = load i32, i32* %200, align 4
  %202 = call i32 @ieee_write_number(%struct.ieee_handle* %193, i32 %201)
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %206, label %204

204:                                              ; preds = %192, %188, %184, %180, %175, %169, %165, %160, %154, %148
  %205 = load i32, i32* @FALSE, align 4
  store i32 %205, i32* %2, align 4
  br label %250

206:                                              ; preds = %192
  %207 = load %struct.ieee_handle*, %struct.ieee_handle** %4, align 8
  %208 = load %struct.ieee_handle*, %struct.ieee_handle** %4, align 8
  %209 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %208, i32 0, i32 1
  %210 = load %struct.ieee_handle*, %struct.ieee_handle** %4, align 8
  %211 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %210, i32 0, i32 0
  %212 = load %struct.TYPE_6__*, %struct.TYPE_6__** %211, align 8
  %213 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %212, i32 0, i32 0
  %214 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %213, i32 0, i32 0
  %215 = load %struct.TYPE_4__*, %struct.TYPE_4__** %214, align 8
  %216 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %215, i32 0, i32 5
  %217 = call i32 @ieee_append_buffer(%struct.ieee_handle* %207, i32* %209, i32* %216)
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %221, label %219

219:                                              ; preds = %206
  %220 = load i32, i32* @FALSE, align 4
  store i32 %220, i32* %2, align 4
  br label %250

221:                                              ; preds = %206
  %222 = load %struct.ieee_handle*, %struct.ieee_handle** %4, align 8
  %223 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %222, i32 0, i32 0
  %224 = load %struct.TYPE_6__*, %struct.TYPE_6__** %223, align 8
  %225 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %224, i32 0, i32 0
  %226 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %225, i32 0, i32 0
  %227 = load %struct.TYPE_4__*, %struct.TYPE_4__** %226, align 8
  %228 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %227, i32 0, i32 4
  %229 = call i32 @ieee_buffer_emptyp(i32* %228)
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %247, label %231

231:                                              ; preds = %221
  %232 = load %struct.ieee_handle*, %struct.ieee_handle** %4, align 8
  %233 = load %struct.ieee_handle*, %struct.ieee_handle** %4, align 8
  %234 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %233, i32 0, i32 1
  %235 = load %struct.ieee_handle*, %struct.ieee_handle** %4, align 8
  %236 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %235, i32 0, i32 0
  %237 = load %struct.TYPE_6__*, %struct.TYPE_6__** %236, align 8
  %238 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %237, i32 0, i32 0
  %239 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %238, i32 0, i32 0
  %240 = load %struct.TYPE_4__*, %struct.TYPE_4__** %239, align 8
  %241 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %240, i32 0, i32 4
  %242 = call i32 @ieee_append_buffer(%struct.ieee_handle* %232, i32* %234, i32* %241)
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %246, label %244

244:                                              ; preds = %231
  %245 = load i32, i32* @FALSE, align 4
  store i32 %245, i32* %2, align 4
  br label %250

246:                                              ; preds = %231
  br label %247

247:                                              ; preds = %246, %221
  %248 = load i8*, i8** %3, align 8
  %249 = call i32 @ieee_end_struct_type(i8* %248)
  store i32 %249, i32* %2, align 4
  br label %250

250:                                              ; preds = %247, %244, %219, %204, %136, %128, %112, %95, %31
  %251 = load i32, i32* %2, align 4
  ret i32 %251
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @ieee_change_buffer(%struct.ieee_handle*, i32*) #1

declare dso_local i32 @ieee_write_asn(%struct.ieee_handle*, i32, i8 signext) #1

declare dso_local i32 @ieee_write_atn65(%struct.ieee_handle*, i32, i8*) #1

declare dso_local i32 @ieee_write_byte(%struct.ieee_handle*, i32) #1

declare dso_local i32 @ieee_write_number(%struct.ieee_handle*, i32) #1

declare dso_local i32 @ieee_write_id(%struct.ieee_handle*, i8*) #1

declare dso_local i32 @ieee_write_2bytes(%struct.ieee_handle*, i32) #1

declare dso_local i32 @ieee_append_buffer(%struct.ieee_handle*, i32*, i32*) #1

declare dso_local i32 @ieee_buffer_emptyp(i32*) #1

declare dso_local i32 @ieee_end_struct_type(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
