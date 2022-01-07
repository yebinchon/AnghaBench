; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_readelf.c_get_file_header.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_readelf.c_get_file_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32*, i64, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.TYPE_5__ = type { i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32* }
%struct.TYPE_4__ = type { i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32* }

@elf_header = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@EI_NIDENT = common dso_local global i64 0, align 8
@EI_DATA = common dso_local global i64 0, align 8
@byte_get_little_endian = common dso_local global i32 0, align 4
@byte_get = common dso_local global i32 0, align 4
@byte_put_little_endian = common dso_local global i32 0, align 4
@byte_put = common dso_local global i32 0, align 4
@byte_get_big_endian = common dso_local global i32 0, align 4
@byte_put_big_endian = common dso_local global i32 0, align 4
@EI_CLASS = common dso_local global i64 0, align 8
@ELFCLASS64 = common dso_local global i32 0, align 4
@is_32bit_elf = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [120 x i8] c"This instance of readelf has been built without support for a\0A64 bit data type and so it cannot read 64 bit ELF files.\0A\00", align 1
@ET_REL = common dso_local global i64 0, align 8
@is_relocatable = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @get_file_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_file_header(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_5__, align 8
  %5 = alloca %struct.TYPE_4__, align 8
  store i32* %0, i32** %3, align 8
  %6 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @elf_header, i32 0, i32 0), align 8
  %7 = load i64, i64* @EI_NIDENT, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = call i32 @fread(i32* %6, i64 %7, i32 1, i32* %8)
  %10 = icmp ne i32 %9, 1
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %105

12:                                               ; preds = %1
  %13 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @elf_header, i32 0, i32 0), align 8
  %14 = load i64, i64* @EI_DATA, align 8
  %15 = getelementptr inbounds i32, i32* %13, i64 %14
  %16 = load i32, i32* %15, align 4
  switch i32 %16, label %17 [
    i32 128, label %18
    i32 130, label %18
    i32 129, label %21
  ]

17:                                               ; preds = %12
  br label %18

18:                                               ; preds = %12, %12, %17
  %19 = load i32, i32* @byte_get_little_endian, align 4
  store i32 %19, i32* @byte_get, align 4
  %20 = load i32, i32* @byte_put_little_endian, align 4
  store i32 %20, i32* @byte_put, align 4
  br label %24

21:                                               ; preds = %12
  %22 = load i32, i32* @byte_get_big_endian, align 4
  store i32 %22, i32* @byte_get, align 4
  %23 = load i32, i32* @byte_put_big_endian, align 4
  store i32 %23, i32* @byte_put, align 4
  br label %24

24:                                               ; preds = %21, %18
  %25 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @elf_header, i32 0, i32 0), align 8
  %26 = load i64, i64* @EI_CLASS, align 8
  %27 = getelementptr inbounds i32, i32* %25, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @ELFCLASS64, align 4
  %30 = icmp ne i32 %28, %29
  %31 = zext i1 %30 to i32
  store i32 %31, i32* @is_32bit_elf, align 4
  %32 = load i32, i32* @is_32bit_elf, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %84

34:                                               ; preds = %24
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = load i64, i64* @EI_NIDENT, align 8
  %38 = sub i64 104, %37
  %39 = load i32*, i32** %3, align 8
  %40 = call i32 @fread(i32* %36, i64 %38, i32 1, i32* %39)
  %41 = icmp ne i32 %40, 1
  br i1 %41, label %42, label %43

42:                                               ; preds = %34
  store i32 0, i32* %2, align 4
  br label %105

43:                                               ; preds = %34
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = call i8* @BYTE_GET(i32* %45)
  %47 = ptrtoint i8* %46 to i64
  store i64 %47, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @elf_header, i32 0, i32 1), align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  %50 = call i8* @BYTE_GET(i32* %49)
  store i8* %50, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @elf_header, i32 0, i32 13), align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 2
  %52 = load i32*, i32** %51, align 8
  %53 = call i8* @BYTE_GET(i32* %52)
  store i8* %53, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @elf_header, i32 0, i32 12), align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 3
  %55 = load i32*, i32** %54, align 8
  %56 = call i8* @BYTE_GET(i32* %55)
  store i8* %56, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @elf_header, i32 0, i32 11), align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 4
  %58 = load i32*, i32** %57, align 8
  %59 = call i8* @BYTE_GET(i32* %58)
  store i8* %59, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @elf_header, i32 0, i32 10), align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 5
  %61 = load i32*, i32** %60, align 8
  %62 = call i8* @BYTE_GET(i32* %61)
  store i8* %62, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @elf_header, i32 0, i32 2), align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 6
  %64 = load i32*, i32** %63, align 8
  %65 = call i8* @BYTE_GET(i32* %64)
  store i8* %65, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @elf_header, i32 0, i32 9), align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 7
  %67 = load i32*, i32** %66, align 8
  %68 = call i8* @BYTE_GET(i32* %67)
  store i8* %68, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @elf_header, i32 0, i32 8), align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 8
  %70 = load i32*, i32** %69, align 8
  %71 = call i8* @BYTE_GET(i32* %70)
  store i8* %71, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @elf_header, i32 0, i32 7), align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 9
  %73 = load i32*, i32** %72, align 8
  %74 = call i8* @BYTE_GET(i32* %73)
  store i8* %74, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @elf_header, i32 0, i32 6), align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 10
  %76 = load i32*, i32** %75, align 8
  %77 = call i8* @BYTE_GET(i32* %76)
  store i8* %77, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @elf_header, i32 0, i32 5), align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 11
  %79 = load i32*, i32** %78, align 8
  %80 = call i8* @BYTE_GET(i32* %79)
  store i8* %80, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @elf_header, i32 0, i32 4), align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 12
  %82 = load i32*, i32** %81, align 8
  %83 = call i8* @BYTE_GET(i32* %82)
  store i8* %83, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @elf_header, i32 0, i32 3), align 8
  br label %87

84:                                               ; preds = %24
  %85 = call i32 @_(i8* getelementptr inbounds ([120 x i8], [120 x i8]* @.str, i64 0, i64 0))
  %86 = call i32 @error(i32 %85)
  store i32 0, i32* %2, align 4
  br label %105

87:                                               ; preds = %43
  %88 = load i8*, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @elf_header, i32 0, i32 2), align 8
  %89 = icmp ne i8* %88, null
  br i1 %89, label %90, label %100

90:                                               ; preds = %87
  %91 = load i32, i32* @is_32bit_elf, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %90
  %94 = load i32*, i32** %3, align 8
  %95 = call i32 @get_32bit_section_headers(i32* %94, i32 1)
  br label %99

96:                                               ; preds = %90
  %97 = load i32*, i32** %3, align 8
  %98 = call i32 @get_64bit_section_headers(i32* %97, i32 1)
  br label %99

99:                                               ; preds = %96, %93
  br label %100

100:                                              ; preds = %99, %87
  %101 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @elf_header, i32 0, i32 1), align 8
  %102 = load i64, i64* @ET_REL, align 8
  %103 = icmp eq i64 %101, %102
  %104 = zext i1 %103 to i32
  store i32 %104, i32* @is_relocatable, align 4
  store i32 1, i32* %2, align 4
  br label %105

105:                                              ; preds = %100, %84, %42, %11
  %106 = load i32, i32* %2, align 4
  ret i32 %106
}

declare dso_local i32 @fread(i32*, i64, i32, i32*) #1

declare dso_local i8* @BYTE_GET(i32*) #1

declare dso_local i32 @error(i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @get_32bit_section_headers(i32*, i32) #1

declare dso_local i32 @get_64bit_section_headers(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
