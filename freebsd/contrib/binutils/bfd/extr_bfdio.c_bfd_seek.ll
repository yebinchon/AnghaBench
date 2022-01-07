; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_bfdio.c_bfd_seek.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_bfdio.c_bfd_seek.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i64, i64, i64, %struct.TYPE_6__*, i32*, %struct.bfd_in_memory* }
%struct.TYPE_6__ = type { {}* }
%struct.bfd_in_memory = type { i32, i32 }

@SEEK_SET = common dso_local global i32 0, align 4
@SEEK_CUR = common dso_local global i32 0, align 4
@BFD_IN_MEMORY = common dso_local global i32 0, align 4
@write_direction = common dso_local global i64 0, align 8
@both_direction = common dso_local global i64 0, align 8
@bfd_error_file_truncated = common dso_local global i32 0, align 4
@bfd_archive = common dso_local global i64 0, align 8
@errno = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@bfd_error_system_call = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bfd_seek(%struct.TYPE_7__* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.bfd_in_memory*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* @SEEK_SET, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %21, label %17

17:                                               ; preds = %3
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* @SEEK_CUR, align 4
  %20 = icmp eq i32 %18, %19
  br label %21

21:                                               ; preds = %17, %3
  %22 = phi i1 [ true, %3 ], [ %20, %17 ]
  %23 = zext i1 %22 to i32
  %24 = call i32 @BFD_ASSERT(i32 %23)
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* @SEEK_CUR, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %21
  %29 = load i64, i64* %6, align 8
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %28
  store i32 0, i32* %4, align 4
  br label %221

32:                                               ; preds = %28, %21
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @BFD_IN_MEMORY, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %125

39:                                               ; preds = %32
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 7
  %42 = load %struct.bfd_in_memory*, %struct.bfd_in_memory** %41, align 8
  store %struct.bfd_in_memory* %42, %struct.bfd_in_memory** %10, align 8
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* @SEEK_SET, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %51

46:                                               ; preds = %39
  %47 = load i64, i64* %6, align 8
  %48 = trunc i64 %47 to i32
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 4
  br label %59

51:                                               ; preds = %39
  %52 = load i64, i64* %6, align 8
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = sext i32 %55 to i64
  %57 = add nsw i64 %56, %52
  %58 = trunc i64 %57 to i32
  store i32 %58, i32* %54, align 4
  br label %59

59:                                               ; preds = %51, %46
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.bfd_in_memory*, %struct.bfd_in_memory** %10, align 8
  %64 = getelementptr inbounds %struct.bfd_in_memory, %struct.bfd_in_memory* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = icmp sgt i32 %62, %65
  br i1 %66, label %67, label %124

67:                                               ; preds = %59
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @write_direction, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %79, label %73

73:                                               ; preds = %67
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @both_direction, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %115

79:                                               ; preds = %73, %67
  %80 = load %struct.bfd_in_memory*, %struct.bfd_in_memory** %10, align 8
  %81 = getelementptr inbounds %struct.bfd_in_memory, %struct.bfd_in_memory* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = add nsw i32 %82, 127
  %84 = and i32 %83, -128
  store i32 %84, i32* %12, align 4
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.bfd_in_memory*, %struct.bfd_in_memory** %10, align 8
  %89 = getelementptr inbounds %struct.bfd_in_memory, %struct.bfd_in_memory* %88, i32 0, i32 0
  store i32 %87, i32* %89, align 4
  %90 = load %struct.bfd_in_memory*, %struct.bfd_in_memory** %10, align 8
  %91 = getelementptr inbounds %struct.bfd_in_memory, %struct.bfd_in_memory* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = add nsw i32 %92, 127
  %94 = and i32 %93, -128
  store i32 %94, i32* %11, align 4
  %95 = load i32, i32* %11, align 4
  %96 = load i32, i32* %12, align 4
  %97 = icmp sgt i32 %95, %96
  br i1 %97, label %98, label %114

98:                                               ; preds = %79
  %99 = load %struct.bfd_in_memory*, %struct.bfd_in_memory** %10, align 8
  %100 = getelementptr inbounds %struct.bfd_in_memory, %struct.bfd_in_memory* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* %11, align 4
  %103 = call i32 @bfd_realloc(i32 %101, i32 %102)
  %104 = load %struct.bfd_in_memory*, %struct.bfd_in_memory** %10, align 8
  %105 = getelementptr inbounds %struct.bfd_in_memory, %struct.bfd_in_memory* %104, i32 0, i32 1
  store i32 %103, i32* %105, align 4
  %106 = load %struct.bfd_in_memory*, %struct.bfd_in_memory** %10, align 8
  %107 = getelementptr inbounds %struct.bfd_in_memory, %struct.bfd_in_memory* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %113

110:                                              ; preds = %98
  %111 = load %struct.bfd_in_memory*, %struct.bfd_in_memory** %10, align 8
  %112 = getelementptr inbounds %struct.bfd_in_memory, %struct.bfd_in_memory* %111, i32 0, i32 0
  store i32 0, i32* %112, align 4
  store i32 -1, i32* %4, align 4
  br label %221

113:                                              ; preds = %98
  br label %114

114:                                              ; preds = %113, %79
  br label %123

115:                                              ; preds = %73
  %116 = load %struct.bfd_in_memory*, %struct.bfd_in_memory** %10, align 8
  %117 = getelementptr inbounds %struct.bfd_in_memory, %struct.bfd_in_memory* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i32 0, i32 1
  store i32 %118, i32* %120, align 4
  %121 = load i32, i32* @bfd_error_file_truncated, align 4
  %122 = call i32 @bfd_set_error(i32 %121)
  store i32 -1, i32* %4, align 4
  br label %221

123:                                              ; preds = %114
  br label %124

124:                                              ; preds = %123, %59
  store i32 0, i32* %4, align 4
  br label %221

125:                                              ; preds = %32
  %126 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %127 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %126, i32 0, i32 3
  %128 = load i64, i64* %127, align 8
  %129 = load i64, i64* @bfd_archive, align 8
  %130 = icmp ne i64 %128, %129
  br i1 %130, label %131, label %149

131:                                              ; preds = %125
  %132 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %133 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %132, i32 0, i32 6
  %134 = load i32*, i32** %133, align 8
  %135 = icmp eq i32* %134, null
  br i1 %135, label %136, label %149

136:                                              ; preds = %131
  %137 = load i32, i32* %7, align 4
  %138 = load i32, i32* @SEEK_SET, align 4
  %139 = icmp eq i32 %137, %138
  br i1 %139, label %140, label %148

140:                                              ; preds = %136
  %141 = load i64, i64* %6, align 8
  %142 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %143 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = sext i32 %144 to i64
  %146 = icmp eq i64 %141, %145
  br i1 %146, label %147, label %148

147:                                              ; preds = %140
  store i32 0, i32* %4, align 4
  br label %221

148:                                              ; preds = %140, %136
  br label %150

149:                                              ; preds = %131, %125
  br label %150

150:                                              ; preds = %149, %148
  %151 = load i64, i64* %6, align 8
  store i64 %151, i64* %9, align 8
  %152 = load i32, i32* %7, align 4
  %153 = load i32, i32* @SEEK_SET, align 4
  %154 = icmp eq i32 %152, %153
  br i1 %154, label %155, label %166

155:                                              ; preds = %150
  %156 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %157 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %156, i32 0, i32 6
  %158 = load i32*, i32** %157, align 8
  %159 = icmp ne i32* %158, null
  br i1 %159, label %160, label %166

160:                                              ; preds = %155
  %161 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %162 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %161, i32 0, i32 4
  %163 = load i64, i64* %162, align 8
  %164 = load i64, i64* %9, align 8
  %165 = add nsw i64 %164, %163
  store i64 %165, i64* %9, align 8
  br label %166

166:                                              ; preds = %160, %155, %150
  %167 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %168 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %167, i32 0, i32 5
  %169 = load %struct.TYPE_6__*, %struct.TYPE_6__** %168, align 8
  %170 = icmp ne %struct.TYPE_6__* %169, null
  br i1 %170, label %171, label %182

171:                                              ; preds = %166
  %172 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %173 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %172, i32 0, i32 5
  %174 = load %struct.TYPE_6__*, %struct.TYPE_6__** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %174, i32 0, i32 0
  %176 = bitcast {}** %175 to i32 (%struct.TYPE_7__*, i64, i32)**
  %177 = load i32 (%struct.TYPE_7__*, i64, i32)*, i32 (%struct.TYPE_7__*, i64, i32)** %176, align 8
  %178 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %179 = load i64, i64* %9, align 8
  %180 = load i32, i32* %7, align 4
  %181 = call i32 %177(%struct.TYPE_7__* %178, i64 %179, i32 %180)
  store i32 %181, i32* %8, align 4
  br label %183

182:                                              ; preds = %166
  store i32 -1, i32* %8, align 4
  br label %183

183:                                              ; preds = %182, %171
  %184 = load i32, i32* %8, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %201

186:                                              ; preds = %183
  %187 = load i32, i32* @errno, align 4
  store i32 %187, i32* %13, align 4
  %188 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %189 = call i32 @bfd_tell(%struct.TYPE_7__* %188)
  %190 = load i32, i32* %13, align 4
  %191 = load i32, i32* @EINVAL, align 4
  %192 = icmp eq i32 %190, %191
  br i1 %192, label %193, label %196

193:                                              ; preds = %186
  %194 = load i32, i32* @bfd_error_file_truncated, align 4
  %195 = call i32 @bfd_set_error(i32 %194)
  br label %200

196:                                              ; preds = %186
  %197 = load i32, i32* @bfd_error_system_call, align 4
  %198 = call i32 @bfd_set_error(i32 %197)
  %199 = load i32, i32* %13, align 4
  store i32 %199, i32* @errno, align 4
  br label %200

200:                                              ; preds = %196, %193
  br label %219

201:                                              ; preds = %183
  %202 = load i32, i32* %7, align 4
  %203 = load i32, i32* @SEEK_SET, align 4
  %204 = icmp eq i32 %202, %203
  br i1 %204, label %205, label %210

205:                                              ; preds = %201
  %206 = load i64, i64* %6, align 8
  %207 = trunc i64 %206 to i32
  %208 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %209 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %208, i32 0, i32 1
  store i32 %207, i32* %209, align 4
  br label %218

210:                                              ; preds = %201
  %211 = load i64, i64* %6, align 8
  %212 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %213 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %212, i32 0, i32 1
  %214 = load i32, i32* %213, align 4
  %215 = sext i32 %214 to i64
  %216 = add nsw i64 %215, %211
  %217 = trunc i64 %216 to i32
  store i32 %217, i32* %213, align 4
  br label %218

218:                                              ; preds = %210, %205
  br label %219

219:                                              ; preds = %218, %200
  %220 = load i32, i32* %8, align 4
  store i32 %220, i32* %4, align 4
  br label %221

221:                                              ; preds = %219, %147, %124, %115, %110, %31
  %222 = load i32, i32* %4, align 4
  ret i32 %222
}

declare dso_local i32 @BFD_ASSERT(i32) #1

declare dso_local i32 @bfd_realloc(i32, i32) #1

declare dso_local i32 @bfd_set_error(i32) #1

declare dso_local i32 @bfd_tell(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
