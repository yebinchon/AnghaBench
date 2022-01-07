; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf64-ppc.c_get_sym_h.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf64-ppc.c_get_sym_h.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elf_link_hash_entry = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i64, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.TYPE_13__, %struct.TYPE_12__ }
%struct.TYPE_13__ = type { i32* }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_16__ = type { i64 }
%struct.TYPE_17__ = type { i64, i64 }
%struct.ppc_link_hash_entry = type { i8 }
%struct.got_entry = type { i32 }
%struct.TYPE_18__ = type { %struct.TYPE_17__ }

@bfd_link_hash_indirect = common dso_local global i64 0, align 8
@bfd_link_hash_warning = common dso_local global i64 0, align 8
@bfd_link_hash_defined = common dso_local global i64 0, align 8
@bfd_link_hash_defweak = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@SHN_UNDEF = common dso_local global i64 0, align 8
@SHN_LORESERVE = common dso_local global i64 0, align 8
@SHN_HIRESERVE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.elf_link_hash_entry**, %struct.TYPE_16__**, i32**, i8**, %struct.TYPE_16__**, i64, i32*)* @get_sym_h to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_sym_h(%struct.elf_link_hash_entry** %0, %struct.TYPE_16__** %1, i32** %2, i8** %3, %struct.TYPE_16__** %4, i64 %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.elf_link_hash_entry**, align 8
  %10 = alloca %struct.TYPE_16__**, align 8
  %11 = alloca i32**, align 8
  %12 = alloca i8**, align 8
  %13 = alloca %struct.TYPE_16__**, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.TYPE_17__*, align 8
  %17 = alloca %struct.elf_link_hash_entry**, align 8
  %18 = alloca %struct.elf_link_hash_entry*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca %struct.ppc_link_hash_entry*, align 8
  %21 = alloca %struct.TYPE_16__*, align 8
  %22 = alloca %struct.TYPE_16__*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca %struct.got_entry**, align 8
  %25 = alloca i8*, align 8
  %26 = alloca i8*, align 8
  store %struct.elf_link_hash_entry** %0, %struct.elf_link_hash_entry*** %9, align 8
  store %struct.TYPE_16__** %1, %struct.TYPE_16__*** %10, align 8
  store i32** %2, i32*** %11, align 8
  store i8** %3, i8*** %12, align 8
  store %struct.TYPE_16__** %4, %struct.TYPE_16__*** %13, align 8
  store i64 %5, i64* %14, align 8
  store i32* %6, i32** %15, align 8
  %27 = load i32*, i32** %15, align 8
  %28 = call %struct.TYPE_18__* @elf_tdata(i32* %27)
  %29 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %28, i32 0, i32 0
  store %struct.TYPE_17__* %29, %struct.TYPE_17__** %16, align 8
  %30 = load i64, i64* %14, align 8
  %31 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %32 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp uge i64 %30, %33
  br i1 %34, label %35, label %118

35:                                               ; preds = %7
  %36 = load i32*, i32** %15, align 8
  %37 = call %struct.elf_link_hash_entry** @elf_sym_hashes(i32* %36)
  store %struct.elf_link_hash_entry** %37, %struct.elf_link_hash_entry*** %17, align 8
  %38 = load %struct.elf_link_hash_entry**, %struct.elf_link_hash_entry*** %17, align 8
  %39 = load i64, i64* %14, align 8
  %40 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %41 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = sub i64 %39, %42
  %44 = getelementptr inbounds %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %38, i64 %43
  %45 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %44, align 8
  store %struct.elf_link_hash_entry* %45, %struct.elf_link_hash_entry** %18, align 8
  br label %46

46:                                               ; preds = %62, %35
  %47 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %18, align 8
  %48 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @bfd_link_hash_indirect, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %60, label %53

53:                                               ; preds = %46
  %54 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %18, align 8
  %55 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @bfd_link_hash_warning, align 8
  %59 = icmp eq i64 %57, %58
  br label %60

60:                                               ; preds = %53, %46
  %61 = phi i1 [ true, %46 ], [ %59, %53 ]
  br i1 %61, label %62, label %70

62:                                               ; preds = %60
  %63 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %18, align 8
  %64 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = inttoptr i64 %68 to %struct.elf_link_hash_entry*
  store %struct.elf_link_hash_entry* %69, %struct.elf_link_hash_entry** %18, align 8
  br label %46

70:                                               ; preds = %60
  %71 = load %struct.elf_link_hash_entry**, %struct.elf_link_hash_entry*** %9, align 8
  %72 = icmp ne %struct.elf_link_hash_entry** %71, null
  br i1 %72, label %73, label %76

73:                                               ; preds = %70
  %74 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %18, align 8
  %75 = load %struct.elf_link_hash_entry**, %struct.elf_link_hash_entry*** %9, align 8
  store %struct.elf_link_hash_entry* %74, %struct.elf_link_hash_entry** %75, align 8
  br label %76

76:                                               ; preds = %73, %70
  %77 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %10, align 8
  %78 = icmp ne %struct.TYPE_16__** %77, null
  br i1 %78, label %79, label %81

79:                                               ; preds = %76
  %80 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %10, align 8
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %80, align 8
  br label %81

81:                                               ; preds = %79, %76
  %82 = load i32**, i32*** %11, align 8
  %83 = icmp ne i32** %82, null
  br i1 %83, label %84, label %108

84:                                               ; preds = %81
  store i32* null, i32** %19, align 8
  %85 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %18, align 8
  %86 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @bfd_link_hash_defined, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %98, label %91

91:                                               ; preds = %84
  %92 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %18, align 8
  %93 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @bfd_link_hash_defweak, align 8
  %97 = icmp eq i64 %95, %96
  br i1 %97, label %98, label %105

98:                                               ; preds = %91, %84
  %99 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %18, align 8
  %100 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %102, i32 0, i32 0
  %104 = load i32*, i32** %103, align 8
  store i32* %104, i32** %19, align 8
  br label %105

105:                                              ; preds = %98, %91
  %106 = load i32*, i32** %19, align 8
  %107 = load i32**, i32*** %11, align 8
  store i32* %106, i32** %107, align 8
  br label %108

108:                                              ; preds = %105, %81
  %109 = load i8**, i8*** %12, align 8
  %110 = icmp ne i8** %109, null
  br i1 %110, label %111, label %117

111:                                              ; preds = %108
  %112 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %18, align 8
  %113 = bitcast %struct.elf_link_hash_entry* %112 to %struct.ppc_link_hash_entry*
  store %struct.ppc_link_hash_entry* %113, %struct.ppc_link_hash_entry** %20, align 8
  %114 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %20, align 8
  %115 = getelementptr inbounds %struct.ppc_link_hash_entry, %struct.ppc_link_hash_entry* %114, i32 0, i32 0
  %116 = load i8**, i8*** %12, align 8
  store i8* %115, i8** %116, align 8
  br label %117

117:                                              ; preds = %111, %108
  br label %211

118:                                              ; preds = %7
  %119 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %13, align 8
  %120 = load %struct.TYPE_16__*, %struct.TYPE_16__** %119, align 8
  store %struct.TYPE_16__* %120, %struct.TYPE_16__** %22, align 8
  %121 = load %struct.TYPE_16__*, %struct.TYPE_16__** %22, align 8
  %122 = icmp eq %struct.TYPE_16__* %121, null
  br i1 %122, label %123, label %145

123:                                              ; preds = %118
  %124 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %125 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %124, i32 0, i32 1
  %126 = load i64, i64* %125, align 8
  %127 = inttoptr i64 %126 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %127, %struct.TYPE_16__** %22, align 8
  %128 = load %struct.TYPE_16__*, %struct.TYPE_16__** %22, align 8
  %129 = icmp eq %struct.TYPE_16__* %128, null
  br i1 %129, label %130, label %137

130:                                              ; preds = %123
  %131 = load i32*, i32** %15, align 8
  %132 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %133 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %134 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = call %struct.TYPE_16__* @bfd_elf_get_elf_syms(i32* %131, %struct.TYPE_17__* %132, i64 %135, i32 0, i32* null, i32* null, i32* null)
  store %struct.TYPE_16__* %136, %struct.TYPE_16__** %22, align 8
  br label %137

137:                                              ; preds = %130, %123
  %138 = load %struct.TYPE_16__*, %struct.TYPE_16__** %22, align 8
  %139 = icmp eq %struct.TYPE_16__* %138, null
  br i1 %139, label %140, label %142

140:                                              ; preds = %137
  %141 = load i32, i32* @FALSE, align 4
  store i32 %141, i32* %8, align 4
  br label %213

142:                                              ; preds = %137
  %143 = load %struct.TYPE_16__*, %struct.TYPE_16__** %22, align 8
  %144 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %13, align 8
  store %struct.TYPE_16__* %143, %struct.TYPE_16__** %144, align 8
  br label %145

145:                                              ; preds = %142, %118
  %146 = load %struct.TYPE_16__*, %struct.TYPE_16__** %22, align 8
  %147 = load i64, i64* %14, align 8
  %148 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %146, i64 %147
  store %struct.TYPE_16__* %148, %struct.TYPE_16__** %21, align 8
  %149 = load %struct.elf_link_hash_entry**, %struct.elf_link_hash_entry*** %9, align 8
  %150 = icmp ne %struct.elf_link_hash_entry** %149, null
  br i1 %150, label %151, label %153

151:                                              ; preds = %145
  %152 = load %struct.elf_link_hash_entry**, %struct.elf_link_hash_entry*** %9, align 8
  store %struct.elf_link_hash_entry* null, %struct.elf_link_hash_entry** %152, align 8
  br label %153

153:                                              ; preds = %151, %145
  %154 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %10, align 8
  %155 = icmp ne %struct.TYPE_16__** %154, null
  br i1 %155, label %156, label %159

156:                                              ; preds = %153
  %157 = load %struct.TYPE_16__*, %struct.TYPE_16__** %21, align 8
  %158 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %10, align 8
  store %struct.TYPE_16__* %157, %struct.TYPE_16__** %158, align 8
  br label %159

159:                                              ; preds = %156, %153
  %160 = load i32**, i32*** %11, align 8
  %161 = icmp ne i32** %160, null
  br i1 %161, label %162, label %189

162:                                              ; preds = %159
  store i32* null, i32** %23, align 8
  %163 = load %struct.TYPE_16__*, %struct.TYPE_16__** %21, align 8
  %164 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %163, i32 0, i32 0
  %165 = load i64, i64* %164, align 8
  %166 = load i64, i64* @SHN_UNDEF, align 8
  %167 = icmp ne i64 %165, %166
  br i1 %167, label %168, label %174

168:                                              ; preds = %162
  %169 = load %struct.TYPE_16__*, %struct.TYPE_16__** %21, align 8
  %170 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %169, i32 0, i32 0
  %171 = load i64, i64* %170, align 8
  %172 = load i64, i64* @SHN_LORESERVE, align 8
  %173 = icmp slt i64 %171, %172
  br i1 %173, label %180, label %174

174:                                              ; preds = %168, %162
  %175 = load %struct.TYPE_16__*, %struct.TYPE_16__** %21, align 8
  %176 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %175, i32 0, i32 0
  %177 = load i64, i64* %176, align 8
  %178 = load i64, i64* @SHN_HIRESERVE, align 8
  %179 = icmp sgt i64 %177, %178
  br i1 %179, label %180, label %186

180:                                              ; preds = %174, %168
  %181 = load i32*, i32** %15, align 8
  %182 = load %struct.TYPE_16__*, %struct.TYPE_16__** %21, align 8
  %183 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %182, i32 0, i32 0
  %184 = load i64, i64* %183, align 8
  %185 = call i32* @bfd_section_from_elf_index(i32* %181, i64 %184)
  store i32* %185, i32** %23, align 8
  br label %186

186:                                              ; preds = %180, %174
  %187 = load i32*, i32** %23, align 8
  %188 = load i32**, i32*** %11, align 8
  store i32* %187, i32** %188, align 8
  br label %189

189:                                              ; preds = %186, %159
  %190 = load i8**, i8*** %12, align 8
  %191 = icmp ne i8** %190, null
  br i1 %191, label %192, label %210

192:                                              ; preds = %189
  store i8* null, i8** %25, align 8
  %193 = load i32*, i32** %15, align 8
  %194 = call %struct.got_entry** @elf_local_got_ents(i32* %193)
  store %struct.got_entry** %194, %struct.got_entry*** %24, align 8
  %195 = load %struct.got_entry**, %struct.got_entry*** %24, align 8
  %196 = icmp ne %struct.got_entry** %195, null
  br i1 %196, label %197, label %207

197:                                              ; preds = %192
  %198 = load %struct.got_entry**, %struct.got_entry*** %24, align 8
  %199 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %200 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %199, i32 0, i32 0
  %201 = load i64, i64* %200, align 8
  %202 = getelementptr inbounds %struct.got_entry*, %struct.got_entry** %198, i64 %201
  %203 = bitcast %struct.got_entry** %202 to i8*
  store i8* %203, i8** %26, align 8
  %204 = load i8*, i8** %26, align 8
  %205 = load i64, i64* %14, align 8
  %206 = getelementptr inbounds i8, i8* %204, i64 %205
  store i8* %206, i8** %25, align 8
  br label %207

207:                                              ; preds = %197, %192
  %208 = load i8*, i8** %25, align 8
  %209 = load i8**, i8*** %12, align 8
  store i8* %208, i8** %209, align 8
  br label %210

210:                                              ; preds = %207, %189
  br label %211

211:                                              ; preds = %210, %117
  %212 = load i32, i32* @TRUE, align 4
  store i32 %212, i32* %8, align 4
  br label %213

213:                                              ; preds = %211, %140
  %214 = load i32, i32* %8, align 4
  ret i32 %214
}

declare dso_local %struct.TYPE_18__* @elf_tdata(i32*) #1

declare dso_local %struct.elf_link_hash_entry** @elf_sym_hashes(i32*) #1

declare dso_local %struct.TYPE_16__* @bfd_elf_get_elf_syms(i32*, %struct.TYPE_17__*, i64, i32, i32*, i32*, i32*) #1

declare dso_local i32* @bfd_section_from_elf_index(i32*, i64) #1

declare dso_local %struct.got_entry** @elf_local_got_ents(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
