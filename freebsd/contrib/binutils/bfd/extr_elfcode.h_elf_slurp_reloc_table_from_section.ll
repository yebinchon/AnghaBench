; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elfcode.h_elf_slurp_reloc_table_from_section.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elfcode.h_elf_slurp_reloc_table_from_section.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_28__ = type { i32** }
%struct.TYPE_29__ = type { i32** }
%struct.TYPE_27__ = type { i32, i32 }
%struct.TYPE_30__ = type { i32, i64 }
%struct.TYPE_32__ = type { i32, i32, i32 }
%struct.TYPE_31__ = type { i32, i32**, i64 }
%struct.elf_backend_data = type { i32 (%struct.TYPE_27__*, %struct.TYPE_31__*, %struct.TYPE_33__*)*, i32 (%struct.TYPE_27__*, %struct.TYPE_31__*, %struct.TYPE_33__*)* }
%struct.TYPE_33__ = type { i32, i32, i64 }

@SEEK_SET = common dso_local global i32 0, align 4
@EXEC_P = common dso_local global i32 0, align 4
@DYNAMIC = common dso_local global i32 0, align 4
@bfd_abs_section_ptr = common dso_local global %struct.TYPE_28__* null, align 8
@.str = private unnamed_addr constant [51 x i8] c"%s(%s): relocation %d has invalid symbol index %ld\00", align 1
@bfd_abs_section = common dso_local global %struct.TYPE_29__ zeroinitializer, align 8
@TRUE = common dso_local global i64 0, align 8
@FALSE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_27__*, %struct.TYPE_30__*, %struct.TYPE_32__*, i32, %struct.TYPE_31__*, i32**, i64)* @elf_slurp_reloc_table_from_section to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @elf_slurp_reloc_table_from_section(%struct.TYPE_27__* %0, %struct.TYPE_30__* %1, %struct.TYPE_32__* %2, i32 %3, %struct.TYPE_31__* %4, i32** %5, i64 %6) #0 {
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_27__*, align 8
  %10 = alloca %struct.TYPE_30__*, align 8
  %11 = alloca %struct.TYPE_32__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_31__*, align 8
  %14 = alloca i32**, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.elf_backend_data*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca %struct.TYPE_31__*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca %struct.TYPE_33__, align 8
  %24 = alloca i32**, align 8
  store %struct.TYPE_27__* %0, %struct.TYPE_27__** %9, align 8
  store %struct.TYPE_30__* %1, %struct.TYPE_30__** %10, align 8
  store %struct.TYPE_32__* %2, %struct.TYPE_32__** %11, align 8
  store i32 %3, i32* %12, align 4
  store %struct.TYPE_31__* %4, %struct.TYPE_31__** %13, align 8
  store i32** %5, i32*** %14, align 8
  store i64 %6, i64* %15, align 8
  %25 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %26 = call %struct.elf_backend_data* @get_elf_backend_data(%struct.TYPE_27__* %25)
  store %struct.elf_backend_data* %26, %struct.elf_backend_data** %16, align 8
  store i8* null, i8** %17, align 8
  %27 = load %struct.TYPE_32__*, %struct.TYPE_32__** %11, align 8
  %28 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i8* @bfd_malloc(i32 %29)
  store i8* %30, i8** %17, align 8
  %31 = load i8*, i8** %17, align 8
  %32 = icmp eq i8* %31, null
  br i1 %32, label %33, label %34

33:                                               ; preds = %7
  br label %218

34:                                               ; preds = %7
  %35 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %36 = load %struct.TYPE_32__*, %struct.TYPE_32__** %11, align 8
  %37 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @SEEK_SET, align 4
  %40 = call i64 @bfd_seek(%struct.TYPE_27__* %35, i32 %38, i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %53, label %42

42:                                               ; preds = %34
  %43 = load i8*, i8** %17, align 8
  %44 = load %struct.TYPE_32__*, %struct.TYPE_32__** %11, align 8
  %45 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %48 = call i32 @bfd_bread(i8* %43, i32 %46, %struct.TYPE_27__* %47)
  %49 = load %struct.TYPE_32__*, %struct.TYPE_32__** %11, align 8
  %50 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = icmp ne i32 %48, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %42, %34
  br label %218

54:                                               ; preds = %42
  %55 = load i8*, i8** %17, align 8
  %56 = bitcast i8* %55 to i32*
  store i32* %56, i32** %18, align 8
  %57 = load %struct.TYPE_32__*, %struct.TYPE_32__** %11, align 8
  %58 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  store i32 %59, i32* %21, align 4
  %60 = load i32, i32* %21, align 4
  %61 = sext i32 %60 to i64
  %62 = icmp eq i64 %61, 4
  br i1 %62, label %67, label %63

63:                                               ; preds = %54
  %64 = load i32, i32* %21, align 4
  %65 = sext i32 %64 to i64
  %66 = icmp eq i64 %65, 4
  br label %67

67:                                               ; preds = %63, %54
  %68 = phi i1 [ true, %54 ], [ %66, %63 ]
  %69 = zext i1 %68 to i32
  %70 = call i32 @BFD_ASSERT(i32 %69)
  %71 = load i64, i64* %15, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %67
  %74 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %75 = call i32 @bfd_get_dynamic_symcount(%struct.TYPE_27__* %74)
  store i32 %75, i32* %22, align 4
  br label %79

76:                                               ; preds = %67
  %77 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %78 = call i32 @bfd_get_symcount(%struct.TYPE_27__* %77)
  store i32 %78, i32* %22, align 4
  br label %79

79:                                               ; preds = %76, %73
  store i32 0, i32* %20, align 4
  %80 = load %struct.TYPE_31__*, %struct.TYPE_31__** %13, align 8
  store %struct.TYPE_31__* %80, %struct.TYPE_31__** %19, align 8
  br label %81

81:                                               ; preds = %201, %79
  %82 = load i32, i32* %20, align 4
  %83 = load i32, i32* %12, align 4
  %84 = icmp ult i32 %82, %83
  br i1 %84, label %85, label %210

85:                                               ; preds = %81
  %86 = load i32, i32* %21, align 4
  %87 = sext i32 %86 to i64
  %88 = icmp eq i64 %87, 4
  br i1 %88, label %89, label %93

89:                                               ; preds = %85
  %90 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %91 = load i32*, i32** %18, align 8
  %92 = call i32 @elf_swap_reloca_in(%struct.TYPE_27__* %90, i32* %91, %struct.TYPE_33__* %23)
  br label %97

93:                                               ; preds = %85
  %94 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %95 = load i32*, i32** %18, align 8
  %96 = call i32 @elf_swap_reloc_in(%struct.TYPE_27__* %94, i32* %95, %struct.TYPE_33__* %23)
  br label %97

97:                                               ; preds = %93, %89
  %98 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %99 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* @EXEC_P, align 4
  %102 = load i32, i32* @DYNAMIC, align 4
  %103 = or i32 %101, %102
  %104 = and i32 %100, %103
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %109, label %106

106:                                              ; preds = %97
  %107 = load i64, i64* %15, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %114

109:                                              ; preds = %106, %97
  %110 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %23, i32 0, i32 2
  %111 = load i64, i64* %110, align 8
  %112 = load %struct.TYPE_31__*, %struct.TYPE_31__** %19, align 8
  %113 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %112, i32 0, i32 2
  store i64 %111, i64* %113, align 8
  br label %123

114:                                              ; preds = %106
  %115 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %23, i32 0, i32 2
  %116 = load i64, i64* %115, align 8
  %117 = load %struct.TYPE_30__*, %struct.TYPE_30__** %10, align 8
  %118 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %117, i32 0, i32 1
  %119 = load i64, i64* %118, align 8
  %120 = sub nsw i64 %116, %119
  %121 = load %struct.TYPE_31__*, %struct.TYPE_31__** %19, align 8
  %122 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %121, i32 0, i32 2
  store i64 %120, i64* %122, align 8
  br label %123

123:                                              ; preds = %114, %109
  %124 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %23, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @ELF_R_SYM(i32 %125)
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %128, label %134

128:                                              ; preds = %123
  %129 = load %struct.TYPE_28__*, %struct.TYPE_28__** @bfd_abs_section_ptr, align 8
  %130 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %129, i32 0, i32 0
  %131 = load i32**, i32*** %130, align 8
  %132 = load %struct.TYPE_31__*, %struct.TYPE_31__** %19, align 8
  %133 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %132, i32 0, i32 1
  store i32** %131, i32*** %133, align 8
  br label %168

134:                                              ; preds = %123
  %135 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %23, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = call i32 @ELF_R_SYM(i32 %136)
  %138 = load i32, i32* %22, align 4
  %139 = icmp ugt i32 %137, %138
  br i1 %139, label %140, label %156

140:                                              ; preds = %134
  %141 = call i32 @_(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  %142 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %143 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.TYPE_30__*, %struct.TYPE_30__** %10, align 8
  %146 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = load i32, i32* %20, align 4
  %149 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %23, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = call i32 @ELF_R_SYM(i32 %150)
  %152 = call i32 @_bfd_error_handler(i32 %141, i32 %144, i32 %147, i32 %148, i32 %151)
  %153 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_29__, %struct.TYPE_29__* @bfd_abs_section, i32 0, i32 0), align 8
  %154 = load %struct.TYPE_31__*, %struct.TYPE_31__** %19, align 8
  %155 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %154, i32 0, i32 1
  store i32** %153, i32*** %155, align 8
  br label %167

156:                                              ; preds = %134
  %157 = load i32**, i32*** %14, align 8
  %158 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %23, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = call i32 @ELF_R_SYM(i32 %159)
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i32*, i32** %157, i64 %161
  %163 = getelementptr inbounds i32*, i32** %162, i64 -1
  store i32** %163, i32*** %24, align 8
  %164 = load i32**, i32*** %24, align 8
  %165 = load %struct.TYPE_31__*, %struct.TYPE_31__** %19, align 8
  %166 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %165, i32 0, i32 1
  store i32** %164, i32*** %166, align 8
  br label %167

167:                                              ; preds = %156, %140
  br label %168

168:                                              ; preds = %167, %128
  %169 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %23, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = load %struct.TYPE_31__*, %struct.TYPE_31__** %19, align 8
  %172 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %171, i32 0, i32 0
  store i32 %170, i32* %172, align 8
  %173 = load i32, i32* %21, align 4
  %174 = sext i32 %173 to i64
  %175 = icmp eq i64 %174, 4
  br i1 %175, label %176, label %181

176:                                              ; preds = %168
  %177 = load %struct.elf_backend_data*, %struct.elf_backend_data** %16, align 8
  %178 = getelementptr inbounds %struct.elf_backend_data, %struct.elf_backend_data* %177, i32 0, i32 1
  %179 = load i32 (%struct.TYPE_27__*, %struct.TYPE_31__*, %struct.TYPE_33__*)*, i32 (%struct.TYPE_27__*, %struct.TYPE_31__*, %struct.TYPE_33__*)** %178, align 8
  %180 = icmp ne i32 (%struct.TYPE_27__*, %struct.TYPE_31__*, %struct.TYPE_33__*)* %179, null
  br i1 %180, label %186, label %181

181:                                              ; preds = %176, %168
  %182 = load %struct.elf_backend_data*, %struct.elf_backend_data** %16, align 8
  %183 = getelementptr inbounds %struct.elf_backend_data, %struct.elf_backend_data* %182, i32 0, i32 0
  %184 = load i32 (%struct.TYPE_27__*, %struct.TYPE_31__*, %struct.TYPE_33__*)*, i32 (%struct.TYPE_27__*, %struct.TYPE_31__*, %struct.TYPE_33__*)** %183, align 8
  %185 = icmp eq i32 (%struct.TYPE_27__*, %struct.TYPE_31__*, %struct.TYPE_33__*)* %184, null
  br i1 %185, label %186, label %193

186:                                              ; preds = %181, %176
  %187 = load %struct.elf_backend_data*, %struct.elf_backend_data** %16, align 8
  %188 = getelementptr inbounds %struct.elf_backend_data, %struct.elf_backend_data* %187, i32 0, i32 1
  %189 = load i32 (%struct.TYPE_27__*, %struct.TYPE_31__*, %struct.TYPE_33__*)*, i32 (%struct.TYPE_27__*, %struct.TYPE_31__*, %struct.TYPE_33__*)** %188, align 8
  %190 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %191 = load %struct.TYPE_31__*, %struct.TYPE_31__** %19, align 8
  %192 = call i32 %189(%struct.TYPE_27__* %190, %struct.TYPE_31__* %191, %struct.TYPE_33__* %23)
  br label %200

193:                                              ; preds = %181
  %194 = load %struct.elf_backend_data*, %struct.elf_backend_data** %16, align 8
  %195 = getelementptr inbounds %struct.elf_backend_data, %struct.elf_backend_data* %194, i32 0, i32 0
  %196 = load i32 (%struct.TYPE_27__*, %struct.TYPE_31__*, %struct.TYPE_33__*)*, i32 (%struct.TYPE_27__*, %struct.TYPE_31__*, %struct.TYPE_33__*)** %195, align 8
  %197 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %198 = load %struct.TYPE_31__*, %struct.TYPE_31__** %19, align 8
  %199 = call i32 %196(%struct.TYPE_27__* %197, %struct.TYPE_31__* %198, %struct.TYPE_33__* %23)
  br label %200

200:                                              ; preds = %193, %186
  br label %201

201:                                              ; preds = %200
  %202 = load i32, i32* %20, align 4
  %203 = add i32 %202, 1
  store i32 %203, i32* %20, align 4
  %204 = load %struct.TYPE_31__*, %struct.TYPE_31__** %19, align 8
  %205 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %204, i32 1
  store %struct.TYPE_31__* %205, %struct.TYPE_31__** %19, align 8
  %206 = load i32, i32* %21, align 4
  %207 = load i32*, i32** %18, align 8
  %208 = sext i32 %206 to i64
  %209 = getelementptr inbounds i32, i32* %207, i64 %208
  store i32* %209, i32** %18, align 8
  br label %81

210:                                              ; preds = %81
  %211 = load i8*, i8** %17, align 8
  %212 = icmp ne i8* %211, null
  br i1 %212, label %213, label %216

213:                                              ; preds = %210
  %214 = load i8*, i8** %17, align 8
  %215 = call i32 @free(i8* %214)
  br label %216

216:                                              ; preds = %213, %210
  %217 = load i64, i64* @TRUE, align 8
  store i64 %217, i64* %8, align 8
  br label %226

218:                                              ; preds = %53, %33
  %219 = load i8*, i8** %17, align 8
  %220 = icmp ne i8* %219, null
  br i1 %220, label %221, label %224

221:                                              ; preds = %218
  %222 = load i8*, i8** %17, align 8
  %223 = call i32 @free(i8* %222)
  br label %224

224:                                              ; preds = %221, %218
  %225 = load i64, i64* @FALSE, align 8
  store i64 %225, i64* %8, align 8
  br label %226

226:                                              ; preds = %224, %216
  %227 = load i64, i64* %8, align 8
  ret i64 %227
}

declare dso_local %struct.elf_backend_data* @get_elf_backend_data(%struct.TYPE_27__*) #1

declare dso_local i8* @bfd_malloc(i32) #1

declare dso_local i64 @bfd_seek(%struct.TYPE_27__*, i32, i32) #1

declare dso_local i32 @bfd_bread(i8*, i32, %struct.TYPE_27__*) #1

declare dso_local i32 @BFD_ASSERT(i32) #1

declare dso_local i32 @bfd_get_dynamic_symcount(%struct.TYPE_27__*) #1

declare dso_local i32 @bfd_get_symcount(%struct.TYPE_27__*) #1

declare dso_local i32 @elf_swap_reloca_in(%struct.TYPE_27__*, i32*, %struct.TYPE_33__*) #1

declare dso_local i32 @elf_swap_reloc_in(%struct.TYPE_27__*, i32*, %struct.TYPE_33__*) #1

declare dso_local i32 @ELF_R_SYM(i32) #1

declare dso_local i32 @_bfd_error_handler(i32, i32, i32, i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
