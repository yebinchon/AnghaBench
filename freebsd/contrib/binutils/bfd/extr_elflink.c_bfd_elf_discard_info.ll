; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elflink.c_bfd_elf_discard_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elflink.c_bfd_elf_discard_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_30__ = type { i32, %struct.TYPE_30__* }
%struct.bfd_link_info = type { i32, i64, i32, %struct.TYPE_28__*, %struct.TYPE_30__*, i32, i64 }
%struct.TYPE_28__ = type { i32 (i32)* }
%struct.elf_reloc_cookie = type { i32, i32, i32, i32*, i32*, i32*, i32*, i64, i32, %struct.TYPE_30__* }
%struct.TYPE_31__ = type { i64, i64, i32, i32 }
%struct.TYPE_32__ = type { i32, i32, i8* }
%struct.elf_backend_data = type { i64 (%struct.TYPE_30__*, %struct.elf_reloc_cookie*, %struct.bfd_link_info.0*)*, %struct.TYPE_29__* }
%struct.bfd_link_info.0 = type opaque
%struct.TYPE_29__ = type { i32, i32, i32 }
%struct.TYPE_33__ = type { %struct.TYPE_32__ }
%struct.TYPE_27__ = type { i32*, i32 }

@FALSE = common dso_local global i32 0, align 4
@bfd_target_elf_flavour = common dso_local global i64 0, align 8
@DYNAMIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c".eh_frame\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c".stab\00", align 1
@ELF_INFO_TYPE_STABS = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [32 x i8] c"%P%X: can not read symbols: %E\0A\00", align 1
@bfd_elf_reloc_symbol_deleted_p = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bfd_elf_discard_info(%struct.TYPE_30__* %0, %struct.bfd_link_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_30__*, align 8
  %5 = alloca %struct.bfd_link_info*, align 8
  %6 = alloca %struct.elf_reloc_cookie, align 8
  %7 = alloca %struct.TYPE_31__*, align 8
  %8 = alloca %struct.TYPE_31__*, align 8
  %9 = alloca %struct.TYPE_32__*, align 8
  %10 = alloca %struct.elf_backend_data*, align 8
  %11 = alloca %struct.TYPE_30__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_30__* %0, %struct.TYPE_30__** %4, align 8
  store %struct.bfd_link_info* %1, %struct.bfd_link_info** %5, align 8
  %14 = load i32, i32* @FALSE, align 4
  store i32 %14, i32* %13, align 4
  %15 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %16 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %15, i32 0, i32 6
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %25, label %19

19:                                               ; preds = %2
  %20 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %21 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %20, i32 0, i32 5
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @is_elf_hash_table(i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %19, %2
  %26 = load i32, i32* @FALSE, align 4
  store i32 %26, i32* %3, align 4
  br label %389

27:                                               ; preds = %19
  %28 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %29 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %28, i32 0, i32 4
  %30 = load %struct.TYPE_30__*, %struct.TYPE_30__** %29, align 8
  store %struct.TYPE_30__* %30, %struct.TYPE_30__** %11, align 8
  br label %31

31:                                               ; preds = %366, %27
  %32 = load %struct.TYPE_30__*, %struct.TYPE_30__** %11, align 8
  %33 = icmp ne %struct.TYPE_30__* %32, null
  br i1 %33, label %34, label %370

34:                                               ; preds = %31
  %35 = load %struct.TYPE_30__*, %struct.TYPE_30__** %11, align 8
  %36 = call i64 @bfd_get_flavour(%struct.TYPE_30__* %35)
  %37 = load i64, i64* @bfd_target_elf_flavour, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  br label %366

40:                                               ; preds = %34
  %41 = load %struct.TYPE_30__*, %struct.TYPE_30__** %11, align 8
  %42 = call %struct.elf_backend_data* @get_elf_backend_data(%struct.TYPE_30__* %41)
  store %struct.elf_backend_data* %42, %struct.elf_backend_data** %10, align 8
  %43 = load %struct.TYPE_30__*, %struct.TYPE_30__** %11, align 8
  %44 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @DYNAMIC, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %40
  br label %366

50:                                               ; preds = %40
  store %struct.TYPE_31__* null, %struct.TYPE_31__** %8, align 8
  %51 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %52 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %73, label %55

55:                                               ; preds = %50
  %56 = load %struct.TYPE_30__*, %struct.TYPE_30__** %11, align 8
  %57 = call %struct.TYPE_31__* @bfd_get_section_by_name(%struct.TYPE_30__* %56, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_31__* %57, %struct.TYPE_31__** %8, align 8
  %58 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %59 = icmp ne %struct.TYPE_31__* %58, null
  br i1 %59, label %60, label %72

60:                                               ; preds = %55
  %61 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp eq i64 %63, 0
  br i1 %64, label %71, label %65

65:                                               ; preds = %60
  %66 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 4
  %69 = call i64 @bfd_is_abs_section(i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %65, %60
  store %struct.TYPE_31__* null, %struct.TYPE_31__** %8, align 8
  br label %72

72:                                               ; preds = %71, %65, %55
  br label %73

73:                                               ; preds = %72, %50
  %74 = load %struct.TYPE_30__*, %struct.TYPE_30__** %11, align 8
  %75 = call %struct.TYPE_31__* @bfd_get_section_by_name(%struct.TYPE_30__* %74, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  store %struct.TYPE_31__* %75, %struct.TYPE_31__** %7, align 8
  %76 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %77 = icmp ne %struct.TYPE_31__* %76, null
  br i1 %77, label %78, label %96

78:                                               ; preds = %73
  %79 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %80 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = icmp eq i64 %81, 0
  br i1 %82, label %95, label %83

83:                                               ; preds = %78
  %84 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %85 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 4
  %87 = call i64 @bfd_is_abs_section(i32 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %95, label %89

89:                                               ; preds = %83
  %90 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %91 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @ELF_INFO_TYPE_STABS, align 8
  %94 = icmp ne i64 %92, %93
  br i1 %94, label %95, label %96

95:                                               ; preds = %89, %83, %78
  store %struct.TYPE_31__* null, %struct.TYPE_31__** %7, align 8
  br label %96

96:                                               ; preds = %95, %89, %73
  %97 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %98 = icmp eq %struct.TYPE_31__* %97, null
  br i1 %98, label %99, label %108

99:                                               ; preds = %96
  %100 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %101 = icmp eq %struct.TYPE_31__* %100, null
  br i1 %101, label %102, label %108

102:                                              ; preds = %99
  %103 = load %struct.elf_backend_data*, %struct.elf_backend_data** %10, align 8
  %104 = getelementptr inbounds %struct.elf_backend_data, %struct.elf_backend_data* %103, i32 0, i32 0
  %105 = load i64 (%struct.TYPE_30__*, %struct.elf_reloc_cookie*, %struct.bfd_link_info.0*)*, i64 (%struct.TYPE_30__*, %struct.elf_reloc_cookie*, %struct.bfd_link_info.0*)** %104, align 8
  %106 = icmp eq i64 (%struct.TYPE_30__*, %struct.elf_reloc_cookie*, %struct.bfd_link_info.0*)* %105, null
  br i1 %106, label %107, label %108

107:                                              ; preds = %102
  br label %366

108:                                              ; preds = %102, %99, %96
  %109 = load %struct.TYPE_30__*, %struct.TYPE_30__** %11, align 8
  %110 = call %struct.TYPE_33__* @elf_tdata(%struct.TYPE_30__* %109)
  %111 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %110, i32 0, i32 0
  store %struct.TYPE_32__* %111, %struct.TYPE_32__** %9, align 8
  %112 = load %struct.TYPE_30__*, %struct.TYPE_30__** %11, align 8
  %113 = getelementptr inbounds %struct.elf_reloc_cookie, %struct.elf_reloc_cookie* %6, i32 0, i32 9
  store %struct.TYPE_30__* %112, %struct.TYPE_30__** %113, align 8
  %114 = load %struct.TYPE_30__*, %struct.TYPE_30__** %11, align 8
  %115 = call i32 @elf_sym_hashes(%struct.TYPE_30__* %114)
  %116 = getelementptr inbounds %struct.elf_reloc_cookie, %struct.elf_reloc_cookie* %6, i32 0, i32 8
  store i32 %115, i32* %116, align 8
  %117 = load %struct.TYPE_30__*, %struct.TYPE_30__** %11, align 8
  %118 = call i64 @elf_bad_symtab(%struct.TYPE_30__* %117)
  %119 = getelementptr inbounds %struct.elf_reloc_cookie, %struct.elf_reloc_cookie* %6, i32 0, i32 7
  store i64 %118, i64* %119, align 8
  %120 = getelementptr inbounds %struct.elf_reloc_cookie, %struct.elf_reloc_cookie* %6, i32 0, i32 7
  %121 = load i64, i64* %120, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %135

123:                                              ; preds = %108
  %124 = load %struct.TYPE_32__*, %struct.TYPE_32__** %9, align 8
  %125 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = load %struct.elf_backend_data*, %struct.elf_backend_data** %10, align 8
  %128 = getelementptr inbounds %struct.elf_backend_data, %struct.elf_backend_data* %127, i32 0, i32 1
  %129 = load %struct.TYPE_29__*, %struct.TYPE_29__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = sdiv i32 %126, %131
  %133 = getelementptr inbounds %struct.elf_reloc_cookie, %struct.elf_reloc_cookie* %6, i32 0, i32 0
  store i32 %132, i32* %133, align 8
  %134 = getelementptr inbounds %struct.elf_reloc_cookie, %struct.elf_reloc_cookie* %6, i32 0, i32 1
  store i32 0, i32* %134, align 4
  br label %144

135:                                              ; preds = %108
  %136 = load %struct.TYPE_32__*, %struct.TYPE_32__** %9, align 8
  %137 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = getelementptr inbounds %struct.elf_reloc_cookie, %struct.elf_reloc_cookie* %6, i32 0, i32 0
  store i32 %138, i32* %139, align 8
  %140 = load %struct.TYPE_32__*, %struct.TYPE_32__** %9, align 8
  %141 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = getelementptr inbounds %struct.elf_reloc_cookie, %struct.elf_reloc_cookie* %6, i32 0, i32 1
  store i32 %142, i32* %143, align 4
  br label %144

144:                                              ; preds = %135, %123
  %145 = load %struct.elf_backend_data*, %struct.elf_backend_data** %10, align 8
  %146 = getelementptr inbounds %struct.elf_backend_data, %struct.elf_backend_data* %145, i32 0, i32 1
  %147 = load %struct.TYPE_29__*, %struct.TYPE_29__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = icmp eq i32 %149, 32
  br i1 %150, label %151, label %153

151:                                              ; preds = %144
  %152 = getelementptr inbounds %struct.elf_reloc_cookie, %struct.elf_reloc_cookie* %6, i32 0, i32 2
  store i32 8, i32* %152, align 8
  br label %155

153:                                              ; preds = %144
  %154 = getelementptr inbounds %struct.elf_reloc_cookie, %struct.elf_reloc_cookie* %6, i32 0, i32 2
  store i32 32, i32* %154, align 8
  br label %155

155:                                              ; preds = %153, %151
  %156 = load %struct.TYPE_32__*, %struct.TYPE_32__** %9, align 8
  %157 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %156, i32 0, i32 2
  %158 = load i8*, i8** %157, align 8
  %159 = bitcast i8* %158 to i32*
  %160 = getelementptr inbounds %struct.elf_reloc_cookie, %struct.elf_reloc_cookie* %6, i32 0, i32 3
  store i32* %159, i32** %160, align 8
  %161 = getelementptr inbounds %struct.elf_reloc_cookie, %struct.elf_reloc_cookie* %6, i32 0, i32 3
  %162 = load i32*, i32** %161, align 8
  %163 = icmp eq i32* %162, null
  br i1 %163, label %164, label %188

164:                                              ; preds = %155
  %165 = getelementptr inbounds %struct.elf_reloc_cookie, %struct.elf_reloc_cookie* %6, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %188

168:                                              ; preds = %164
  %169 = load %struct.TYPE_30__*, %struct.TYPE_30__** %11, align 8
  %170 = load %struct.TYPE_32__*, %struct.TYPE_32__** %9, align 8
  %171 = getelementptr inbounds %struct.elf_reloc_cookie, %struct.elf_reloc_cookie* %6, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = call i32* @bfd_elf_get_elf_syms(%struct.TYPE_30__* %169, %struct.TYPE_32__* %170, i32 %172, i32 0, i32* null, i32* null, i32* null)
  %174 = getelementptr inbounds %struct.elf_reloc_cookie, %struct.elf_reloc_cookie* %6, i32 0, i32 3
  store i32* %173, i32** %174, align 8
  %175 = getelementptr inbounds %struct.elf_reloc_cookie, %struct.elf_reloc_cookie* %6, i32 0, i32 3
  %176 = load i32*, i32** %175, align 8
  %177 = icmp eq i32* %176, null
  br i1 %177, label %178, label %187

178:                                              ; preds = %168
  %179 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %180 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %179, i32 0, i32 3
  %181 = load %struct.TYPE_28__*, %struct.TYPE_28__** %180, align 8
  %182 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %181, i32 0, i32 0
  %183 = load i32 (i32)*, i32 (i32)** %182, align 8
  %184 = call i32 @_(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %185 = call i32 %183(i32 %184)
  %186 = load i32, i32* @FALSE, align 4
  store i32 %186, i32* %3, align 4
  br label %389

187:                                              ; preds = %168
  br label %188

188:                                              ; preds = %187, %164, %155
  %189 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %190 = icmp ne %struct.TYPE_31__* %189, null
  br i1 %190, label %191, label %254

191:                                              ; preds = %188
  %192 = getelementptr inbounds %struct.elf_reloc_cookie, %struct.elf_reloc_cookie* %6, i32 0, i32 4
  store i32* null, i32** %192, align 8
  %193 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %194 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %193, i32 0, i32 2
  %195 = load i32, i32* %194, align 8
  store i32 %195, i32* %12, align 4
  %196 = load i32, i32* %12, align 4
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %207

198:                                              ; preds = %191
  %199 = load %struct.TYPE_30__*, %struct.TYPE_30__** %11, align 8
  %200 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %201 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %202 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %201, i32 0, i32 2
  %203 = load i32, i32* %202, align 8
  %204 = call i8* @_bfd_elf_link_read_relocs(%struct.TYPE_30__* %199, %struct.TYPE_31__* %200, i32* null, i32* null, i32 %203)
  %205 = bitcast i8* %204 to i32*
  %206 = getelementptr inbounds %struct.elf_reloc_cookie, %struct.elf_reloc_cookie* %6, i32 0, i32 4
  store i32* %205, i32** %206, align 8
  br label %207

207:                                              ; preds = %198, %191
  %208 = getelementptr inbounds %struct.elf_reloc_cookie, %struct.elf_reloc_cookie* %6, i32 0, i32 4
  %209 = load i32*, i32** %208, align 8
  %210 = icmp ne i32* %209, null
  br i1 %210, label %211, label %253

211:                                              ; preds = %207
  %212 = getelementptr inbounds %struct.elf_reloc_cookie, %struct.elf_reloc_cookie* %6, i32 0, i32 4
  %213 = load i32*, i32** %212, align 8
  %214 = getelementptr inbounds %struct.elf_reloc_cookie, %struct.elf_reloc_cookie* %6, i32 0, i32 6
  store i32* %213, i32** %214, align 8
  %215 = getelementptr inbounds %struct.elf_reloc_cookie, %struct.elf_reloc_cookie* %6, i32 0, i32 4
  %216 = load i32*, i32** %215, align 8
  %217 = getelementptr inbounds %struct.elf_reloc_cookie, %struct.elf_reloc_cookie* %6, i32 0, i32 5
  store i32* %216, i32** %217, align 8
  %218 = load i32, i32* %12, align 4
  %219 = load %struct.elf_backend_data*, %struct.elf_backend_data** %10, align 8
  %220 = getelementptr inbounds %struct.elf_backend_data, %struct.elf_backend_data* %219, i32 0, i32 1
  %221 = load %struct.TYPE_29__*, %struct.TYPE_29__** %220, align 8
  %222 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %221, i32 0, i32 2
  %223 = load i32, i32* %222, align 4
  %224 = mul i32 %218, %223
  %225 = getelementptr inbounds %struct.elf_reloc_cookie, %struct.elf_reloc_cookie* %6, i32 0, i32 5
  %226 = load i32*, i32** %225, align 8
  %227 = zext i32 %224 to i64
  %228 = getelementptr inbounds i32, i32* %226, i64 %227
  store i32* %228, i32** %225, align 8
  %229 = load %struct.TYPE_30__*, %struct.TYPE_30__** %11, align 8
  %230 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %231 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %232 = call %struct.TYPE_27__* @elf_section_data(%struct.TYPE_31__* %231)
  %233 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %232, i32 0, i32 1
  %234 = load i32, i32* %233, align 8
  %235 = load i32, i32* @bfd_elf_reloc_symbol_deleted_p, align 4
  %236 = call i64 @_bfd_discard_section_stabs(%struct.TYPE_30__* %229, %struct.TYPE_31__* %230, i32 %234, i32 %235, %struct.elf_reloc_cookie* %6)
  %237 = icmp ne i64 %236, 0
  br i1 %237, label %238, label %240

238:                                              ; preds = %211
  %239 = load i32, i32* @TRUE, align 4
  store i32 %239, i32* %13, align 4
  br label %240

240:                                              ; preds = %238, %211
  %241 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %242 = call %struct.TYPE_27__* @elf_section_data(%struct.TYPE_31__* %241)
  %243 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %242, i32 0, i32 0
  %244 = load i32*, i32** %243, align 8
  %245 = getelementptr inbounds %struct.elf_reloc_cookie, %struct.elf_reloc_cookie* %6, i32 0, i32 4
  %246 = load i32*, i32** %245, align 8
  %247 = icmp ne i32* %244, %246
  br i1 %247, label %248, label %252

248:                                              ; preds = %240
  %249 = getelementptr inbounds %struct.elf_reloc_cookie, %struct.elf_reloc_cookie* %6, i32 0, i32 4
  %250 = load i32*, i32** %249, align 8
  %251 = call i32 @free(i32* %250)
  br label %252

252:                                              ; preds = %248, %240
  br label %253

253:                                              ; preds = %252, %207
  br label %254

254:                                              ; preds = %253, %188
  %255 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %256 = icmp ne %struct.TYPE_31__* %255, null
  br i1 %256, label %257, label %321

257:                                              ; preds = %254
  %258 = getelementptr inbounds %struct.elf_reloc_cookie, %struct.elf_reloc_cookie* %6, i32 0, i32 4
  store i32* null, i32** %258, align 8
  %259 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %260 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %259, i32 0, i32 2
  %261 = load i32, i32* %260, align 8
  store i32 %261, i32* %12, align 4
  %262 = load i32, i32* %12, align 4
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %264, label %273

264:                                              ; preds = %257
  %265 = load %struct.TYPE_30__*, %struct.TYPE_30__** %11, align 8
  %266 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %267 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %268 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %267, i32 0, i32 2
  %269 = load i32, i32* %268, align 8
  %270 = call i8* @_bfd_elf_link_read_relocs(%struct.TYPE_30__* %265, %struct.TYPE_31__* %266, i32* null, i32* null, i32 %269)
  %271 = bitcast i8* %270 to i32*
  %272 = getelementptr inbounds %struct.elf_reloc_cookie, %struct.elf_reloc_cookie* %6, i32 0, i32 4
  store i32* %271, i32** %272, align 8
  br label %273

273:                                              ; preds = %264, %257
  %274 = getelementptr inbounds %struct.elf_reloc_cookie, %struct.elf_reloc_cookie* %6, i32 0, i32 4
  %275 = load i32*, i32** %274, align 8
  %276 = getelementptr inbounds %struct.elf_reloc_cookie, %struct.elf_reloc_cookie* %6, i32 0, i32 6
  store i32* %275, i32** %276, align 8
  %277 = getelementptr inbounds %struct.elf_reloc_cookie, %struct.elf_reloc_cookie* %6, i32 0, i32 4
  %278 = load i32*, i32** %277, align 8
  %279 = getelementptr inbounds %struct.elf_reloc_cookie, %struct.elf_reloc_cookie* %6, i32 0, i32 5
  store i32* %278, i32** %279, align 8
  %280 = getelementptr inbounds %struct.elf_reloc_cookie, %struct.elf_reloc_cookie* %6, i32 0, i32 4
  %281 = load i32*, i32** %280, align 8
  %282 = icmp ne i32* %281, null
  br i1 %282, label %283, label %295

283:                                              ; preds = %273
  %284 = load i32, i32* %12, align 4
  %285 = load %struct.elf_backend_data*, %struct.elf_backend_data** %10, align 8
  %286 = getelementptr inbounds %struct.elf_backend_data, %struct.elf_backend_data* %285, i32 0, i32 1
  %287 = load %struct.TYPE_29__*, %struct.TYPE_29__** %286, align 8
  %288 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %287, i32 0, i32 2
  %289 = load i32, i32* %288, align 4
  %290 = mul i32 %284, %289
  %291 = getelementptr inbounds %struct.elf_reloc_cookie, %struct.elf_reloc_cookie* %6, i32 0, i32 5
  %292 = load i32*, i32** %291, align 8
  %293 = zext i32 %290 to i64
  %294 = getelementptr inbounds i32, i32* %292, i64 %293
  store i32* %294, i32** %291, align 8
  br label %295

295:                                              ; preds = %283, %273
  %296 = load %struct.TYPE_30__*, %struct.TYPE_30__** %11, align 8
  %297 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %298 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %299 = load i32, i32* @bfd_elf_reloc_symbol_deleted_p, align 4
  %300 = call i64 @_bfd_elf_discard_section_eh_frame(%struct.TYPE_30__* %296, %struct.bfd_link_info* %297, %struct.TYPE_31__* %298, i32 %299, %struct.elf_reloc_cookie* %6)
  %301 = icmp ne i64 %300, 0
  br i1 %301, label %302, label %304

302:                                              ; preds = %295
  %303 = load i32, i32* @TRUE, align 4
  store i32 %303, i32* %13, align 4
  br label %304

304:                                              ; preds = %302, %295
  %305 = getelementptr inbounds %struct.elf_reloc_cookie, %struct.elf_reloc_cookie* %6, i32 0, i32 4
  %306 = load i32*, i32** %305, align 8
  %307 = icmp ne i32* %306, null
  br i1 %307, label %308, label %320

308:                                              ; preds = %304
  %309 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %310 = call %struct.TYPE_27__* @elf_section_data(%struct.TYPE_31__* %309)
  %311 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %310, i32 0, i32 0
  %312 = load i32*, i32** %311, align 8
  %313 = getelementptr inbounds %struct.elf_reloc_cookie, %struct.elf_reloc_cookie* %6, i32 0, i32 4
  %314 = load i32*, i32** %313, align 8
  %315 = icmp ne i32* %312, %314
  br i1 %315, label %316, label %320

316:                                              ; preds = %308
  %317 = getelementptr inbounds %struct.elf_reloc_cookie, %struct.elf_reloc_cookie* %6, i32 0, i32 4
  %318 = load i32*, i32** %317, align 8
  %319 = call i32 @free(i32* %318)
  br label %320

320:                                              ; preds = %316, %308, %304
  br label %321

321:                                              ; preds = %320, %254
  %322 = load %struct.elf_backend_data*, %struct.elf_backend_data** %10, align 8
  %323 = getelementptr inbounds %struct.elf_backend_data, %struct.elf_backend_data* %322, i32 0, i32 0
  %324 = load i64 (%struct.TYPE_30__*, %struct.elf_reloc_cookie*, %struct.bfd_link_info.0*)*, i64 (%struct.TYPE_30__*, %struct.elf_reloc_cookie*, %struct.bfd_link_info.0*)** %323, align 8
  %325 = icmp ne i64 (%struct.TYPE_30__*, %struct.elf_reloc_cookie*, %struct.bfd_link_info.0*)* %324, null
  br i1 %325, label %326, label %337

326:                                              ; preds = %321
  %327 = load %struct.elf_backend_data*, %struct.elf_backend_data** %10, align 8
  %328 = getelementptr inbounds %struct.elf_backend_data, %struct.elf_backend_data* %327, i32 0, i32 0
  %329 = load i64 (%struct.TYPE_30__*, %struct.elf_reloc_cookie*, %struct.bfd_link_info.0*)*, i64 (%struct.TYPE_30__*, %struct.elf_reloc_cookie*, %struct.bfd_link_info.0*)** %328, align 8
  %330 = load %struct.TYPE_30__*, %struct.TYPE_30__** %11, align 8
  %331 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %332 = bitcast %struct.bfd_link_info* %331 to %struct.bfd_link_info.0*
  %333 = call i64 %329(%struct.TYPE_30__* %330, %struct.elf_reloc_cookie* %6, %struct.bfd_link_info.0* %332)
  %334 = icmp ne i64 %333, 0
  br i1 %334, label %335, label %337

335:                                              ; preds = %326
  %336 = load i32, i32* @TRUE, align 4
  store i32 %336, i32* %13, align 4
  br label %337

337:                                              ; preds = %335, %326, %321
  %338 = getelementptr inbounds %struct.elf_reloc_cookie, %struct.elf_reloc_cookie* %6, i32 0, i32 3
  %339 = load i32*, i32** %338, align 8
  %340 = icmp ne i32* %339, null
  br i1 %340, label %341, label %365

341:                                              ; preds = %337
  %342 = load %struct.TYPE_32__*, %struct.TYPE_32__** %9, align 8
  %343 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %342, i32 0, i32 2
  %344 = load i8*, i8** %343, align 8
  %345 = getelementptr inbounds %struct.elf_reloc_cookie, %struct.elf_reloc_cookie* %6, i32 0, i32 3
  %346 = load i32*, i32** %345, align 8
  %347 = bitcast i32* %346 to i8*
  %348 = icmp ne i8* %344, %347
  br i1 %348, label %349, label %365

349:                                              ; preds = %341
  %350 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %351 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %350, i32 0, i32 2
  %352 = load i32, i32* %351, align 8
  %353 = icmp ne i32 %352, 0
  br i1 %353, label %358, label %354

354:                                              ; preds = %349
  %355 = getelementptr inbounds %struct.elf_reloc_cookie, %struct.elf_reloc_cookie* %6, i32 0, i32 3
  %356 = load i32*, i32** %355, align 8
  %357 = call i32 @free(i32* %356)
  br label %364

358:                                              ; preds = %349
  %359 = getelementptr inbounds %struct.elf_reloc_cookie, %struct.elf_reloc_cookie* %6, i32 0, i32 3
  %360 = load i32*, i32** %359, align 8
  %361 = bitcast i32* %360 to i8*
  %362 = load %struct.TYPE_32__*, %struct.TYPE_32__** %9, align 8
  %363 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %362, i32 0, i32 2
  store i8* %361, i8** %363, align 8
  br label %364

364:                                              ; preds = %358, %354
  br label %365

365:                                              ; preds = %364, %341, %337
  br label %366

366:                                              ; preds = %365, %107, %49, %39
  %367 = load %struct.TYPE_30__*, %struct.TYPE_30__** %11, align 8
  %368 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %367, i32 0, i32 1
  %369 = load %struct.TYPE_30__*, %struct.TYPE_30__** %368, align 8
  store %struct.TYPE_30__* %369, %struct.TYPE_30__** %11, align 8
  br label %31

370:                                              ; preds = %31
  %371 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %372 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %371, i32 0, i32 1
  %373 = load i64, i64* %372, align 8
  %374 = icmp ne i64 %373, 0
  br i1 %374, label %375, label %387

375:                                              ; preds = %370
  %376 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %377 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %376, i32 0, i32 0
  %378 = load i32, i32* %377, align 8
  %379 = icmp ne i32 %378, 0
  br i1 %379, label %387, label %380

380:                                              ; preds = %375
  %381 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %382 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %383 = call i64 @_bfd_elf_discard_section_eh_frame_hdr(%struct.TYPE_30__* %381, %struct.bfd_link_info* %382)
  %384 = icmp ne i64 %383, 0
  br i1 %384, label %385, label %387

385:                                              ; preds = %380
  %386 = load i32, i32* @TRUE, align 4
  store i32 %386, i32* %13, align 4
  br label %387

387:                                              ; preds = %385, %380, %375, %370
  %388 = load i32, i32* %13, align 4
  store i32 %388, i32* %3, align 4
  br label %389

389:                                              ; preds = %387, %178, %25
  %390 = load i32, i32* %3, align 4
  ret i32 %390
}

declare dso_local i32 @is_elf_hash_table(i32) #1

declare dso_local i64 @bfd_get_flavour(%struct.TYPE_30__*) #1

declare dso_local %struct.elf_backend_data* @get_elf_backend_data(%struct.TYPE_30__*) #1

declare dso_local %struct.TYPE_31__* @bfd_get_section_by_name(%struct.TYPE_30__*, i8*) #1

declare dso_local i64 @bfd_is_abs_section(i32) #1

declare dso_local %struct.TYPE_33__* @elf_tdata(%struct.TYPE_30__*) #1

declare dso_local i32 @elf_sym_hashes(%struct.TYPE_30__*) #1

declare dso_local i64 @elf_bad_symtab(%struct.TYPE_30__*) #1

declare dso_local i32* @bfd_elf_get_elf_syms(%struct.TYPE_30__*, %struct.TYPE_32__*, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i8* @_bfd_elf_link_read_relocs(%struct.TYPE_30__*, %struct.TYPE_31__*, i32*, i32*, i32) #1

declare dso_local i64 @_bfd_discard_section_stabs(%struct.TYPE_30__*, %struct.TYPE_31__*, i32, i32, %struct.elf_reloc_cookie*) #1

declare dso_local %struct.TYPE_27__* @elf_section_data(%struct.TYPE_31__*) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i64 @_bfd_elf_discard_section_eh_frame(%struct.TYPE_30__*, %struct.bfd_link_info*, %struct.TYPE_31__*, i32, %struct.elf_reloc_cookie*) #1

declare dso_local i64 @_bfd_elf_discard_section_eh_frame_hdr(%struct.TYPE_30__*, %struct.bfd_link_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
