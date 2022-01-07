; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_ihex.c_ihex_write_object_contents.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_ihex.c_ihex_write_object_contents.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.ihex_data_list* }
%struct.ihex_data_list = type { i64, i32*, i64, %struct.ihex_data_list* }

@CHUNK = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"%s: address 0x%s out of range for Intel Hex file\00", align 1
@bfd_error_bad_value = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*)* @ihex_write_object_contents to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ihex_write_object_contents(%struct.TYPE_9__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.ihex_data_list*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca [2 x i32], align 4
  %13 = alloca [20 x i8], align 16
  %14 = alloca i64, align 8
  %15 = alloca [4 x i32], align 16
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  store i64 0, i64* %4, align 8
  store i64 0, i64* %5, align 8
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = load %struct.ihex_data_list*, %struct.ihex_data_list** %20, align 8
  store %struct.ihex_data_list* %21, %struct.ihex_data_list** %6, align 8
  br label %22

22:                                               ; preds = %167, %1
  %23 = load %struct.ihex_data_list*, %struct.ihex_data_list** %6, align 8
  %24 = icmp ne %struct.ihex_data_list* %23, null
  br i1 %24, label %25, label %171

25:                                               ; preds = %22
  %26 = load %struct.ihex_data_list*, %struct.ihex_data_list** %6, align 8
  %27 = getelementptr inbounds %struct.ihex_data_list, %struct.ihex_data_list* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  store i64 %28, i64* %7, align 8
  %29 = load %struct.ihex_data_list*, %struct.ihex_data_list** %6, align 8
  %30 = getelementptr inbounds %struct.ihex_data_list, %struct.ihex_data_list* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  store i32* %31, i32** %8, align 8
  %32 = load %struct.ihex_data_list*, %struct.ihex_data_list** %6, align 8
  %33 = getelementptr inbounds %struct.ihex_data_list, %struct.ihex_data_list* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  store i64 %34, i64* %9, align 8
  br label %35

35:                                               ; preds = %156, %25
  %36 = load i64, i64* %9, align 8
  %37 = icmp sgt i64 %36, 0
  br i1 %37, label %38, label %166

38:                                               ; preds = %35
  %39 = load i64, i64* %9, align 8
  store i64 %39, i64* %10, align 8
  %40 = load i64, i64* %9, align 8
  %41 = load i64, i64* @CHUNK, align 8
  %42 = icmp sgt i64 %40, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %38
  %44 = load i64, i64* @CHUNK, align 8
  store i64 %44, i64* %10, align 8
  br label %45

45:                                               ; preds = %43, %38
  %46 = load i64, i64* %7, align 8
  %47 = load i64, i64* %4, align 8
  %48 = load i64, i64* %5, align 8
  %49 = add nsw i64 %47, %48
  %50 = add nsw i64 %49, 65535
  %51 = icmp sgt i64 %46, %50
  br i1 %51, label %52, label %130

52:                                               ; preds = %45
  %53 = load i64, i64* %7, align 8
  %54 = icmp sle i64 %53, 1048575
  br i1 %54, label %55, label %79

55:                                               ; preds = %52
  %56 = load i64, i64* %5, align 8
  %57 = icmp eq i64 %56, 0
  %58 = zext i1 %57 to i32
  %59 = call i32 @BFD_ASSERT(i32 %58)
  %60 = load i64, i64* %7, align 8
  %61 = and i64 %60, 983040
  store i64 %61, i64* %4, align 8
  %62 = load i64, i64* %4, align 8
  %63 = ashr i64 %62, 12
  %64 = trunc i64 %63 to i32
  %65 = and i32 %64, 255
  %66 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  store i32 %65, i32* %66, align 4
  %67 = load i64, i64* %4, align 8
  %68 = ashr i64 %67, 4
  %69 = trunc i64 %68 to i32
  %70 = and i32 %69, 255
  %71 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 1
  store i32 %70, i32* %71, align 4
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %73 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  %74 = call i32 @ihex_write_record(%struct.TYPE_9__* %72, i32 2, i32 0, i32 2, i32* %73)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %78, label %76

76:                                               ; preds = %55
  %77 = load i32, i32* @FALSE, align 4
  store i32 %77, i32* %2, align 4
  br label %242

78:                                               ; preds = %55
  br label %129

79:                                               ; preds = %52
  %80 = load i64, i64* %4, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %92

82:                                               ; preds = %79
  %83 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  store i32 0, i32* %83, align 4
  %84 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 1
  store i32 0, i32* %84, align 4
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %86 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  %87 = call i32 @ihex_write_record(%struct.TYPE_9__* %85, i32 2, i32 0, i32 2, i32* %86)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %91, label %89

89:                                               ; preds = %82
  %90 = load i32, i32* @FALSE, align 4
  store i32 %90, i32* %2, align 4
  br label %242

91:                                               ; preds = %82
  store i64 0, i64* %4, align 8
  br label %92

92:                                               ; preds = %91, %79
  %93 = load i64, i64* %7, align 8
  %94 = and i64 %93, 4294901760
  store i64 %94, i64* %5, align 8
  %95 = load i64, i64* %7, align 8
  %96 = load i64, i64* %5, align 8
  %97 = add nsw i64 %96, 65535
  %98 = icmp sgt i64 %95, %97
  br i1 %98, label %99, label %111

99:                                               ; preds = %92
  %100 = getelementptr inbounds [20 x i8], [20 x i8]* %13, i64 0, i64 0
  %101 = load i64, i64* %7, align 8
  %102 = call i32 @sprintf_vma(i8* %100, i64 %101)
  %103 = call i32 @_(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  %104 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %105 = call i32 @bfd_get_filename(%struct.TYPE_9__* %104)
  %106 = getelementptr inbounds [20 x i8], [20 x i8]* %13, i64 0, i64 0
  %107 = call i32 @_bfd_error_handler(i32 %103, i32 %105, i8* %106)
  %108 = load i32, i32* @bfd_error_bad_value, align 4
  %109 = call i32 @bfd_set_error(i32 %108)
  %110 = load i32, i32* @FALSE, align 4
  store i32 %110, i32* %2, align 4
  br label %242

111:                                              ; preds = %92
  %112 = load i64, i64* %5, align 8
  %113 = ashr i64 %112, 24
  %114 = trunc i64 %113 to i32
  %115 = and i32 %114, 255
  %116 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  store i32 %115, i32* %116, align 4
  %117 = load i64, i64* %5, align 8
  %118 = ashr i64 %117, 16
  %119 = trunc i64 %118 to i32
  %120 = and i32 %119, 255
  %121 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 1
  store i32 %120, i32* %121, align 4
  %122 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %123 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  %124 = call i32 @ihex_write_record(%struct.TYPE_9__* %122, i32 2, i32 0, i32 4, i32* %123)
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %128, label %126

126:                                              ; preds = %111
  %127 = load i32, i32* @FALSE, align 4
  store i32 %127, i32* %2, align 4
  br label %242

128:                                              ; preds = %111
  br label %129

129:                                              ; preds = %128, %78
  br label %130

130:                                              ; preds = %129, %45
  %131 = load i64, i64* %7, align 8
  %132 = load i64, i64* %5, align 8
  %133 = load i64, i64* %4, align 8
  %134 = add nsw i64 %132, %133
  %135 = sub nsw i64 %131, %134
  %136 = trunc i64 %135 to i32
  store i32 %136, i32* %11, align 4
  %137 = load i32, i32* %11, align 4
  %138 = zext i32 %137 to i64
  %139 = load i64, i64* %10, align 8
  %140 = add i64 %138, %139
  %141 = icmp ugt i64 %140, 65535
  br i1 %141, label %142, label %146

142:                                              ; preds = %130
  %143 = load i32, i32* %11, align 4
  %144 = sub i32 65536, %143
  %145 = zext i32 %144 to i64
  store i64 %145, i64* %10, align 8
  br label %146

146:                                              ; preds = %142, %130
  %147 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %148 = load i64, i64* %10, align 8
  %149 = trunc i64 %148 to i32
  %150 = load i32, i32* %11, align 4
  %151 = load i32*, i32** %8, align 8
  %152 = call i32 @ihex_write_record(%struct.TYPE_9__* %147, i32 %149, i32 %150, i32 0, i32* %151)
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %156, label %154

154:                                              ; preds = %146
  %155 = load i32, i32* @FALSE, align 4
  store i32 %155, i32* %2, align 4
  br label %242

156:                                              ; preds = %146
  %157 = load i64, i64* %10, align 8
  %158 = load i64, i64* %7, align 8
  %159 = add i64 %158, %157
  store i64 %159, i64* %7, align 8
  %160 = load i64, i64* %10, align 8
  %161 = load i32*, i32** %8, align 8
  %162 = getelementptr inbounds i32, i32* %161, i64 %160
  store i32* %162, i32** %8, align 8
  %163 = load i64, i64* %10, align 8
  %164 = load i64, i64* %9, align 8
  %165 = sub i64 %164, %163
  store i64 %165, i64* %9, align 8
  br label %35

166:                                              ; preds = %35
  br label %167

167:                                              ; preds = %166
  %168 = load %struct.ihex_data_list*, %struct.ihex_data_list** %6, align 8
  %169 = getelementptr inbounds %struct.ihex_data_list, %struct.ihex_data_list* %168, i32 0, i32 3
  %170 = load %struct.ihex_data_list*, %struct.ihex_data_list** %169, align 8
  store %struct.ihex_data_list* %170, %struct.ihex_data_list** %6, align 8
  br label %22

171:                                              ; preds = %22
  %172 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %173 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %172, i32 0, i32 0
  %174 = load i64, i64* %173, align 8
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %234

176:                                              ; preds = %171
  %177 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %178 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %177, i32 0, i32 0
  %179 = load i64, i64* %178, align 8
  store i64 %179, i64* %14, align 8
  %180 = load i64, i64* %14, align 8
  %181 = icmp sle i64 %180, 1048575
  br i1 %181, label %182, label %206

182:                                              ; preds = %176
  %183 = load i64, i64* %14, align 8
  %184 = and i64 %183, 983040
  %185 = ashr i64 %184, 12
  %186 = trunc i64 %185 to i32
  %187 = and i32 %186, 255
  %188 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i64 0, i64 0
  store i32 %187, i32* %188, align 16
  %189 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i64 0, i64 1
  store i32 0, i32* %189, align 4
  %190 = load i64, i64* %14, align 8
  %191 = ashr i64 %190, 8
  %192 = trunc i64 %191 to i32
  %193 = and i32 %192, 255
  %194 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i64 0, i64 2
  store i32 %193, i32* %194, align 8
  %195 = load i64, i64* %14, align 8
  %196 = trunc i64 %195 to i32
  %197 = and i32 %196, 255
  %198 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i64 0, i64 3
  store i32 %197, i32* %198, align 4
  %199 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %200 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i64 0, i64 0
  %201 = call i32 @ihex_write_record(%struct.TYPE_9__* %199, i32 4, i32 0, i32 3, i32* %200)
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %205, label %203

203:                                              ; preds = %182
  %204 = load i32, i32* @FALSE, align 4
  store i32 %204, i32* %2, align 4
  br label %242

205:                                              ; preds = %182
  br label %233

206:                                              ; preds = %176
  %207 = load i64, i64* %14, align 8
  %208 = ashr i64 %207, 24
  %209 = trunc i64 %208 to i32
  %210 = and i32 %209, 255
  %211 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i64 0, i64 0
  store i32 %210, i32* %211, align 16
  %212 = load i64, i64* %14, align 8
  %213 = ashr i64 %212, 16
  %214 = trunc i64 %213 to i32
  %215 = and i32 %214, 255
  %216 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i64 0, i64 1
  store i32 %215, i32* %216, align 4
  %217 = load i64, i64* %14, align 8
  %218 = ashr i64 %217, 8
  %219 = trunc i64 %218 to i32
  %220 = and i32 %219, 255
  %221 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i64 0, i64 2
  store i32 %220, i32* %221, align 8
  %222 = load i64, i64* %14, align 8
  %223 = trunc i64 %222 to i32
  %224 = and i32 %223, 255
  %225 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i64 0, i64 3
  store i32 %224, i32* %225, align 4
  %226 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %227 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i64 0, i64 0
  %228 = call i32 @ihex_write_record(%struct.TYPE_9__* %226, i32 4, i32 0, i32 5, i32* %227)
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %232, label %230

230:                                              ; preds = %206
  %231 = load i32, i32* @FALSE, align 4
  store i32 %231, i32* %2, align 4
  br label %242

232:                                              ; preds = %206
  br label %233

233:                                              ; preds = %232, %205
  br label %234

234:                                              ; preds = %233, %171
  %235 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %236 = call i32 @ihex_write_record(%struct.TYPE_9__* %235, i32 0, i32 0, i32 1, i32* null)
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %240, label %238

238:                                              ; preds = %234
  %239 = load i32, i32* @FALSE, align 4
  store i32 %239, i32* %2, align 4
  br label %242

240:                                              ; preds = %234
  %241 = load i32, i32* @TRUE, align 4
  store i32 %241, i32* %2, align 4
  br label %242

242:                                              ; preds = %240, %238, %230, %203, %154, %126, %99, %89, %76
  %243 = load i32, i32* %2, align 4
  ret i32 %243
}

declare dso_local i32 @BFD_ASSERT(i32) #1

declare dso_local i32 @ihex_write_record(%struct.TYPE_9__*, i32, i32, i32, i32*) #1

declare dso_local i32 @sprintf_vma(i8*, i64) #1

declare dso_local i32 @_bfd_error_handler(i32, i32, i8*) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @bfd_get_filename(%struct.TYPE_9__*) #1

declare dso_local i32 @bfd_set_error(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
