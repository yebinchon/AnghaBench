; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_readelf.c_get_64bit_elf_symbols.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_readelf.c_get_64bit_elf_symbols.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i64, i64, i32 }
%struct.TYPE_12__ = type { i64, i8*, i8*, i8*, i8*, i8* }
%struct.TYPE_13__ = type { i64, i64, i32 }
%struct.TYPE_14__ = type { i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [8 x i8] c"symbols\00", align 1
@symtab_shndx_hdr = common dso_local global %struct.TYPE_15__* null, align 8
@section_headers = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"symtab shndx\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"Out of memory\0A\00", align 1
@SHN_XINDEX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_12__* (i32*, %struct.TYPE_13__*)* @get_64bit_elf_symbols to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_12__* @get_64bit_elf_symbols(i32* %0, %struct.TYPE_13__* %1) #0 {
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca %struct.TYPE_12__*, align 8
  %10 = alloca %struct.TYPE_12__*, align 8
  %11 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %5, align 8
  %12 = load i32*, i32** %4, align 8
  %13 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = call i32 @_(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %20 = call %struct.TYPE_14__* @get_data(i32* null, i32* %12, i32 %15, i32 1, i64 %18, i32 %19)
  store %struct.TYPE_14__* %20, %struct.TYPE_14__** %7, align 8
  %21 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %22 = icmp ne %struct.TYPE_14__* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %2
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %3, align 8
  br label %173

24:                                               ; preds = %2
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %8, align 8
  %25 = load %struct.TYPE_15__*, %struct.TYPE_15__** @symtab_shndx_hdr, align 8
  %26 = icmp ne %struct.TYPE_15__* %25, null
  br i1 %26, label %27, label %54

27:                                               ; preds = %24
  %28 = load %struct.TYPE_15__*, %struct.TYPE_15__** @symtab_shndx_hdr, align 8
  %29 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %32 = load i32, i32* @section_headers, align 4
  %33 = sext i32 %32 to i64
  %34 = sub i64 0, %33
  %35 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %31, i64 %34
  %36 = call i64 @SECTION_HEADER_NUM(%struct.TYPE_13__* %35)
  %37 = icmp eq i64 %30, %36
  br i1 %37, label %38, label %54

38:                                               ; preds = %27
  %39 = load i32*, i32** %4, align 8
  %40 = load %struct.TYPE_15__*, %struct.TYPE_15__** @symtab_shndx_hdr, align 8
  %41 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.TYPE_15__*, %struct.TYPE_15__** @symtab_shndx_hdr, align 8
  %44 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = call i32 @_(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %47 = call %struct.TYPE_14__* @get_data(i32* null, i32* %39, i32 %42, i32 1, i64 %45, i32 %46)
  store %struct.TYPE_14__* %47, %struct.TYPE_14__** %8, align 8
  %48 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %49 = icmp ne %struct.TYPE_14__* %48, null
  br i1 %49, label %53, label %50

50:                                               ; preds = %38
  %51 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %52 = call i32 @free(%struct.TYPE_14__* %51)
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %3, align 8
  br label %173

53:                                               ; preds = %38
  br label %54

54:                                               ; preds = %53, %27, %24
  %55 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = udiv i64 %57, %60
  store i64 %61, i64* %6, align 8
  %62 = load i64, i64* %6, align 8
  %63 = call %struct.TYPE_12__* @cmalloc(i64 %62, i32 48)
  store %struct.TYPE_12__* %63, %struct.TYPE_12__** %9, align 8
  %64 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %65 = icmp eq %struct.TYPE_12__* %64, null
  br i1 %65, label %66, label %77

66:                                               ; preds = %54
  %67 = call i32 @_(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %68 = call i32 @error(i32 %67)
  %69 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %70 = icmp ne %struct.TYPE_14__* %69, null
  br i1 %70, label %71, label %74

71:                                               ; preds = %66
  %72 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %73 = call i32 @free(%struct.TYPE_14__* %72)
  br label %74

74:                                               ; preds = %71, %66
  %75 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %76 = call i32 @free(%struct.TYPE_14__* %75)
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %3, align 8
  br label %173

77:                                               ; preds = %54
  store i32 0, i32* %11, align 4
  %78 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  store %struct.TYPE_12__* %78, %struct.TYPE_12__** %10, align 8
  br label %79

79:                                               ; preds = %158, %77
  %80 = load i32, i32* %11, align 4
  %81 = zext i32 %80 to i64
  %82 = load i64, i64* %6, align 8
  %83 = icmp ult i64 %81, %82
  br i1 %83, label %84, label %163

84:                                               ; preds = %79
  %85 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %86 = load i32, i32* %11, align 4
  %87 = zext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %85, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %88, i32 0, i32 5
  %90 = load i32, i32* %89, align 4
  %91 = call i8* @BYTE_GET(i32 %90)
  %92 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %92, i32 0, i32 5
  store i8* %91, i8** %93, align 8
  %94 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %95 = load i32, i32* %11, align 4
  %96 = zext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %94, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %97, i32 0, i32 4
  %99 = load i32, i32* %98, align 4
  %100 = call i8* @BYTE_GET(i32 %99)
  %101 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %102 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %101, i32 0, i32 4
  store i8* %100, i8** %102, align 8
  %103 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %104 = load i32, i32* %11, align 4
  %105 = zext i32 %104 to i64
  %106 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %103, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %106, i32 0, i32 3
  %108 = load i32, i32* %107, align 4
  %109 = call i8* @BYTE_GET(i32 %108)
  %110 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %111 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %110, i32 0, i32 3
  store i8* %109, i8** %111, align 8
  %112 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %113 = load i32, i32* %11, align 4
  %114 = zext i32 %113 to i64
  %115 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %112, i64 %114
  %116 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 4
  %118 = call i8* @BYTE_GET(i32 %117)
  %119 = ptrtoint i8* %118 to i64
  %120 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %121 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %120, i32 0, i32 0
  store i64 %119, i64* %121, align 8
  %122 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %123 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = load i64, i64* @SHN_XINDEX, align 8
  %126 = icmp eq i64 %124, %125
  br i1 %126, label %127, label %139

127:                                              ; preds = %84
  %128 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %129 = icmp ne %struct.TYPE_14__* %128, null
  br i1 %129, label %130, label %139

130:                                              ; preds = %127
  %131 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %132 = load i32, i32* %11, align 4
  %133 = zext i32 %132 to i64
  %134 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %131, i64 %133
  %135 = bitcast %struct.TYPE_14__* %134 to i8*
  %136 = call i64 @byte_get(i8* %135, i32 24)
  %137 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %138 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %137, i32 0, i32 0
  store i64 %136, i64* %138, align 8
  br label %139

139:                                              ; preds = %130, %127, %84
  %140 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %141 = load i32, i32* %11, align 4
  %142 = zext i32 %141 to i64
  %143 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %140, i64 %142
  %144 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = call i8* @BYTE_GET(i32 %145)
  %147 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %148 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %147, i32 0, i32 2
  store i8* %146, i8** %148, align 8
  %149 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %150 = load i32, i32* %11, align 4
  %151 = zext i32 %150 to i64
  %152 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %149, i64 %151
  %153 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = call i8* @BYTE_GET(i32 %154)
  %156 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %157 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %156, i32 0, i32 1
  store i8* %155, i8** %157, align 8
  br label %158

158:                                              ; preds = %139
  %159 = load i32, i32* %11, align 4
  %160 = add i32 %159, 1
  store i32 %160, i32* %11, align 4
  %161 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %162 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %161, i32 1
  store %struct.TYPE_12__* %162, %struct.TYPE_12__** %10, align 8
  br label %79

163:                                              ; preds = %79
  %164 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %165 = icmp ne %struct.TYPE_14__* %164, null
  br i1 %165, label %166, label %169

166:                                              ; preds = %163
  %167 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %168 = call i32 @free(%struct.TYPE_14__* %167)
  br label %169

169:                                              ; preds = %166, %163
  %170 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %171 = call i32 @free(%struct.TYPE_14__* %170)
  %172 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  store %struct.TYPE_12__* %172, %struct.TYPE_12__** %3, align 8
  br label %173

173:                                              ; preds = %169, %74, %50, %23
  %174 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  ret %struct.TYPE_12__* %174
}

declare dso_local %struct.TYPE_14__* @get_data(i32*, i32*, i32, i32, i64, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i64 @SECTION_HEADER_NUM(%struct.TYPE_13__*) #1

declare dso_local i32 @free(%struct.TYPE_14__*) #1

declare dso_local %struct.TYPE_12__* @cmalloc(i64, i32) #1

declare dso_local i32 @error(i32) #1

declare dso_local i8* @BYTE_GET(i32) #1

declare dso_local i64 @byte_get(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
