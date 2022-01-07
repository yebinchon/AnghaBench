; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_xcofflink.c__bfd_xcoff_canonicalize_dynamic_symtab.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_xcofflink.c__bfd_xcoff_canonicalize_dynamic_symtab.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_26__ = type { i64 }
%struct.TYPE_25__ = type { i32 }
%struct.internal_ldhdr = type { i32, i32 }
%struct.TYPE_24__ = type { %struct.TYPE_23__ }
%struct.TYPE_23__ = type { i8*, i32, %struct.TYPE_26__*, i64, %struct.TYPE_25__* }
%struct.internal_ldsym = type { i64, i32, i64, i32, %struct.TYPE_22__ }
%struct.TYPE_22__ = type { i32, %struct.TYPE_21__ }
%struct.TYPE_21__ = type { i64, i32 }
%struct.TYPE_27__ = type { i32, i32* }

@DYNAMIC = common dso_local global i32 0, align 4
@bfd_error_invalid_operation = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c".loader\00", align 1
@bfd_error_no_symbols = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@SYMNMLEN = common dso_local global i64 0, align 8
@XMC_XO = common dso_local global i64 0, align 8
@bfd_abs_section_ptr = common dso_local global %struct.TYPE_26__* null, align 8
@BSF_NO_FLAGS = common dso_local global i32 0, align 4
@L_EXPORT = common dso_local global i32 0, align 4
@BSF_GLOBAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @_bfd_xcoff_canonicalize_dynamic_symtab(%struct.TYPE_25__* %0, i32** %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_25__*, align 8
  %5 = alloca i32**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.internal_ldhdr, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_24__*, align 8
  %13 = alloca %struct.internal_ldsym, align 8
  %14 = alloca i8*, align 8
  store %struct.TYPE_25__* %0, %struct.TYPE_25__** %4, align 8
  store i32** %1, i32*** %5, align 8
  %15 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @DYNAMIC, align 4
  %19 = and i32 %17, %18
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %2
  %22 = load i32, i32* @bfd_error_invalid_operation, align 4
  %23 = call i32 @bfd_set_error(i32 %22)
  store i64 -1, i64* %3, align 8
  br label %198

24:                                               ; preds = %2
  %25 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %26 = call i32* @bfd_get_section_by_name(%struct.TYPE_25__* %25, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store i32* %26, i32** %6, align 8
  %27 = load i32*, i32** %6, align 8
  %28 = icmp eq i32* %27, null
  br i1 %28, label %29, label %32

29:                                               ; preds = %24
  %30 = load i32, i32* @bfd_error_no_symbols, align 4
  %31 = call i32 @bfd_set_error(i32 %30)
  store i64 -1, i64* %3, align 8
  br label %198

32:                                               ; preds = %24
  %33 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %34 = load i32*, i32** %6, align 8
  %35 = call i32 @xcoff_get_section_contents(%struct.TYPE_25__* %33, i32* %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %32
  store i64 -1, i64* %3, align 8
  br label %198

38:                                               ; preds = %32
  %39 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %40 = load i32*, i32** %6, align 8
  %41 = call %struct.TYPE_27__* @coff_section_data(%struct.TYPE_25__* %39, i32* %40)
  %42 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  store i32* %43, i32** %7, align 8
  %44 = load i32, i32* @TRUE, align 4
  %45 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %46 = load i32*, i32** %6, align 8
  %47 = call %struct.TYPE_27__* @coff_section_data(%struct.TYPE_25__* %45, i32* %46)
  %48 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %47, i32 0, i32 0
  store i32 %44, i32* %48, align 8
  %49 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %50 = load i32*, i32** %7, align 8
  %51 = call i32 @bfd_xcoff_swap_ldhdr_in(%struct.TYPE_25__* %49, i32* %50, %struct.internal_ldhdr* %8)
  %52 = load i32*, i32** %7, align 8
  %53 = bitcast i32* %52 to i8*
  %54 = getelementptr inbounds %struct.internal_ldhdr, %struct.internal_ldhdr* %8, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i8, i8* %53, i64 %56
  store i8* %57, i8** %9, align 8
  %58 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %59 = getelementptr inbounds %struct.internal_ldhdr, %struct.internal_ldhdr* %8, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = sext i32 %60 to i64
  %62 = mul i64 %61, 40
  %63 = trunc i64 %62 to i32
  %64 = call %struct.TYPE_24__* @bfd_zalloc(%struct.TYPE_25__* %58, i32 %63)
  store %struct.TYPE_24__* %64, %struct.TYPE_24__** %12, align 8
  %65 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %66 = icmp eq %struct.TYPE_24__* %65, null
  br i1 %66, label %67, label %68

67:                                               ; preds = %38
  store i64 -1, i64* %3, align 8
  br label %198

68:                                               ; preds = %38
  %69 = load i32*, i32** %7, align 8
  %70 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %71 = call i32 @bfd_xcoff_loader_symbol_offset(%struct.TYPE_25__* %70, %struct.internal_ldhdr* %8)
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %69, i64 %72
  store i32* %73, i32** %10, align 8
  %74 = load i32*, i32** %10, align 8
  %75 = getelementptr inbounds %struct.internal_ldhdr, %struct.internal_ldhdr* %8, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %78 = call i32 @bfd_xcoff_ldsymsz(%struct.TYPE_25__* %77)
  %79 = mul nsw i32 %76, %78
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %74, i64 %80
  store i32* %81, i32** %11, align 8
  br label %82

82:                                               ; preds = %183, %68
  %83 = load i32*, i32** %10, align 8
  %84 = load i32*, i32** %11, align 8
  %85 = icmp ult i32* %83, %84
  br i1 %85, label %86, label %193

86:                                               ; preds = %82
  %87 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %88 = load i32*, i32** %10, align 8
  %89 = call i32 @bfd_xcoff_swap_ldsym_in(%struct.TYPE_25__* %87, i32* %88, %struct.internal_ldsym* %13)
  %90 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %91 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %92 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %92, i32 0, i32 4
  store %struct.TYPE_25__* %90, %struct.TYPE_25__** %93, align 8
  %94 = getelementptr inbounds %struct.internal_ldsym, %struct.internal_ldsym* %13, i32 0, i32 4
  %95 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = icmp eq i64 %97, 0
  br i1 %98, label %99, label %110

99:                                               ; preds = %86
  %100 = load i8*, i8** %9, align 8
  %101 = getelementptr inbounds %struct.internal_ldsym, %struct.internal_ldsym* %13, i32 0, i32 4
  %102 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 8
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i8, i8* %100, i64 %105
  %107 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %108 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %108, i32 0, i32 0
  store i8* %106, i8** %109, align 8
  br label %132

110:                                              ; preds = %86
  %111 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %112 = load i64, i64* @SYMNMLEN, align 8
  %113 = add nsw i64 %112, 1
  %114 = call i8* @bfd_alloc(%struct.TYPE_25__* %111, i64 %113)
  store i8* %114, i8** %14, align 8
  %115 = load i8*, i8** %14, align 8
  %116 = icmp eq i8* %115, null
  br i1 %116, label %117, label %118

117:                                              ; preds = %110
  store i64 -1, i64* %3, align 8
  br label %198

118:                                              ; preds = %110
  %119 = load i8*, i8** %14, align 8
  %120 = getelementptr inbounds %struct.internal_ldsym, %struct.internal_ldsym* %13, i32 0, i32 4
  %121 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = load i64, i64* @SYMNMLEN, align 8
  %124 = call i32 @memcpy(i8* %119, i32 %122, i64 %123)
  %125 = load i8*, i8** %14, align 8
  %126 = load i64, i64* @SYMNMLEN, align 8
  %127 = getelementptr inbounds i8, i8* %125, i64 %126
  store i8 0, i8* %127, align 1
  %128 = load i8*, i8** %14, align 8
  %129 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %130 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %130, i32 0, i32 0
  store i8* %128, i8** %131, align 8
  br label %132

132:                                              ; preds = %118, %99
  %133 = getelementptr inbounds %struct.internal_ldsym, %struct.internal_ldsym* %13, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = load i64, i64* @XMC_XO, align 8
  %136 = icmp eq i64 %134, %135
  br i1 %136, label %137, label %142

137:                                              ; preds = %132
  %138 = load %struct.TYPE_26__*, %struct.TYPE_26__** @bfd_abs_section_ptr, align 8
  %139 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %140 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %140, i32 0, i32 2
  store %struct.TYPE_26__* %138, %struct.TYPE_26__** %141, align 8
  br label %150

142:                                              ; preds = %132
  %143 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %144 = getelementptr inbounds %struct.internal_ldsym, %struct.internal_ldsym* %13, i32 0, i32 3
  %145 = load i32, i32* %144, align 8
  %146 = call %struct.TYPE_26__* @coff_section_from_bfd_index(%struct.TYPE_25__* %143, i32 %145)
  %147 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %148 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %148, i32 0, i32 2
  store %struct.TYPE_26__* %146, %struct.TYPE_26__** %149, align 8
  br label %150

150:                                              ; preds = %142, %137
  %151 = getelementptr inbounds %struct.internal_ldsym, %struct.internal_ldsym* %13, i32 0, i32 2
  %152 = load i64, i64* %151, align 8
  %153 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %154 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %154, i32 0, i32 2
  %156 = load %struct.TYPE_26__*, %struct.TYPE_26__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %156, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  %159 = sub nsw i64 %152, %158
  %160 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %161 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %161, i32 0, i32 3
  store i64 %159, i64* %162, align 8
  %163 = load i32, i32* @BSF_NO_FLAGS, align 4
  %164 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %165 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %165, i32 0, i32 1
  store i32 %163, i32* %166, align 8
  %167 = getelementptr inbounds %struct.internal_ldsym, %struct.internal_ldsym* %13, i32 0, i32 1
  %168 = load i32, i32* %167, align 8
  %169 = load i32, i32* @L_EXPORT, align 4
  %170 = and i32 %168, %169
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %179

172:                                              ; preds = %150
  %173 = load i32, i32* @BSF_GLOBAL, align 4
  %174 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %175 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 8
  %178 = or i32 %177, %173
  store i32 %178, i32* %176, align 8
  br label %179

179:                                              ; preds = %172, %150
  %180 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %181 = bitcast %struct.TYPE_24__* %180 to i32*
  %182 = load i32**, i32*** %5, align 8
  store i32* %181, i32** %182, align 8
  br label %183

183:                                              ; preds = %179
  %184 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %185 = call i32 @bfd_xcoff_ldsymsz(%struct.TYPE_25__* %184)
  %186 = load i32*, i32** %10, align 8
  %187 = sext i32 %185 to i64
  %188 = getelementptr inbounds i32, i32* %186, i64 %187
  store i32* %188, i32** %10, align 8
  %189 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %190 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %189, i32 1
  store %struct.TYPE_24__* %190, %struct.TYPE_24__** %12, align 8
  %191 = load i32**, i32*** %5, align 8
  %192 = getelementptr inbounds i32*, i32** %191, i32 1
  store i32** %192, i32*** %5, align 8
  br label %82

193:                                              ; preds = %82
  %194 = load i32**, i32*** %5, align 8
  store i32* null, i32** %194, align 8
  %195 = getelementptr inbounds %struct.internal_ldhdr, %struct.internal_ldhdr* %8, i32 0, i32 1
  %196 = load i32, i32* %195, align 4
  %197 = sext i32 %196 to i64
  store i64 %197, i64* %3, align 8
  br label %198

198:                                              ; preds = %193, %117, %67, %37, %29, %21
  %199 = load i64, i64* %3, align 8
  ret i64 %199
}

declare dso_local i32 @bfd_set_error(i32) #1

declare dso_local i32* @bfd_get_section_by_name(%struct.TYPE_25__*, i8*) #1

declare dso_local i32 @xcoff_get_section_contents(%struct.TYPE_25__*, i32*) #1

declare dso_local %struct.TYPE_27__* @coff_section_data(%struct.TYPE_25__*, i32*) #1

declare dso_local i32 @bfd_xcoff_swap_ldhdr_in(%struct.TYPE_25__*, i32*, %struct.internal_ldhdr*) #1

declare dso_local %struct.TYPE_24__* @bfd_zalloc(%struct.TYPE_25__*, i32) #1

declare dso_local i32 @bfd_xcoff_loader_symbol_offset(%struct.TYPE_25__*, %struct.internal_ldhdr*) #1

declare dso_local i32 @bfd_xcoff_ldsymsz(%struct.TYPE_25__*) #1

declare dso_local i32 @bfd_xcoff_swap_ldsym_in(%struct.TYPE_25__*, i32*, %struct.internal_ldsym*) #1

declare dso_local i8* @bfd_alloc(%struct.TYPE_25__*, i64) #1

declare dso_local i32 @memcpy(i8*, i32, i64) #1

declare dso_local %struct.TYPE_26__* @coff_section_from_bfd_index(%struct.TYPE_25__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
