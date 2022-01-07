; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elflink.c_bfd_elf_reloc_symbol_deleted_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elflink.c_bfd_elf_reloc_symbol_deleted_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elf_reloc_cookie = type { i64, i64, i64, i32, %struct.TYPE_12__*, %struct.elf_link_hash_entry**, %struct.TYPE_7__*, i64, %struct.TYPE_7__*, %struct.TYPE_7__* }
%struct.TYPE_12__ = type { i64, i32 }
%struct.elf_link_hash_entry = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i64, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i32* }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { i64, i64 }

@FALSE = common dso_local global i32 0, align 4
@SHN_UNDEF = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@STB_LOCAL = common dso_local global i64 0, align 8
@bfd_link_hash_indirect = common dso_local global i64 0, align 8
@bfd_link_hash_warning = common dso_local global i64 0, align 8
@bfd_link_hash_defined = common dso_local global i64 0, align 8
@bfd_link_hash_defweak = common dso_local global i64 0, align 8
@SHN_LORESERVE = common dso_local global i64 0, align 8
@SHN_HIRESERVE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bfd_elf_reloc_symbol_deleted_p(i64 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.elf_reloc_cookie*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.elf_link_hash_entry*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_12__*, align 8
  store i64 %0, i64* %4, align 8
  store i8* %1, i8** %5, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.elf_reloc_cookie*
  store %struct.elf_reloc_cookie* %12, %struct.elf_reloc_cookie** %6, align 8
  %13 = load %struct.elf_reloc_cookie*, %struct.elf_reloc_cookie** %6, align 8
  %14 = getelementptr inbounds %struct.elf_reloc_cookie, %struct.elf_reloc_cookie* %13, i32 0, i32 7
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %2
  %18 = load %struct.elf_reloc_cookie*, %struct.elf_reloc_cookie** %6, align 8
  %19 = getelementptr inbounds %struct.elf_reloc_cookie, %struct.elf_reloc_cookie* %18, i32 0, i32 9
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %21 = load %struct.elf_reloc_cookie*, %struct.elf_reloc_cookie** %6, align 8
  %22 = getelementptr inbounds %struct.elf_reloc_cookie, %struct.elf_reloc_cookie* %21, i32 0, i32 6
  store %struct.TYPE_7__* %20, %struct.TYPE_7__** %22, align 8
  br label %23

23:                                               ; preds = %17, %2
  br label %24

24:                                               ; preds = %188, %23
  %25 = load %struct.elf_reloc_cookie*, %struct.elf_reloc_cookie** %6, align 8
  %26 = getelementptr inbounds %struct.elf_reloc_cookie, %struct.elf_reloc_cookie* %25, i32 0, i32 6
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %26, align 8
  %28 = load %struct.elf_reloc_cookie*, %struct.elf_reloc_cookie** %6, align 8
  %29 = getelementptr inbounds %struct.elf_reloc_cookie, %struct.elf_reloc_cookie* %28, i32 0, i32 8
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %29, align 8
  %31 = icmp ult %struct.TYPE_7__* %27, %30
  br i1 %31, label %32, label %193

32:                                               ; preds = %24
  %33 = load %struct.elf_reloc_cookie*, %struct.elf_reloc_cookie** %6, align 8
  %34 = getelementptr inbounds %struct.elf_reloc_cookie, %struct.elf_reloc_cookie* %33, i32 0, i32 7
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %48, label %37

37:                                               ; preds = %32
  %38 = load %struct.elf_reloc_cookie*, %struct.elf_reloc_cookie** %6, align 8
  %39 = getelementptr inbounds %struct.elf_reloc_cookie, %struct.elf_reloc_cookie* %38, i32 0, i32 6
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* %4, align 8
  %44 = icmp sgt i64 %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %37
  %46 = load i32, i32* @FALSE, align 4
  store i32 %46, i32* %3, align 4
  br label %195

47:                                               ; preds = %37
  br label %48

48:                                               ; preds = %47, %32
  %49 = load %struct.elf_reloc_cookie*, %struct.elf_reloc_cookie** %6, align 8
  %50 = getelementptr inbounds %struct.elf_reloc_cookie, %struct.elf_reloc_cookie* %49, i32 0, i32 6
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* %4, align 8
  %55 = icmp ne i64 %53, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %48
  br label %188

57:                                               ; preds = %48
  %58 = load %struct.elf_reloc_cookie*, %struct.elf_reloc_cookie** %6, align 8
  %59 = getelementptr inbounds %struct.elf_reloc_cookie, %struct.elf_reloc_cookie* %58, i32 0, i32 6
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.elf_reloc_cookie*, %struct.elf_reloc_cookie** %6, align 8
  %64 = getelementptr inbounds %struct.elf_reloc_cookie, %struct.elf_reloc_cookie* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = lshr i64 %62, %65
  store i64 %66, i64* %7, align 8
  %67 = load i64, i64* %7, align 8
  %68 = load i64, i64* @SHN_UNDEF, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %72

70:                                               ; preds = %57
  %71 = load i32, i32* @TRUE, align 4
  store i32 %71, i32* %3, align 4
  br label %195

72:                                               ; preds = %57
  %73 = load i64, i64* %7, align 8
  %74 = load %struct.elf_reloc_cookie*, %struct.elf_reloc_cookie** %6, align 8
  %75 = getelementptr inbounds %struct.elf_reloc_cookie, %struct.elf_reloc_cookie* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = icmp uge i64 %73, %76
  br i1 %77, label %89, label %78

78:                                               ; preds = %72
  %79 = load %struct.elf_reloc_cookie*, %struct.elf_reloc_cookie** %6, align 8
  %80 = getelementptr inbounds %struct.elf_reloc_cookie, %struct.elf_reloc_cookie* %79, i32 0, i32 4
  %81 = load %struct.TYPE_12__*, %struct.TYPE_12__** %80, align 8
  %82 = load i64, i64* %7, align 8
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %81, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = call i64 @ELF_ST_BIND(i32 %85)
  %87 = load i64, i64* @STB_LOCAL, align 8
  %88 = icmp ne i64 %86, %87
  br i1 %88, label %89, label %151

89:                                               ; preds = %78, %72
  %90 = load %struct.elf_reloc_cookie*, %struct.elf_reloc_cookie** %6, align 8
  %91 = getelementptr inbounds %struct.elf_reloc_cookie, %struct.elf_reloc_cookie* %90, i32 0, i32 5
  %92 = load %struct.elf_link_hash_entry**, %struct.elf_link_hash_entry*** %91, align 8
  %93 = load i64, i64* %7, align 8
  %94 = load %struct.elf_reloc_cookie*, %struct.elf_reloc_cookie** %6, align 8
  %95 = getelementptr inbounds %struct.elf_reloc_cookie, %struct.elf_reloc_cookie* %94, i32 0, i32 2
  %96 = load i64, i64* %95, align 8
  %97 = sub i64 %93, %96
  %98 = getelementptr inbounds %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %92, i64 %97
  %99 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %98, align 8
  store %struct.elf_link_hash_entry* %99, %struct.elf_link_hash_entry** %8, align 8
  br label %100

100:                                              ; preds = %116, %89
  %101 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %8, align 8
  %102 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @bfd_link_hash_indirect, align 8
  %106 = icmp eq i64 %104, %105
  br i1 %106, label %114, label %107

107:                                              ; preds = %100
  %108 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %8, align 8
  %109 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* @bfd_link_hash_warning, align 8
  %113 = icmp eq i64 %111, %112
  br label %114

114:                                              ; preds = %107, %100
  %115 = phi i1 [ true, %100 ], [ %113, %107 ]
  br i1 %115, label %116, label %124

116:                                              ; preds = %114
  %117 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %8, align 8
  %118 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %119, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = inttoptr i64 %122 to %struct.elf_link_hash_entry*
  store %struct.elf_link_hash_entry* %123, %struct.elf_link_hash_entry** %8, align 8
  br label %100

124:                                              ; preds = %114
  %125 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %8, align 8
  %126 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = load i64, i64* @bfd_link_hash_defined, align 8
  %130 = icmp eq i64 %128, %129
  br i1 %130, label %138, label %131

131:                                              ; preds = %124
  %132 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %8, align 8
  %133 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = load i64, i64* @bfd_link_hash_defweak, align 8
  %137 = icmp eq i64 %135, %136
  br i1 %137, label %138, label %149

138:                                              ; preds = %131, %124
  %139 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %8, align 8
  %140 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %140, i32 0, i32 1
  %142 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %142, i32 0, i32 0
  %144 = load i32*, i32** %143, align 8
  %145 = call i64 @elf_discarded_section(i32* %144)
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %149

147:                                              ; preds = %138
  %148 = load i32, i32* @TRUE, align 4
  store i32 %148, i32* %3, align 4
  br label %195

149:                                              ; preds = %138, %131
  %150 = load i32, i32* @FALSE, align 4
  store i32 %150, i32* %3, align 4
  br label %195

151:                                              ; preds = %78
  %152 = load %struct.elf_reloc_cookie*, %struct.elf_reloc_cookie** %6, align 8
  %153 = getelementptr inbounds %struct.elf_reloc_cookie, %struct.elf_reloc_cookie* %152, i32 0, i32 4
  %154 = load %struct.TYPE_12__*, %struct.TYPE_12__** %153, align 8
  %155 = load i64, i64* %7, align 8
  %156 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %154, i64 %155
  store %struct.TYPE_12__* %156, %struct.TYPE_12__** %10, align 8
  %157 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %158 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = load i64, i64* @SHN_LORESERVE, align 8
  %161 = icmp slt i64 %159, %160
  br i1 %161, label %168, label %162

162:                                              ; preds = %151
  %163 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %164 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %163, i32 0, i32 0
  %165 = load i64, i64* %164, align 8
  %166 = load i64, i64* @SHN_HIRESERVE, align 8
  %167 = icmp sgt i64 %165, %166
  br i1 %167, label %168, label %185

168:                                              ; preds = %162, %151
  %169 = load %struct.elf_reloc_cookie*, %struct.elf_reloc_cookie** %6, align 8
  %170 = getelementptr inbounds %struct.elf_reloc_cookie, %struct.elf_reloc_cookie* %169, i32 0, i32 3
  %171 = load i32, i32* %170, align 8
  %172 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %173 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %172, i32 0, i32 0
  %174 = load i64, i64* %173, align 8
  %175 = call i32* @bfd_section_from_elf_index(i32 %171, i64 %174)
  store i32* %175, i32** %9, align 8
  %176 = load i32*, i32** %9, align 8
  %177 = icmp ne i32* %176, null
  br i1 %177, label %178, label %184

178:                                              ; preds = %168
  %179 = load i32*, i32** %9, align 8
  %180 = call i64 @elf_discarded_section(i32* %179)
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %184

182:                                              ; preds = %178
  %183 = load i32, i32* @TRUE, align 4
  store i32 %183, i32* %3, align 4
  br label %195

184:                                              ; preds = %178, %168
  br label %185

185:                                              ; preds = %184, %162
  br label %186

186:                                              ; preds = %185
  %187 = load i32, i32* @FALSE, align 4
  store i32 %187, i32* %3, align 4
  br label %195

188:                                              ; preds = %56
  %189 = load %struct.elf_reloc_cookie*, %struct.elf_reloc_cookie** %6, align 8
  %190 = getelementptr inbounds %struct.elf_reloc_cookie, %struct.elf_reloc_cookie* %189, i32 0, i32 6
  %191 = load %struct.TYPE_7__*, %struct.TYPE_7__** %190, align 8
  %192 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %191, i32 1
  store %struct.TYPE_7__* %192, %struct.TYPE_7__** %190, align 8
  br label %24

193:                                              ; preds = %24
  %194 = load i32, i32* @FALSE, align 4
  store i32 %194, i32* %3, align 4
  br label %195

195:                                              ; preds = %193, %186, %182, %149, %147, %70, %45
  %196 = load i32, i32* %3, align 4
  ret i32 %196
}

declare dso_local i64 @ELF_ST_BIND(i32) #1

declare dso_local i64 @elf_discarded_section(i32*) #1

declare dso_local i32* @bfd_section_from_elf_index(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
