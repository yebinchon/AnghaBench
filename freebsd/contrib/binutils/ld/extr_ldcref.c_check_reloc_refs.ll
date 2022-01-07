; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/ld/extr_ldcref.c_check_reloc_refs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/ld/extr_ldcref.c_check_reloc_refs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32, %struct.TYPE_18__* }
%struct.check_refs_info = type { i8*, %struct.TYPE_20__*, i32, i64, %struct.TYPE_17__* }
%struct.TYPE_20__ = type { %struct.TYPE_18__* }
%struct.TYPE_17__ = type { %struct.lang_nocrossref* }
%struct.lang_nocrossref = type { i8*, %struct.lang_nocrossref* }
%struct.TYPE_19__ = type { %struct.TYPE_16__**, i32 }
%struct.TYPE_16__ = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"%B%F: could not read relocs: %E\0A\00", align 1
@BSF_GLOBAL = common dso_local global i32 0, align 4
@BSF_WEAK = common dso_local global i32 0, align 4
@BSF_LOCAL = common dso_local global i32 0, align 4
@BSF_SECTION_SYM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [56 x i8] c"%X%C: prohibited cross reference from %s to `%T' in %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_18__*, i8*)* @check_reloc_refs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_reloc_refs(i32* %0, %struct.TYPE_18__* %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_18__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.check_refs_info*, align 8
  %8 = alloca %struct.TYPE_18__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_18__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.lang_nocrossref*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.TYPE_19__**, align 8
  %17 = alloca i64, align 8
  %18 = alloca %struct.TYPE_19__**, align 8
  %19 = alloca %struct.TYPE_19__**, align 8
  %20 = alloca %struct.TYPE_19__*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_18__* %1, %struct.TYPE_18__** %5, align 8
  store i8* %2, i8** %6, align 8
  %21 = load i8*, i8** %6, align 8
  %22 = bitcast i8* %21 to %struct.check_refs_info*
  store %struct.check_refs_info* %22, %struct.check_refs_info** %7, align 8
  %23 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %23, i32 0, i32 1
  %25 = load %struct.TYPE_18__*, %struct.TYPE_18__** %24, align 8
  store %struct.TYPE_18__* %25, %struct.TYPE_18__** %8, align 8
  %26 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %30 = call i8* @bfd_get_section_name(i32 %28, %struct.TYPE_18__* %29)
  store i8* %30, i8** %9, align 8
  %31 = load %struct.check_refs_info*, %struct.check_refs_info** %7, align 8
  %32 = getelementptr inbounds %struct.check_refs_info, %struct.check_refs_info* %31, i32 0, i32 1
  %33 = load %struct.TYPE_20__*, %struct.TYPE_20__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_18__*, %struct.TYPE_18__** %34, align 8
  store %struct.TYPE_18__* %35, %struct.TYPE_18__** %10, align 8
  %36 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %37 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %40 = call i8* @bfd_get_section_name(i32 %38, %struct.TYPE_18__* %39)
  store i8* %40, i8** %11, align 8
  %41 = load i8*, i8** %9, align 8
  %42 = load i8*, i8** %11, align 8
  %43 = call i64 @strcmp(i8* %41, i8* %42)
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %3
  br label %236

46:                                               ; preds = %3
  %47 = load %struct.check_refs_info*, %struct.check_refs_info** %7, align 8
  %48 = getelementptr inbounds %struct.check_refs_info, %struct.check_refs_info* %47, i32 0, i32 4
  %49 = load %struct.TYPE_17__*, %struct.TYPE_17__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %49, i32 0, i32 0
  %51 = load %struct.lang_nocrossref*, %struct.lang_nocrossref** %50, align 8
  store %struct.lang_nocrossref* %51, %struct.lang_nocrossref** %12, align 8
  br label %52

52:                                               ; preds = %64, %46
  %53 = load %struct.lang_nocrossref*, %struct.lang_nocrossref** %12, align 8
  %54 = icmp ne %struct.lang_nocrossref* %53, null
  br i1 %54, label %55, label %68

55:                                               ; preds = %52
  %56 = load i8*, i8** %9, align 8
  %57 = load %struct.lang_nocrossref*, %struct.lang_nocrossref** %12, align 8
  %58 = getelementptr inbounds %struct.lang_nocrossref, %struct.lang_nocrossref* %57, i32 0, i32 0
  %59 = load i8*, i8** %58, align 8
  %60 = call i64 @strcmp(i8* %56, i8* %59)
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %55
  br label %68

63:                                               ; preds = %55
  br label %64

64:                                               ; preds = %63
  %65 = load %struct.lang_nocrossref*, %struct.lang_nocrossref** %12, align 8
  %66 = getelementptr inbounds %struct.lang_nocrossref, %struct.lang_nocrossref* %65, i32 0, i32 1
  %67 = load %struct.lang_nocrossref*, %struct.lang_nocrossref** %66, align 8
  store %struct.lang_nocrossref* %67, %struct.lang_nocrossref** %12, align 8
  br label %52

68:                                               ; preds = %62, %52
  %69 = load %struct.lang_nocrossref*, %struct.lang_nocrossref** %12, align 8
  %70 = icmp eq %struct.lang_nocrossref* %69, null
  br i1 %70, label %71, label %72

71:                                               ; preds = %68
  br label %236

72:                                               ; preds = %68
  %73 = load %struct.check_refs_info*, %struct.check_refs_info** %7, align 8
  %74 = getelementptr inbounds %struct.check_refs_info, %struct.check_refs_info* %73, i32 0, i32 0
  %75 = load i8*, i8** %74, align 8
  store i8* %75, i8** %13, align 8
  %76 = load %struct.check_refs_info*, %struct.check_refs_info** %7, align 8
  %77 = getelementptr inbounds %struct.check_refs_info, %struct.check_refs_info* %76, i32 0, i32 3
  %78 = load i64, i64* %77, align 8
  store i64 %78, i64* %14, align 8
  %79 = load i32*, i32** %4, align 8
  %80 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %81 = call i64 @bfd_get_reloc_upper_bound(i32* %79, %struct.TYPE_18__* %80)
  store i64 %81, i64* %15, align 8
  %82 = load i64, i64* %15, align 8
  %83 = icmp slt i64 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %72
  %85 = call i32 @_(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %86 = load i32*, i32** %4, align 8
  %87 = call i32 (i32, i32*, ...) @einfo(i32 %85, i32* %86)
  br label %88

88:                                               ; preds = %84, %72
  %89 = load i64, i64* %15, align 8
  %90 = icmp eq i64 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %88
  br label %236

92:                                               ; preds = %88
  %93 = load i64, i64* %15, align 8
  %94 = call %struct.TYPE_19__** @xmalloc(i64 %93)
  store %struct.TYPE_19__** %94, %struct.TYPE_19__*** %16, align 8
  %95 = load i32*, i32** %4, align 8
  %96 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %97 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %16, align 8
  %98 = load %struct.check_refs_info*, %struct.check_refs_info** %7, align 8
  %99 = getelementptr inbounds %struct.check_refs_info, %struct.check_refs_info* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 8
  %101 = call i64 @bfd_canonicalize_reloc(i32* %95, %struct.TYPE_18__* %96, %struct.TYPE_19__** %97, i32 %100)
  store i64 %101, i64* %17, align 8
  %102 = load i64, i64* %17, align 8
  %103 = icmp slt i64 %102, 0
  br i1 %103, label %104, label %108

104:                                              ; preds = %92
  %105 = call i32 @_(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %106 = load i32*, i32** %4, align 8
  %107 = call i32 (i32, i32*, ...) @einfo(i32 %105, i32* %106)
  br label %108

108:                                              ; preds = %104, %92
  %109 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %16, align 8
  store %struct.TYPE_19__** %109, %struct.TYPE_19__*** %18, align 8
  %110 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %18, align 8
  %111 = load i64, i64* %17, align 8
  %112 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %110, i64 %111
  store %struct.TYPE_19__** %112, %struct.TYPE_19__*** %19, align 8
  br label %113

113:                                              ; preds = %230, %108
  %114 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %18, align 8
  %115 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %19, align 8
  %116 = icmp ult %struct.TYPE_19__** %114, %115
  br i1 %116, label %117, label %121

117:                                              ; preds = %113
  %118 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %18, align 8
  %119 = load %struct.TYPE_19__*, %struct.TYPE_19__** %118, align 8
  %120 = icmp ne %struct.TYPE_19__* %119, null
  br label %121

121:                                              ; preds = %117, %113
  %122 = phi i1 [ false, %113 ], [ %120, %117 ]
  br i1 %122, label %123, label %233

123:                                              ; preds = %121
  %124 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %18, align 8
  %125 = load %struct.TYPE_19__*, %struct.TYPE_19__** %124, align 8
  store %struct.TYPE_19__* %125, %struct.TYPE_19__** %20, align 8
  %126 = load %struct.TYPE_19__*, %struct.TYPE_19__** %20, align 8
  %127 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %126, i32 0, i32 0
  %128 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %127, align 8
  %129 = icmp ne %struct.TYPE_16__** %128, null
  br i1 %129, label %130, label %229

130:                                              ; preds = %123
  %131 = load %struct.TYPE_19__*, %struct.TYPE_19__** %20, align 8
  %132 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %131, i32 0, i32 0
  %133 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %132, align 8
  %134 = load %struct.TYPE_16__*, %struct.TYPE_16__** %133, align 8
  %135 = icmp ne %struct.TYPE_16__* %134, null
  br i1 %135, label %136, label %229

136:                                              ; preds = %130
  %137 = load i64, i64* %14, align 8
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %167

139:                                              ; preds = %136
  %140 = load %struct.TYPE_19__*, %struct.TYPE_19__** %20, align 8
  %141 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %140, i32 0, i32 0
  %142 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %141, align 8
  %143 = load %struct.TYPE_16__*, %struct.TYPE_16__** %142, align 8
  %144 = call %struct.TYPE_20__* @bfd_get_section(%struct.TYPE_16__* %143)
  %145 = call i64 @bfd_is_und_section(%struct.TYPE_20__* %144)
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %192, label %147

147:                                              ; preds = %139
  %148 = load %struct.TYPE_19__*, %struct.TYPE_19__** %20, align 8
  %149 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %148, i32 0, i32 0
  %150 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %149, align 8
  %151 = load %struct.TYPE_16__*, %struct.TYPE_16__** %150, align 8
  %152 = call %struct.TYPE_20__* @bfd_get_section(%struct.TYPE_16__* %151)
  %153 = call i64 @bfd_is_com_section(%struct.TYPE_20__* %152)
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %192, label %155

155:                                              ; preds = %147
  %156 = load %struct.TYPE_19__*, %struct.TYPE_19__** %20, align 8
  %157 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %156, i32 0, i32 0
  %158 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %157, align 8
  %159 = load %struct.TYPE_16__*, %struct.TYPE_16__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = load i32, i32* @BSF_GLOBAL, align 4
  %163 = load i32, i32* @BSF_WEAK, align 4
  %164 = or i32 %162, %163
  %165 = and i32 %161, %164
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %192, label %167

167:                                              ; preds = %155, %136
  %168 = load i64, i64* %14, align 8
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %229, label %170

170:                                              ; preds = %167
  %171 = load %struct.TYPE_19__*, %struct.TYPE_19__** %20, align 8
  %172 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %171, i32 0, i32 0
  %173 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %172, align 8
  %174 = load %struct.TYPE_16__*, %struct.TYPE_16__** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 4
  %177 = load i32, i32* @BSF_LOCAL, align 4
  %178 = load i32, i32* @BSF_SECTION_SYM, align 4
  %179 = or i32 %177, %178
  %180 = and i32 %176, %179
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %229

182:                                              ; preds = %170
  %183 = load %struct.TYPE_19__*, %struct.TYPE_19__** %20, align 8
  %184 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %183, i32 0, i32 0
  %185 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %184, align 8
  %186 = load %struct.TYPE_16__*, %struct.TYPE_16__** %185, align 8
  %187 = call %struct.TYPE_20__* @bfd_get_section(%struct.TYPE_16__* %186)
  %188 = load %struct.check_refs_info*, %struct.check_refs_info** %7, align 8
  %189 = getelementptr inbounds %struct.check_refs_info, %struct.check_refs_info* %188, i32 0, i32 1
  %190 = load %struct.TYPE_20__*, %struct.TYPE_20__** %189, align 8
  %191 = icmp eq %struct.TYPE_20__* %187, %190
  br i1 %191, label %192, label %229

192:                                              ; preds = %182, %155, %147, %139
  %193 = load i8*, i8** %13, align 8
  %194 = icmp ne i8* %193, null
  br i1 %194, label %195, label %204

195:                                              ; preds = %192
  %196 = load %struct.TYPE_19__*, %struct.TYPE_19__** %20, align 8
  %197 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %196, i32 0, i32 0
  %198 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %197, align 8
  %199 = load %struct.TYPE_16__*, %struct.TYPE_16__** %198, align 8
  %200 = call i8* @bfd_asymbol_name(%struct.TYPE_16__* %199)
  %201 = load i8*, i8** %13, align 8
  %202 = call i64 @strcmp(i8* %200, i8* %201)
  %203 = icmp eq i64 %202, 0
  br i1 %203, label %214, label %229

204:                                              ; preds = %192
  %205 = load %struct.TYPE_19__*, %struct.TYPE_19__** %20, align 8
  %206 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %205, i32 0, i32 0
  %207 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %206, align 8
  %208 = load %struct.TYPE_16__*, %struct.TYPE_16__** %207, align 8
  %209 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 4
  %211 = load i32, i32* @BSF_SECTION_SYM, align 4
  %212 = and i32 %210, %211
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %229

214:                                              ; preds = %204, %195
  %215 = call i32 @_(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0))
  %216 = load i32*, i32** %4, align 8
  %217 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %218 = load %struct.TYPE_19__*, %struct.TYPE_19__** %20, align 8
  %219 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %218, i32 0, i32 1
  %220 = load i32, i32* %219, align 8
  %221 = load i8*, i8** %9, align 8
  %222 = load %struct.TYPE_19__*, %struct.TYPE_19__** %20, align 8
  %223 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %222, i32 0, i32 0
  %224 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %223, align 8
  %225 = load %struct.TYPE_16__*, %struct.TYPE_16__** %224, align 8
  %226 = call i8* @bfd_asymbol_name(%struct.TYPE_16__* %225)
  %227 = load i8*, i8** %11, align 8
  %228 = call i32 (i32, i32*, ...) @einfo(i32 %215, i32* %216, %struct.TYPE_18__* %217, i32 %220, i8* %221, i8* %226, i8* %227)
  br label %229

229:                                              ; preds = %214, %204, %195, %182, %170, %167, %130, %123
  br label %230

230:                                              ; preds = %229
  %231 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %18, align 8
  %232 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %231, i32 1
  store %struct.TYPE_19__** %232, %struct.TYPE_19__*** %18, align 8
  br label %113

233:                                              ; preds = %121
  %234 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %16, align 8
  %235 = call i32 @free(%struct.TYPE_19__** %234)
  br label %236

236:                                              ; preds = %233, %91, %71, %45
  ret void
}

declare dso_local i8* @bfd_get_section_name(i32, %struct.TYPE_18__*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i64 @bfd_get_reloc_upper_bound(i32*, %struct.TYPE_18__*) #1

declare dso_local i32 @einfo(i32, i32*, ...) #1

declare dso_local i32 @_(i8*) #1

declare dso_local %struct.TYPE_19__** @xmalloc(i64) #1

declare dso_local i64 @bfd_canonicalize_reloc(i32*, %struct.TYPE_18__*, %struct.TYPE_19__**, i32) #1

declare dso_local i64 @bfd_is_und_section(%struct.TYPE_20__*) #1

declare dso_local %struct.TYPE_20__* @bfd_get_section(%struct.TYPE_16__*) #1

declare dso_local i64 @bfd_is_com_section(%struct.TYPE_20__*) #1

declare dso_local i8* @bfd_asymbol_name(%struct.TYPE_16__*) #1

declare dso_local i32 @free(%struct.TYPE_19__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
