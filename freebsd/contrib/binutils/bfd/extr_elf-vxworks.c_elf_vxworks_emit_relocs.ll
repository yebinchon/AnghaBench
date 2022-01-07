; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf-vxworks.c_elf_vxworks_emit_relocs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf-vxworks.c_elf_vxworks_emit_relocs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i32 }
%struct.TYPE_22__ = type { i64, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_23__ = type { i32, i32 }
%struct.elf_link_hash_entry = type { %struct.TYPE_19__, i32, i64 }
%struct.TYPE_19__ = type { i64, %struct.TYPE_18__ }
%struct.TYPE_18__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i64, %struct.TYPE_22__* }
%struct.elf_backend_data = type { %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i32 }

@DYNAMIC = common dso_local global i32 0, align 4
@EXEC_P = common dso_local global i32 0, align 4
@bfd_link_hash_defined = common dso_local global i64 0, align 8
@bfd_link_hash_defweak = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @elf_vxworks_emit_relocs(%struct.TYPE_21__* %0, %struct.TYPE_22__* %1, i32* %2, %struct.TYPE_23__* %3, %struct.elf_link_hash_entry** %4) #0 {
  %6 = alloca %struct.TYPE_21__*, align 8
  %7 = alloca %struct.TYPE_22__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_23__*, align 8
  %10 = alloca %struct.elf_link_hash_entry**, align 8
  %11 = alloca %struct.elf_backend_data*, align 8
  %12 = alloca %struct.TYPE_23__*, align 8
  %13 = alloca %struct.TYPE_23__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_22__*, align 8
  %16 = alloca i32, align 4
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %6, align 8
  store %struct.TYPE_22__* %1, %struct.TYPE_22__** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.TYPE_23__* %3, %struct.TYPE_23__** %9, align 8
  store %struct.elf_link_hash_entry** %4, %struct.elf_link_hash_entry*** %10, align 8
  %17 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %18 = call %struct.elf_backend_data* @get_elf_backend_data(%struct.TYPE_21__* %17)
  store %struct.elf_backend_data* %18, %struct.elf_backend_data** %11, align 8
  %19 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  store %struct.TYPE_23__* %19, %struct.TYPE_23__** %12, align 8
  %20 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %21 = load i32*, i32** %8, align 8
  %22 = call i32 @NUM_SHDR_ENTRIES(i32* %21)
  %23 = load %struct.elf_backend_data*, %struct.elf_backend_data** %11, align 8
  %24 = getelementptr inbounds %struct.elf_backend_data, %struct.elf_backend_data* %23, i32 0, i32 0
  %25 = load %struct.TYPE_20__*, %struct.TYPE_20__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = mul nsw i32 %22, %27
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %20, i64 %29
  store %struct.TYPE_23__* %30, %struct.TYPE_23__** %13, align 8
  br label %31

31:                                               ; preds = %156, %5
  %32 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %33 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %34 = icmp ult %struct.TYPE_23__* %32, %33
  br i1 %34, label %35, label %167

35:                                               ; preds = %31
  %36 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @DYNAMIC, align 4
  %40 = load i32, i32* @EXEC_P, align 4
  %41 = or i32 %39, %40
  %42 = and i32 %38, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %156

44:                                               ; preds = %35
  %45 = load %struct.elf_link_hash_entry**, %struct.elf_link_hash_entry*** %10, align 8
  %46 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %45, align 8
  %47 = icmp ne %struct.elf_link_hash_entry* %46, null
  br i1 %47, label %48, label %156

48:                                               ; preds = %44
  %49 = load %struct.elf_link_hash_entry**, %struct.elf_link_hash_entry*** %10, align 8
  %50 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %49, align 8
  %51 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %156

54:                                               ; preds = %48
  %55 = load %struct.elf_link_hash_entry**, %struct.elf_link_hash_entry*** %10, align 8
  %56 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %55, align 8
  %57 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %156, label %60

60:                                               ; preds = %54
  %61 = load %struct.elf_link_hash_entry**, %struct.elf_link_hash_entry*** %10, align 8
  %62 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %61, align 8
  %63 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @bfd_link_hash_defined, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %76, label %68

68:                                               ; preds = %60
  %69 = load %struct.elf_link_hash_entry**, %struct.elf_link_hash_entry*** %10, align 8
  %70 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %69, align 8
  %71 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @bfd_link_hash_defweak, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %156

76:                                               ; preds = %68, %60
  %77 = load %struct.elf_link_hash_entry**, %struct.elf_link_hash_entry*** %10, align 8
  %78 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %77, align 8
  %79 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %81, i32 0, i32 1
  %83 = load %struct.TYPE_22__*, %struct.TYPE_22__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %83, i32 0, i32 1
  %85 = load %struct.TYPE_16__*, %struct.TYPE_16__** %84, align 8
  %86 = icmp ne %struct.TYPE_16__* %85, null
  br i1 %86, label %87, label %156

87:                                               ; preds = %76
  store i32 0, i32* %14, align 4
  br label %88

88:                                               ; preds = %151, %87
  %89 = load i32, i32* %14, align 4
  %90 = load %struct.elf_backend_data*, %struct.elf_backend_data** %11, align 8
  %91 = getelementptr inbounds %struct.elf_backend_data, %struct.elf_backend_data* %90, i32 0, i32 0
  %92 = load %struct.TYPE_20__*, %struct.TYPE_20__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = icmp slt i32 %89, %94
  br i1 %95, label %96, label %154

96:                                               ; preds = %88
  %97 = load %struct.elf_link_hash_entry**, %struct.elf_link_hash_entry*** %10, align 8
  %98 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %97, align 8
  %99 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %101, i32 0, i32 1
  %103 = load %struct.TYPE_22__*, %struct.TYPE_22__** %102, align 8
  store %struct.TYPE_22__* %103, %struct.TYPE_22__** %15, align 8
  %104 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  %105 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %104, i32 0, i32 1
  %106 = load %struct.TYPE_16__*, %struct.TYPE_16__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  store i32 %108, i32* %16, align 4
  %109 = load i32, i32* %16, align 4
  %110 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %111 = load i32, i32* %14, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %110, i64 %112
  %114 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @ELF32_R_TYPE(i32 %115)
  %117 = call i32 @ELF32_R_INFO(i32 %109, i32 %116)
  %118 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %119 = load i32, i32* %14, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %118, i64 %120
  %122 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %121, i32 0, i32 1
  store i32 %117, i32* %122, align 4
  %123 = load %struct.elf_link_hash_entry**, %struct.elf_link_hash_entry*** %10, align 8
  %124 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %123, align 8
  %125 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %125, i32 0, i32 1
  %127 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %131 = load i32, i32* %14, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %130, i64 %132
  %134 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = sext i32 %135 to i64
  %137 = add nsw i64 %136, %129
  %138 = trunc i64 %137 to i32
  store i32 %138, i32* %134, align 4
  %139 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  %140 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %143 = load i32, i32* %14, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %142, i64 %144
  %146 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = sext i32 %147 to i64
  %149 = add nsw i64 %148, %141
  %150 = trunc i64 %149 to i32
  store i32 %150, i32* %146, align 4
  br label %151

151:                                              ; preds = %96
  %152 = load i32, i32* %14, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %14, align 4
  br label %88

154:                                              ; preds = %88
  %155 = load %struct.elf_link_hash_entry**, %struct.elf_link_hash_entry*** %10, align 8
  store %struct.elf_link_hash_entry* null, %struct.elf_link_hash_entry** %155, align 8
  br label %156

156:                                              ; preds = %154, %76, %68, %54, %48, %44, %35
  %157 = load %struct.elf_backend_data*, %struct.elf_backend_data** %11, align 8
  %158 = getelementptr inbounds %struct.elf_backend_data, %struct.elf_backend_data* %157, i32 0, i32 0
  %159 = load %struct.TYPE_20__*, %struct.TYPE_20__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %163 = sext i32 %161 to i64
  %164 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %162, i64 %163
  store %struct.TYPE_23__* %164, %struct.TYPE_23__** %12, align 8
  %165 = load %struct.elf_link_hash_entry**, %struct.elf_link_hash_entry*** %10, align 8
  %166 = getelementptr inbounds %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %165, i32 1
  store %struct.elf_link_hash_entry** %166, %struct.elf_link_hash_entry*** %10, align 8
  br label %31

167:                                              ; preds = %31
  %168 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %169 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %170 = load i32*, i32** %8, align 8
  %171 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %172 = load %struct.elf_link_hash_entry**, %struct.elf_link_hash_entry*** %10, align 8
  %173 = call i32 @_bfd_elf_link_output_relocs(%struct.TYPE_21__* %168, %struct.TYPE_22__* %169, i32* %170, %struct.TYPE_23__* %171, %struct.elf_link_hash_entry** %172)
  ret i32 %173
}

declare dso_local %struct.elf_backend_data* @get_elf_backend_data(%struct.TYPE_21__*) #1

declare dso_local i32 @NUM_SHDR_ENTRIES(i32*) #1

declare dso_local i32 @ELF32_R_INFO(i32, i32) #1

declare dso_local i32 @ELF32_R_TYPE(i32) #1

declare dso_local i32 @_bfd_elf_link_output_relocs(%struct.TYPE_21__*, %struct.TYPE_22__*, i32*, %struct.TYPE_23__*, %struct.elf_link_hash_entry**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
