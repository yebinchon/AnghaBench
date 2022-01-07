; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elflink.c_resolve_symbol.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elflink.c_resolve_symbol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i64, %struct.TYPE_24__* }
%struct.TYPE_24__ = type { i64 }
%struct.elf_final_link_info = type { %struct.TYPE_19__*, %struct.TYPE_26__**, %struct.TYPE_14__* }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_26__ = type { %struct.TYPE_18__*, i64 }
%struct.TYPE_18__ = type { i8*, i64 }
%struct.TYPE_14__ = type { i64, i64, i32, i32 }
%struct.bfd_link_hash_entry = type { i64, %struct.TYPE_25__, %struct.TYPE_23__ }
%struct.TYPE_25__ = type { i8* }
%struct.TYPE_23__ = type { %struct.TYPE_22__ }
%struct.TYPE_22__ = type { i64, %struct.TYPE_21__* }
%struct.TYPE_21__ = type { i64, %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i64 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_16__ = type { %struct.TYPE_15__ }

@STB_LOCAL = common dso_local global i64 0, align 8
@SHN_UNDEF = common dso_local global i64 0, align 8
@SHN_LORESERVE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@bfd_link_hash_defined = common dso_local global i64 0, align 8
@bfd_link_hash_defweak = common dso_local global i64 0, align 8
@bfd_link_hash_common = common dso_local global i64 0, align 8
@bfd_com_section_ptr = common dso_local global %struct.TYPE_17__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*, %struct.elf_final_link_info*, i64*, i64)* @resolve_symbol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @resolve_symbol(i8* %0, i32* %1, %struct.elf_final_link_info* %2, i64* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.elf_final_link_info*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_14__*, align 8
  %13 = alloca %struct.bfd_link_hash_entry*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca %struct.TYPE_15__*, align 8
  %16 = alloca %struct.TYPE_26__*, align 8
  %17 = alloca i64, align 8
  store i8* %0, i8** %7, align 8
  store i32* %1, i32** %8, align 8
  store %struct.elf_final_link_info* %2, %struct.elf_final_link_info** %9, align 8
  store i64* %3, i64** %10, align 8
  store i64 %4, i64* %11, align 8
  store i8* null, i8** %14, align 8
  store %struct.TYPE_26__* null, %struct.TYPE_26__** %16, align 8
  %18 = load i32*, i32** %8, align 8
  %19 = call %struct.TYPE_16__* @elf_tdata(i32* %18)
  %20 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %19, i32 0, i32 0
  store %struct.TYPE_15__* %20, %struct.TYPE_15__** %15, align 8
  store i64 0, i64* %17, align 8
  br label %21

21:                                               ; preds = %92, %5
  %22 = load i64, i64* %17, align 8
  %23 = load i64, i64* %11, align 8
  %24 = icmp ult i64 %22, %23
  br i1 %24, label %25, label %95

25:                                               ; preds = %21
  %26 = load %struct.elf_final_link_info*, %struct.elf_final_link_info** %9, align 8
  %27 = getelementptr inbounds %struct.elf_final_link_info, %struct.elf_final_link_info* %26, i32 0, i32 2
  %28 = load %struct.TYPE_14__*, %struct.TYPE_14__** %27, align 8
  %29 = load i64, i64* %17, align 8
  %30 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %28, i64 %29
  store %struct.TYPE_14__* %30, %struct.TYPE_14__** %12, align 8
  %31 = load %struct.elf_final_link_info*, %struct.elf_final_link_info** %9, align 8
  %32 = getelementptr inbounds %struct.elf_final_link_info, %struct.elf_final_link_info* %31, i32 0, i32 1
  %33 = load %struct.TYPE_26__**, %struct.TYPE_26__*** %32, align 8
  %34 = load i64, i64* %17, align 8
  %35 = getelementptr inbounds %struct.TYPE_26__*, %struct.TYPE_26__** %33, i64 %34
  %36 = load %struct.TYPE_26__*, %struct.TYPE_26__** %35, align 8
  store %struct.TYPE_26__* %36, %struct.TYPE_26__** %16, align 8
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %38 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = call i64 @ELF_ST_BIND(i32 %39)
  %41 = load i64, i64* @STB_LOCAL, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %25
  br label %92

44:                                               ; preds = %25
  %45 = load i32*, i32** %8, align 8
  %46 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %47 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %50 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = call i8* @bfd_elf_string_from_elf_section(i32* %45, i32 %48, i32 %51)
  store i8* %52, i8** %14, align 8
  %53 = load i8*, i8** %14, align 8
  %54 = icmp ne i8* %53, null
  br i1 %54, label %55, label %91

55:                                               ; preds = %44
  %56 = load i8*, i8** %14, align 8
  %57 = load i8*, i8** %7, align 8
  %58 = call i64 @strcmp(i8* %56, i8* %57)
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %60, label %91

60:                                               ; preds = %55
  %61 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %62 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = load i64*, i64** %10, align 8
  store i64 %63, i64* %64, align 8
  %65 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %66 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @SHN_UNDEF, align 8
  %69 = icmp sgt i64 %67, %68
  br i1 %69, label %70, label %89

70:                                               ; preds = %60
  %71 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %72 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @SHN_LORESERVE, align 8
  %75 = icmp slt i64 %73, %74
  br i1 %75, label %76, label %89

76:                                               ; preds = %70
  %77 = load %struct.TYPE_26__*, %struct.TYPE_26__** %16, align 8
  %78 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.TYPE_26__*, %struct.TYPE_26__** %16, align 8
  %81 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %80, i32 0, i32 0
  %82 = load %struct.TYPE_18__*, %struct.TYPE_18__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = add nsw i64 %79, %84
  %86 = load i64*, i64** %10, align 8
  %87 = load i64, i64* %86, align 8
  %88 = add nsw i64 %87, %85
  store i64 %88, i64* %86, align 8
  br label %89

89:                                               ; preds = %76, %70, %60
  %90 = load i32, i32* @TRUE, align 4
  store i32 %90, i32* %6, align 4
  br label %174

91:                                               ; preds = %55, %44
  br label %92

92:                                               ; preds = %91, %43
  %93 = load i64, i64* %17, align 8
  %94 = add i64 %93, 1
  store i64 %94, i64* %17, align 8
  br label %21

95:                                               ; preds = %21
  %96 = load %struct.elf_final_link_info*, %struct.elf_final_link_info** %9, align 8
  %97 = getelementptr inbounds %struct.elf_final_link_info, %struct.elf_final_link_info* %96, i32 0, i32 0
  %98 = load %struct.TYPE_19__*, %struct.TYPE_19__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load i8*, i8** %7, align 8
  %102 = load i32, i32* @FALSE, align 4
  %103 = load i32, i32* @FALSE, align 4
  %104 = load i32, i32* @TRUE, align 4
  %105 = call %struct.bfd_link_hash_entry* @bfd_link_hash_lookup(i32 %100, i8* %101, i32 %102, i32 %103, i32 %104)
  store %struct.bfd_link_hash_entry* %105, %struct.bfd_link_hash_entry** %13, align 8
  %106 = load %struct.bfd_link_hash_entry*, %struct.bfd_link_hash_entry** %13, align 8
  %107 = icmp ne %struct.bfd_link_hash_entry* %106, null
  br i1 %107, label %110, label %108

108:                                              ; preds = %95
  %109 = load i32, i32* @FALSE, align 4
  store i32 %109, i32* %6, align 4
  br label %174

110:                                              ; preds = %95
  %111 = load %struct.bfd_link_hash_entry*, %struct.bfd_link_hash_entry** %13, align 8
  %112 = getelementptr inbounds %struct.bfd_link_hash_entry, %struct.bfd_link_hash_entry* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* @bfd_link_hash_defined, align 8
  %115 = icmp eq i64 %113, %114
  br i1 %115, label %122, label %116

116:                                              ; preds = %110
  %117 = load %struct.bfd_link_hash_entry*, %struct.bfd_link_hash_entry** %13, align 8
  %118 = getelementptr inbounds %struct.bfd_link_hash_entry, %struct.bfd_link_hash_entry* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = load i64, i64* @bfd_link_hash_defweak, align 8
  %121 = icmp eq i64 %119, %120
  br i1 %121, label %122, label %148

122:                                              ; preds = %116, %110
  %123 = load %struct.bfd_link_hash_entry*, %struct.bfd_link_hash_entry** %13, align 8
  %124 = getelementptr inbounds %struct.bfd_link_hash_entry, %struct.bfd_link_hash_entry* %123, i32 0, i32 2
  %125 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = load %struct.bfd_link_hash_entry*, %struct.bfd_link_hash_entry** %13, align 8
  %129 = getelementptr inbounds %struct.bfd_link_hash_entry, %struct.bfd_link_hash_entry* %128, i32 0, i32 2
  %130 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %130, i32 0, i32 1
  %132 = load %struct.TYPE_21__*, %struct.TYPE_21__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %132, i32 0, i32 1
  %134 = load %struct.TYPE_20__*, %struct.TYPE_20__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = add nsw i64 %127, %136
  %138 = load %struct.bfd_link_hash_entry*, %struct.bfd_link_hash_entry** %13, align 8
  %139 = getelementptr inbounds %struct.bfd_link_hash_entry, %struct.bfd_link_hash_entry* %138, i32 0, i32 2
  %140 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %140, i32 0, i32 1
  %142 = load %struct.TYPE_21__*, %struct.TYPE_21__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = add nsw i64 %137, %144
  %146 = load i64*, i64** %10, align 8
  store i64 %145, i64* %146, align 8
  %147 = load i32, i32* @TRUE, align 4
  store i32 %147, i32* %6, align 4
  br label %174

148:                                              ; preds = %116
  %149 = load %struct.bfd_link_hash_entry*, %struct.bfd_link_hash_entry** %13, align 8
  %150 = getelementptr inbounds %struct.bfd_link_hash_entry, %struct.bfd_link_hash_entry* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = load i64, i64* @bfd_link_hash_common, align 8
  %153 = icmp eq i64 %151, %152
  br i1 %153, label %154, label %172

154:                                              ; preds = %148
  %155 = load %struct.bfd_link_hash_entry*, %struct.bfd_link_hash_entry** %13, align 8
  %156 = getelementptr inbounds %struct.bfd_link_hash_entry, %struct.bfd_link_hash_entry* %155, i32 0, i32 2
  %157 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = load %struct.TYPE_17__*, %struct.TYPE_17__** @bfd_com_section_ptr, align 8
  %161 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %160, i32 0, i32 1
  %162 = load %struct.TYPE_24__*, %struct.TYPE_24__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = add nsw i64 %159, %164
  %166 = load %struct.TYPE_17__*, %struct.TYPE_17__** @bfd_com_section_ptr, align 8
  %167 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %166, i32 0, i32 0
  %168 = load i64, i64* %167, align 8
  %169 = add nsw i64 %165, %168
  %170 = load i64*, i64** %10, align 8
  store i64 %169, i64* %170, align 8
  %171 = load i32, i32* @TRUE, align 4
  store i32 %171, i32* %6, align 4
  br label %174

172:                                              ; preds = %148
  %173 = load i32, i32* @FALSE, align 4
  store i32 %173, i32* %6, align 4
  br label %174

174:                                              ; preds = %172, %154, %122, %108, %89
  %175 = load i32, i32* %6, align 4
  ret i32 %175
}

declare dso_local %struct.TYPE_16__* @elf_tdata(i32*) #1

declare dso_local i64 @ELF_ST_BIND(i32) #1

declare dso_local i8* @bfd_elf_string_from_elf_section(i32*, i32, i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local %struct.bfd_link_hash_entry* @bfd_link_hash_lookup(i32, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
