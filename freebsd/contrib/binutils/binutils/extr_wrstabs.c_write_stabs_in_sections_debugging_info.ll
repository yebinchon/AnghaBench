; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_wrstabs.c_write_stabs_in_sections_debugging_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_wrstabs.c_write_stabs_in_sections_debugging_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stab_write_handle = type { i32, i32, i32, i32, i32, i32, i64, %struct.string_hash_entry*, i32*, i64, i64, i64, i32, i32*, %struct.TYPE_5__, %struct.TYPE_4__, i32*, i32* }
%struct.string_hash_entry = type { %struct.TYPE_6__, %struct.string_hash_entry* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@string_hash_newfunc = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"bfd_hash_table_init_failed: %s\00", align 1
@FALSE = common dso_local global i32 0, align 4
@N_SO = common dso_local global i32 0, align 4
@stab_fns = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @write_stabs_in_sections_debugging_info(i32* %0, i8* %1, i32** %2, i32* %3, i32** %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32**, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32**, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.stab_write_handle, align 8
  %15 = alloca %struct.string_hash_entry*, align 8
  %16 = alloca i32*, align 8
  store i32* %0, i32** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32** %2, i32*** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32** %4, i32*** %12, align 8
  store i32* %5, i32** %13, align 8
  %17 = load i32*, i32** %8, align 8
  %18 = getelementptr inbounds %struct.stab_write_handle, %struct.stab_write_handle* %14, i32 0, i32 17
  store i32* %17, i32** %18, align 8
  %19 = getelementptr inbounds %struct.stab_write_handle, %struct.stab_write_handle* %14, i32 0, i32 0
  store i32 0, i32* %19, align 8
  %20 = getelementptr inbounds %struct.stab_write_handle, %struct.stab_write_handle* %14, i32 0, i32 1
  store i32 500, i32* %20, align 4
  %21 = getelementptr inbounds %struct.stab_write_handle, %struct.stab_write_handle* %14, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @xmalloc(i32 %22)
  %24 = inttoptr i64 %23 to i32*
  %25 = getelementptr inbounds %struct.stab_write_handle, %struct.stab_write_handle* %14, i32 0, i32 8
  store i32* %24, i32** %25, align 8
  %26 = getelementptr inbounds %struct.stab_write_handle, %struct.stab_write_handle* %14, i32 0, i32 7
  store %struct.string_hash_entry* null, %struct.string_hash_entry** %26, align 8
  %27 = getelementptr inbounds %struct.stab_write_handle, %struct.stab_write_handle* %14, i32 0, i32 16
  store i32* null, i32** %27, align 8
  %28 = getelementptr inbounds %struct.stab_write_handle, %struct.stab_write_handle* %14, i32 0, i32 2
  store i32 1, i32* %28, align 8
  %29 = getelementptr inbounds %struct.stab_write_handle, %struct.stab_write_handle* %14, i32 0, i32 15
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* @string_hash_newfunc, align 4
  %32 = call i32 @bfd_hash_table_init(i32* %30, i32 %31, i32 16)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %6
  %35 = getelementptr inbounds %struct.stab_write_handle, %struct.stab_write_handle* %14, i32 0, i32 14
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i32, i32* @string_hash_newfunc, align 4
  %38 = call i32 @bfd_hash_table_init(i32* %36, i32 %37, i32 16)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %45, label %40

40:                                               ; preds = %34, %6
  %41 = call i32 (...) @bfd_get_error()
  %42 = call i32 @bfd_errmsg(i32 %41)
  %43 = call i32 @non_fatal(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %42)
  %44 = load i32, i32* @FALSE, align 4
  store i32 %44, i32* %7, align 4
  br label %142

45:                                               ; preds = %34
  %46 = getelementptr inbounds %struct.stab_write_handle, %struct.stab_write_handle* %14, i32 0, i32 13
  store i32* null, i32** %46, align 8
  %47 = getelementptr inbounds %struct.stab_write_handle, %struct.stab_write_handle* %14, i32 0, i32 3
  store i32 1, i32* %47, align 4
  %48 = getelementptr inbounds %struct.stab_write_handle, %struct.stab_write_handle* %14, i32 0, i32 12
  %49 = call i32 @memset(i32* %48, i32 0, i32 4)
  %50 = getelementptr inbounds %struct.stab_write_handle, %struct.stab_write_handle* %14, i32 0, i32 4
  store i32 -1, i32* %50, align 8
  %51 = getelementptr inbounds %struct.stab_write_handle, %struct.stab_write_handle* %14, i32 0, i32 5
  store i32 -1, i32* %51, align 4
  %52 = getelementptr inbounds %struct.stab_write_handle, %struct.stab_write_handle* %14, i32 0, i32 9
  store i64 0, i64* %52, align 8
  %53 = getelementptr inbounds %struct.stab_write_handle, %struct.stab_write_handle* %14, i32 0, i32 11
  store i64 0, i64* %53, align 8
  %54 = getelementptr inbounds %struct.stab_write_handle, %struct.stab_write_handle* %14, i32 0, i32 10
  store i64 0, i64* %54, align 8
  %55 = getelementptr inbounds %struct.stab_write_handle, %struct.stab_write_handle* %14, i32 0, i32 6
  store i64 -1, i64* %55, align 8
  %56 = call i32 @stab_write_symbol(%struct.stab_write_handle* %14, i32 0, i32 0, i64 0, i8* null)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %60, label %58

58:                                               ; preds = %45
  %59 = load i32, i32* @FALSE, align 4
  store i32 %59, i32* %7, align 4
  br label %142

60:                                               ; preds = %45
  %61 = getelementptr inbounds %struct.stab_write_handle, %struct.stab_write_handle* %14, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = getelementptr inbounds %struct.stab_write_handle, %struct.stab_write_handle* %14, i32 0, i32 4
  store i32 %62, i32* %63, align 8
  %64 = load i32, i32* @N_SO, align 4
  %65 = load i32*, i32** %8, align 8
  %66 = call i8* @bfd_get_filename(i32* %65)
  %67 = call i32 @stab_write_symbol(%struct.stab_write_handle* %14, i32 %64, i32 0, i64 0, i8* %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %71, label %69

69:                                               ; preds = %60
  %70 = load i32, i32* @FALSE, align 4
  store i32 %70, i32* %7, align 4
  br label %142

71:                                               ; preds = %60
  %72 = load i8*, i8** %9, align 8
  %73 = bitcast %struct.stab_write_handle* %14 to i8*
  %74 = call i32 @debug_write(i8* %72, i32* @stab_fns, i8* %73)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %78, label %76

76:                                               ; preds = %71
  %77 = load i32, i32* @FALSE, align 4
  store i32 %77, i32* %7, align 4
  br label %142

78:                                               ; preds = %71
  %79 = getelementptr inbounds %struct.stab_write_handle, %struct.stab_write_handle* %14, i32 0, i32 6
  %80 = load i64, i64* %79, align 8
  %81 = icmp eq i64 %80, -1
  %82 = zext i1 %81 to i32
  %83 = call i32 @assert(i32 %82)
  %84 = load i32, i32* @N_SO, align 4
  %85 = getelementptr inbounds %struct.stab_write_handle, %struct.stab_write_handle* %14, i32 0, i32 9
  %86 = load i64, i64* %85, align 8
  %87 = call i32 @stab_write_symbol(%struct.stab_write_handle* %14, i32 %84, i32 0, i64 %86, i8* null)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %91, label %89

89:                                               ; preds = %78
  %90 = load i32, i32* @FALSE, align 4
  store i32 %90, i32* %7, align 4
  br label %142

91:                                               ; preds = %78
  %92 = load i32*, i32** %8, align 8
  %93 = getelementptr inbounds %struct.stab_write_handle, %struct.stab_write_handle* %14, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = getelementptr inbounds %struct.stab_write_handle, %struct.stab_write_handle* %14, i32 0, i32 8
  %96 = load i32*, i32** %95, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 8
  %98 = call i32 @bfd_put_32(i32* %92, i32 %94, i32* %97)
  %99 = getelementptr inbounds %struct.stab_write_handle, %struct.stab_write_handle* %14, i32 0, i32 8
  %100 = load i32*, i32** %99, align 8
  %101 = load i32**, i32*** %10, align 8
  store i32* %100, i32** %101, align 8
  %102 = getelementptr inbounds %struct.stab_write_handle, %struct.stab_write_handle* %14, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = load i32*, i32** %11, align 8
  store i32 %103, i32* %104, align 4
  %105 = getelementptr inbounds %struct.stab_write_handle, %struct.stab_write_handle* %14, i32 0, i32 2
  %106 = load i32, i32* %105, align 8
  %107 = load i32*, i32** %13, align 8
  store i32 %106, i32* %107, align 4
  %108 = getelementptr inbounds %struct.stab_write_handle, %struct.stab_write_handle* %14, i32 0, i32 2
  %109 = load i32, i32* %108, align 8
  %110 = call i64 @xmalloc(i32 %109)
  %111 = inttoptr i64 %110 to i32*
  %112 = load i32**, i32*** %12, align 8
  store i32* %111, i32** %112, align 8
  %113 = load i32**, i32*** %12, align 8
  %114 = load i32*, i32** %113, align 8
  store i32* %114, i32** %16, align 8
  %115 = load i32*, i32** %16, align 8
  %116 = getelementptr inbounds i32, i32* %115, i32 1
  store i32* %116, i32** %16, align 8
  store i32 0, i32* %115, align 4
  %117 = getelementptr inbounds %struct.stab_write_handle, %struct.stab_write_handle* %14, i32 0, i32 7
  %118 = load %struct.string_hash_entry*, %struct.string_hash_entry** %117, align 8
  store %struct.string_hash_entry* %118, %struct.string_hash_entry** %15, align 8
  br label %119

119:                                              ; preds = %136, %91
  %120 = load %struct.string_hash_entry*, %struct.string_hash_entry** %15, align 8
  %121 = icmp ne %struct.string_hash_entry* %120, null
  br i1 %121, label %122, label %140

122:                                              ; preds = %119
  %123 = load i32*, i32** %16, align 8
  %124 = bitcast i32* %123 to i8*
  %125 = load %struct.string_hash_entry*, %struct.string_hash_entry** %15, align 8
  %126 = getelementptr inbounds %struct.string_hash_entry, %struct.string_hash_entry* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = call i32 @strcpy(i8* %124, i32 %128)
  %130 = load i32*, i32** %16, align 8
  %131 = bitcast i32* %130 to i8*
  %132 = call i64 @strlen(i8* %131)
  %133 = add nsw i64 %132, 1
  %134 = load i32*, i32** %16, align 8
  %135 = getelementptr inbounds i32, i32* %134, i64 %133
  store i32* %135, i32** %16, align 8
  br label %136

136:                                              ; preds = %122
  %137 = load %struct.string_hash_entry*, %struct.string_hash_entry** %15, align 8
  %138 = getelementptr inbounds %struct.string_hash_entry, %struct.string_hash_entry* %137, i32 0, i32 1
  %139 = load %struct.string_hash_entry*, %struct.string_hash_entry** %138, align 8
  store %struct.string_hash_entry* %139, %struct.string_hash_entry** %15, align 8
  br label %119

140:                                              ; preds = %119
  %141 = load i32, i32* @TRUE, align 4
  store i32 %141, i32* %7, align 4
  br label %142

142:                                              ; preds = %140, %89, %76, %69, %58, %40
  %143 = load i32, i32* %7, align 4
  ret i32 %143
}

declare dso_local i64 @xmalloc(i32) #1

declare dso_local i32 @bfd_hash_table_init(i32*, i32, i32) #1

declare dso_local i32 @non_fatal(i8*, i32) #1

declare dso_local i32 @bfd_errmsg(i32) #1

declare dso_local i32 @bfd_get_error(...) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @stab_write_symbol(%struct.stab_write_handle*, i32, i32, i64, i8*) #1

declare dso_local i8* @bfd_get_filename(i32*) #1

declare dso_local i32 @debug_write(i8*, i32*, i8*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @bfd_put_32(i32*, i32, i32*) #1

declare dso_local i32 @strcpy(i8*, i32) #1

declare dso_local i64 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
