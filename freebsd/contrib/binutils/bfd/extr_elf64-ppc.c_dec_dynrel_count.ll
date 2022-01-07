; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf64-ppc.c_dec_dynrel_count.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf64-ppc.c_dec_dynrel_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfd_link_info = type { i64, i32 }
%struct.elf_link_hash_entry = type { i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_11__ = type { i32* }
%struct.ppc_dyn_relocs = type { i32, i64, %struct.ppc_dyn_relocs*, %struct.TYPE_11__* }
%struct.ppc_link_hash_entry = type { %struct.ppc_dyn_relocs* }
%struct.TYPE_12__ = type { i32 }

@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@bfd_link_hash_defweak = common dso_local global i64 0, align 8
@ELIMINATE_COPY_RELOCS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [37 x i8] c"dynreloc miscount for %B, section %A\00", align 1
@bfd_error_bad_value = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_11__*, %struct.bfd_link_info*, i32**, %struct.elf_link_hash_entry*, %struct.TYPE_11__*)* @dec_dynrel_count to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dec_dynrel_count(i32 %0, %struct.TYPE_11__* %1, %struct.bfd_link_info* %2, i32** %3, %struct.elf_link_hash_entry* %4, %struct.TYPE_11__* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_11__*, align 8
  %10 = alloca %struct.bfd_link_info*, align 8
  %11 = alloca i32**, align 8
  %12 = alloca %struct.elf_link_hash_entry*, align 8
  %13 = alloca %struct.TYPE_11__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.ppc_dyn_relocs*, align 8
  %16 = alloca %struct.ppc_dyn_relocs**, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  store i32 %0, i32* %8, align 4
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %9, align 8
  store %struct.bfd_link_info* %2, %struct.bfd_link_info** %10, align 8
  store i32** %3, i32*** %11, align 8
  store %struct.elf_link_hash_entry* %4, %struct.elf_link_hash_entry** %12, align 8
  store %struct.TYPE_11__* %5, %struct.TYPE_11__** %13, align 8
  %22 = load i32, i32* %8, align 4
  %23 = call i32 @ELF64_R_TYPE(i32 %22)
  store i32 %23, i32* %14, align 4
  %24 = load i32, i32* %14, align 4
  switch i32 %24, label %25 [
    i32 141, label %27
    i32 133, label %27
    i32 138, label %27
    i32 139, label %27
    i32 140, label %27
    i32 132, label %27
    i32 137, label %27
    i32 136, label %27
    i32 135, label %27
    i32 134, label %27
    i32 131, label %35
    i32 147, label %35
    i32 146, label %35
    i32 148, label %35
    i32 145, label %35
    i32 144, label %35
    i32 143, label %35
    i32 163, label %35
    i32 162, label %35
    i32 161, label %35
    i32 160, label %35
    i32 159, label %35
    i32 158, label %35
    i32 157, label %35
    i32 156, label %35
    i32 155, label %35
    i32 154, label %35
    i32 153, label %35
    i32 152, label %35
    i32 151, label %35
    i32 150, label %35
    i32 149, label %35
    i32 130, label %35
    i32 129, label %35
    i32 128, label %35
    i32 142, label %35
  ]

25:                                               ; preds = %6
  %26 = load i32, i32* @TRUE, align 4
  store i32 %26, i32* %7, align 4
  br label %190

27:                                               ; preds = %6, %6, %6, %6, %6, %6, %6, %6, %6, %6
  %28 = load %struct.bfd_link_info*, %struct.bfd_link_info** %10, align 8
  %29 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %27
  %33 = load i32, i32* @TRUE, align 4
  store i32 %33, i32* %7, align 4
  br label %190

34:                                               ; preds = %27
  br label %35

35:                                               ; preds = %6, %6, %6, %6, %6, %6, %6, %6, %6, %6, %6, %6, %6, %6, %6, %6, %6, %6, %6, %6, %6, %6, %6, %6, %6, %6, %34
  br label %36

36:                                               ; preds = %35
  %37 = load i32**, i32*** %11, align 8
  %38 = icmp ne i32** %37, null
  br i1 %38, label %39, label %53

39:                                               ; preds = %36
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  store i32* %42, i32** %19, align 8
  %43 = load i32, i32* %8, align 4
  %44 = call i64 @ELF64_R_SYM(i32 %43)
  store i64 %44, i64* %17, align 8
  %45 = load i32**, i32*** %11, align 8
  %46 = load i64, i64* %17, align 8
  %47 = load i32*, i32** %19, align 8
  %48 = call i32 @get_sym_h(%struct.elf_link_hash_entry** %12, i32** %18, %struct.TYPE_11__** %13, i32* null, i32** %45, i64 %46, i32* %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %52, label %50

50:                                               ; preds = %39
  %51 = load i32, i32* @FALSE, align 4
  store i32 %51, i32* %7, align 4
  br label %190

52:                                               ; preds = %39
  br label %53

53:                                               ; preds = %52, %36
  %54 = load %struct.bfd_link_info*, %struct.bfd_link_info** %10, align 8
  %55 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %83

58:                                               ; preds = %53
  %59 = load %struct.bfd_link_info*, %struct.bfd_link_info** %10, align 8
  %60 = load i32, i32* %14, align 4
  %61 = call i64 @must_be_dyn_reloc(%struct.bfd_link_info* %59, i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %106, label %63

63:                                               ; preds = %58
  %64 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %12, align 8
  %65 = icmp ne %struct.elf_link_hash_entry* %64, null
  br i1 %65, label %66, label %83

66:                                               ; preds = %63
  %67 = load %struct.bfd_link_info*, %struct.bfd_link_info** %10, align 8
  %68 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %106

71:                                               ; preds = %66
  %72 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %12, align 8
  %73 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @bfd_link_hash_defweak, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %106, label %78

78:                                               ; preds = %71
  %79 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %12, align 8
  %80 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %106

83:                                               ; preds = %78, %63, %53
  %84 = load i64, i64* @ELIMINATE_COPY_RELOCS, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %107

86:                                               ; preds = %83
  %87 = load %struct.bfd_link_info*, %struct.bfd_link_info** %10, align 8
  %88 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %107, label %91

91:                                               ; preds = %86
  %92 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %12, align 8
  %93 = icmp ne %struct.elf_link_hash_entry* %92, null
  br i1 %93, label %94, label %107

94:                                               ; preds = %91
  %95 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %12, align 8
  %96 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @bfd_link_hash_defweak, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %106, label %101

101:                                              ; preds = %94
  %102 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %12, align 8
  %103 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %107, label %106

106:                                              ; preds = %101, %94, %78, %71, %66, %58
  br label %109

107:                                              ; preds = %101, %91, %86, %83
  %108 = load i32, i32* @TRUE, align 4
  store i32 %108, i32* %7, align 4
  br label %190

109:                                              ; preds = %106
  %110 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %12, align 8
  %111 = icmp ne %struct.elf_link_hash_entry* %110, null
  br i1 %111, label %112, label %116

112:                                              ; preds = %109
  %113 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %12, align 8
  %114 = bitcast %struct.elf_link_hash_entry* %113 to %struct.ppc_link_hash_entry*
  %115 = getelementptr inbounds %struct.ppc_link_hash_entry, %struct.ppc_link_hash_entry* %114, i32 0, i32 0
  store %struct.ppc_dyn_relocs** %115, %struct.ppc_dyn_relocs*** %16, align 8
  br label %140

116:                                              ; preds = %109
  %117 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %118 = icmp ne %struct.TYPE_11__* %117, null
  br i1 %118, label %119, label %126

119:                                              ; preds = %116
  %120 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %121 = call %struct.TYPE_12__* @elf_section_data(%struct.TYPE_11__* %120)
  %122 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %121, i32 0, i32 0
  %123 = bitcast i32* %122 to i8*
  store i8* %123, i8** %20, align 8
  %124 = load i8*, i8** %20, align 8
  %125 = bitcast i8* %124 to %struct.ppc_dyn_relocs**
  store %struct.ppc_dyn_relocs** %125, %struct.ppc_dyn_relocs*** %16, align 8
  br label %133

126:                                              ; preds = %116
  %127 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %128 = call %struct.TYPE_12__* @elf_section_data(%struct.TYPE_11__* %127)
  %129 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %128, i32 0, i32 0
  %130 = bitcast i32* %129 to i8*
  store i8* %130, i8** %21, align 8
  %131 = load i8*, i8** %21, align 8
  %132 = bitcast i8* %131 to %struct.ppc_dyn_relocs**
  store %struct.ppc_dyn_relocs** %132, %struct.ppc_dyn_relocs*** %16, align 8
  br label %133

133:                                              ; preds = %126, %119
  %134 = load %struct.ppc_dyn_relocs**, %struct.ppc_dyn_relocs*** %16, align 8
  %135 = load %struct.ppc_dyn_relocs*, %struct.ppc_dyn_relocs** %134, align 8
  %136 = icmp eq %struct.ppc_dyn_relocs* %135, null
  br i1 %136, label %137, label %139

137:                                              ; preds = %133
  %138 = load i32, i32* @TRUE, align 4
  store i32 %138, i32* %7, align 4
  br label %190

139:                                              ; preds = %133
  br label %140

140:                                              ; preds = %139, %112
  br label %141

141:                                              ; preds = %177, %140
  %142 = load %struct.ppc_dyn_relocs**, %struct.ppc_dyn_relocs*** %16, align 8
  %143 = load %struct.ppc_dyn_relocs*, %struct.ppc_dyn_relocs** %142, align 8
  store %struct.ppc_dyn_relocs* %143, %struct.ppc_dyn_relocs** %15, align 8
  %144 = icmp ne %struct.ppc_dyn_relocs* %143, null
  br i1 %144, label %145, label %180

145:                                              ; preds = %141
  %146 = load %struct.ppc_dyn_relocs*, %struct.ppc_dyn_relocs** %15, align 8
  %147 = getelementptr inbounds %struct.ppc_dyn_relocs, %struct.ppc_dyn_relocs* %146, i32 0, i32 3
  %148 = load %struct.TYPE_11__*, %struct.TYPE_11__** %147, align 8
  %149 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %150 = icmp eq %struct.TYPE_11__* %148, %149
  br i1 %150, label %151, label %177

151:                                              ; preds = %145
  %152 = load %struct.bfd_link_info*, %struct.bfd_link_info** %10, align 8
  %153 = load i32, i32* %14, align 4
  %154 = call i64 @must_be_dyn_reloc(%struct.bfd_link_info* %152, i32 %153)
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %161, label %156

156:                                              ; preds = %151
  %157 = load %struct.ppc_dyn_relocs*, %struct.ppc_dyn_relocs** %15, align 8
  %158 = getelementptr inbounds %struct.ppc_dyn_relocs, %struct.ppc_dyn_relocs* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = sub nsw i32 %159, 1
  store i32 %160, i32* %158, align 8
  br label %161

161:                                              ; preds = %156, %151
  %162 = load %struct.ppc_dyn_relocs*, %struct.ppc_dyn_relocs** %15, align 8
  %163 = getelementptr inbounds %struct.ppc_dyn_relocs, %struct.ppc_dyn_relocs* %162, i32 0, i32 1
  %164 = load i64, i64* %163, align 8
  %165 = sub nsw i64 %164, 1
  store i64 %165, i64* %163, align 8
  %166 = load %struct.ppc_dyn_relocs*, %struct.ppc_dyn_relocs** %15, align 8
  %167 = getelementptr inbounds %struct.ppc_dyn_relocs, %struct.ppc_dyn_relocs* %166, i32 0, i32 1
  %168 = load i64, i64* %167, align 8
  %169 = icmp eq i64 %168, 0
  br i1 %169, label %170, label %175

170:                                              ; preds = %161
  %171 = load %struct.ppc_dyn_relocs*, %struct.ppc_dyn_relocs** %15, align 8
  %172 = getelementptr inbounds %struct.ppc_dyn_relocs, %struct.ppc_dyn_relocs* %171, i32 0, i32 2
  %173 = load %struct.ppc_dyn_relocs*, %struct.ppc_dyn_relocs** %172, align 8
  %174 = load %struct.ppc_dyn_relocs**, %struct.ppc_dyn_relocs*** %16, align 8
  store %struct.ppc_dyn_relocs* %173, %struct.ppc_dyn_relocs** %174, align 8
  br label %175

175:                                              ; preds = %170, %161
  %176 = load i32, i32* @TRUE, align 4
  store i32 %176, i32* %7, align 4
  br label %190

177:                                              ; preds = %145
  %178 = load %struct.ppc_dyn_relocs*, %struct.ppc_dyn_relocs** %15, align 8
  %179 = getelementptr inbounds %struct.ppc_dyn_relocs, %struct.ppc_dyn_relocs* %178, i32 0, i32 2
  store %struct.ppc_dyn_relocs** %179, %struct.ppc_dyn_relocs*** %16, align 8
  br label %141

180:                                              ; preds = %141
  %181 = call i32 @_(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %182 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %183 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %182, i32 0, i32 0
  %184 = load i32*, i32** %183, align 8
  %185 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %186 = call i32 @_bfd_error_handler(i32 %181, i32* %184, %struct.TYPE_11__* %185)
  %187 = load i32, i32* @bfd_error_bad_value, align 4
  %188 = call i32 @bfd_set_error(i32 %187)
  %189 = load i32, i32* @FALSE, align 4
  store i32 %189, i32* %7, align 4
  br label %190

190:                                              ; preds = %180, %175, %137, %107, %50, %32, %25
  %191 = load i32, i32* %7, align 4
  ret i32 %191
}

declare dso_local i32 @ELF64_R_TYPE(i32) #1

declare dso_local i64 @ELF64_R_SYM(i32) #1

declare dso_local i32 @get_sym_h(%struct.elf_link_hash_entry**, i32**, %struct.TYPE_11__**, i32*, i32**, i64, i32*) #1

declare dso_local i64 @must_be_dyn_reloc(%struct.bfd_link_info*, i32) #1

declare dso_local %struct.TYPE_12__* @elf_section_data(%struct.TYPE_11__*) #1

declare dso_local i32 @_bfd_error_handler(i32, i32*, %struct.TYPE_11__*) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @bfd_set_error(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
