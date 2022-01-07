; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/ld/extr_pe-dll.c_pep_create_import_fixup.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/ld/extr_pe-dll.c_pep_create_import_fixup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i64, i32 }
%struct.TYPE_25__ = type { i32 }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_24__ = type { i32, %struct.bfd_symbol** }
%struct.bfd_symbol = type { i8* }
%struct.TYPE_23__ = type { i32 }
%struct.bfd_link_hash_entry = type { i64 }
%struct.TYPE_22__ = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"_nm_thnk_%s\00", align 1
@link_info = common dso_local global %struct.TYPE_20__ zeroinitializer, align 8
@bfd_link_hash_defined = common dso_local global i64 0, align 8
@output_bfd = common dso_local global %struct.TYPE_25__* null, align 8
@FALSE = common dso_local global i32 0, align 4
@config = common dso_local global %struct.TYPE_21__ zeroinitializer, align 4
@WP_TEXT = common dso_local global i32 0, align 4
@pe_data_import_dll = external dso_local global i8*, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@pe_dll_extra_pe_debug = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [56 x i8] c"creating runtime pseudo-reloc entry for %s (addend=%d)\0A\00", align 1
@runtime_pseudo_relocs_created = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [116 x i8] c"%C: variable '%T' can't be auto-imported. Please read the documentation for ld's --enable-auto-import for details.\0A\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"%X\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pe_create_import_fixup(%struct.TYPE_24__* %0, %struct.TYPE_23__* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_24__*, align 8
  %5 = alloca %struct.TYPE_23__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [300 x i8], align 16
  %8 = alloca %struct.bfd_symbol*, align 8
  %9 = alloca %struct.bfd_link_hash_entry*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.TYPE_22__*, align 8
  %13 = alloca %struct.TYPE_22__*, align 8
  %14 = alloca i8*, align 8
  store %struct.TYPE_24__* %0, %struct.TYPE_24__** %4, align 8
  store %struct.TYPE_23__* %1, %struct.TYPE_23__** %5, align 8
  store i32 %2, i32* %6, align 4
  %15 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %15, i32 0, i32 1
  %17 = load %struct.bfd_symbol**, %struct.bfd_symbol*** %16, align 8
  %18 = load %struct.bfd_symbol*, %struct.bfd_symbol** %17, align 8
  store %struct.bfd_symbol* %18, %struct.bfd_symbol** %8, align 8
  %19 = load %struct.bfd_symbol*, %struct.bfd_symbol** %8, align 8
  %20 = getelementptr inbounds %struct.bfd_symbol, %struct.bfd_symbol* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  store i8* %21, i8** %10, align 8
  %22 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %23 = call i8* @make_import_fixup_mark(%struct.TYPE_24__* %22)
  store i8* %23, i8** %11, align 8
  %24 = getelementptr inbounds [300 x i8], [300 x i8]* %7, i64 0, i64 0
  %25 = call i8* @U(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %26 = load i8*, i8** %10, align 8
  %27 = call i32 @sprintf(i8* %24, i8* %25, i8* %26)
  %28 = load i32, i32* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @link_info, i32 0, i32 1), align 8
  %29 = getelementptr inbounds [300 x i8], [300 x i8]* %7, i64 0, i64 0
  %30 = call %struct.bfd_link_hash_entry* @bfd_link_hash_lookup(i32 %28, i8* %29, i32 0, i32 0, i32 1)
  store %struct.bfd_link_hash_entry* %30, %struct.bfd_link_hash_entry** %9, align 8
  %31 = load %struct.bfd_link_hash_entry*, %struct.bfd_link_hash_entry** %9, align 8
  %32 = icmp ne %struct.bfd_link_hash_entry* %31, null
  br i1 %32, label %33, label %39

33:                                               ; preds = %3
  %34 = load %struct.bfd_link_hash_entry*, %struct.bfd_link_hash_entry** %9, align 8
  %35 = getelementptr inbounds %struct.bfd_link_hash_entry, %struct.bfd_link_hash_entry* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @bfd_link_hash_defined, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %55

39:                                               ; preds = %33, %3
  %40 = load i8*, i8** %10, align 8
  %41 = load %struct.TYPE_25__*, %struct.TYPE_25__** @output_bfd, align 8
  %42 = call %struct.TYPE_22__* @make_singleton_name_thunk(i8* %40, %struct.TYPE_25__* %41)
  store %struct.TYPE_22__* %42, %struct.TYPE_22__** %13, align 8
  %43 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %44 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %45 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @add_bfd_to_link(%struct.TYPE_22__* %43, i32 %46, %struct.TYPE_20__* @link_info)
  %48 = load i32, i32* @FALSE, align 4
  store i32 %48, i32* getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @config, i32 0, i32 0), align 4
  %49 = load i32, i32* @WP_TEXT, align 4
  %50 = xor i32 %49, -1
  %51 = load %struct.TYPE_25__*, %struct.TYPE_25__** @output_bfd, align 8
  %52 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = and i32 %53, %50
  store i32 %54, i32* %52, align 4
  br label %55

55:                                               ; preds = %39, %33
  %56 = load i32, i32* %6, align 4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %61, label %58

58:                                               ; preds = %55
  %59 = load i64, i64* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @link_info, i32 0, i32 0), align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %79

61:                                               ; preds = %58, %55
  %62 = load i8*, i8** @pe_data_import_dll, align 8
  %63 = icmp ne i8* %62, null
  br i1 %63, label %64, label %66

64:                                               ; preds = %61
  %65 = load i8*, i8** @pe_data_import_dll, align 8
  br label %67

66:                                               ; preds = %61
  br label %67

67:                                               ; preds = %66, %64
  %68 = phi i8* [ %65, %64 ], [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), %66 ]
  store i8* %68, i8** %14, align 8
  %69 = load i8*, i8** %10, align 8
  %70 = load i8*, i8** %11, align 8
  %71 = load i8*, i8** %14, align 8
  %72 = load %struct.TYPE_25__*, %struct.TYPE_25__** @output_bfd, align 8
  %73 = call %struct.TYPE_22__* @make_import_fixup_entry(i8* %69, i8* %70, i8* %71, %struct.TYPE_25__* %72)
  store %struct.TYPE_22__* %73, %struct.TYPE_22__** %12, align 8
  %74 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %75 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %76 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @add_bfd_to_link(%struct.TYPE_22__* %74, i32 %77, %struct.TYPE_20__* @link_info)
  br label %79

79:                                               ; preds = %67, %58
  %80 = load i32, i32* %6, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %133

82:                                               ; preds = %79
  %83 = load i64, i64* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @link_info, i32 0, i32 0), align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %116

85:                                               ; preds = %82
  %86 = load i64, i64* @pe_dll_extra_pe_debug, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %92

88:                                               ; preds = %85
  %89 = load i8*, i8** %11, align 8
  %90 = load i32, i32* %6, align 4
  %91 = call i32 @printf(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.2, i64 0, i64 0), i8* %89, i32 %90)
  br label %92

92:                                               ; preds = %88, %85
  %93 = load i8*, i8** %10, align 8
  %94 = load i8*, i8** %11, align 8
  %95 = load i32, i32* %6, align 4
  %96 = load %struct.TYPE_25__*, %struct.TYPE_25__** @output_bfd, align 8
  %97 = call %struct.TYPE_22__* @make_runtime_pseudo_reloc(i8* %93, i8* %94, i32 %95, %struct.TYPE_25__* %96)
  store %struct.TYPE_22__* %97, %struct.TYPE_22__** %12, align 8
  %98 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %99 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %100 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @add_bfd_to_link(%struct.TYPE_22__* %98, i32 %101, %struct.TYPE_20__* @link_info)
  %103 = load i64, i64* @runtime_pseudo_relocs_created, align 8
  %104 = icmp eq i64 %103, 0
  br i1 %104, label %105, label %113

105:                                              ; preds = %92
  %106 = load %struct.TYPE_25__*, %struct.TYPE_25__** @output_bfd, align 8
  %107 = call %struct.TYPE_22__* @pe_create_runtime_relocator_reference(%struct.TYPE_25__* %106)
  store %struct.TYPE_22__* %107, %struct.TYPE_22__** %12, align 8
  %108 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %109 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %110 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @add_bfd_to_link(%struct.TYPE_22__* %108, i32 %111, %struct.TYPE_20__* @link_info)
  br label %113

113:                                              ; preds = %105, %92
  %114 = load i64, i64* @runtime_pseudo_relocs_created, align 8
  %115 = add nsw i64 %114, 1
  store i64 %115, i64* @runtime_pseudo_relocs_created, align 8
  br label %132

116:                                              ; preds = %82
  %117 = call i32 @_(i8* getelementptr inbounds ([116 x i8], [116 x i8]* @.str.3, i64 0, i64 0))
  %118 = sext i32 %117 to i64
  %119 = inttoptr i64 %118 to i8*
  %120 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %121 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %124 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %125 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = load %struct.bfd_symbol*, %struct.bfd_symbol** %8, align 8
  %128 = getelementptr inbounds %struct.bfd_symbol, %struct.bfd_symbol* %127, i32 0, i32 0
  %129 = load i8*, i8** %128, align 8
  %130 = call i32 (i8*, ...) @einfo(i8* %119, i32 %122, %struct.TYPE_23__* %123, i32 %126, i8* %129)
  %131 = call i32 (i8*, ...) @einfo(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  br label %132

132:                                              ; preds = %116, %113
  br label %133

133:                                              ; preds = %132, %79
  ret void
}

declare dso_local i8* @make_import_fixup_mark(%struct.TYPE_24__*) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*) #1

declare dso_local i8* @U(i8*) #1

declare dso_local %struct.bfd_link_hash_entry* @bfd_link_hash_lookup(i32, i8*, i32, i32, i32) #1

declare dso_local %struct.TYPE_22__* @make_singleton_name_thunk(i8*, %struct.TYPE_25__*) #1

declare dso_local i32 @add_bfd_to_link(%struct.TYPE_22__*, i32, %struct.TYPE_20__*) #1

declare dso_local %struct.TYPE_22__* @make_import_fixup_entry(i8*, i8*, i8*, %struct.TYPE_25__*) #1

declare dso_local i32 @printf(i8*, i8*, i32) #1

declare dso_local %struct.TYPE_22__* @make_runtime_pseudo_reloc(i8*, i8*, i32, %struct.TYPE_25__*) #1

declare dso_local %struct.TYPE_22__* @pe_create_runtime_relocator_reference(%struct.TYPE_25__*) #1

declare dso_local i32 @einfo(i8*, ...) #1

declare dso_local i32 @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
