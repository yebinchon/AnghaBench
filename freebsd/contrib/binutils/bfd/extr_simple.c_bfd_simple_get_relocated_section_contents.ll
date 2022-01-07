; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_simple.c_bfd_simple_get_relocated_section_contents.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_simple.c_bfd_simple_get_relocated_section_contents.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, i32 }
%struct.TYPE_18__ = type { i32, i64, i64 }
%struct.bfd_link_info = type { i32, i32, %struct.TYPE_16__, i64, i32, i32*, %struct.bfd_link_callbacks*, i32*, %struct.TYPE_17__* }
%struct.TYPE_16__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { %struct.TYPE_18__* }
%struct.bfd_link_callbacks = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.bfd_link_order = type { i32, i32, %struct.TYPE_16__, i64, i32, i32*, %struct.bfd_link_callbacks*, i32*, %struct.TYPE_17__* }

@SEC_RELOC = common dso_local global i32 0, align 4
@simple_dummy_warning = common dso_local global i32 0, align 4
@simple_dummy_undefined_symbol = common dso_local global i32 0, align 4
@simple_dummy_reloc_overflow = common dso_local global i32 0, align 4
@simple_dummy_reloc_dangerous = common dso_local global i32 0, align 4
@simple_dummy_unattached_reloc = common dso_local global i32 0, align 4
@simple_dummy_multiple_definition = common dso_local global i32 0, align 4
@simple_dummy_einfo = common dso_local global i32 0, align 4
@bfd_indirect_link_order = common dso_local global i32 0, align 4
@simple_save_output_info = common dso_local global i32 0, align 4
@simple_restore_output_info = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @bfd_simple_get_relocated_section_contents(%struct.TYPE_17__* %0, %struct.TYPE_18__* %1, i8* %2, i32** %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca %struct.TYPE_18__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32**, align 8
  %10 = alloca %struct.bfd_link_info, align 8
  %11 = alloca %struct.bfd_link_order, align 8
  %12 = alloca %struct.bfd_link_callbacks, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %6, align 8
  store %struct.TYPE_18__* %1, %struct.TYPE_18__** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32** %3, i32*** %9, align 8
  %19 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @SEC_RELOC, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %77, label %25

25:                                               ; preds = %4
  %26 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = icmp sgt i64 %28, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %25
  %34 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  br label %41

37:                                               ; preds = %25
  %38 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  br label %41

41:                                               ; preds = %37, %33
  %42 = phi i64 [ %36, %33 ], [ %40, %37 ]
  %43 = trunc i64 %42 to i32
  store i32 %43, i32* %17, align 4
  %44 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %41
  %49 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  br label %56

52:                                               ; preds = %41
  %53 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  br label %56

56:                                               ; preds = %52, %48
  %57 = phi i64 [ %51, %48 ], [ %55, %52 ]
  %58 = trunc i64 %57 to i32
  store i32 %58, i32* %18, align 4
  %59 = load i8*, i8** %8, align 8
  %60 = icmp eq i8* %59, null
  br i1 %60, label %61, label %64

61:                                               ; preds = %56
  %62 = load i32, i32* %17, align 4
  %63 = call i8* @bfd_malloc(i32 %62)
  store i8* %63, i8** %13, align 8
  br label %66

64:                                               ; preds = %56
  %65 = load i8*, i8** %8, align 8
  store i8* %65, i8** %13, align 8
  br label %66

66:                                               ; preds = %64, %61
  %67 = load i8*, i8** %13, align 8
  %68 = icmp ne i8* %67, null
  br i1 %68, label %69, label %75

69:                                               ; preds = %66
  %70 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %71 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %72 = load i8*, i8** %13, align 8
  %73 = load i32, i32* %18, align 4
  %74 = call i32 @bfd_get_section_contents(%struct.TYPE_17__* %70, %struct.TYPE_18__* %71, i8* %72, i32 0, i32 %73)
  br label %75

75:                                               ; preds = %69, %66
  %76 = load i8*, i8** %13, align 8
  store i8* %76, i8** %5, align 8
  br label %192

77:                                               ; preds = %4
  %78 = bitcast %struct.bfd_link_info* %10 to %struct.bfd_link_order*
  %79 = call i32 @memset(%struct.bfd_link_order* %78, i32 0, i32 64)
  %80 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %81 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %10, i32 0, i32 8
  store %struct.TYPE_17__* %80, %struct.TYPE_17__** %81, align 8
  %82 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %10, i32 0, i32 7
  store i32* %83, i32** %84, align 8
  %85 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %86 = call i32 @_bfd_generic_link_hash_table_create(%struct.TYPE_17__* %85)
  %87 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %10, i32 0, i32 1
  store i32 %86, i32* %87, align 4
  %88 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %10, i32 0, i32 6
  store %struct.bfd_link_callbacks* %12, %struct.bfd_link_callbacks** %88, align 8
  %89 = load i32, i32* @simple_dummy_warning, align 4
  %90 = getelementptr inbounds %struct.bfd_link_callbacks, %struct.bfd_link_callbacks* %12, i32 0, i32 6
  store i32 %89, i32* %90, align 4
  %91 = load i32, i32* @simple_dummy_undefined_symbol, align 4
  %92 = getelementptr inbounds %struct.bfd_link_callbacks, %struct.bfd_link_callbacks* %12, i32 0, i32 5
  store i32 %91, i32* %92, align 4
  %93 = load i32, i32* @simple_dummy_reloc_overflow, align 4
  %94 = getelementptr inbounds %struct.bfd_link_callbacks, %struct.bfd_link_callbacks* %12, i32 0, i32 4
  store i32 %93, i32* %94, align 4
  %95 = load i32, i32* @simple_dummy_reloc_dangerous, align 4
  %96 = getelementptr inbounds %struct.bfd_link_callbacks, %struct.bfd_link_callbacks* %12, i32 0, i32 3
  store i32 %95, i32* %96, align 4
  %97 = load i32, i32* @simple_dummy_unattached_reloc, align 4
  %98 = getelementptr inbounds %struct.bfd_link_callbacks, %struct.bfd_link_callbacks* %12, i32 0, i32 2
  store i32 %97, i32* %98, align 4
  %99 = load i32, i32* @simple_dummy_multiple_definition, align 4
  %100 = getelementptr inbounds %struct.bfd_link_callbacks, %struct.bfd_link_callbacks* %12, i32 0, i32 1
  store i32 %99, i32* %100, align 4
  %101 = load i32, i32* @simple_dummy_einfo, align 4
  %102 = getelementptr inbounds %struct.bfd_link_callbacks, %struct.bfd_link_callbacks* %12, i32 0, i32 0
  store i32 %101, i32* %102, align 4
  %103 = call i32 @memset(%struct.bfd_link_order* %11, i32 0, i32 64)
  %104 = getelementptr inbounds %struct.bfd_link_order, %struct.bfd_link_order* %11, i32 0, i32 5
  store i32* null, i32** %104, align 8
  %105 = load i32, i32* @bfd_indirect_link_order, align 4
  %106 = getelementptr inbounds %struct.bfd_link_order, %struct.bfd_link_order* %11, i32 0, i32 4
  store i32 %105, i32* %106, align 8
  %107 = getelementptr inbounds %struct.bfd_link_order, %struct.bfd_link_order* %11, i32 0, i32 3
  store i64 0, i64* %107, align 8
  %108 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %109 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %108, i32 0, i32 2
  %110 = load i64, i64* %109, align 8
  %111 = trunc i64 %110 to i32
  %112 = getelementptr inbounds %struct.bfd_link_order, %struct.bfd_link_order* %11, i32 0, i32 0
  store i32 %111, i32* %112, align 8
  %113 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %114 = getelementptr inbounds %struct.bfd_link_order, %struct.bfd_link_order* %11, i32 0, i32 2
  %115 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %115, i32 0, i32 0
  store %struct.TYPE_18__* %113, %struct.TYPE_18__** %116, align 8
  store i8* null, i8** %14, align 8
  %117 = load i8*, i8** %8, align 8
  %118 = icmp eq i8* %117, null
  br i1 %118, label %119, label %130

119:                                              ; preds = %77
  %120 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %121 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %120, i32 0, i32 2
  %122 = load i64, i64* %121, align 8
  %123 = trunc i64 %122 to i32
  %124 = call i8* @bfd_malloc(i32 %123)
  store i8* %124, i8** %14, align 8
  %125 = load i8*, i8** %14, align 8
  %126 = icmp eq i8* %125, null
  br i1 %126, label %127, label %128

127:                                              ; preds = %119
  store i8* null, i8** %5, align 8
  br label %192

128:                                              ; preds = %119
  %129 = load i8*, i8** %14, align 8
  store i8* %129, i8** %8, align 8
  br label %130

130:                                              ; preds = %128, %77
  %131 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %132 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = sext i32 %133 to i64
  %135 = mul i64 4, %134
  %136 = trunc i64 %135 to i32
  %137 = call i8* @malloc(i32 %136)
  store i8* %137, i8** %16, align 8
  %138 = load i8*, i8** %16, align 8
  %139 = icmp eq i8* %138, null
  br i1 %139, label %140, label %147

140:                                              ; preds = %130
  %141 = load i8*, i8** %14, align 8
  %142 = icmp ne i8* %141, null
  br i1 %142, label %143, label %146

143:                                              ; preds = %140
  %144 = load i8*, i8** %14, align 8
  %145 = call i32 @free(i8* %144)
  br label %146

146:                                              ; preds = %143, %140
  store i8* null, i8** %5, align 8
  br label %192

147:                                              ; preds = %130
  %148 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %149 = load i32, i32* @simple_save_output_info, align 4
  %150 = load i8*, i8** %16, align 8
  %151 = call i32 @bfd_map_over_sections(%struct.TYPE_17__* %148, i32 %149, i8* %150)
  %152 = load i32**, i32*** %9, align 8
  %153 = icmp eq i32** %152, null
  br i1 %153, label %154, label %166

154:                                              ; preds = %147
  %155 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %156 = bitcast %struct.bfd_link_info* %10 to %struct.bfd_link_order*
  %157 = call i32 @_bfd_generic_link_add_symbols(%struct.TYPE_17__* %155, %struct.bfd_link_order* %156)
  %158 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %159 = call i32 @bfd_get_symtab_upper_bound(%struct.TYPE_17__* %158)
  store i32 %159, i32* %15, align 4
  %160 = load i32, i32* %15, align 4
  %161 = call i8* @bfd_malloc(i32 %160)
  %162 = bitcast i8* %161 to i32**
  store i32** %162, i32*** %9, align 8
  %163 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %164 = load i32**, i32*** %9, align 8
  %165 = call i32 @bfd_canonicalize_symtab(%struct.TYPE_17__* %163, i32** %164)
  br label %167

166:                                              ; preds = %147
  store i32 0, i32* %15, align 4
  br label %167

167:                                              ; preds = %166, %154
  %168 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %169 = bitcast %struct.bfd_link_info* %10 to %struct.bfd_link_order*
  %170 = load i8*, i8** %8, align 8
  %171 = load i32**, i32*** %9, align 8
  %172 = call i8* @bfd_get_relocated_section_contents(%struct.TYPE_17__* %168, %struct.bfd_link_order* %169, %struct.bfd_link_order* %11, i8* %170, i32 0, i32** %171)
  store i8* %172, i8** %13, align 8
  %173 = load i8*, i8** %13, align 8
  %174 = icmp eq i8* %173, null
  br i1 %174, label %175, label %181

175:                                              ; preds = %167
  %176 = load i8*, i8** %14, align 8
  %177 = icmp ne i8* %176, null
  br i1 %177, label %178, label %181

178:                                              ; preds = %175
  %179 = load i8*, i8** %14, align 8
  %180 = call i32 @free(i8* %179)
  br label %181

181:                                              ; preds = %178, %175, %167
  %182 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %183 = load i32, i32* @simple_restore_output_info, align 4
  %184 = load i8*, i8** %16, align 8
  %185 = call i32 @bfd_map_over_sections(%struct.TYPE_17__* %182, i32 %183, i8* %184)
  %186 = load i8*, i8** %16, align 8
  %187 = call i32 @free(i8* %186)
  %188 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %10, i32 0, i32 1
  %189 = load i32, i32* %188, align 4
  %190 = call i32 @_bfd_generic_link_hash_table_free(i32 %189)
  %191 = load i8*, i8** %13, align 8
  store i8* %191, i8** %5, align 8
  br label %192

192:                                              ; preds = %181, %146, %127, %75
  %193 = load i8*, i8** %5, align 8
  ret i8* %193
}

declare dso_local i8* @bfd_malloc(i32) #1

declare dso_local i32 @bfd_get_section_contents(%struct.TYPE_17__*, %struct.TYPE_18__*, i8*, i32, i32) #1

declare dso_local i32 @memset(%struct.bfd_link_order*, i32, i32) #1

declare dso_local i32 @_bfd_generic_link_hash_table_create(%struct.TYPE_17__*) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @bfd_map_over_sections(%struct.TYPE_17__*, i32, i8*) #1

declare dso_local i32 @_bfd_generic_link_add_symbols(%struct.TYPE_17__*, %struct.bfd_link_order*) #1

declare dso_local i32 @bfd_get_symtab_upper_bound(%struct.TYPE_17__*) #1

declare dso_local i32 @bfd_canonicalize_symtab(%struct.TYPE_17__*, i32**) #1

declare dso_local i8* @bfd_get_relocated_section_contents(%struct.TYPE_17__*, %struct.bfd_link_order*, %struct.bfd_link_order*, i8*, i32, i32**) #1

declare dso_local i32 @_bfd_generic_link_hash_table_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
