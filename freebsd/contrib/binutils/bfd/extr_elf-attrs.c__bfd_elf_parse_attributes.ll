; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf-attrs.c__bfd_elf_parse_attributes.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf-attrs.c__bfd_elf_parse_attributes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_5__ = type { i8* }

@OBJ_ATTR_PROC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"gnu\00", align 1
@OBJ_ATTR_GNU = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_bfd_elf_parse_attributes(i32* %0, %struct.TYPE_4__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %4, align 8
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32* @bfd_malloc(i32 %20)
  store i32* %21, i32** %5, align 8
  %22 = load i32*, i32** %5, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %2
  br label %231

25:                                               ; preds = %2
  %26 = load i32*, i32** %3, align 8
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i32*, i32** %5, align 8
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @bfd_get_section_contents(i32* %26, i32 %29, i32* %30, i32 0, i32 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %25
  %37 = load i32*, i32** %5, align 8
  %38 = call i32 @free(i32* %37)
  br label %231

39:                                               ; preds = %25
  %40 = load i32*, i32** %5, align 8
  store i32* %40, i32** %6, align 8
  %41 = load i32*, i32** %3, align 8
  %42 = call %struct.TYPE_5__* @get_elf_backend_data(i32* %41)
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  store i8* %44, i8** %8, align 8
  %45 = load i32*, i32** %6, align 8
  %46 = getelementptr inbounds i32, i32* %45, i32 1
  store i32* %46, i32** %6, align 8
  %47 = load i32, i32* %45, align 4
  %48 = icmp eq i32 %47, 65
  br i1 %48, label %49, label %228

49:                                               ; preds = %39
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = sub nsw i32 %52, 1
  %54 = sext i32 %53 to i64
  store i64 %54, i64* %7, align 8
  br label %55

55:                                               ; preds = %226, %99, %49
  %56 = load i64, i64* %7, align 8
  %57 = icmp sgt i64 %56, 0
  br i1 %57, label %58, label %227

58:                                               ; preds = %55
  %59 = load i32*, i32** %3, align 8
  %60 = load i32*, i32** %6, align 8
  %61 = call i64 @bfd_get_32(i32* %59, i32* %60)
  store i64 %61, i64* %10, align 8
  %62 = load i32*, i32** %6, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 4
  store i32* %63, i32** %6, align 8
  %64 = load i64, i64* %10, align 8
  %65 = load i64, i64* %7, align 8
  %66 = icmp sgt i64 %64, %65
  br i1 %66, label %67, label %69

67:                                               ; preds = %58
  %68 = load i64, i64* %7, align 8
  store i64 %68, i64* %10, align 8
  br label %69

69:                                               ; preds = %67, %58
  %70 = load i64, i64* %10, align 8
  %71 = load i64, i64* %7, align 8
  %72 = sub nsw i64 %71, %70
  store i64 %72, i64* %7, align 8
  %73 = load i32*, i32** %6, align 8
  %74 = bitcast i32* %73 to i8*
  %75 = call i32 @strlen(i8* %74)
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %9, align 4
  %77 = load i32, i32* %9, align 4
  %78 = add nsw i32 %77, 4
  %79 = sext i32 %78 to i64
  %80 = load i64, i64* %10, align 8
  %81 = sub nsw i64 %80, %79
  store i64 %81, i64* %10, align 8
  %82 = load i8*, i8** %8, align 8
  %83 = icmp ne i8* %82, null
  br i1 %83, label %84, label %92

84:                                               ; preds = %69
  %85 = load i32*, i32** %6, align 8
  %86 = bitcast i32* %85 to i8*
  %87 = load i8*, i8** %8, align 8
  %88 = call i64 @strcmp(i8* %86, i8* %87)
  %89 = icmp eq i64 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %84
  %91 = load i32, i32* @OBJ_ATTR_PROC, align 4
  store i32 %91, i32* %11, align 4
  br label %107

92:                                               ; preds = %84, %69
  %93 = load i32*, i32** %6, align 8
  %94 = bitcast i32* %93 to i8*
  %95 = call i64 @strcmp(i8* %94, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %96 = icmp eq i64 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %92
  %98 = load i32, i32* @OBJ_ATTR_GNU, align 4
  store i32 %98, i32* %11, align 4
  br label %106

99:                                               ; preds = %92
  %100 = load i32, i32* %9, align 4
  %101 = sext i32 %100 to i64
  %102 = load i64, i64* %10, align 8
  %103 = add nsw i64 %101, %102
  %104 = load i32*, i32** %6, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 %103
  store i32* %105, i32** %6, align 8
  br label %55

106:                                              ; preds = %97
  br label %107

107:                                              ; preds = %106, %90
  %108 = load i32, i32* %9, align 4
  %109 = load i32*, i32** %6, align 8
  %110 = sext i32 %108 to i64
  %111 = getelementptr inbounds i32, i32* %109, i64 %110
  store i32* %111, i32** %6, align 8
  br label %112

112:                                              ; preds = %225, %107
  %113 = load i64, i64* %10, align 8
  %114 = icmp sgt i64 %113, 0
  br i1 %114, label %115, label %226

115:                                              ; preds = %112
  %116 = load i32*, i32** %3, align 8
  %117 = load i32*, i32** %6, align 8
  %118 = call i8* @read_unsigned_leb128(i32* %116, i32* %117, i32* %13)
  %119 = ptrtoint i8* %118 to i32
  store i32 %119, i32* %12, align 4
  %120 = load i32, i32* %13, align 4
  %121 = load i32*, i32** %6, align 8
  %122 = zext i32 %120 to i64
  %123 = getelementptr inbounds i32, i32* %121, i64 %122
  store i32* %123, i32** %6, align 8
  %124 = load i32*, i32** %3, align 8
  %125 = load i32*, i32** %6, align 8
  %126 = call i64 @bfd_get_32(i32* %124, i32* %125)
  store i64 %126, i64* %15, align 8
  %127 = load i32*, i32** %6, align 8
  %128 = getelementptr inbounds i32, i32* %127, i64 4
  store i32* %128, i32** %6, align 8
  %129 = load i64, i64* %15, align 8
  %130 = load i64, i64* %10, align 8
  %131 = icmp sgt i64 %129, %130
  br i1 %131, label %132, label %134

132:                                              ; preds = %115
  %133 = load i64, i64* %10, align 8
  store i64 %133, i64* %15, align 8
  br label %134

134:                                              ; preds = %132, %115
  %135 = load i64, i64* %15, align 8
  %136 = load i64, i64* %10, align 8
  %137 = sub nsw i64 %136, %135
  store i64 %137, i64* %10, align 8
  %138 = load i32, i32* %13, align 4
  %139 = add i32 %138, 4
  %140 = zext i32 %139 to i64
  %141 = load i64, i64* %15, align 8
  %142 = sub nsw i64 %141, %140
  store i64 %142, i64* %15, align 8
  %143 = load i32*, i32** %6, align 8
  %144 = load i64, i64* %15, align 8
  %145 = getelementptr inbounds i32, i32* %143, i64 %144
  store i32* %145, i32** %16, align 8
  %146 = load i32, i32* %12, align 4
  switch i32 %146, label %221 [
    i32 130, label %147
    i32 129, label %220
    i32 128, label %220
  ]

147:                                              ; preds = %134
  br label %148

148:                                              ; preds = %218, %147
  %149 = load i32*, i32** %6, align 8
  %150 = load i32*, i32** %16, align 8
  %151 = icmp ult i32* %149, %150
  br i1 %151, label %152, label %219

152:                                              ; preds = %148
  %153 = load i32*, i32** %3, align 8
  %154 = load i32*, i32** %6, align 8
  %155 = call i8* @read_unsigned_leb128(i32* %153, i32* %154, i32* %13)
  %156 = ptrtoint i8* %155 to i32
  store i32 %156, i32* %12, align 4
  %157 = load i32, i32* %13, align 4
  %158 = load i32*, i32** %6, align 8
  %159 = zext i32 %157 to i64
  %160 = getelementptr inbounds i32, i32* %158, i64 %159
  store i32* %160, i32** %6, align 8
  %161 = load i32*, i32** %3, align 8
  %162 = load i32, i32* %11, align 4
  %163 = load i32, i32* %12, align 4
  %164 = call i32 @_bfd_elf_obj_attrs_arg_type(i32* %161, i32 %162, i32 %163)
  store i32 %164, i32* %17, align 4
  %165 = load i32, i32* %17, align 4
  switch i32 %165, label %216 [
    i32 3, label %166
    i32 2, label %188
    i32 1, label %202
  ]

166:                                              ; preds = %152
  %167 = load i32*, i32** %3, align 8
  %168 = load i32*, i32** %6, align 8
  %169 = call i8* @read_unsigned_leb128(i32* %167, i32* %168, i32* %13)
  %170 = ptrtoint i8* %169 to i32
  store i32 %170, i32* %14, align 4
  %171 = load i32, i32* %13, align 4
  %172 = load i32*, i32** %6, align 8
  %173 = zext i32 %171 to i64
  %174 = getelementptr inbounds i32, i32* %172, i64 %173
  store i32* %174, i32** %6, align 8
  %175 = load i32*, i32** %3, align 8
  %176 = load i32, i32* %11, align 4
  %177 = load i32, i32* %14, align 4
  %178 = load i32*, i32** %6, align 8
  %179 = bitcast i32* %178 to i8*
  %180 = call i32 @bfd_elf_add_obj_attr_compat(i32* %175, i32 %176, i32 %177, i8* %179)
  %181 = load i32*, i32** %6, align 8
  %182 = bitcast i32* %181 to i8*
  %183 = call i32 @strlen(i8* %182)
  %184 = add nsw i32 %183, 1
  %185 = load i32*, i32** %6, align 8
  %186 = sext i32 %184 to i64
  %187 = getelementptr inbounds i32, i32* %185, i64 %186
  store i32* %187, i32** %6, align 8
  br label %218

188:                                              ; preds = %152
  %189 = load i32*, i32** %3, align 8
  %190 = load i32, i32* %11, align 4
  %191 = load i32, i32* %12, align 4
  %192 = load i32*, i32** %6, align 8
  %193 = bitcast i32* %192 to i8*
  %194 = call i32 @bfd_elf_add_obj_attr_string(i32* %189, i32 %190, i32 %191, i8* %193)
  %195 = load i32*, i32** %6, align 8
  %196 = bitcast i32* %195 to i8*
  %197 = call i32 @strlen(i8* %196)
  %198 = add nsw i32 %197, 1
  %199 = load i32*, i32** %6, align 8
  %200 = sext i32 %198 to i64
  %201 = getelementptr inbounds i32, i32* %199, i64 %200
  store i32* %201, i32** %6, align 8
  br label %218

202:                                              ; preds = %152
  %203 = load i32*, i32** %3, align 8
  %204 = load i32*, i32** %6, align 8
  %205 = call i8* @read_unsigned_leb128(i32* %203, i32* %204, i32* %13)
  %206 = ptrtoint i8* %205 to i32
  store i32 %206, i32* %14, align 4
  %207 = load i32, i32* %13, align 4
  %208 = load i32*, i32** %6, align 8
  %209 = zext i32 %207 to i64
  %210 = getelementptr inbounds i32, i32* %208, i64 %209
  store i32* %210, i32** %6, align 8
  %211 = load i32*, i32** %3, align 8
  %212 = load i32, i32* %11, align 4
  %213 = load i32, i32* %12, align 4
  %214 = load i32, i32* %14, align 4
  %215 = call i32 @bfd_elf_add_obj_attr_int(i32* %211, i32 %212, i32 %213, i32 %214)
  br label %218

216:                                              ; preds = %152
  %217 = call i32 (...) @abort() #3
  unreachable

218:                                              ; preds = %202, %188, %166
  br label %148

219:                                              ; preds = %148
  br label %225

220:                                              ; preds = %134, %134
  br label %221

221:                                              ; preds = %134, %220
  %222 = load i64, i64* %15, align 8
  %223 = load i32*, i32** %6, align 8
  %224 = getelementptr inbounds i32, i32* %223, i64 %222
  store i32* %224, i32** %6, align 8
  store i64 0, i64* %15, align 8
  br label %225

225:                                              ; preds = %221, %219
  br label %112

226:                                              ; preds = %112
  br label %55

227:                                              ; preds = %55
  br label %228

228:                                              ; preds = %227, %39
  %229 = load i32*, i32** %5, align 8
  %230 = call i32 @free(i32* %229)
  br label %231

231:                                              ; preds = %228, %36, %24
  ret void
}

declare dso_local i32* @bfd_malloc(i32) #1

declare dso_local i32 @bfd_get_section_contents(i32*, i32, i32*, i32, i32) #1

declare dso_local i32 @free(i32*) #1

declare dso_local %struct.TYPE_5__* @get_elf_backend_data(i32*) #1

declare dso_local i64 @bfd_get_32(i32*, i32*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i8* @read_unsigned_leb128(i32*, i32*, i32*) #1

declare dso_local i32 @_bfd_elf_obj_attrs_arg_type(i32*, i32, i32) #1

declare dso_local i32 @bfd_elf_add_obj_attr_compat(i32*, i32, i32, i8*) #1

declare dso_local i32 @bfd_elf_add_obj_attr_string(i32*, i32, i32, i8*) #1

declare dso_local i32 @bfd_elf_add_obj_attr_int(i32*, i32, i32, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
