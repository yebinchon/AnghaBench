; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/readelf/extr_readelf.c_dump_mips_abiflags.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/readelf/extr_readelf.c_dump_mips_abiflags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.readelf = type { i32 (i32**, i32)* }
%struct.section = type { i32 }
%struct.TYPE_3__ = type { i32, i32* }

@.str = private unnamed_addr constant [23 x i8] c"elf_rawdata failed: %s\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"invalid MIPS abiflags section size\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"MIPS ABI Flags Version: %u\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c" (unknown)\0A\0A\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"\0A\0A\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"ISA: \00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"MIPS%u\0A\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"MIPS%ur%u\0A\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"GPR size: %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"CPR1 size: %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"CPR2 size: %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"FP ABI: \00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"Soft float\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@.str.14 = private unnamed_addr constant [20 x i8] c"\0AISA Extension: %u\0A\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"ASEs: %u\0A\00", align 1
@.str.16 = private unnamed_addr constant [15 x i8] c"FLAGS 1: %08x\0A\00", align 1
@.str.17 = private unnamed_addr constant [15 x i8] c"FLAGS 2: %08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.readelf*, %struct.section*)* @dump_mips_abiflags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_mips_abiflags(%struct.readelf* %0, %struct.section* %1) #0 {
  %3 = alloca %struct.readelf*, align 8
  %4 = alloca %struct.section*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.readelf* %0, %struct.readelf** %3, align 8
  store %struct.section* %1, %struct.section** %4, align 8
  %19 = load %struct.section*, %struct.section** %4, align 8
  %20 = getelementptr inbounds %struct.section, %struct.section* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call %struct.TYPE_3__* @elf_rawdata(i32 %21, i32* null)
  store %struct.TYPE_3__* %22, %struct.TYPE_3__** %5, align 8
  %23 = icmp eq %struct.TYPE_3__* %22, null
  br i1 %23, label %24, label %33

24:                                               ; preds = %2
  %25 = call i32 (...) @elf_errno()
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %24
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @elf_errmsg(i32 %29)
  %31 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %30)
  br label %32

32:                                               ; preds = %28, %24
  br label %132

33:                                               ; preds = %2
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp ne i32 %36, 24
  br i1 %37, label %38, label %40

38:                                               ; preds = %33
  %39 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  br label %132

40:                                               ; preds = %33
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  store i32* %43, i32** %6, align 8
  %44 = load %struct.readelf*, %struct.readelf** %3, align 8
  %45 = getelementptr inbounds %struct.readelf, %struct.readelf* %44, i32 0, i32 0
  %46 = load i32 (i32**, i32)*, i32 (i32**, i32)** %45, align 8
  %47 = call i32 %46(i32** %6, i32 2)
  store i32 %47, i32* %12, align 4
  %48 = load i32, i32* %12, align 4
  %49 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %48)
  %50 = load i32, i32* %12, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %40
  %53 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  br label %132

54:                                               ; preds = %40
  %55 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  %56 = load %struct.readelf*, %struct.readelf** %3, align 8
  %57 = getelementptr inbounds %struct.readelf, %struct.readelf* %56, i32 0, i32 0
  %58 = load i32 (i32**, i32)*, i32 (i32**, i32)** %57, align 8
  %59 = call i32 %58(i32** %6, i32 1)
  store i32 %59, i32* %13, align 4
  %60 = load %struct.readelf*, %struct.readelf** %3, align 8
  %61 = getelementptr inbounds %struct.readelf, %struct.readelf* %60, i32 0, i32 0
  %62 = load i32 (i32**, i32)*, i32 (i32**, i32)** %61, align 8
  %63 = call i32 %62(i32** %6, i32 1)
  store i32 %63, i32* %14, align 4
  %64 = load %struct.readelf*, %struct.readelf** %3, align 8
  %65 = getelementptr inbounds %struct.readelf, %struct.readelf* %64, i32 0, i32 0
  %66 = load i32 (i32**, i32)*, i32 (i32**, i32)** %65, align 8
  %67 = call i32 %66(i32** %6, i32 1)
  store i32 %67, i32* %15, align 4
  %68 = load %struct.readelf*, %struct.readelf** %3, align 8
  %69 = getelementptr inbounds %struct.readelf, %struct.readelf* %68, i32 0, i32 0
  %70 = load i32 (i32**, i32)*, i32 (i32**, i32)** %69, align 8
  %71 = call i32 %70(i32** %6, i32 1)
  store i32 %71, i32* %16, align 4
  %72 = load %struct.readelf*, %struct.readelf** %3, align 8
  %73 = getelementptr inbounds %struct.readelf, %struct.readelf* %72, i32 0, i32 0
  %74 = load i32 (i32**, i32)*, i32 (i32**, i32)** %73, align 8
  %75 = call i32 %74(i32** %6, i32 1)
  store i32 %75, i32* %17, align 4
  %76 = load %struct.readelf*, %struct.readelf** %3, align 8
  %77 = getelementptr inbounds %struct.readelf, %struct.readelf* %76, i32 0, i32 0
  %78 = load i32 (i32**, i32)*, i32 (i32**, i32)** %77, align 8
  %79 = call i32 %78(i32** %6, i32 1)
  store i32 %79, i32* %18, align 4
  %80 = load %struct.readelf*, %struct.readelf** %3, align 8
  %81 = getelementptr inbounds %struct.readelf, %struct.readelf* %80, i32 0, i32 0
  %82 = load i32 (i32**, i32)*, i32 (i32**, i32)** %81, align 8
  %83 = call i32 %82(i32** %6, i32 4)
  store i32 %83, i32* %8, align 4
  %84 = load %struct.readelf*, %struct.readelf** %3, align 8
  %85 = getelementptr inbounds %struct.readelf, %struct.readelf* %84, i32 0, i32 0
  %86 = load i32 (i32**, i32)*, i32 (i32**, i32)** %85, align 8
  %87 = call i32 %86(i32** %6, i32 4)
  store i32 %87, i32* %9, align 4
  %88 = load %struct.readelf*, %struct.readelf** %3, align 8
  %89 = getelementptr inbounds %struct.readelf, %struct.readelf* %88, i32 0, i32 0
  %90 = load i32 (i32**, i32)*, i32 (i32**, i32)** %89, align 8
  %91 = call i32 %90(i32** %6, i32 4)
  store i32 %91, i32* %10, align 4
  %92 = load %struct.readelf*, %struct.readelf** %3, align 8
  %93 = getelementptr inbounds %struct.readelf, %struct.readelf* %92, i32 0, i32 0
  %94 = load i32 (i32**, i32)*, i32 (i32**, i32)** %93, align 8
  %95 = call i32 %94(i32** %6, i32 4)
  store i32 %95, i32* %11, align 4
  %96 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  %97 = load i32, i32* %14, align 4
  %98 = icmp sle i32 %97, 1
  br i1 %98, label %99, label %102

99:                                               ; preds = %54
  %100 = load i32, i32* %13, align 4
  %101 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i32 %100)
  br label %106

102:                                              ; preds = %54
  %103 = load i32, i32* %13, align 4
  %104 = load i32, i32* %14, align 4
  %105 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0), i32 %103, i32 %104)
  br label %106

106:                                              ; preds = %102, %99
  %107 = load i32, i32* %15, align 4
  %108 = call i32 @get_mips_register_size(i32 %107)
  %109 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0), i32 %108)
  %110 = load i32, i32* %16, align 4
  %111 = call i32 @get_mips_register_size(i32 %110)
  %112 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0), i32 %111)
  %113 = load i32, i32* %17, align 4
  %114 = call i32 @get_mips_register_size(i32 %113)
  %115 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0), i32 %114)
  %116 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0))
  %117 = load i32, i32* %18, align 4
  switch i32 %117, label %120 [
    i32 3, label %118
  ]

118:                                              ; preds = %106
  %119 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i64 0, i64 0))
  br label %123

120:                                              ; preds = %106
  %121 = load i32, i32* %18, align 4
  %122 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0), i32 %121)
  br label %123

123:                                              ; preds = %120, %118
  %124 = load i32, i32* %8, align 4
  %125 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0), i32 %124)
  %126 = load i32, i32* %9, align 4
  %127 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i64 0, i64 0), i32 %126)
  %128 = load i32, i32* %10, align 4
  %129 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.16, i64 0, i64 0), i32 %128)
  %130 = load i32, i32* %11, align 4
  %131 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.17, i64 0, i64 0), i32 %130)
  br label %132

132:                                              ; preds = %123, %52, %38, %32
  ret void
}

declare dso_local %struct.TYPE_3__* @elf_rawdata(i32, i32*) #1

declare dso_local i32 @elf_errno(...) #1

declare dso_local i32 @warnx(i8*, ...) #1

declare dso_local i32 @elf_errmsg(i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @get_mips_register_size(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
