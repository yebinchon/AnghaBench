; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf.c_copy_private_bfd_data.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf.c_copy_private_bfd_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i64, %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i64, i64, i64, i64, i64, i64, i64, %struct.TYPE_20__*, %struct.TYPE_20__* }
%struct.TYPE_21__ = type { i64, i64, i64 }
%struct.TYPE_22__ = type { %struct.TYPE_21__* }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_23__ = type { i32 }

@bfd_target_elf_flavour = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@FALSE = common dso_local global i64 0, align 8
@PT_INTERP = common dso_local global i64 0, align 8
@PT_DYNAMIC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_19__*, %struct.TYPE_19__*)* @copy_private_bfd_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @copy_private_bfd_data(%struct.TYPE_19__* %0, %struct.TYPE_19__* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_19__*, align 8
  %5 = alloca %struct.TYPE_19__*, align 8
  %6 = alloca %struct.TYPE_21__*, align 8
  %7 = alloca %struct.TYPE_20__*, align 8
  %8 = alloca %struct.TYPE_20__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %4, align 8
  store %struct.TYPE_19__* %1, %struct.TYPE_19__** %5, align 8
  %12 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %13 = call i64 @bfd_get_flavour(%struct.TYPE_19__* %12)
  %14 = load i64, i64* @bfd_target_elf_flavour, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %21, label %16

16:                                               ; preds = %2
  %17 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %18 = call i64 @bfd_get_flavour(%struct.TYPE_19__* %17)
  %19 = load i64, i64* @bfd_target_elf_flavour, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %16, %2
  %22 = load i64, i64* @TRUE, align 8
  store i64 %22, i64* %3, align 8
  br label %211

23:                                               ; preds = %16
  %24 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %25 = call %struct.TYPE_22__* @elf_tdata(%struct.TYPE_19__* %24)
  %26 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_21__*, %struct.TYPE_21__** %26, align 8
  %28 = icmp eq %struct.TYPE_21__* %27, null
  br i1 %28, label %29, label %31

29:                                               ; preds = %23
  %30 = load i64, i64* @TRUE, align 8
  store i64 %30, i64* %3, align 8
  br label %211

31:                                               ; preds = %23
  %32 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp eq i64 %34, %37
  br i1 %38, label %39, label %206

39:                                               ; preds = %31
  %40 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %40, i32 0, i32 1
  %42 = load %struct.TYPE_20__*, %struct.TYPE_20__** %41, align 8
  store %struct.TYPE_20__* %42, %struct.TYPE_20__** %7, align 8
  br label %43

43:                                               ; preds = %50, %39
  %44 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %45 = icmp ne %struct.TYPE_20__* %44, null
  br i1 %45, label %46, label %54

46:                                               ; preds = %43
  %47 = load i64, i64* @FALSE, align 8
  %48 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %48, i32 0, i32 0
  store i64 %47, i64* %49, align 8
  br label %50

50:                                               ; preds = %46
  %51 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %51, i32 0, i32 7
  %53 = load %struct.TYPE_20__*, %struct.TYPE_20__** %52, align 8
  store %struct.TYPE_20__* %53, %struct.TYPE_20__** %7, align 8
  br label %43

54:                                               ; preds = %43
  %55 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %56 = call %struct.TYPE_18__* @elf_elfheader(%struct.TYPE_19__* %55)
  %57 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  store i32 %58, i32* %10, align 4
  store i32 0, i32* %9, align 4
  %59 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %60 = call %struct.TYPE_22__* @elf_tdata(%struct.TYPE_19__* %59)
  %61 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_21__*, %struct.TYPE_21__** %61, align 8
  store %struct.TYPE_21__* %62, %struct.TYPE_21__** %6, align 8
  br label %63

63:                                               ; preds = %174, %54
  %64 = load i32, i32* %9, align 4
  %65 = load i32, i32* %10, align 4
  %66 = icmp ult i32 %64, %65
  br i1 %66, label %67, label %179

67:                                               ; preds = %63
  %68 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = icmp eq i64 %70, 0
  br i1 %71, label %72, label %90

72:                                               ; preds = %67
  %73 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = icmp eq i64 %75, 0
  br i1 %76, label %77, label %90

77:                                               ; preds = %72
  %78 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %78, i32 0, i32 2
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @PT_INTERP, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %89, label %83

83:                                               ; preds = %77
  %84 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %84, i32 0, i32 2
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @PT_DYNAMIC, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %89, label %90

89:                                               ; preds = %83, %77
  br label %207

90:                                               ; preds = %83, %72, %67
  %91 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %91, i32 0, i32 1
  %93 = load %struct.TYPE_20__*, %struct.TYPE_20__** %92, align 8
  store %struct.TYPE_20__* %93, %struct.TYPE_20__** %7, align 8
  br label %94

94:                                               ; preds = %169, %90
  %95 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %96 = icmp ne %struct.TYPE_20__* %95, null
  br i1 %96, label %97, label %173

97:                                               ; preds = %94
  %98 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %99 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %98, i32 0, i32 8
  %100 = load %struct.TYPE_20__*, %struct.TYPE_20__** %99, align 8
  store %struct.TYPE_20__* %100, %struct.TYPE_20__** %8, align 8
  %101 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %102 = icmp ne %struct.TYPE_20__* %101, null
  br i1 %102, label %103, label %107

103:                                              ; preds = %97
  %104 = load i64, i64* @TRUE, align 8
  %105 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %106 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %105, i32 0, i32 0
  store i64 %104, i64* %106, align 8
  br label %107

107:                                              ; preds = %103, %97
  %108 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %109 = call %struct.TYPE_23__* @elf_section_data(%struct.TYPE_20__* %108)
  %110 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %109, i32 0, i32 0
  store i32* %110, i32** %11, align 8
  %111 = load i32*, i32** %11, align 8
  %112 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %113 = call i64 @ELF_IS_SECTION_IN_SEGMENT_FILE(i32* %111, %struct.TYPE_21__* %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %168

115:                                              ; preds = %107
  %116 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %117 = icmp eq %struct.TYPE_20__* %116, null
  br i1 %117, label %166, label %118

118:                                              ; preds = %115
  %119 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %120 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %119, i32 0, i32 1
  %121 = load i64, i64* %120, align 8
  %122 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %123 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %122, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  %125 = icmp ne i64 %121, %124
  br i1 %125, label %166, label %126

126:                                              ; preds = %118
  %127 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %128 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %127, i32 0, i32 2
  %129 = load i64, i64* %128, align 8
  %130 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %131 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %130, i32 0, i32 2
  %132 = load i64, i64* %131, align 8
  %133 = icmp ne i64 %129, %132
  br i1 %133, label %166, label %134

134:                                              ; preds = %126
  %135 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %136 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %135, i32 0, i32 3
  %137 = load i64, i64* %136, align 8
  %138 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %139 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %138, i32 0, i32 3
  %140 = load i64, i64* %139, align 8
  %141 = icmp ne i64 %137, %140
  br i1 %141, label %166, label %142

142:                                              ; preds = %134
  %143 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %144 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %143, i32 0, i32 4
  %145 = load i64, i64* %144, align 8
  %146 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %147 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %146, i32 0, i32 4
  %148 = load i64, i64* %147, align 8
  %149 = icmp ne i64 %145, %148
  br i1 %149, label %166, label %150

150:                                              ; preds = %142
  %151 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %152 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %151, i32 0, i32 5
  %153 = load i64, i64* %152, align 8
  %154 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %155 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %154, i32 0, i32 5
  %156 = load i64, i64* %155, align 8
  %157 = icmp ne i64 %153, %156
  br i1 %157, label %166, label %158

158:                                              ; preds = %150
  %159 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %160 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %159, i32 0, i32 6
  %161 = load i64, i64* %160, align 8
  %162 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %163 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %162, i32 0, i32 6
  %164 = load i64, i64* %163, align 8
  %165 = icmp ne i64 %161, %164
  br i1 %165, label %166, label %167

166:                                              ; preds = %158, %150, %142, %134, %126, %118, %115
  br label %207

167:                                              ; preds = %158
  br label %168

168:                                              ; preds = %167, %107
  br label %169

169:                                              ; preds = %168
  %170 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %171 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %170, i32 0, i32 7
  %172 = load %struct.TYPE_20__*, %struct.TYPE_20__** %171, align 8
  store %struct.TYPE_20__* %172, %struct.TYPE_20__** %7, align 8
  br label %94

173:                                              ; preds = %94
  br label %174

174:                                              ; preds = %173
  %175 = load i32, i32* %9, align 4
  %176 = add i32 %175, 1
  store i32 %176, i32* %9, align 4
  %177 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %178 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %177, i32 1
  store %struct.TYPE_21__* %178, %struct.TYPE_21__** %6, align 8
  br label %63

179:                                              ; preds = %63
  %180 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %181 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %180, i32 0, i32 1
  %182 = load %struct.TYPE_20__*, %struct.TYPE_20__** %181, align 8
  store %struct.TYPE_20__* %182, %struct.TYPE_20__** %7, align 8
  br label %183

183:                                              ; preds = %198, %179
  %184 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %185 = icmp ne %struct.TYPE_20__* %184, null
  br i1 %185, label %186, label %202

186:                                              ; preds = %183
  %187 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %188 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %187, i32 0, i32 0
  %189 = load i64, i64* %188, align 8
  %190 = load i64, i64* @FALSE, align 8
  %191 = icmp eq i64 %189, %190
  br i1 %191, label %192, label %193

192:                                              ; preds = %186
  br label %207

193:                                              ; preds = %186
  %194 = load i64, i64* @FALSE, align 8
  %195 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %196 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %195, i32 0, i32 0
  store i64 %194, i64* %196, align 8
  br label %197

197:                                              ; preds = %193
  br label %198

198:                                              ; preds = %197
  %199 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %200 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %199, i32 0, i32 7
  %201 = load %struct.TYPE_20__*, %struct.TYPE_20__** %200, align 8
  store %struct.TYPE_20__* %201, %struct.TYPE_20__** %7, align 8
  br label %183

202:                                              ; preds = %183
  %203 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %204 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %205 = call i64 @copy_elf_program_header(%struct.TYPE_19__* %203, %struct.TYPE_19__* %204)
  store i64 %205, i64* %3, align 8
  br label %211

206:                                              ; preds = %31
  br label %207

207:                                              ; preds = %206, %192, %166, %89
  %208 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %209 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %210 = call i64 @rewrite_elf_program_header(%struct.TYPE_19__* %208, %struct.TYPE_19__* %209)
  store i64 %210, i64* %3, align 8
  br label %211

211:                                              ; preds = %207, %202, %29, %21
  %212 = load i64, i64* %3, align 8
  ret i64 %212
}

declare dso_local i64 @bfd_get_flavour(%struct.TYPE_19__*) #1

declare dso_local %struct.TYPE_22__* @elf_tdata(%struct.TYPE_19__*) #1

declare dso_local %struct.TYPE_18__* @elf_elfheader(%struct.TYPE_19__*) #1

declare dso_local %struct.TYPE_23__* @elf_section_data(%struct.TYPE_20__*) #1

declare dso_local i64 @ELF_IS_SECTION_IN_SEGMENT_FILE(i32*, %struct.TYPE_21__*) #1

declare dso_local i64 @copy_elf_program_header(%struct.TYPE_19__*, %struct.TYPE_19__*) #1

declare dso_local i64 @rewrite_elf_program_header(%struct.TYPE_19__*, %struct.TYPE_19__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
