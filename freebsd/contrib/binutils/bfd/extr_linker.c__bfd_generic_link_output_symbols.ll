; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_linker.c__bfd_generic_link_output_symbols.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_linker.c__bfd_generic_link_output_symbols.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_35__ = type { i32, i32*, %struct.TYPE_35__* }
%struct.TYPE_43__ = type { i64, i32, %struct.TYPE_35__* }
%struct.bfd_link_info = type { i64, i32, i32, i32, %struct.TYPE_37__*, i32* }
%struct.TYPE_37__ = type { i64 }
%struct.TYPE_44__ = type { i32, %struct.TYPE_35__*, i64, %struct.TYPE_36__, i32 }
%struct.TYPE_36__ = type { %struct.generic_link_hash_entry* }
%struct.generic_link_hash_entry = type { i64, %struct.TYPE_42__, %struct.TYPE_44__* }
%struct.TYPE_42__ = type { i32, %struct.TYPE_41__ }
%struct.TYPE_41__ = type { %struct.TYPE_40__, %struct.TYPE_39__, %struct.TYPE_38__ }
%struct.TYPE_40__ = type { i64 }
%struct.TYPE_39__ = type { %struct.TYPE_35__*, i64 }
%struct.TYPE_38__ = type { i64 }

@FALSE = common dso_local global i64 0, align 8
@BSF_LOCAL = common dso_local global i32 0, align 4
@BSF_FILE = common dso_local global i32 0, align 4
@BSF_INDIRECT = common dso_local global i32 0, align 4
@BSF_WARNING = common dso_local global i32 0, align 4
@BSF_GLOBAL = common dso_local global i32 0, align 4
@BSF_CONSTRUCTOR = common dso_local global i32 0, align 4
@BSF_WEAK = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@bfd_com_section_ptr = common dso_local global %struct.TYPE_35__* null, align 8
@strip_all = common dso_local global i64 0, align 8
@strip_some = common dso_local global i64 0, align 8
@BSF_NOT_AT_END = common dso_local global i32 0, align 4
@BSF_DEBUGGING = common dso_local global i32 0, align 4
@strip_none = common dso_local global i64 0, align 8
@SEC_MERGE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @_bfd_generic_link_output_symbols(%struct.TYPE_43__* %0, %struct.TYPE_43__* %1, %struct.bfd_link_info* %2, i64* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_43__*, align 8
  %7 = alloca %struct.TYPE_43__*, align 8
  %8 = alloca %struct.bfd_link_info*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca %struct.TYPE_44__**, align 8
  %11 = alloca %struct.TYPE_44__**, align 8
  %12 = alloca %struct.TYPE_35__*, align 8
  %13 = alloca %struct.TYPE_44__*, align 8
  %14 = alloca %struct.TYPE_44__*, align 8
  %15 = alloca %struct.generic_link_hash_entry*, align 8
  %16 = alloca i64, align 8
  store %struct.TYPE_43__* %0, %struct.TYPE_43__** %6, align 8
  store %struct.TYPE_43__* %1, %struct.TYPE_43__** %7, align 8
  store %struct.bfd_link_info* %2, %struct.bfd_link_info** %8, align 8
  store i64* %3, i64** %9, align 8
  %17 = load %struct.TYPE_43__*, %struct.TYPE_43__** %7, align 8
  %18 = call i32 @generic_link_read_symbols(%struct.TYPE_43__* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %4
  %21 = load i64, i64* @FALSE, align 8
  store i64 %21, i64* %5, align 8
  br label %514

22:                                               ; preds = %4
  %23 = load %struct.bfd_link_info*, %struct.bfd_link_info** %8, align 8
  %24 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %23, i32 0, i32 5
  %25 = load i32*, i32** %24, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %79

27:                                               ; preds = %22
  %28 = load %struct.TYPE_43__*, %struct.TYPE_43__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %28, i32 0, i32 2
  %30 = load %struct.TYPE_35__*, %struct.TYPE_35__** %29, align 8
  store %struct.TYPE_35__* %30, %struct.TYPE_35__** %12, align 8
  br label %31

31:                                               ; preds = %74, %27
  %32 = load %struct.TYPE_35__*, %struct.TYPE_35__** %12, align 8
  %33 = icmp ne %struct.TYPE_35__* %32, null
  br i1 %33, label %34, label %78

34:                                               ; preds = %31
  %35 = load %struct.TYPE_35__*, %struct.TYPE_35__** %12, align 8
  %36 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = load %struct.bfd_link_info*, %struct.bfd_link_info** %8, align 8
  %39 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %38, i32 0, i32 5
  %40 = load i32*, i32** %39, align 8
  %41 = icmp eq i32* %37, %40
  br i1 %41, label %42, label %73

42:                                               ; preds = %34
  %43 = load %struct.TYPE_43__*, %struct.TYPE_43__** %7, align 8
  %44 = call %struct.TYPE_44__* @bfd_make_empty_symbol(%struct.TYPE_43__* %43)
  store %struct.TYPE_44__* %44, %struct.TYPE_44__** %13, align 8
  %45 = load %struct.TYPE_44__*, %struct.TYPE_44__** %13, align 8
  %46 = icmp ne %struct.TYPE_44__* %45, null
  br i1 %46, label %49, label %47

47:                                               ; preds = %42
  %48 = load i64, i64* @FALSE, align 8
  store i64 %48, i64* %5, align 8
  br label %514

49:                                               ; preds = %42
  %50 = load %struct.TYPE_43__*, %struct.TYPE_43__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.TYPE_44__*, %struct.TYPE_44__** %13, align 8
  %54 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %53, i32 0, i32 4
  store i32 %52, i32* %54, align 8
  %55 = load %struct.TYPE_44__*, %struct.TYPE_44__** %13, align 8
  %56 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %55, i32 0, i32 2
  store i64 0, i64* %56, align 8
  %57 = load i32, i32* @BSF_LOCAL, align 4
  %58 = load i32, i32* @BSF_FILE, align 4
  %59 = or i32 %57, %58
  %60 = load %struct.TYPE_44__*, %struct.TYPE_44__** %13, align 8
  %61 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 8
  %62 = load %struct.TYPE_35__*, %struct.TYPE_35__** %12, align 8
  %63 = load %struct.TYPE_44__*, %struct.TYPE_44__** %13, align 8
  %64 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %63, i32 0, i32 1
  store %struct.TYPE_35__* %62, %struct.TYPE_35__** %64, align 8
  %65 = load %struct.TYPE_43__*, %struct.TYPE_43__** %6, align 8
  %66 = load i64*, i64** %9, align 8
  %67 = load %struct.TYPE_44__*, %struct.TYPE_44__** %13, align 8
  %68 = call i32 @generic_add_output_symbol(%struct.TYPE_43__* %65, i64* %66, %struct.TYPE_44__* %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %72, label %70

70:                                               ; preds = %49
  %71 = load i64, i64* @FALSE, align 8
  store i64 %71, i64* %5, align 8
  br label %514

72:                                               ; preds = %49
  br label %78

73:                                               ; preds = %34
  br label %74

74:                                               ; preds = %73
  %75 = load %struct.TYPE_35__*, %struct.TYPE_35__** %12, align 8
  %76 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %75, i32 0, i32 2
  %77 = load %struct.TYPE_35__*, %struct.TYPE_35__** %76, align 8
  store %struct.TYPE_35__* %77, %struct.TYPE_35__** %12, align 8
  br label %31

78:                                               ; preds = %72, %31
  br label %79

79:                                               ; preds = %78, %22
  %80 = load %struct.TYPE_43__*, %struct.TYPE_43__** %7, align 8
  %81 = call %struct.TYPE_44__** @_bfd_generic_link_get_symbols(%struct.TYPE_43__* %80)
  store %struct.TYPE_44__** %81, %struct.TYPE_44__*** %10, align 8
  %82 = load %struct.TYPE_44__**, %struct.TYPE_44__*** %10, align 8
  %83 = load %struct.TYPE_43__*, %struct.TYPE_43__** %7, align 8
  %84 = call i32 @_bfd_generic_link_get_symcount(%struct.TYPE_43__* %83)
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_44__*, %struct.TYPE_44__** %82, i64 %85
  store %struct.TYPE_44__** %86, %struct.TYPE_44__*** %11, align 8
  br label %87

87:                                               ; preds = %509, %79
  %88 = load %struct.TYPE_44__**, %struct.TYPE_44__*** %10, align 8
  %89 = load %struct.TYPE_44__**, %struct.TYPE_44__*** %11, align 8
  %90 = icmp ult %struct.TYPE_44__** %88, %89
  br i1 %90, label %91, label %512

91:                                               ; preds = %87
  store %struct.generic_link_hash_entry* null, %struct.generic_link_hash_entry** %15, align 8
  %92 = load %struct.TYPE_44__**, %struct.TYPE_44__*** %10, align 8
  %93 = load %struct.TYPE_44__*, %struct.TYPE_44__** %92, align 8
  store %struct.TYPE_44__* %93, %struct.TYPE_44__** %14, align 8
  %94 = load %struct.TYPE_44__*, %struct.TYPE_44__** %14, align 8
  %95 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* @BSF_INDIRECT, align 4
  %98 = load i32, i32* @BSF_WARNING, align 4
  %99 = or i32 %97, %98
  %100 = load i32, i32* @BSF_GLOBAL, align 4
  %101 = or i32 %99, %100
  %102 = load i32, i32* @BSF_CONSTRUCTOR, align 4
  %103 = or i32 %101, %102
  %104 = load i32, i32* @BSF_WEAK, align 4
  %105 = or i32 %103, %104
  %106 = and i32 %96, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %123, label %108

108:                                              ; preds = %91
  %109 = load %struct.TYPE_44__*, %struct.TYPE_44__** %14, align 8
  %110 = call %struct.TYPE_35__* @bfd_get_section(%struct.TYPE_44__* %109)
  %111 = call i64 @bfd_is_und_section(%struct.TYPE_35__* %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %123, label %113

113:                                              ; preds = %108
  %114 = load %struct.TYPE_44__*, %struct.TYPE_44__** %14, align 8
  %115 = call %struct.TYPE_35__* @bfd_get_section(%struct.TYPE_44__* %114)
  %116 = call i64 @bfd_is_com_section(%struct.TYPE_35__* %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %123, label %118

118:                                              ; preds = %113
  %119 = load %struct.TYPE_44__*, %struct.TYPE_44__** %14, align 8
  %120 = call %struct.TYPE_35__* @bfd_get_section(%struct.TYPE_44__* %119)
  %121 = call i64 @bfd_is_ind_section(%struct.TYPE_35__* %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %302

123:                                              ; preds = %118, %113, %108, %91
  %124 = load %struct.TYPE_44__*, %struct.TYPE_44__** %14, align 8
  %125 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %124, i32 0, i32 3
  %126 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %125, i32 0, i32 0
  %127 = load %struct.generic_link_hash_entry*, %struct.generic_link_hash_entry** %126, align 8
  %128 = icmp ne %struct.generic_link_hash_entry* %127, null
  br i1 %128, label %129, label %134

129:                                              ; preds = %123
  %130 = load %struct.TYPE_44__*, %struct.TYPE_44__** %14, align 8
  %131 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %130, i32 0, i32 3
  %132 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %131, i32 0, i32 0
  %133 = load %struct.generic_link_hash_entry*, %struct.generic_link_hash_entry** %132, align 8
  store %struct.generic_link_hash_entry* %133, %struct.generic_link_hash_entry** %15, align 8
  br label %168

134:                                              ; preds = %123
  %135 = load %struct.TYPE_44__*, %struct.TYPE_44__** %14, align 8
  %136 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = load i32, i32* @BSF_CONSTRUCTOR, align 4
  %139 = and i32 %137, %138
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %142

141:                                              ; preds = %134
  store %struct.generic_link_hash_entry* null, %struct.generic_link_hash_entry** %15, align 8
  br label %167

142:                                              ; preds = %134
  %143 = load %struct.TYPE_44__*, %struct.TYPE_44__** %14, align 8
  %144 = call %struct.TYPE_35__* @bfd_get_section(%struct.TYPE_44__* %143)
  %145 = call i64 @bfd_is_und_section(%struct.TYPE_35__* %144)
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %157

147:                                              ; preds = %142
  %148 = load %struct.TYPE_43__*, %struct.TYPE_43__** %6, align 8
  %149 = load %struct.bfd_link_info*, %struct.bfd_link_info** %8, align 8
  %150 = load %struct.TYPE_44__*, %struct.TYPE_44__** %14, align 8
  %151 = call i32 @bfd_asymbol_name(%struct.TYPE_44__* %150)
  %152 = load i64, i64* @FALSE, align 8
  %153 = load i64, i64* @FALSE, align 8
  %154 = load i64, i64* @TRUE, align 8
  %155 = call i64 @bfd_wrapped_link_hash_lookup(%struct.TYPE_43__* %148, %struct.bfd_link_info* %149, i32 %151, i64 %152, i64 %153, i64 %154)
  %156 = inttoptr i64 %155 to %struct.generic_link_hash_entry*
  store %struct.generic_link_hash_entry* %156, %struct.generic_link_hash_entry** %15, align 8
  br label %166

157:                                              ; preds = %142
  %158 = load %struct.bfd_link_info*, %struct.bfd_link_info** %8, align 8
  %159 = call i32 @_bfd_generic_hash_table(%struct.bfd_link_info* %158)
  %160 = load %struct.TYPE_44__*, %struct.TYPE_44__** %14, align 8
  %161 = call i32 @bfd_asymbol_name(%struct.TYPE_44__* %160)
  %162 = load i64, i64* @FALSE, align 8
  %163 = load i64, i64* @FALSE, align 8
  %164 = load i64, i64* @TRUE, align 8
  %165 = call %struct.generic_link_hash_entry* @_bfd_generic_link_hash_lookup(i32 %159, i32 %161, i64 %162, i64 %163, i64 %164)
  store %struct.generic_link_hash_entry* %165, %struct.generic_link_hash_entry** %15, align 8
  br label %166

166:                                              ; preds = %157, %147
  br label %167

167:                                              ; preds = %166, %141
  br label %168

168:                                              ; preds = %167, %129
  %169 = load %struct.generic_link_hash_entry*, %struct.generic_link_hash_entry** %15, align 8
  %170 = icmp ne %struct.generic_link_hash_entry* %169, null
  br i1 %170, label %171, label %301

171:                                              ; preds = %168
  %172 = load %struct.bfd_link_info*, %struct.bfd_link_info** %8, align 8
  %173 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %172, i32 0, i32 4
  %174 = load %struct.TYPE_37__*, %struct.TYPE_37__** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %174, i32 0, i32 0
  %176 = load i64, i64* %175, align 8
  %177 = load %struct.TYPE_43__*, %struct.TYPE_43__** %7, align 8
  %178 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %177, i32 0, i32 0
  %179 = load i64, i64* %178, align 8
  %180 = icmp eq i64 %176, %179
  br i1 %180, label %181, label %192

181:                                              ; preds = %171
  %182 = load %struct.generic_link_hash_entry*, %struct.generic_link_hash_entry** %15, align 8
  %183 = getelementptr inbounds %struct.generic_link_hash_entry, %struct.generic_link_hash_entry* %182, i32 0, i32 2
  %184 = load %struct.TYPE_44__*, %struct.TYPE_44__** %183, align 8
  %185 = icmp ne %struct.TYPE_44__* %184, null
  br i1 %185, label %186, label %191

186:                                              ; preds = %181
  %187 = load %struct.generic_link_hash_entry*, %struct.generic_link_hash_entry** %15, align 8
  %188 = getelementptr inbounds %struct.generic_link_hash_entry, %struct.generic_link_hash_entry* %187, i32 0, i32 2
  %189 = load %struct.TYPE_44__*, %struct.TYPE_44__** %188, align 8
  store %struct.TYPE_44__* %189, %struct.TYPE_44__** %14, align 8
  %190 = load %struct.TYPE_44__**, %struct.TYPE_44__*** %10, align 8
  store %struct.TYPE_44__* %189, %struct.TYPE_44__** %190, align 8
  br label %191

191:                                              ; preds = %186, %181
  br label %192

192:                                              ; preds = %191, %171
  %193 = load %struct.generic_link_hash_entry*, %struct.generic_link_hash_entry** %15, align 8
  %194 = getelementptr inbounds %struct.generic_link_hash_entry, %struct.generic_link_hash_entry* %193, i32 0, i32 1
  %195 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 8
  switch i32 %196, label %197 [
    i32 134, label %198
    i32 133, label %200
    i32 132, label %201
    i32 135, label %207
    i32 137, label %215
    i32 136, label %243
    i32 138, label %271
  ]

197:                                              ; preds = %192
  br label %198

198:                                              ; preds = %192, %197
  %199 = call i32 (...) @abort() #3
  unreachable

200:                                              ; preds = %192
  br label %300

201:                                              ; preds = %192
  %202 = load i32, i32* @BSF_WEAK, align 4
  %203 = load %struct.TYPE_44__*, %struct.TYPE_44__** %14, align 8
  %204 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 8
  %206 = or i32 %205, %202
  store i32 %206, i32* %204, align 8
  br label %300

207:                                              ; preds = %192
  %208 = load %struct.generic_link_hash_entry*, %struct.generic_link_hash_entry** %15, align 8
  %209 = getelementptr inbounds %struct.generic_link_hash_entry, %struct.generic_link_hash_entry* %208, i32 0, i32 1
  %210 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %209, i32 0, i32 1
  %211 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %210, i32 0, i32 2
  %212 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %211, i32 0, i32 0
  %213 = load i64, i64* %212, align 8
  %214 = inttoptr i64 %213 to %struct.generic_link_hash_entry*
  store %struct.generic_link_hash_entry* %214, %struct.generic_link_hash_entry** %15, align 8
  br label %215

215:                                              ; preds = %192, %207
  %216 = load i32, i32* @BSF_GLOBAL, align 4
  %217 = load %struct.TYPE_44__*, %struct.TYPE_44__** %14, align 8
  %218 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 8
  %220 = or i32 %219, %216
  store i32 %220, i32* %218, align 8
  %221 = load i32, i32* @BSF_CONSTRUCTOR, align 4
  %222 = xor i32 %221, -1
  %223 = load %struct.TYPE_44__*, %struct.TYPE_44__** %14, align 8
  %224 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 8
  %226 = and i32 %225, %222
  store i32 %226, i32* %224, align 8
  %227 = load %struct.generic_link_hash_entry*, %struct.generic_link_hash_entry** %15, align 8
  %228 = getelementptr inbounds %struct.generic_link_hash_entry, %struct.generic_link_hash_entry* %227, i32 0, i32 1
  %229 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %228, i32 0, i32 1
  %230 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %229, i32 0, i32 1
  %231 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %230, i32 0, i32 1
  %232 = load i64, i64* %231, align 8
  %233 = load %struct.TYPE_44__*, %struct.TYPE_44__** %14, align 8
  %234 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %233, i32 0, i32 2
  store i64 %232, i64* %234, align 8
  %235 = load %struct.generic_link_hash_entry*, %struct.generic_link_hash_entry** %15, align 8
  %236 = getelementptr inbounds %struct.generic_link_hash_entry, %struct.generic_link_hash_entry* %235, i32 0, i32 1
  %237 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %236, i32 0, i32 1
  %238 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %237, i32 0, i32 1
  %239 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %238, i32 0, i32 0
  %240 = load %struct.TYPE_35__*, %struct.TYPE_35__** %239, align 8
  %241 = load %struct.TYPE_44__*, %struct.TYPE_44__** %14, align 8
  %242 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %241, i32 0, i32 1
  store %struct.TYPE_35__* %240, %struct.TYPE_35__** %242, align 8
  br label %300

243:                                              ; preds = %192
  %244 = load i32, i32* @BSF_WEAK, align 4
  %245 = load %struct.TYPE_44__*, %struct.TYPE_44__** %14, align 8
  %246 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %245, i32 0, i32 0
  %247 = load i32, i32* %246, align 8
  %248 = or i32 %247, %244
  store i32 %248, i32* %246, align 8
  %249 = load i32, i32* @BSF_CONSTRUCTOR, align 4
  %250 = xor i32 %249, -1
  %251 = load %struct.TYPE_44__*, %struct.TYPE_44__** %14, align 8
  %252 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %251, i32 0, i32 0
  %253 = load i32, i32* %252, align 8
  %254 = and i32 %253, %250
  store i32 %254, i32* %252, align 8
  %255 = load %struct.generic_link_hash_entry*, %struct.generic_link_hash_entry** %15, align 8
  %256 = getelementptr inbounds %struct.generic_link_hash_entry, %struct.generic_link_hash_entry* %255, i32 0, i32 1
  %257 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %256, i32 0, i32 1
  %258 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %257, i32 0, i32 1
  %259 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %258, i32 0, i32 1
  %260 = load i64, i64* %259, align 8
  %261 = load %struct.TYPE_44__*, %struct.TYPE_44__** %14, align 8
  %262 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %261, i32 0, i32 2
  store i64 %260, i64* %262, align 8
  %263 = load %struct.generic_link_hash_entry*, %struct.generic_link_hash_entry** %15, align 8
  %264 = getelementptr inbounds %struct.generic_link_hash_entry, %struct.generic_link_hash_entry* %263, i32 0, i32 1
  %265 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %264, i32 0, i32 1
  %266 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %265, i32 0, i32 1
  %267 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %266, i32 0, i32 0
  %268 = load %struct.TYPE_35__*, %struct.TYPE_35__** %267, align 8
  %269 = load %struct.TYPE_44__*, %struct.TYPE_44__** %14, align 8
  %270 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %269, i32 0, i32 1
  store %struct.TYPE_35__* %268, %struct.TYPE_35__** %270, align 8
  br label %300

271:                                              ; preds = %192
  %272 = load %struct.generic_link_hash_entry*, %struct.generic_link_hash_entry** %15, align 8
  %273 = getelementptr inbounds %struct.generic_link_hash_entry, %struct.generic_link_hash_entry* %272, i32 0, i32 1
  %274 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %273, i32 0, i32 1
  %275 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %274, i32 0, i32 0
  %276 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %275, i32 0, i32 0
  %277 = load i64, i64* %276, align 8
  %278 = load %struct.TYPE_44__*, %struct.TYPE_44__** %14, align 8
  %279 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %278, i32 0, i32 2
  store i64 %277, i64* %279, align 8
  %280 = load i32, i32* @BSF_GLOBAL, align 4
  %281 = load %struct.TYPE_44__*, %struct.TYPE_44__** %14, align 8
  %282 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %281, i32 0, i32 0
  %283 = load i32, i32* %282, align 8
  %284 = or i32 %283, %280
  store i32 %284, i32* %282, align 8
  %285 = load %struct.TYPE_44__*, %struct.TYPE_44__** %14, align 8
  %286 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %285, i32 0, i32 1
  %287 = load %struct.TYPE_35__*, %struct.TYPE_35__** %286, align 8
  %288 = call i64 @bfd_is_com_section(%struct.TYPE_35__* %287)
  %289 = icmp ne i64 %288, 0
  br i1 %289, label %299, label %290

290:                                              ; preds = %271
  %291 = load %struct.TYPE_44__*, %struct.TYPE_44__** %14, align 8
  %292 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %291, i32 0, i32 1
  %293 = load %struct.TYPE_35__*, %struct.TYPE_35__** %292, align 8
  %294 = call i64 @bfd_is_und_section(%struct.TYPE_35__* %293)
  %295 = call i32 @BFD_ASSERT(i64 %294)
  %296 = load %struct.TYPE_35__*, %struct.TYPE_35__** @bfd_com_section_ptr, align 8
  %297 = load %struct.TYPE_44__*, %struct.TYPE_44__** %14, align 8
  %298 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %297, i32 0, i32 1
  store %struct.TYPE_35__* %296, %struct.TYPE_35__** %298, align 8
  br label %299

299:                                              ; preds = %290, %271
  br label %300

300:                                              ; preds = %299, %243, %215, %201, %200
  br label %301

301:                                              ; preds = %300, %168
  br label %302

302:                                              ; preds = %301, %118
  %303 = load %struct.bfd_link_info*, %struct.bfd_link_info** %8, align 8
  %304 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %303, i32 0, i32 0
  %305 = load i64, i64* %304, align 8
  %306 = load i64, i64* @strip_all, align 8
  %307 = icmp eq i64 %305, %306
  br i1 %307, label %324, label %308

308:                                              ; preds = %302
  %309 = load %struct.bfd_link_info*, %struct.bfd_link_info** %8, align 8
  %310 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %309, i32 0, i32 0
  %311 = load i64, i64* %310, align 8
  %312 = load i64, i64* @strip_some, align 8
  %313 = icmp eq i64 %311, %312
  br i1 %313, label %314, label %326

314:                                              ; preds = %308
  %315 = load %struct.bfd_link_info*, %struct.bfd_link_info** %8, align 8
  %316 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %315, i32 0, i32 3
  %317 = load i32, i32* %316, align 8
  %318 = load %struct.TYPE_44__*, %struct.TYPE_44__** %14, align 8
  %319 = call i32 @bfd_asymbol_name(%struct.TYPE_44__* %318)
  %320 = load i64, i64* @FALSE, align 8
  %321 = load i64, i64* @FALSE, align 8
  %322 = call i32* @bfd_hash_lookup(i32 %317, i32 %319, i64 %320, i64 %321)
  %323 = icmp eq i32* %322, null
  br i1 %323, label %324, label %326

324:                                              ; preds = %314, %302
  %325 = load i64, i64* @FALSE, align 8
  store i64 %325, i64* %16, align 8
  br label %472

326:                                              ; preds = %314, %308
  %327 = load %struct.TYPE_44__*, %struct.TYPE_44__** %14, align 8
  %328 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %327, i32 0, i32 0
  %329 = load i32, i32* %328, align 8
  %330 = load i32, i32* @BSF_GLOBAL, align 4
  %331 = load i32, i32* @BSF_WEAK, align 4
  %332 = or i32 %330, %331
  %333 = and i32 %329, %332
  %334 = icmp ne i32 %333, 0
  br i1 %334, label %335, label %352

335:                                              ; preds = %326
  %336 = load %struct.TYPE_44__*, %struct.TYPE_44__** %14, align 8
  %337 = call %struct.TYPE_43__* @bfd_asymbol_bfd(%struct.TYPE_44__* %336)
  %338 = load %struct.TYPE_43__*, %struct.TYPE_43__** %7, align 8
  %339 = icmp eq %struct.TYPE_43__* %337, %338
  br i1 %339, label %340, label %349

340:                                              ; preds = %335
  %341 = load %struct.TYPE_44__*, %struct.TYPE_44__** %14, align 8
  %342 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %341, i32 0, i32 0
  %343 = load i32, i32* %342, align 8
  %344 = load i32, i32* @BSF_NOT_AT_END, align 4
  %345 = and i32 %343, %344
  %346 = icmp ne i32 %345, 0
  br i1 %346, label %347, label %349

347:                                              ; preds = %340
  %348 = load i64, i64* @TRUE, align 8
  store i64 %348, i64* %16, align 8
  br label %351

349:                                              ; preds = %340, %335
  %350 = load i64, i64* @FALSE, align 8
  store i64 %350, i64* %16, align 8
  br label %351

351:                                              ; preds = %349, %347
  br label %471

352:                                              ; preds = %326
  %353 = load %struct.TYPE_44__*, %struct.TYPE_44__** %14, align 8
  %354 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %353, i32 0, i32 1
  %355 = load %struct.TYPE_35__*, %struct.TYPE_35__** %354, align 8
  %356 = call i64 @bfd_is_ind_section(%struct.TYPE_35__* %355)
  %357 = icmp ne i64 %356, 0
  br i1 %357, label %358, label %360

358:                                              ; preds = %352
  %359 = load i64, i64* @FALSE, align 8
  store i64 %359, i64* %16, align 8
  br label %470

360:                                              ; preds = %352
  %361 = load %struct.TYPE_44__*, %struct.TYPE_44__** %14, align 8
  %362 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %361, i32 0, i32 0
  %363 = load i32, i32* %362, align 8
  %364 = load i32, i32* @BSF_DEBUGGING, align 4
  %365 = and i32 %363, %364
  %366 = icmp ne i32 %365, 0
  br i1 %366, label %367, label %378

367:                                              ; preds = %360
  %368 = load %struct.bfd_link_info*, %struct.bfd_link_info** %8, align 8
  %369 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %368, i32 0, i32 0
  %370 = load i64, i64* %369, align 8
  %371 = load i64, i64* @strip_none, align 8
  %372 = icmp eq i64 %370, %371
  br i1 %372, label %373, label %375

373:                                              ; preds = %367
  %374 = load i64, i64* @TRUE, align 8
  store i64 %374, i64* %16, align 8
  br label %377

375:                                              ; preds = %367
  %376 = load i64, i64* @FALSE, align 8
  store i64 %376, i64* %16, align 8
  br label %377

377:                                              ; preds = %375, %373
  br label %469

378:                                              ; preds = %360
  %379 = load %struct.TYPE_44__*, %struct.TYPE_44__** %14, align 8
  %380 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %379, i32 0, i32 1
  %381 = load %struct.TYPE_35__*, %struct.TYPE_35__** %380, align 8
  %382 = call i64 @bfd_is_und_section(%struct.TYPE_35__* %381)
  %383 = icmp ne i64 %382, 0
  br i1 %383, label %390, label %384

384:                                              ; preds = %378
  %385 = load %struct.TYPE_44__*, %struct.TYPE_44__** %14, align 8
  %386 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %385, i32 0, i32 1
  %387 = load %struct.TYPE_35__*, %struct.TYPE_35__** %386, align 8
  %388 = call i64 @bfd_is_com_section(%struct.TYPE_35__* %387)
  %389 = icmp ne i64 %388, 0
  br i1 %389, label %390, label %392

390:                                              ; preds = %384, %378
  %391 = load i64, i64* @FALSE, align 8
  store i64 %391, i64* %16, align 8
  br label %468

392:                                              ; preds = %384
  %393 = load %struct.TYPE_44__*, %struct.TYPE_44__** %14, align 8
  %394 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %393, i32 0, i32 0
  %395 = load i32, i32* %394, align 8
  %396 = load i32, i32* @BSF_LOCAL, align 4
  %397 = and i32 %395, %396
  %398 = icmp ne i32 %397, 0
  br i1 %398, label %399, label %446

399:                                              ; preds = %392
  %400 = load %struct.TYPE_44__*, %struct.TYPE_44__** %14, align 8
  %401 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %400, i32 0, i32 0
  %402 = load i32, i32* %401, align 8
  %403 = load i32, i32* @BSF_WARNING, align 4
  %404 = and i32 %402, %403
  %405 = icmp ne i32 %404, 0
  br i1 %405, label %406, label %408

406:                                              ; preds = %399
  %407 = load i64, i64* @FALSE, align 8
  store i64 %407, i64* %16, align 8
  br label %445

408:                                              ; preds = %399
  %409 = load %struct.bfd_link_info*, %struct.bfd_link_info** %8, align 8
  %410 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %409, i32 0, i32 1
  %411 = load i32, i32* %410, align 8
  switch i32 %411, label %412 [
    i32 131, label %413
    i32 128, label %415
    i32 130, label %432
    i32 129, label %442
  ]

412:                                              ; preds = %408
  br label %413

413:                                              ; preds = %408, %412
  %414 = load i64, i64* @FALSE, align 8
  store i64 %414, i64* %16, align 8
  br label %444

415:                                              ; preds = %408
  %416 = load i64, i64* @TRUE, align 8
  store i64 %416, i64* %16, align 8
  %417 = load %struct.bfd_link_info*, %struct.bfd_link_info** %8, align 8
  %418 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %417, i32 0, i32 2
  %419 = load i32, i32* %418, align 4
  %420 = icmp ne i32 %419, 0
  br i1 %420, label %430, label %421

421:                                              ; preds = %415
  %422 = load %struct.TYPE_44__*, %struct.TYPE_44__** %14, align 8
  %423 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %422, i32 0, i32 1
  %424 = load %struct.TYPE_35__*, %struct.TYPE_35__** %423, align 8
  %425 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %424, i32 0, i32 0
  %426 = load i32, i32* %425, align 8
  %427 = load i32, i32* @SEC_MERGE, align 4
  %428 = and i32 %426, %427
  %429 = icmp ne i32 %428, 0
  br i1 %429, label %431, label %430

430:                                              ; preds = %421, %415
  br label %444

431:                                              ; preds = %421
  br label %432

432:                                              ; preds = %408, %431
  %433 = load %struct.TYPE_43__*, %struct.TYPE_43__** %7, align 8
  %434 = load %struct.TYPE_44__*, %struct.TYPE_44__** %14, align 8
  %435 = call i32 @bfd_is_local_label(%struct.TYPE_43__* %433, %struct.TYPE_44__* %434)
  %436 = icmp ne i32 %435, 0
  br i1 %436, label %437, label %439

437:                                              ; preds = %432
  %438 = load i64, i64* @FALSE, align 8
  store i64 %438, i64* %16, align 8
  br label %441

439:                                              ; preds = %432
  %440 = load i64, i64* @TRUE, align 8
  store i64 %440, i64* %16, align 8
  br label %441

441:                                              ; preds = %439, %437
  br label %444

442:                                              ; preds = %408
  %443 = load i64, i64* @TRUE, align 8
  store i64 %443, i64* %16, align 8
  br label %444

444:                                              ; preds = %442, %441, %430, %413
  br label %445

445:                                              ; preds = %444, %406
  br label %467

446:                                              ; preds = %392
  %447 = load %struct.TYPE_44__*, %struct.TYPE_44__** %14, align 8
  %448 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %447, i32 0, i32 0
  %449 = load i32, i32* %448, align 8
  %450 = load i32, i32* @BSF_CONSTRUCTOR, align 4
  %451 = and i32 %449, %450
  %452 = icmp ne i32 %451, 0
  br i1 %452, label %453, label %464

453:                                              ; preds = %446
  %454 = load %struct.bfd_link_info*, %struct.bfd_link_info** %8, align 8
  %455 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %454, i32 0, i32 0
  %456 = load i64, i64* %455, align 8
  %457 = load i64, i64* @strip_all, align 8
  %458 = icmp ne i64 %456, %457
  br i1 %458, label %459, label %461

459:                                              ; preds = %453
  %460 = load i64, i64* @TRUE, align 8
  store i64 %460, i64* %16, align 8
  br label %463

461:                                              ; preds = %453
  %462 = load i64, i64* @FALSE, align 8
  store i64 %462, i64* %16, align 8
  br label %463

463:                                              ; preds = %461, %459
  br label %466

464:                                              ; preds = %446
  %465 = call i32 (...) @abort() #3
  unreachable

466:                                              ; preds = %463
  br label %467

467:                                              ; preds = %466, %445
  br label %468

468:                                              ; preds = %467, %390
  br label %469

469:                                              ; preds = %468, %377
  br label %470

470:                                              ; preds = %469, %358
  br label %471

471:                                              ; preds = %470, %351
  br label %472

472:                                              ; preds = %471, %324
  %473 = load %struct.TYPE_44__*, %struct.TYPE_44__** %14, align 8
  %474 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %473, i32 0, i32 1
  %475 = load %struct.TYPE_35__*, %struct.TYPE_35__** %474, align 8
  %476 = call i32 @bfd_is_abs_section(%struct.TYPE_35__* %475)
  %477 = icmp ne i32 %476, 0
  br i1 %477, label %489, label %478

478:                                              ; preds = %472
  %479 = load %struct.TYPE_43__*, %struct.TYPE_43__** %6, align 8
  %480 = load %struct.TYPE_44__*, %struct.TYPE_44__** %14, align 8
  %481 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %480, i32 0, i32 1
  %482 = load %struct.TYPE_35__*, %struct.TYPE_35__** %481, align 8
  %483 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %482, i32 0, i32 1
  %484 = load i32*, i32** %483, align 8
  %485 = call i64 @bfd_section_removed_from_list(%struct.TYPE_43__* %479, i32* %484)
  %486 = icmp ne i64 %485, 0
  br i1 %486, label %487, label %489

487:                                              ; preds = %478
  %488 = load i64, i64* @FALSE, align 8
  store i64 %488, i64* %16, align 8
  br label %489

489:                                              ; preds = %487, %478, %472
  %490 = load i64, i64* %16, align 8
  %491 = icmp ne i64 %490, 0
  br i1 %491, label %492, label %508

492:                                              ; preds = %489
  %493 = load %struct.TYPE_43__*, %struct.TYPE_43__** %6, align 8
  %494 = load i64*, i64** %9, align 8
  %495 = load %struct.TYPE_44__*, %struct.TYPE_44__** %14, align 8
  %496 = call i32 @generic_add_output_symbol(%struct.TYPE_43__* %493, i64* %494, %struct.TYPE_44__* %495)
  %497 = icmp ne i32 %496, 0
  br i1 %497, label %500, label %498

498:                                              ; preds = %492
  %499 = load i64, i64* @FALSE, align 8
  store i64 %499, i64* %5, align 8
  br label %514

500:                                              ; preds = %492
  %501 = load %struct.generic_link_hash_entry*, %struct.generic_link_hash_entry** %15, align 8
  %502 = icmp ne %struct.generic_link_hash_entry* %501, null
  br i1 %502, label %503, label %507

503:                                              ; preds = %500
  %504 = load i64, i64* @TRUE, align 8
  %505 = load %struct.generic_link_hash_entry*, %struct.generic_link_hash_entry** %15, align 8
  %506 = getelementptr inbounds %struct.generic_link_hash_entry, %struct.generic_link_hash_entry* %505, i32 0, i32 0
  store i64 %504, i64* %506, align 8
  br label %507

507:                                              ; preds = %503, %500
  br label %508

508:                                              ; preds = %507, %489
  br label %509

509:                                              ; preds = %508
  %510 = load %struct.TYPE_44__**, %struct.TYPE_44__*** %10, align 8
  %511 = getelementptr inbounds %struct.TYPE_44__*, %struct.TYPE_44__** %510, i32 1
  store %struct.TYPE_44__** %511, %struct.TYPE_44__*** %10, align 8
  br label %87

512:                                              ; preds = %87
  %513 = load i64, i64* @TRUE, align 8
  store i64 %513, i64* %5, align 8
  br label %514

514:                                              ; preds = %512, %498, %70, %47, %20
  %515 = load i64, i64* %5, align 8
  ret i64 %515
}

declare dso_local i32 @generic_link_read_symbols(%struct.TYPE_43__*) #1

declare dso_local %struct.TYPE_44__* @bfd_make_empty_symbol(%struct.TYPE_43__*) #1

declare dso_local i32 @generic_add_output_symbol(%struct.TYPE_43__*, i64*, %struct.TYPE_44__*) #1

declare dso_local %struct.TYPE_44__** @_bfd_generic_link_get_symbols(%struct.TYPE_43__*) #1

declare dso_local i32 @_bfd_generic_link_get_symcount(%struct.TYPE_43__*) #1

declare dso_local i64 @bfd_is_und_section(%struct.TYPE_35__*) #1

declare dso_local %struct.TYPE_35__* @bfd_get_section(%struct.TYPE_44__*) #1

declare dso_local i64 @bfd_is_com_section(%struct.TYPE_35__*) #1

declare dso_local i64 @bfd_is_ind_section(%struct.TYPE_35__*) #1

declare dso_local i64 @bfd_wrapped_link_hash_lookup(%struct.TYPE_43__*, %struct.bfd_link_info*, i32, i64, i64, i64) #1

declare dso_local i32 @bfd_asymbol_name(%struct.TYPE_44__*) #1

declare dso_local %struct.generic_link_hash_entry* @_bfd_generic_link_hash_lookup(i32, i32, i64, i64, i64) #1

declare dso_local i32 @_bfd_generic_hash_table(%struct.bfd_link_info*) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

declare dso_local i32 @BFD_ASSERT(i64) #1

declare dso_local i32* @bfd_hash_lookup(i32, i32, i64, i64) #1

declare dso_local %struct.TYPE_43__* @bfd_asymbol_bfd(%struct.TYPE_44__*) #1

declare dso_local i32 @bfd_is_local_label(%struct.TYPE_43__*, %struct.TYPE_44__*) #1

declare dso_local i32 @bfd_is_abs_section(%struct.TYPE_35__*) #1

declare dso_local i64 @bfd_section_removed_from_list(%struct.TYPE_43__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
