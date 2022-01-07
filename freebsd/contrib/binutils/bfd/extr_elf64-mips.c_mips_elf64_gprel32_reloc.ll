; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf64-mips.c_mips_elf64_gprel32_reloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf64-mips.c_mips_elf64_gprel32_reloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i64, i64, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_15__ = type { i32, %struct.TYPE_12__*, i64 }
%struct.TYPE_12__ = type { i64, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i64, i32* }
%struct.TYPE_16__ = type { i32 }

@BSF_SECTION_SYM = common dso_local global i32 0, align 4
@BSF_LOCAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [60 x i8] c"32bits gp relative relocation occurs for an external symbol\00", align 1
@bfd_reloc_outofrange = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@FALSE = common dso_local global i64 0, align 8
@bfd_reloc_ok = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, %struct.TYPE_17__*, %struct.TYPE_15__*, i8*, %struct.TYPE_16__*, i32*, i8**)* @mips_elf64_gprel32_reloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @mips_elf64_gprel32_reloc(i32* %0, %struct.TYPE_17__* %1, %struct.TYPE_15__* %2, i8* %3, %struct.TYPE_16__* %4, i32* %5, i8** %6) #0 {
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_17__*, align 8
  %11 = alloca %struct.TYPE_15__*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.TYPE_16__*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i8**, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  store i32* %0, i32** %9, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %10, align 8
  store %struct.TYPE_15__* %2, %struct.TYPE_15__** %11, align 8
  store i8* %3, i8** %12, align 8
  store %struct.TYPE_16__* %4, %struct.TYPE_16__** %13, align 8
  store i32* %5, i32** %14, align 8
  store i8** %6, i8*** %15, align 8
  %21 = load i32*, i32** %14, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %23, label %42

23:                                               ; preds = %7
  %24 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %25 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @BSF_SECTION_SYM, align 4
  %28 = and i32 %26, %27
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %42

30:                                               ; preds = %23
  %31 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %32 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @BSF_LOCAL, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %30
  %38 = call i64 @_(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0))
  %39 = inttoptr i64 %38 to i8*
  %40 = load i8**, i8*** %15, align 8
  store i8* %39, i8** %40, align 8
  %41 = load i64, i64* @bfd_reloc_outofrange, align 8
  store i64 %41, i64* %8, align 8
  br label %176

42:                                               ; preds = %30, %23, %7
  %43 = load i32*, i32** %14, align 8
  %44 = icmp ne i32* %43, null
  br i1 %44, label %45, label %47

45:                                               ; preds = %42
  %46 = load i64, i64* @TRUE, align 8
  store i64 %46, i64* %16, align 8
  br label %56

47:                                               ; preds = %42
  %48 = load i64, i64* @FALSE, align 8
  store i64 %48, i64* %16, align 8
  %49 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %50 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %49, i32 0, i32 1
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i32 0, i32 1
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %53, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  store i32* %55, i32** %14, align 8
  br label %56

56:                                               ; preds = %47, %45
  %57 = load i32*, i32** %14, align 8
  %58 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %59 = load i64, i64* %16, align 8
  %60 = load i8**, i8*** %15, align 8
  %61 = call i64 @mips_elf64_final_gp(i32* %57, %struct.TYPE_15__* %58, i64 %59, i8** %60, i64* %18)
  store i64 %61, i64* %17, align 8
  %62 = load i64, i64* %17, align 8
  %63 = load i64, i64* @bfd_reloc_ok, align 8
  %64 = icmp ne i64 %62, %63
  br i1 %64, label %65, label %67

65:                                               ; preds = %56
  %66 = load i64, i64* %17, align 8
  store i64 %66, i64* %8, align 8
  br label %176

67:                                               ; preds = %56
  %68 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %69 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %68, i32 0, i32 1
  %70 = load %struct.TYPE_12__*, %struct.TYPE_12__** %69, align 8
  %71 = call i64 @bfd_is_com_section(%struct.TYPE_12__* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %67
  store i64 0, i64* %19, align 8
  br label %78

74:                                               ; preds = %67
  %75 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %76 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %75, i32 0, i32 2
  %77 = load i64, i64* %76, align 8
  store i64 %77, i64* %19, align 8
  br label %78

78:                                               ; preds = %74, %73
  %79 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %80 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %79, i32 0, i32 1
  %81 = load %struct.TYPE_12__*, %struct.TYPE_12__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %81, i32 0, i32 1
  %83 = load %struct.TYPE_13__*, %struct.TYPE_13__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* %19, align 8
  %87 = add nsw i64 %86, %85
  store i64 %87, i64* %19, align 8
  %88 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %89 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %88, i32 0, i32 1
  %90 = load %struct.TYPE_12__*, %struct.TYPE_12__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* %19, align 8
  %94 = add nsw i64 %93, %92
  store i64 %94, i64* %19, align 8
  %95 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %96 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load i32*, i32** %9, align 8
  %99 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %100 = call i64 @bfd_get_section_limit(i32* %98, %struct.TYPE_16__* %99)
  %101 = icmp sgt i64 %97, %100
  br i1 %101, label %102, label %104

102:                                              ; preds = %78
  %103 = load i64, i64* @bfd_reloc_outofrange, align 8
  store i64 %103, i64* %8, align 8
  br label %176

104:                                              ; preds = %78
  %105 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %106 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  store i64 %107, i64* %20, align 8
  %108 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %109 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %108, i32 0, i32 2
  %110 = load %struct.TYPE_14__*, %struct.TYPE_14__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %125

114:                                              ; preds = %104
  %115 = load i32*, i32** %9, align 8
  %116 = load i8*, i8** %12, align 8
  %117 = bitcast i8* %116 to i32*
  %118 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %119 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = getelementptr inbounds i32, i32* %117, i64 %120
  %122 = call i64 @bfd_get_32(i32* %115, i32* %121)
  %123 = load i64, i64* %20, align 8
  %124 = add nsw i64 %123, %122
  store i64 %124, i64* %20, align 8
  br label %125

125:                                              ; preds = %114, %104
  %126 = load i64, i64* %16, align 8
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %135

128:                                              ; preds = %125
  %129 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %130 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = load i32, i32* @BSF_SECTION_SYM, align 4
  %133 = and i32 %131, %132
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %141

135:                                              ; preds = %128, %125
  %136 = load i64, i64* %19, align 8
  %137 = load i64, i64* %18, align 8
  %138 = sub nsw i64 %136, %137
  %139 = load i64, i64* %20, align 8
  %140 = add nsw i64 %139, %138
  store i64 %140, i64* %20, align 8
  br label %141

141:                                              ; preds = %135, %128
  %142 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %143 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %142, i32 0, i32 2
  %144 = load %struct.TYPE_14__*, %struct.TYPE_14__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %158

148:                                              ; preds = %141
  %149 = load i32*, i32** %9, align 8
  %150 = load i64, i64* %20, align 8
  %151 = load i8*, i8** %12, align 8
  %152 = bitcast i8* %151 to i32*
  %153 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %154 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = getelementptr inbounds i32, i32* %152, i64 %155
  %157 = call i32 @bfd_put_32(i32* %149, i64 %150, i32* %156)
  br label %162

158:                                              ; preds = %141
  %159 = load i64, i64* %20, align 8
  %160 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %161 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %160, i32 0, i32 1
  store i64 %159, i64* %161, align 8
  br label %162

162:                                              ; preds = %158, %148
  %163 = load i64, i64* %16, align 8
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %174

165:                                              ; preds = %162
  %166 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %167 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = sext i32 %168 to i64
  %170 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %171 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %170, i32 0, i32 0
  %172 = load i64, i64* %171, align 8
  %173 = add nsw i64 %172, %169
  store i64 %173, i64* %171, align 8
  br label %174

174:                                              ; preds = %165, %162
  %175 = load i64, i64* @bfd_reloc_ok, align 8
  store i64 %175, i64* %8, align 8
  br label %176

176:                                              ; preds = %174, %102, %65, %37
  %177 = load i64, i64* %8, align 8
  ret i64 %177
}

declare dso_local i64 @_(i8*) #1

declare dso_local i64 @mips_elf64_final_gp(i32*, %struct.TYPE_15__*, i64, i8**, i64*) #1

declare dso_local i64 @bfd_is_com_section(%struct.TYPE_12__*) #1

declare dso_local i64 @bfd_get_section_limit(i32*, %struct.TYPE_16__*) #1

declare dso_local i64 @bfd_get_32(i32*, i32*) #1

declare dso_local i32 @bfd_put_32(i32*, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
