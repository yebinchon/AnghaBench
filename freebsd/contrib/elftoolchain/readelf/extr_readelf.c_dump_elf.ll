; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/readelf/extr_readelf.c_dump_elf.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/readelf/extr_readelf.c_dump_elf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.readelf = type { i32, i32, i32, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i64* }

@.str = private unnamed_addr constant [24 x i8] c"gelf_getehdr failed: %s\00", align 1
@ELFCLASSNONE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"gelf_getclass failed: %s\00", align 1
@EI_DATA = common dso_local global i64 0, align 8
@ELFDATA2MSB = common dso_local global i64 0, align 8
@_read_msb = common dso_local global i32 0, align 4
@_decode_msb = common dso_local global i32 0, align 4
@_read_lsb = common dso_local global i32 0, align 4
@_decode_lsb = common dso_local global i32 0, align 4
@RE_H = common dso_local global i32 0, align 4
@RE_VV = common dso_local global i32 0, align 4
@RE_S = common dso_local global i32 0, align 4
@RE_L = common dso_local global i32 0, align 4
@RE_SS = common dso_local global i32 0, align 4
@RE_G = common dso_local global i32 0, align 4
@RE_D = common dso_local global i32 0, align 4
@RE_R = common dso_local global i32 0, align 4
@RE_N = common dso_local global i32 0, align 4
@RE_II = common dso_local global i32 0, align 4
@RE_X = common dso_local global i32 0, align 4
@RE_P = common dso_local global i32 0, align 4
@RE_AA = common dso_local global i32 0, align 4
@RE_W = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.readelf*)* @dump_elf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_elf(%struct.readelf* %0) #0 {
  %2 = alloca %struct.readelf*, align 8
  store %struct.readelf* %0, %struct.readelf** %2, align 8
  %3 = load %struct.readelf*, %struct.readelf** %2, align 8
  %4 = getelementptr inbounds %struct.readelf, %struct.readelf* %3, i32 0, i32 4
  %5 = load i32, i32* %4, align 8
  %6 = load %struct.readelf*, %struct.readelf** %2, align 8
  %7 = getelementptr inbounds %struct.readelf, %struct.readelf* %6, i32 0, i32 3
  %8 = call i32* @gelf_getehdr(i32 %5, %struct.TYPE_2__* %7)
  %9 = icmp eq i32* %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = call i32 @elf_errmsg(i32 -1)
  %12 = call i32 @warnx(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %11)
  br label %228

13:                                               ; preds = %1
  %14 = load %struct.readelf*, %struct.readelf** %2, align 8
  %15 = getelementptr inbounds %struct.readelf, %struct.readelf* %14, i32 0, i32 4
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @gelf_getclass(i32 %16)
  %18 = load %struct.readelf*, %struct.readelf** %2, align 8
  %19 = getelementptr inbounds %struct.readelf, %struct.readelf* %18, i32 0, i32 5
  store i32 %17, i32* %19, align 4
  %20 = load i32, i32* @ELFCLASSNONE, align 4
  %21 = icmp eq i32 %17, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %13
  %23 = call i32 @elf_errmsg(i32 -1)
  %24 = call i32 @warnx(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %23)
  br label %228

25:                                               ; preds = %13
  %26 = load %struct.readelf*, %struct.readelf** %2, align 8
  %27 = getelementptr inbounds %struct.readelf, %struct.readelf* %26, i32 0, i32 3
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i64*, i64** %28, align 8
  %30 = load i64, i64* @EI_DATA, align 8
  %31 = getelementptr inbounds i64, i64* %29, i64 %30
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @ELFDATA2MSB, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %42

35:                                               ; preds = %25
  %36 = load i32, i32* @_read_msb, align 4
  %37 = load %struct.readelf*, %struct.readelf** %2, align 8
  %38 = getelementptr inbounds %struct.readelf, %struct.readelf* %37, i32 0, i32 2
  store i32 %36, i32* %38, align 8
  %39 = load i32, i32* @_decode_msb, align 4
  %40 = load %struct.readelf*, %struct.readelf** %2, align 8
  %41 = getelementptr inbounds %struct.readelf, %struct.readelf* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 4
  br label %49

42:                                               ; preds = %25
  %43 = load i32, i32* @_read_lsb, align 4
  %44 = load %struct.readelf*, %struct.readelf** %2, align 8
  %45 = getelementptr inbounds %struct.readelf, %struct.readelf* %44, i32 0, i32 2
  store i32 %43, i32* %45, align 8
  %46 = load i32, i32* @_decode_lsb, align 4
  %47 = load %struct.readelf*, %struct.readelf** %2, align 8
  %48 = getelementptr inbounds %struct.readelf, %struct.readelf* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 4
  br label %49

49:                                               ; preds = %42, %35
  %50 = load %struct.readelf*, %struct.readelf** %2, align 8
  %51 = getelementptr inbounds %struct.readelf, %struct.readelf* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @RE_H, align 4
  %54 = xor i32 %53, -1
  %55 = and i32 %52, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %49
  %58 = load %struct.readelf*, %struct.readelf** %2, align 8
  %59 = call i32 @load_sections(%struct.readelf* %58)
  br label %60

60:                                               ; preds = %57, %49
  %61 = load %struct.readelf*, %struct.readelf** %2, align 8
  %62 = getelementptr inbounds %struct.readelf, %struct.readelf* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @RE_VV, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %74, label %67

67:                                               ; preds = %60
  %68 = load %struct.readelf*, %struct.readelf** %2, align 8
  %69 = getelementptr inbounds %struct.readelf, %struct.readelf* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @RE_S, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %67, %60
  %75 = load %struct.readelf*, %struct.readelf** %2, align 8
  %76 = call i32 @search_ver(%struct.readelf* %75)
  br label %77

77:                                               ; preds = %74, %67
  %78 = load %struct.readelf*, %struct.readelf** %2, align 8
  %79 = getelementptr inbounds %struct.readelf, %struct.readelf* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @RE_H, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %77
  %85 = load %struct.readelf*, %struct.readelf** %2, align 8
  %86 = call i32 @dump_ehdr(%struct.readelf* %85)
  br label %87

87:                                               ; preds = %84, %77
  %88 = load %struct.readelf*, %struct.readelf** %2, align 8
  %89 = getelementptr inbounds %struct.readelf, %struct.readelf* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* @RE_L, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %87
  %95 = load %struct.readelf*, %struct.readelf** %2, align 8
  %96 = call i32 @dump_phdr(%struct.readelf* %95)
  br label %97

97:                                               ; preds = %94, %87
  %98 = load %struct.readelf*, %struct.readelf** %2, align 8
  %99 = getelementptr inbounds %struct.readelf, %struct.readelf* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = load i32, i32* @RE_SS, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %97
  %105 = load %struct.readelf*, %struct.readelf** %2, align 8
  %106 = call i32 @dump_shdr(%struct.readelf* %105)
  br label %107

107:                                              ; preds = %104, %97
  %108 = load %struct.readelf*, %struct.readelf** %2, align 8
  %109 = getelementptr inbounds %struct.readelf, %struct.readelf* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* @RE_G, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %117

114:                                              ; preds = %107
  %115 = load %struct.readelf*, %struct.readelf** %2, align 8
  %116 = call i32 @dump_section_groups(%struct.readelf* %115)
  br label %117

117:                                              ; preds = %114, %107
  %118 = load %struct.readelf*, %struct.readelf** %2, align 8
  %119 = getelementptr inbounds %struct.readelf, %struct.readelf* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = load i32, i32* @RE_D, align 4
  %122 = and i32 %120, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %127

124:                                              ; preds = %117
  %125 = load %struct.readelf*, %struct.readelf** %2, align 8
  %126 = call i32 @dump_dynamic(%struct.readelf* %125)
  br label %127

127:                                              ; preds = %124, %117
  %128 = load %struct.readelf*, %struct.readelf** %2, align 8
  %129 = getelementptr inbounds %struct.readelf, %struct.readelf* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = load i32, i32* @RE_R, align 4
  %132 = and i32 %130, %131
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %137

134:                                              ; preds = %127
  %135 = load %struct.readelf*, %struct.readelf** %2, align 8
  %136 = call i32 @dump_reloc(%struct.readelf* %135)
  br label %137

137:                                              ; preds = %134, %127
  %138 = load %struct.readelf*, %struct.readelf** %2, align 8
  %139 = getelementptr inbounds %struct.readelf, %struct.readelf* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = load i32, i32* @RE_S, align 4
  %142 = and i32 %140, %141
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %147

144:                                              ; preds = %137
  %145 = load %struct.readelf*, %struct.readelf** %2, align 8
  %146 = call i32 @dump_symtabs(%struct.readelf* %145)
  br label %147

147:                                              ; preds = %144, %137
  %148 = load %struct.readelf*, %struct.readelf** %2, align 8
  %149 = getelementptr inbounds %struct.readelf, %struct.readelf* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = load i32, i32* @RE_N, align 4
  %152 = and i32 %150, %151
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %157

154:                                              ; preds = %147
  %155 = load %struct.readelf*, %struct.readelf** %2, align 8
  %156 = call i32 @dump_notes(%struct.readelf* %155)
  br label %157

157:                                              ; preds = %154, %147
  %158 = load %struct.readelf*, %struct.readelf** %2, align 8
  %159 = getelementptr inbounds %struct.readelf, %struct.readelf* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = load i32, i32* @RE_II, align 4
  %162 = and i32 %160, %161
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %167

164:                                              ; preds = %157
  %165 = load %struct.readelf*, %struct.readelf** %2, align 8
  %166 = call i32 @dump_hash(%struct.readelf* %165)
  br label %167

167:                                              ; preds = %164, %157
  %168 = load %struct.readelf*, %struct.readelf** %2, align 8
  %169 = getelementptr inbounds %struct.readelf, %struct.readelf* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = load i32, i32* @RE_X, align 4
  %172 = and i32 %170, %171
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %177

174:                                              ; preds = %167
  %175 = load %struct.readelf*, %struct.readelf** %2, align 8
  %176 = call i32 @hex_dump(%struct.readelf* %175)
  br label %177

177:                                              ; preds = %174, %167
  %178 = load %struct.readelf*, %struct.readelf** %2, align 8
  %179 = getelementptr inbounds %struct.readelf, %struct.readelf* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  %181 = load i32, i32* @RE_P, align 4
  %182 = and i32 %180, %181
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %187

184:                                              ; preds = %177
  %185 = load %struct.readelf*, %struct.readelf** %2, align 8
  %186 = call i32 @str_dump(%struct.readelf* %185)
  br label %187

187:                                              ; preds = %184, %177
  %188 = load %struct.readelf*, %struct.readelf** %2, align 8
  %189 = getelementptr inbounds %struct.readelf, %struct.readelf* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 8
  %191 = load i32, i32* @RE_VV, align 4
  %192 = and i32 %190, %191
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %197

194:                                              ; preds = %187
  %195 = load %struct.readelf*, %struct.readelf** %2, align 8
  %196 = call i32 @dump_ver(%struct.readelf* %195)
  br label %197

197:                                              ; preds = %194, %187
  %198 = load %struct.readelf*, %struct.readelf** %2, align 8
  %199 = getelementptr inbounds %struct.readelf, %struct.readelf* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 8
  %201 = load i32, i32* @RE_AA, align 4
  %202 = and i32 %200, %201
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %207

204:                                              ; preds = %197
  %205 = load %struct.readelf*, %struct.readelf** %2, align 8
  %206 = call i32 @dump_arch_specific_info(%struct.readelf* %205)
  br label %207

207:                                              ; preds = %204, %197
  %208 = load %struct.readelf*, %struct.readelf** %2, align 8
  %209 = getelementptr inbounds %struct.readelf, %struct.readelf* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 8
  %211 = load i32, i32* @RE_W, align 4
  %212 = and i32 %210, %211
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %217

214:                                              ; preds = %207
  %215 = load %struct.readelf*, %struct.readelf** %2, align 8
  %216 = call i32 @dump_dwarf(%struct.readelf* %215)
  br label %217

217:                                              ; preds = %214, %207
  %218 = load %struct.readelf*, %struct.readelf** %2, align 8
  %219 = getelementptr inbounds %struct.readelf, %struct.readelf* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 8
  %221 = load i32, i32* @RE_H, align 4
  %222 = xor i32 %221, -1
  %223 = and i32 %220, %222
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %228

225:                                              ; preds = %217
  %226 = load %struct.readelf*, %struct.readelf** %2, align 8
  %227 = call i32 @unload_sections(%struct.readelf* %226)
  br label %228

228:                                              ; preds = %10, %22, %225, %217
  ret void
}

declare dso_local i32* @gelf_getehdr(i32, %struct.TYPE_2__*) #1

declare dso_local i32 @warnx(i8*, i32) #1

declare dso_local i32 @elf_errmsg(i32) #1

declare dso_local i32 @gelf_getclass(i32) #1

declare dso_local i32 @load_sections(%struct.readelf*) #1

declare dso_local i32 @search_ver(%struct.readelf*) #1

declare dso_local i32 @dump_ehdr(%struct.readelf*) #1

declare dso_local i32 @dump_phdr(%struct.readelf*) #1

declare dso_local i32 @dump_shdr(%struct.readelf*) #1

declare dso_local i32 @dump_section_groups(%struct.readelf*) #1

declare dso_local i32 @dump_dynamic(%struct.readelf*) #1

declare dso_local i32 @dump_reloc(%struct.readelf*) #1

declare dso_local i32 @dump_symtabs(%struct.readelf*) #1

declare dso_local i32 @dump_notes(%struct.readelf*) #1

declare dso_local i32 @dump_hash(%struct.readelf*) #1

declare dso_local i32 @hex_dump(%struct.readelf*) #1

declare dso_local i32 @str_dump(%struct.readelf*) #1

declare dso_local i32 @dump_ver(%struct.readelf*) #1

declare dso_local i32 @dump_arch_specific_info(%struct.readelf*) #1

declare dso_local i32 @dump_dwarf(%struct.readelf*) #1

declare dso_local i32 @unload_sections(%struct.readelf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
