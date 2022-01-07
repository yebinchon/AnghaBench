; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elflink.c_bfd_elf_link_record_local_dynamic_symbol.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elflink.c_bfd_elf_link_record_local_dynamic_symbol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfd_link_info = type { i32 }
%struct.elf_link_local_dynamic_entry = type { i64, %struct.TYPE_9__, i32*, %struct.elf_link_local_dynamic_entry* }
%struct.TYPE_9__ = type { i64, i64, i32 }
%struct.elf_link_hash_table = type { i32, %struct.elf_link_local_dynamic_entry*, %struct.elf_strtab_hash* }
%struct.elf_strtab_hash = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }

@SHN_UNDEF = common dso_local global i64 0, align 8
@SHN_LORESERVE = common dso_local global i64 0, align 8
@SHN_HIRESERVE = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@STB_LOCAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bfd_elf_link_record_local_dynamic_symbol(%struct.bfd_link_info* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bfd_link_info*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.elf_link_local_dynamic_entry*, align 8
  %10 = alloca %struct.elf_link_hash_table*, align 8
  %11 = alloca %struct.elf_strtab_hash*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca [4 x i8], align 1
  %16 = alloca %struct.TYPE_6__*, align 8
  store %struct.bfd_link_info* %0, %struct.bfd_link_info** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  %17 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %18 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @is_elf_hash_table(i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %182

23:                                               ; preds = %3
  %24 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %25 = call %struct.elf_link_hash_table* @elf_hash_table(%struct.bfd_link_info* %24)
  %26 = getelementptr inbounds %struct.elf_link_hash_table, %struct.elf_link_hash_table* %25, i32 0, i32 1
  %27 = load %struct.elf_link_local_dynamic_entry*, %struct.elf_link_local_dynamic_entry** %26, align 8
  store %struct.elf_link_local_dynamic_entry* %27, %struct.elf_link_local_dynamic_entry** %9, align 8
  br label %28

28:                                               ; preds = %45, %23
  %29 = load %struct.elf_link_local_dynamic_entry*, %struct.elf_link_local_dynamic_entry** %9, align 8
  %30 = icmp ne %struct.elf_link_local_dynamic_entry* %29, null
  br i1 %30, label %31, label %49

31:                                               ; preds = %28
  %32 = load %struct.elf_link_local_dynamic_entry*, %struct.elf_link_local_dynamic_entry** %9, align 8
  %33 = getelementptr inbounds %struct.elf_link_local_dynamic_entry, %struct.elf_link_local_dynamic_entry* %32, i32 0, i32 2
  %34 = load i32*, i32** %33, align 8
  %35 = load i32*, i32** %6, align 8
  %36 = icmp eq i32* %34, %35
  br i1 %36, label %37, label %44

37:                                               ; preds = %31
  %38 = load %struct.elf_link_local_dynamic_entry*, %struct.elf_link_local_dynamic_entry** %9, align 8
  %39 = getelementptr inbounds %struct.elf_link_local_dynamic_entry, %struct.elf_link_local_dynamic_entry* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* %7, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %37
  store i32 1, i32* %4, align 4
  br label %182

44:                                               ; preds = %37, %31
  br label %45

45:                                               ; preds = %44
  %46 = load %struct.elf_link_local_dynamic_entry*, %struct.elf_link_local_dynamic_entry** %9, align 8
  %47 = getelementptr inbounds %struct.elf_link_local_dynamic_entry, %struct.elf_link_local_dynamic_entry* %46, i32 0, i32 3
  %48 = load %struct.elf_link_local_dynamic_entry*, %struct.elf_link_local_dynamic_entry** %47, align 8
  store %struct.elf_link_local_dynamic_entry* %48, %struct.elf_link_local_dynamic_entry** %9, align 8
  br label %28

49:                                               ; preds = %28
  store i32 48, i32* %8, align 4
  %50 = load i32*, i32** %6, align 8
  %51 = load i32, i32* %8, align 4
  %52 = call %struct.elf_link_local_dynamic_entry* @bfd_alloc(i32* %50, i32 %51)
  store %struct.elf_link_local_dynamic_entry* %52, %struct.elf_link_local_dynamic_entry** %9, align 8
  %53 = load %struct.elf_link_local_dynamic_entry*, %struct.elf_link_local_dynamic_entry** %9, align 8
  %54 = icmp eq %struct.elf_link_local_dynamic_entry* %53, null
  br i1 %54, label %55, label %56

55:                                               ; preds = %49
  store i32 0, i32* %4, align 4
  br label %182

56:                                               ; preds = %49
  %57 = load i32*, i32** %6, align 8
  %58 = load i32*, i32** %6, align 8
  %59 = call %struct.TYPE_7__* @elf_tdata(i32* %58)
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 0
  %61 = load i64, i64* %7, align 8
  %62 = load %struct.elf_link_local_dynamic_entry*, %struct.elf_link_local_dynamic_entry** %9, align 8
  %63 = getelementptr inbounds %struct.elf_link_local_dynamic_entry, %struct.elf_link_local_dynamic_entry* %62, i32 0, i32 1
  %64 = getelementptr inbounds [4 x i8], [4 x i8]* %15, i64 0, i64 0
  %65 = call i32 @bfd_elf_get_elf_syms(i32* %57, %struct.TYPE_8__* %60, i32 1, i64 %61, %struct.TYPE_9__* %63, i8* %64, i32* %14)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %71, label %67

67:                                               ; preds = %56
  %68 = load i32*, i32** %6, align 8
  %69 = load %struct.elf_link_local_dynamic_entry*, %struct.elf_link_local_dynamic_entry** %9, align 8
  %70 = call i32 @bfd_release(i32* %68, %struct.elf_link_local_dynamic_entry* %69)
  store i32 0, i32* %4, align 4
  br label %182

71:                                               ; preds = %56
  %72 = load %struct.elf_link_local_dynamic_entry*, %struct.elf_link_local_dynamic_entry** %9, align 8
  %73 = getelementptr inbounds %struct.elf_link_local_dynamic_entry, %struct.elf_link_local_dynamic_entry* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @SHN_UNDEF, align 8
  %77 = icmp ne i64 %75, %76
  br i1 %77, label %78, label %112

78:                                               ; preds = %71
  %79 = load %struct.elf_link_local_dynamic_entry*, %struct.elf_link_local_dynamic_entry** %9, align 8
  %80 = getelementptr inbounds %struct.elf_link_local_dynamic_entry, %struct.elf_link_local_dynamic_entry* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @SHN_LORESERVE, align 8
  %84 = icmp slt i64 %82, %83
  br i1 %84, label %92, label %85

85:                                               ; preds = %78
  %86 = load %struct.elf_link_local_dynamic_entry*, %struct.elf_link_local_dynamic_entry** %9, align 8
  %87 = getelementptr inbounds %struct.elf_link_local_dynamic_entry, %struct.elf_link_local_dynamic_entry* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @SHN_HIRESERVE, align 8
  %91 = icmp sgt i64 %89, %90
  br i1 %91, label %92, label %112

92:                                               ; preds = %85, %78
  %93 = load i32*, i32** %6, align 8
  %94 = load %struct.elf_link_local_dynamic_entry*, %struct.elf_link_local_dynamic_entry** %9, align 8
  %95 = getelementptr inbounds %struct.elf_link_local_dynamic_entry, %struct.elf_link_local_dynamic_entry* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = call %struct.TYPE_6__* @bfd_section_from_elf_index(i32* %93, i64 %97)
  store %struct.TYPE_6__* %98, %struct.TYPE_6__** %16, align 8
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %100 = icmp eq %struct.TYPE_6__* %99, null
  br i1 %100, label %107, label %101

101:                                              ; preds = %92
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = call i64 @bfd_is_abs_section(i32 %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %111

107:                                              ; preds = %101, %92
  %108 = load i32*, i32** %6, align 8
  %109 = load %struct.elf_link_local_dynamic_entry*, %struct.elf_link_local_dynamic_entry** %9, align 8
  %110 = call i32 @bfd_release(i32* %108, %struct.elf_link_local_dynamic_entry* %109)
  store i32 2, i32* %4, align 4
  br label %182

111:                                              ; preds = %101
  br label %112

112:                                              ; preds = %111, %85, %71
  %113 = load i32*, i32** %6, align 8
  %114 = load i32*, i32** %6, align 8
  %115 = call %struct.TYPE_7__* @elf_tdata(i32* %114)
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.elf_link_local_dynamic_entry*, %struct.elf_link_local_dynamic_entry** %9, align 8
  %120 = getelementptr inbounds %struct.elf_link_local_dynamic_entry, %struct.elf_link_local_dynamic_entry* %119, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %120, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  %123 = call i8* @bfd_elf_string_from_elf_section(i32* %113, i32 %118, i64 %122)
  store i8* %123, i8** %13, align 8
  %124 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %125 = call %struct.elf_link_hash_table* @elf_hash_table(%struct.bfd_link_info* %124)
  %126 = getelementptr inbounds %struct.elf_link_hash_table, %struct.elf_link_hash_table* %125, i32 0, i32 2
  %127 = load %struct.elf_strtab_hash*, %struct.elf_strtab_hash** %126, align 8
  store %struct.elf_strtab_hash* %127, %struct.elf_strtab_hash** %11, align 8
  %128 = load %struct.elf_strtab_hash*, %struct.elf_strtab_hash** %11, align 8
  %129 = icmp eq %struct.elf_strtab_hash* %128, null
  br i1 %129, label %130, label %139

130:                                              ; preds = %112
  %131 = call %struct.elf_strtab_hash* (...) @_bfd_elf_strtab_init()
  store %struct.elf_strtab_hash* %131, %struct.elf_strtab_hash** %11, align 8
  %132 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %133 = call %struct.elf_link_hash_table* @elf_hash_table(%struct.bfd_link_info* %132)
  %134 = getelementptr inbounds %struct.elf_link_hash_table, %struct.elf_link_hash_table* %133, i32 0, i32 2
  store %struct.elf_strtab_hash* %131, %struct.elf_strtab_hash** %134, align 8
  %135 = load %struct.elf_strtab_hash*, %struct.elf_strtab_hash** %11, align 8
  %136 = icmp eq %struct.elf_strtab_hash* %135, null
  br i1 %136, label %137, label %138

137:                                              ; preds = %130
  store i32 0, i32* %4, align 4
  br label %182

138:                                              ; preds = %130
  br label %139

139:                                              ; preds = %138, %112
  %140 = load %struct.elf_strtab_hash*, %struct.elf_strtab_hash** %11, align 8
  %141 = load i8*, i8** %13, align 8
  %142 = load i32, i32* @FALSE, align 4
  %143 = call i64 @_bfd_elf_strtab_add(%struct.elf_strtab_hash* %140, i8* %141, i32 %142)
  store i64 %143, i64* %12, align 8
  %144 = load i64, i64* %12, align 8
  %145 = icmp eq i64 %144, -1
  br i1 %145, label %146, label %147

146:                                              ; preds = %139
  store i32 0, i32* %4, align 4
  br label %182

147:                                              ; preds = %139
  %148 = load i64, i64* %12, align 8
  %149 = load %struct.elf_link_local_dynamic_entry*, %struct.elf_link_local_dynamic_entry** %9, align 8
  %150 = getelementptr inbounds %struct.elf_link_local_dynamic_entry, %struct.elf_link_local_dynamic_entry* %149, i32 0, i32 1
  %151 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %150, i32 0, i32 1
  store i64 %148, i64* %151, align 8
  %152 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %153 = call %struct.elf_link_hash_table* @elf_hash_table(%struct.bfd_link_info* %152)
  store %struct.elf_link_hash_table* %153, %struct.elf_link_hash_table** %10, align 8
  %154 = load %struct.elf_link_hash_table*, %struct.elf_link_hash_table** %10, align 8
  %155 = getelementptr inbounds %struct.elf_link_hash_table, %struct.elf_link_hash_table* %154, i32 0, i32 1
  %156 = load %struct.elf_link_local_dynamic_entry*, %struct.elf_link_local_dynamic_entry** %155, align 8
  %157 = load %struct.elf_link_local_dynamic_entry*, %struct.elf_link_local_dynamic_entry** %9, align 8
  %158 = getelementptr inbounds %struct.elf_link_local_dynamic_entry, %struct.elf_link_local_dynamic_entry* %157, i32 0, i32 3
  store %struct.elf_link_local_dynamic_entry* %156, %struct.elf_link_local_dynamic_entry** %158, align 8
  %159 = load %struct.elf_link_local_dynamic_entry*, %struct.elf_link_local_dynamic_entry** %9, align 8
  %160 = load %struct.elf_link_hash_table*, %struct.elf_link_hash_table** %10, align 8
  %161 = getelementptr inbounds %struct.elf_link_hash_table, %struct.elf_link_hash_table* %160, i32 0, i32 1
  store %struct.elf_link_local_dynamic_entry* %159, %struct.elf_link_local_dynamic_entry** %161, align 8
  %162 = load i32*, i32** %6, align 8
  %163 = load %struct.elf_link_local_dynamic_entry*, %struct.elf_link_local_dynamic_entry** %9, align 8
  %164 = getelementptr inbounds %struct.elf_link_local_dynamic_entry, %struct.elf_link_local_dynamic_entry* %163, i32 0, i32 2
  store i32* %162, i32** %164, align 8
  %165 = load i64, i64* %7, align 8
  %166 = load %struct.elf_link_local_dynamic_entry*, %struct.elf_link_local_dynamic_entry** %9, align 8
  %167 = getelementptr inbounds %struct.elf_link_local_dynamic_entry, %struct.elf_link_local_dynamic_entry* %166, i32 0, i32 0
  store i64 %165, i64* %167, align 8
  %168 = load %struct.elf_link_hash_table*, %struct.elf_link_hash_table** %10, align 8
  %169 = getelementptr inbounds %struct.elf_link_hash_table, %struct.elf_link_hash_table* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %169, align 8
  %172 = load i32, i32* @STB_LOCAL, align 4
  %173 = load %struct.elf_link_local_dynamic_entry*, %struct.elf_link_local_dynamic_entry** %9, align 8
  %174 = getelementptr inbounds %struct.elf_link_local_dynamic_entry, %struct.elf_link_local_dynamic_entry* %173, i32 0, i32 1
  %175 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %174, i32 0, i32 2
  %176 = load i32, i32* %175, align 8
  %177 = call i32 @ELF_ST_TYPE(i32 %176)
  %178 = call i32 @ELF_ST_INFO(i32 %172, i32 %177)
  %179 = load %struct.elf_link_local_dynamic_entry*, %struct.elf_link_local_dynamic_entry** %9, align 8
  %180 = getelementptr inbounds %struct.elf_link_local_dynamic_entry, %struct.elf_link_local_dynamic_entry* %179, i32 0, i32 1
  %181 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %180, i32 0, i32 2
  store i32 %178, i32* %181, align 8
  store i32 1, i32* %4, align 4
  br label %182

182:                                              ; preds = %147, %146, %137, %107, %67, %55, %43, %22
  %183 = load i32, i32* %4, align 4
  ret i32 %183
}

declare dso_local i32 @is_elf_hash_table(i32) #1

declare dso_local %struct.elf_link_hash_table* @elf_hash_table(%struct.bfd_link_info*) #1

declare dso_local %struct.elf_link_local_dynamic_entry* @bfd_alloc(i32*, i32) #1

declare dso_local i32 @bfd_elf_get_elf_syms(i32*, %struct.TYPE_8__*, i32, i64, %struct.TYPE_9__*, i8*, i32*) #1

declare dso_local %struct.TYPE_7__* @elf_tdata(i32*) #1

declare dso_local i32 @bfd_release(i32*, %struct.elf_link_local_dynamic_entry*) #1

declare dso_local %struct.TYPE_6__* @bfd_section_from_elf_index(i32*, i64) #1

declare dso_local i64 @bfd_is_abs_section(i32) #1

declare dso_local i8* @bfd_elf_string_from_elf_section(i32*, i32, i64) #1

declare dso_local %struct.elf_strtab_hash* @_bfd_elf_strtab_init(...) #1

declare dso_local i64 @_bfd_elf_strtab_add(%struct.elf_strtab_hash*, i8*, i32) #1

declare dso_local i32 @ELF_ST_INFO(i32, i32) #1

declare dso_local i32 @ELF_ST_TYPE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
