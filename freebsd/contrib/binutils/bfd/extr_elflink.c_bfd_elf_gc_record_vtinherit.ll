; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elflink.c_bfd_elf_gc_record_vtinherit.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elflink.c_bfd_elf_gc_record_vtinherit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elf_link_hash_entry = type { %struct.TYPE_14__*, %struct.TYPE_12__ }
%struct.TYPE_14__ = type { %struct.elf_link_hash_entry* }
%struct.TYPE_12__ = type { i64, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64, i32* }
%struct.elf_backend_data = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_13__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i64 }

@bfd_link_hash_defined = common dso_local global i64 0, align 8
@bfd_link_hash_defweak = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [40 x i8] c"%B: %A+%lu: No symbol found for INHERIT\00", align 1
@bfd_error_invalid_operation = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bfd_elf_gc_record_vtinherit(i32* %0, i32* %1, %struct.elf_link_hash_entry* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.elf_link_hash_entry*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.elf_link_hash_entry**, align 8
  %11 = alloca %struct.elf_link_hash_entry**, align 8
  %12 = alloca %struct.elf_link_hash_entry**, align 8
  %13 = alloca %struct.elf_link_hash_entry*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.elf_backend_data*, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store %struct.elf_link_hash_entry* %2, %struct.elf_link_hash_entry** %8, align 8
  store i64 %3, i64* %9, align 8
  %16 = load i32*, i32** %6, align 8
  %17 = call %struct.elf_backend_data* @get_elf_backend_data(i32* %16)
  store %struct.elf_backend_data* %17, %struct.elf_backend_data** %15, align 8
  %18 = load i32*, i32** %6, align 8
  %19 = call %struct.TYPE_13__* @elf_tdata(i32* %18)
  %20 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.elf_backend_data*, %struct.elf_backend_data** %15, align 8
  %24 = getelementptr inbounds %struct.elf_backend_data, %struct.elf_backend_data* %23, i32 0, i32 0
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = sdiv i32 %22, %27
  store i32 %28, i32* %14, align 4
  %29 = load i32*, i32** %6, align 8
  %30 = call i32 @elf_bad_symtab(i32* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %42, label %32

32:                                               ; preds = %4
  %33 = load i32*, i32** %6, align 8
  %34 = call %struct.TYPE_13__* @elf_tdata(i32* %33)
  %35 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load i32, i32* %14, align 4
  %39 = sext i32 %38 to i64
  %40 = sub nsw i64 %39, %37
  %41 = trunc i64 %40 to i32
  store i32 %41, i32* %14, align 4
  br label %42

42:                                               ; preds = %32, %4
  %43 = load i32*, i32** %6, align 8
  %44 = call %struct.elf_link_hash_entry** @elf_sym_hashes(i32* %43)
  store %struct.elf_link_hash_entry** %44, %struct.elf_link_hash_entry*** %10, align 8
  %45 = load %struct.elf_link_hash_entry**, %struct.elf_link_hash_entry*** %10, align 8
  %46 = load i32, i32* %14, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %45, i64 %47
  store %struct.elf_link_hash_entry** %48, %struct.elf_link_hash_entry*** %11, align 8
  %49 = load %struct.elf_link_hash_entry**, %struct.elf_link_hash_entry*** %10, align 8
  store %struct.elf_link_hash_entry** %49, %struct.elf_link_hash_entry*** %12, align 8
  br label %50

50:                                               ; preds = %92, %42
  %51 = load %struct.elf_link_hash_entry**, %struct.elf_link_hash_entry*** %12, align 8
  %52 = load %struct.elf_link_hash_entry**, %struct.elf_link_hash_entry*** %11, align 8
  %53 = icmp ne %struct.elf_link_hash_entry** %51, %52
  br i1 %53, label %54, label %95

54:                                               ; preds = %50
  %55 = load %struct.elf_link_hash_entry**, %struct.elf_link_hash_entry*** %12, align 8
  %56 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %55, align 8
  store %struct.elf_link_hash_entry* %56, %struct.elf_link_hash_entry** %13, align 8
  %57 = icmp ne %struct.elf_link_hash_entry* %56, null
  br i1 %57, label %58, label %91

58:                                               ; preds = %54
  %59 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %13, align 8
  %60 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @bfd_link_hash_defined, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %72, label %65

65:                                               ; preds = %58
  %66 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %13, align 8
  %67 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @bfd_link_hash_defweak, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %91

72:                                               ; preds = %65, %58
  %73 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %13, align 8
  %74 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 1
  %78 = load i32*, i32** %77, align 8
  %79 = load i32*, i32** %7, align 8
  %80 = icmp eq i32* %78, %79
  br i1 %80, label %81, label %91

81:                                               ; preds = %72
  %82 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %13, align 8
  %83 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* %9, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %91

90:                                               ; preds = %81
  br label %103

91:                                               ; preds = %81, %72, %65, %54
  br label %92

92:                                               ; preds = %91
  %93 = load %struct.elf_link_hash_entry**, %struct.elf_link_hash_entry*** %12, align 8
  %94 = getelementptr inbounds %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %93, i32 1
  store %struct.elf_link_hash_entry** %94, %struct.elf_link_hash_entry*** %12, align 8
  br label %50

95:                                               ; preds = %50
  %96 = load i32*, i32** %6, align 8
  %97 = load i32*, i32** %7, align 8
  %98 = load i64, i64* %9, align 8
  %99 = call i32 @_bfd_error_handler(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32* %96, i32* %97, i64 %98)
  %100 = load i32, i32* @bfd_error_invalid_operation, align 4
  %101 = call i32 @bfd_set_error(i32 %100)
  %102 = load i32, i32* @FALSE, align 4
  store i32 %102, i32* %5, align 4
  br label %136

103:                                              ; preds = %90
  %104 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %13, align 8
  %105 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %104, i32 0, i32 0
  %106 = load %struct.TYPE_14__*, %struct.TYPE_14__** %105, align 8
  %107 = icmp ne %struct.TYPE_14__* %106, null
  br i1 %107, label %120, label %108

108:                                              ; preds = %103
  %109 = load i32*, i32** %6, align 8
  %110 = call %struct.TYPE_14__* @bfd_zalloc(i32* %109, i32 8)
  %111 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %13, align 8
  %112 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %111, i32 0, i32 0
  store %struct.TYPE_14__* %110, %struct.TYPE_14__** %112, align 8
  %113 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %13, align 8
  %114 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %113, i32 0, i32 0
  %115 = load %struct.TYPE_14__*, %struct.TYPE_14__** %114, align 8
  %116 = icmp ne %struct.TYPE_14__* %115, null
  br i1 %116, label %119, label %117

117:                                              ; preds = %108
  %118 = load i32, i32* @FALSE, align 4
  store i32 %118, i32* %5, align 4
  br label %136

119:                                              ; preds = %108
  br label %120

120:                                              ; preds = %119, %103
  %121 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %8, align 8
  %122 = icmp ne %struct.elf_link_hash_entry* %121, null
  br i1 %122, label %128, label %123

123:                                              ; preds = %120
  %124 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %13, align 8
  %125 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %124, i32 0, i32 0
  %126 = load %struct.TYPE_14__*, %struct.TYPE_14__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %126, i32 0, i32 0
  store %struct.elf_link_hash_entry* inttoptr (i64 -1 to %struct.elf_link_hash_entry*), %struct.elf_link_hash_entry** %127, align 8
  br label %134

128:                                              ; preds = %120
  %129 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %8, align 8
  %130 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %13, align 8
  %131 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %130, i32 0, i32 0
  %132 = load %struct.TYPE_14__*, %struct.TYPE_14__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %132, i32 0, i32 0
  store %struct.elf_link_hash_entry* %129, %struct.elf_link_hash_entry** %133, align 8
  br label %134

134:                                              ; preds = %128, %123
  %135 = load i32, i32* @TRUE, align 4
  store i32 %135, i32* %5, align 4
  br label %136

136:                                              ; preds = %134, %117, %95
  %137 = load i32, i32* %5, align 4
  ret i32 %137
}

declare dso_local %struct.elf_backend_data* @get_elf_backend_data(i32*) #1

declare dso_local %struct.TYPE_13__* @elf_tdata(i32*) #1

declare dso_local i32 @elf_bad_symtab(i32*) #1

declare dso_local %struct.elf_link_hash_entry** @elf_sym_hashes(i32*) #1

declare dso_local i32 @_bfd_error_handler(i8*, i32*, i32*, i64) #1

declare dso_local i32 @bfd_set_error(i32) #1

declare dso_local %struct.TYPE_14__* @bfd_zalloc(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
