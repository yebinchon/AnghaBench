; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_peXXigen.c__bfd_pei_swap_sym_in.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_peXXigen.c__bfd_pei_swap_sym_in.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { %struct.TYPE_21__* }
%struct.TYPE_21__ = type { i32, i32, %struct.TYPE_21__*, i32*, i64, i64, i64, i64, i64, i64, i64, i64, i32 }
%struct.TYPE_22__ = type { i32, i32, i32, i32, i32, %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i64*, %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32 }
%struct.internal_syment = type { i32, i64, i64, i32, i8*, i8*, %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32, %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i8*, i64 }

@SYMNMLEN = common dso_local global i32 0, align 4
@C_SECTION = common dso_local global i64 0, align 8
@SEC_HAS_CONTENTS = common dso_local global i32 0, align 4
@SEC_ALLOC = common dso_local global i32 0, align 4
@SEC_DATA = common dso_local global i32 0, align 4
@SEC_LOAD = common dso_local global i32 0, align 4
@C_STAT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_bfd_XXi_swap_sym_in(%struct.TYPE_20__* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.TYPE_20__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_22__*, align 8
  %8 = alloca %struct.internal_syment*, align 8
  %9 = alloca %struct.TYPE_21__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_21__*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = bitcast i8* %14 to %struct.TYPE_22__*
  store %struct.TYPE_22__* %15, %struct.TYPE_22__** %7, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = bitcast i8* %16 to %struct.internal_syment*
  store %struct.internal_syment* %17, %struct.internal_syment** %8, align 8
  %18 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %18, i32 0, i32 5
  %20 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %19, i32 0, i32 0
  %21 = load i64*, i64** %20, align 8
  %22 = getelementptr inbounds i64, i64* %21, i64 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %41

25:                                               ; preds = %3
  %26 = load %struct.internal_syment*, %struct.internal_syment** %8, align 8
  %27 = getelementptr inbounds %struct.internal_syment, %struct.internal_syment* %26, i32 0, i32 6
  %28 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %28, i32 0, i32 1
  store i64 0, i64* %29, align 8
  %30 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %31 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %31, i32 0, i32 5
  %33 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i8* @H_GET_32(%struct.TYPE_20__* %30, i32 %35)
  %37 = load %struct.internal_syment*, %struct.internal_syment** %8, align 8
  %38 = getelementptr inbounds %struct.internal_syment, %struct.internal_syment* %37, i32 0, i32 6
  %39 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %39, i32 0, i32 0
  store i8* %36, i8** %40, align 8
  br label %52

41:                                               ; preds = %3
  %42 = load %struct.internal_syment*, %struct.internal_syment** %8, align 8
  %43 = getelementptr inbounds %struct.internal_syment, %struct.internal_syment* %42, i32 0, i32 6
  %44 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %46, i32 0, i32 5
  %48 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %47, i32 0, i32 0
  %49 = load i64*, i64** %48, align 8
  %50 = load i32, i32* @SYMNMLEN, align 4
  %51 = call i32 @memcpy(i32 %45, i64* %49, i32 %50)
  br label %52

52:                                               ; preds = %41, %25
  %53 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %54 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %54, i32 0, i32 4
  %56 = load i32, i32* %55, align 8
  %57 = call i8* @H_GET_32(%struct.TYPE_20__* %53, i32 %56)
  %58 = ptrtoint i8* %57 to i32
  %59 = load %struct.internal_syment*, %struct.internal_syment** %8, align 8
  %60 = getelementptr inbounds %struct.internal_syment, %struct.internal_syment* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 8
  %61 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %62 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %63 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  %65 = call i8* @H_GET_16(%struct.TYPE_20__* %61, i32 %64)
  %66 = ptrtoint i8* %65 to i64
  %67 = load %struct.internal_syment*, %struct.internal_syment** %8, align 8
  %68 = getelementptr inbounds %struct.internal_syment, %struct.internal_syment* %67, i32 0, i32 1
  store i64 %66, i64* %68, align 8
  %69 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %70 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %71 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = call i8* @H_GET_32(%struct.TYPE_20__* %69, i32 %72)
  %74 = load %struct.internal_syment*, %struct.internal_syment** %8, align 8
  %75 = getelementptr inbounds %struct.internal_syment, %struct.internal_syment* %74, i32 0, i32 5
  store i8* %73, i8** %75, align 8
  %76 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %77 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %78 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = call i8* @H_GET_8(%struct.TYPE_20__* %76, i32 %79)
  %81 = ptrtoint i8* %80 to i64
  %82 = load %struct.internal_syment*, %struct.internal_syment** %8, align 8
  %83 = getelementptr inbounds %struct.internal_syment, %struct.internal_syment* %82, i32 0, i32 2
  store i64 %81, i64* %83, align 8
  %84 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %85 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %86 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = call i8* @H_GET_8(%struct.TYPE_20__* %84, i32 %87)
  %89 = load %struct.internal_syment*, %struct.internal_syment** %8, align 8
  %90 = getelementptr inbounds %struct.internal_syment, %struct.internal_syment* %89, i32 0, i32 4
  store i8* %88, i8** %90, align 8
  %91 = load %struct.internal_syment*, %struct.internal_syment** %8, align 8
  %92 = getelementptr inbounds %struct.internal_syment, %struct.internal_syment* %91, i32 0, i32 2
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @C_SECTION, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %96, label %221

96:                                               ; preds = %52
  %97 = load %struct.internal_syment*, %struct.internal_syment** %8, align 8
  %98 = getelementptr inbounds %struct.internal_syment, %struct.internal_syment* %97, i32 0, i32 0
  store i32 0, i32* %98, align 8
  %99 = load %struct.internal_syment*, %struct.internal_syment** %8, align 8
  %100 = getelementptr inbounds %struct.internal_syment, %struct.internal_syment* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = icmp eq i64 %101, 0
  br i1 %102, label %103, label %132

103:                                              ; preds = %96
  %104 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %104, i32 0, i32 0
  %106 = load %struct.TYPE_21__*, %struct.TYPE_21__** %105, align 8
  store %struct.TYPE_21__* %106, %struct.TYPE_21__** %9, align 8
  br label %107

107:                                              ; preds = %127, %103
  %108 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %109 = icmp ne %struct.TYPE_21__* %108, null
  br i1 %109, label %110, label %131

110:                                              ; preds = %107
  %111 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %112 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %111, i32 0, i32 12
  %113 = load i32, i32* %112, align 8
  %114 = load %struct.internal_syment*, %struct.internal_syment** %8, align 8
  %115 = getelementptr inbounds %struct.internal_syment, %struct.internal_syment* %114, i32 0, i32 3
  %116 = load i32, i32* %115, align 8
  %117 = call i64 @strcmp(i32 %113, i32 %116)
  %118 = icmp eq i64 %117, 0
  br i1 %118, label %119, label %126

119:                                              ; preds = %110
  %120 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %121 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = sext i32 %122 to i64
  %124 = load %struct.internal_syment*, %struct.internal_syment** %8, align 8
  %125 = getelementptr inbounds %struct.internal_syment, %struct.internal_syment* %124, i32 0, i32 1
  store i64 %123, i64* %125, align 8
  br label %131

126:                                              ; preds = %110
  br label %127

127:                                              ; preds = %126
  %128 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %129 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %128, i32 0, i32 2
  %130 = load %struct.TYPE_21__*, %struct.TYPE_21__** %129, align 8
  store %struct.TYPE_21__* %130, %struct.TYPE_21__** %9, align 8
  br label %107

131:                                              ; preds = %119, %107
  br label %132

132:                                              ; preds = %131, %96
  %133 = load %struct.internal_syment*, %struct.internal_syment** %8, align 8
  %134 = getelementptr inbounds %struct.internal_syment, %struct.internal_syment* %133, i32 0, i32 1
  %135 = load i64, i64* %134, align 8
  %136 = icmp eq i64 %135, 0
  br i1 %136, label %137, label %217

137:                                              ; preds = %132
  store i32 0, i32* %10, align 4
  %138 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %139 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %138, i32 0, i32 0
  %140 = load %struct.TYPE_21__*, %struct.TYPE_21__** %139, align 8
  store %struct.TYPE_21__* %140, %struct.TYPE_21__** %11, align 8
  br label %141

141:                                              ; preds = %156, %137
  %142 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %143 = icmp ne %struct.TYPE_21__* %142, null
  br i1 %143, label %144, label %160

144:                                              ; preds = %141
  %145 = load i32, i32* %10, align 4
  %146 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %147 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = icmp sle i32 %145, %148
  br i1 %149, label %150, label %155

150:                                              ; preds = %144
  %151 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %152 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %10, align 4
  br label %155

155:                                              ; preds = %150, %144
  br label %156

156:                                              ; preds = %155
  %157 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %158 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %157, i32 0, i32 2
  %159 = load %struct.TYPE_21__*, %struct.TYPE_21__** %158, align 8
  store %struct.TYPE_21__* %159, %struct.TYPE_21__** %11, align 8
  br label %141

160:                                              ; preds = %141
  %161 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %162 = load %struct.internal_syment*, %struct.internal_syment** %8, align 8
  %163 = getelementptr inbounds %struct.internal_syment, %struct.internal_syment* %162, i32 0, i32 3
  %164 = load i32, i32* %163, align 8
  %165 = call i64 @strlen(i32 %164)
  %166 = add nsw i64 %165, 10
  %167 = call i8* @bfd_alloc(%struct.TYPE_20__* %161, i64 %166)
  store i8* %167, i8** %12, align 8
  %168 = load i8*, i8** %12, align 8
  %169 = icmp eq i8* %168, null
  br i1 %169, label %170, label %171

170:                                              ; preds = %160
  br label %221

171:                                              ; preds = %160
  %172 = load i8*, i8** %12, align 8
  %173 = load %struct.internal_syment*, %struct.internal_syment** %8, align 8
  %174 = getelementptr inbounds %struct.internal_syment, %struct.internal_syment* %173, i32 0, i32 3
  %175 = load i32, i32* %174, align 8
  %176 = call i32 @strcpy(i8* %172, i32 %175)
  %177 = load i32, i32* @SEC_HAS_CONTENTS, align 4
  %178 = load i32, i32* @SEC_ALLOC, align 4
  %179 = or i32 %177, %178
  %180 = load i32, i32* @SEC_DATA, align 4
  %181 = or i32 %179, %180
  %182 = load i32, i32* @SEC_LOAD, align 4
  %183 = or i32 %181, %182
  store i32 %183, i32* %13, align 4
  %184 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %185 = load i8*, i8** %12, align 8
  %186 = load i32, i32* %13, align 4
  %187 = call %struct.TYPE_21__* @bfd_make_section_anyway_with_flags(%struct.TYPE_20__* %184, i8* %185, i32 %186)
  store %struct.TYPE_21__* %187, %struct.TYPE_21__** %11, align 8
  %188 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %189 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %188, i32 0, i32 11
  store i64 0, i64* %189, align 8
  %190 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %191 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %190, i32 0, i32 10
  store i64 0, i64* %191, align 8
  %192 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %193 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %192, i32 0, i32 9
  store i64 0, i64* %193, align 8
  %194 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %195 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %194, i32 0, i32 8
  store i64 0, i64* %195, align 8
  %196 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %197 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %196, i32 0, i32 7
  store i64 0, i64* %197, align 8
  %198 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %199 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %198, i32 0, i32 6
  store i64 0, i64* %199, align 8
  %200 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %201 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %200, i32 0, i32 5
  store i64 0, i64* %201, align 8
  %202 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %203 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %202, i32 0, i32 4
  store i64 0, i64* %203, align 8
  %204 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %205 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %204, i32 0, i32 3
  store i32* null, i32** %205, align 8
  %206 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %207 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %206, i32 0, i32 2
  store %struct.TYPE_21__* null, %struct.TYPE_21__** %207, align 8
  %208 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %209 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %208, i32 0, i32 1
  store i32 2, i32* %209, align 4
  %210 = load i32, i32* %10, align 4
  %211 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %212 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %211, i32 0, i32 0
  store i32 %210, i32* %212, align 8
  %213 = load i32, i32* %10, align 4
  %214 = sext i32 %213 to i64
  %215 = load %struct.internal_syment*, %struct.internal_syment** %8, align 8
  %216 = getelementptr inbounds %struct.internal_syment, %struct.internal_syment* %215, i32 0, i32 1
  store i64 %214, i64* %216, align 8
  br label %217

217:                                              ; preds = %171, %132
  %218 = load i64, i64* @C_STAT, align 8
  %219 = load %struct.internal_syment*, %struct.internal_syment** %8, align 8
  %220 = getelementptr inbounds %struct.internal_syment, %struct.internal_syment* %219, i32 0, i32 2
  store i64 %218, i64* %220, align 8
  br label %221

221:                                              ; preds = %170, %217, %52
  ret void
}

declare dso_local i8* @H_GET_32(%struct.TYPE_20__*, i32) #1

declare dso_local i32 @memcpy(i32, i64*, i32) #1

declare dso_local i8* @H_GET_16(%struct.TYPE_20__*, i32) #1

declare dso_local i8* @H_GET_8(%struct.TYPE_20__*, i32) #1

declare dso_local i64 @strcmp(i32, i32) #1

declare dso_local i8* @bfd_alloc(%struct.TYPE_20__*, i64) #1

declare dso_local i64 @strlen(i32) #1

declare dso_local i32 @strcpy(i8*, i32) #1

declare dso_local %struct.TYPE_21__* @bfd_make_section_anyway_with_flags(%struct.TYPE_20__*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
