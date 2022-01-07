; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_readelf.c_process_file_header.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_readelf.c_process_file_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64*, i64, i64, i64, i64, i64, i64, i32, i64, i64, i64, i64, i64, i32 }
%struct.TYPE_4__ = type { i64, i64 }

@elf_header = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@EI_MAG0 = common dso_local global i64 0, align 8
@ELFMAG0 = common dso_local global i64 0, align 8
@EI_MAG1 = common dso_local global i64 0, align 8
@ELFMAG1 = common dso_local global i64 0, align 8
@EI_MAG2 = common dso_local global i64 0, align 8
@ELFMAG2 = common dso_local global i64 0, align 8
@EI_MAG3 = common dso_local global i64 0, align 8
@ELFMAG3 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [61 x i8] c"Not an ELF file - it has the wrong magic bytes at the start\0A\00", align 1
@do_header = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [13 x i8] c"ELF Header:\0A\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"  Magic:   \00", align 1
@EI_NIDENT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"%2.2x \00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.5 = private unnamed_addr constant [41 x i8] c"  Class:                             %s\0A\00", align 1
@EI_CLASS = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [41 x i8] c"  Data:                              %s\0A\00", align 1
@EI_DATA = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [44 x i8] c"  Version:                           %d %s\0A\00", align 1
@EI_VERSION = common dso_local global i64 0, align 8
@EV_CURRENT = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [10 x i8] c"(current)\00", align 1
@EV_NONE = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [15 x i8] c"<unknown: %lx>\00", align 1
@.str.10 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.11 = private unnamed_addr constant [41 x i8] c"  OS/ABI:                            %s\0A\00", align 1
@EI_OSABI = common dso_local global i64 0, align 8
@.str.12 = private unnamed_addr constant [41 x i8] c"  ABI Version:                       %d\0A\00", align 1
@EI_ABIVERSION = common dso_local global i64 0, align 8
@.str.13 = private unnamed_addr constant [41 x i8] c"  Type:                              %s\0A\00", align 1
@.str.14 = private unnamed_addr constant [41 x i8] c"  Machine:                           %s\0A\00", align 1
@.str.15 = private unnamed_addr constant [44 x i8] c"  Version:                           0x%lx\0A\00", align 1
@.str.16 = private unnamed_addr constant [38 x i8] c"  Entry point address:               \00", align 1
@PREFIX_HEX = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [39 x i8] c"\0A  Start of program headers:          \00", align 1
@DEC = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [57 x i8] c" (bytes into file)\0A  Start of section headers:          \00", align 1
@.str.19 = private unnamed_addr constant [20 x i8] c" (bytes into file)\0A\00", align 1
@.str.20 = private unnamed_addr constant [46 x i8] c"  Flags:                             0x%lx%s\0A\00", align 1
@.str.21 = private unnamed_addr constant [50 x i8] c"  Size of this header:               %ld (bytes)\0A\00", align 1
@.str.22 = private unnamed_addr constant [50 x i8] c"  Size of program headers:           %ld (bytes)\0A\00", align 1
@.str.23 = private unnamed_addr constant [42 x i8] c"  Number of program headers:         %ld\0A\00", align 1
@.str.24 = private unnamed_addr constant [50 x i8] c"  Size of section headers:           %ld (bytes)\0A\00", align 1
@.str.25 = private unnamed_addr constant [41 x i8] c"  Number of section headers:         %ld\00", align 1
@section_headers = common dso_local global %struct.TYPE_4__* null, align 8
@.str.26 = private unnamed_addr constant [7 x i8] c" (%ld)\00", align 1
@stdout = common dso_local global i32 0, align 4
@.str.27 = private unnamed_addr constant [41 x i8] c"  Section header string table index: %ld\00", align 1
@SHN_XINDEX = common dso_local global i64 0, align 8
@SHN_UNDEF = common dso_local global i64 0, align 8
@SHN_LORESERVE = common dso_local global i64 0, align 8
@SHN_HIRESERVE = common dso_local global i64 0, align 8
@.str.28 = private unnamed_addr constant [25 x i8] c" <corrupt: out of range>\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @process_file_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_file_header() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i64*, i64** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @elf_header, i32 0, i32 0), align 8
  %4 = load i64, i64* @EI_MAG0, align 8
  %5 = getelementptr inbounds i64, i64* %3, i64 %4
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @ELFMAG0, align 8
  %8 = icmp ne i64 %6, %7
  br i1 %8, label %30, label %9

9:                                                ; preds = %0
  %10 = load i64*, i64** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @elf_header, i32 0, i32 0), align 8
  %11 = load i64, i64* @EI_MAG1, align 8
  %12 = getelementptr inbounds i64, i64* %10, i64 %11
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @ELFMAG1, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %30, label %16

16:                                               ; preds = %9
  %17 = load i64*, i64** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @elf_header, i32 0, i32 0), align 8
  %18 = load i64, i64* @EI_MAG2, align 8
  %19 = getelementptr inbounds i64, i64* %17, i64 %18
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @ELFMAG2, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %30, label %23

23:                                               ; preds = %16
  %24 = load i64*, i64** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @elf_header, i32 0, i32 0), align 8
  %25 = load i64, i64* @EI_MAG3, align 8
  %26 = getelementptr inbounds i64, i64* %24, i64 %25
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @ELFMAG3, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %23, %16, %9, %0
  %31 = call i8* @_(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0))
  %32 = call i32 @error(i8* %31)
  store i32 0, i32* %1, align 4
  br label %259

33:                                               ; preds = %23
  %34 = load i64, i64* @do_header, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %216

36:                                               ; preds = %33
  %37 = call i8* @_(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %38 = call i32 (i8*, ...) @printf(i8* %37)
  %39 = call i8* @_(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %40 = call i32 (i8*, ...) @printf(i8* %39)
  store i32 0, i32* %2, align 4
  br label %41

41:                                               ; preds = %52, %36
  %42 = load i32, i32* %2, align 4
  %43 = load i32, i32* @EI_NIDENT, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %55

45:                                               ; preds = %41
  %46 = load i64*, i64** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @elf_header, i32 0, i32 0), align 8
  %47 = load i32, i32* %2, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i64, i64* %46, i64 %48
  %50 = load i64, i64* %49, align 8
  %51 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i64 %50)
  br label %52

52:                                               ; preds = %45
  %53 = load i32, i32* %2, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %2, align 4
  br label %41

55:                                               ; preds = %41
  %56 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %57 = call i8* @_(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0))
  %58 = load i64*, i64** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @elf_header, i32 0, i32 0), align 8
  %59 = load i64, i64* @EI_CLASS, align 8
  %60 = getelementptr inbounds i64, i64* %58, i64 %59
  %61 = load i64, i64* %60, align 8
  %62 = trunc i64 %61 to i32
  %63 = call i8* @get_elf_class(i32 %62)
  %64 = call i32 (i8*, ...) @printf(i8* %57, i8* %63)
  %65 = call i8* @_(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i64 0, i64 0))
  %66 = load i64*, i64** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @elf_header, i32 0, i32 0), align 8
  %67 = load i64, i64* @EI_DATA, align 8
  %68 = getelementptr inbounds i64, i64* %66, i64 %67
  %69 = load i64, i64* %68, align 8
  %70 = trunc i64 %69 to i32
  %71 = call i8* @get_data_encoding(i32 %70)
  %72 = call i32 (i8*, ...) @printf(i8* %65, i8* %71)
  %73 = call i8* @_(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.7, i64 0, i64 0))
  %74 = load i64*, i64** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @elf_header, i32 0, i32 0), align 8
  %75 = load i64, i64* @EI_VERSION, align 8
  %76 = getelementptr inbounds i64, i64* %74, i64 %75
  %77 = load i64, i64* %76, align 8
  %78 = load i64*, i64** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @elf_header, i32 0, i32 0), align 8
  %79 = load i64, i64* @EI_VERSION, align 8
  %80 = getelementptr inbounds i64, i64* %78, i64 %79
  %81 = load i64, i64* %80, align 8
  %82 = load i32, i32* @EV_CURRENT, align 4
  %83 = sext i32 %82 to i64
  %84 = icmp eq i64 %81, %83
  br i1 %84, label %85, label %86

85:                                               ; preds = %55
  br label %96

86:                                               ; preds = %55
  %87 = load i64*, i64** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @elf_header, i32 0, i32 0), align 8
  %88 = load i64, i64* @EI_VERSION, align 8
  %89 = getelementptr inbounds i64, i64* %87, i64 %88
  %90 = load i64, i64* %89, align 8
  %91 = load i32, i32* @EV_NONE, align 4
  %92 = sext i32 %91 to i64
  %93 = icmp ne i64 %90, %92
  %94 = zext i1 %93 to i64
  %95 = select i1 %93, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.10, i64 0, i64 0)
  br label %96

96:                                               ; preds = %86, %85
  %97 = phi i8* [ getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), %85 ], [ %95, %86 ]
  %98 = call i32 (i8*, ...) @printf(i8* %73, i64 %77, i8* %97)
  %99 = call i8* @_(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.11, i64 0, i64 0))
  %100 = load i64*, i64** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @elf_header, i32 0, i32 0), align 8
  %101 = load i64, i64* @EI_OSABI, align 8
  %102 = getelementptr inbounds i64, i64* %100, i64 %101
  %103 = load i64, i64* %102, align 8
  %104 = trunc i64 %103 to i32
  %105 = call i8* @get_osabi_name(i32 %104)
  %106 = call i32 (i8*, ...) @printf(i8* %99, i8* %105)
  %107 = call i8* @_(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.12, i64 0, i64 0))
  %108 = load i64*, i64** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @elf_header, i32 0, i32 0), align 8
  %109 = load i64, i64* @EI_ABIVERSION, align 8
  %110 = getelementptr inbounds i64, i64* %108, i64 %109
  %111 = load i64, i64* %110, align 8
  %112 = call i32 (i8*, ...) @printf(i8* %107, i64 %111)
  %113 = call i8* @_(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.13, i64 0, i64 0))
  %114 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @elf_header, i32 0, i32 13), align 8
  %115 = call i8* @get_file_type(i32 %114)
  %116 = call i32 (i8*, ...) @printf(i8* %113, i8* %115)
  %117 = call i8* @_(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.14, i64 0, i64 0))
  %118 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @elf_header, i32 0, i32 7), align 8
  %119 = call i8* @get_machine_name(i32 %118)
  %120 = call i32 (i8*, ...) @printf(i8* %117, i8* %119)
  %121 = call i8* @_(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.15, i64 0, i64 0))
  %122 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @elf_header, i32 0, i32 12), align 8
  %123 = call i32 (i8*, ...) @printf(i8* %121, i64 %122)
  %124 = call i8* @_(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.16, i64 0, i64 0))
  %125 = call i32 (i8*, ...) @printf(i8* %124)
  %126 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @elf_header, i32 0, i32 11), align 8
  %127 = trunc i64 %126 to i32
  %128 = load i32, i32* @PREFIX_HEX, align 4
  %129 = call i32 @print_vma(i32 %127, i32 %128)
  %130 = call i8* @_(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.17, i64 0, i64 0))
  %131 = call i32 (i8*, ...) @printf(i8* %130)
  %132 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @elf_header, i32 0, i32 10), align 8
  %133 = trunc i64 %132 to i32
  %134 = load i32, i32* @DEC, align 4
  %135 = call i32 @print_vma(i32 %133, i32 %134)
  %136 = call i8* @_(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.18, i64 0, i64 0))
  %137 = call i32 (i8*, ...) @printf(i8* %136)
  %138 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @elf_header, i32 0, i32 9), align 8
  %139 = trunc i64 %138 to i32
  %140 = load i32, i32* @DEC, align 4
  %141 = call i32 @print_vma(i32 %139, i32 %140)
  %142 = call i8* @_(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.19, i64 0, i64 0))
  %143 = call i32 (i8*, ...) @printf(i8* %142)
  %144 = call i8* @_(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.20, i64 0, i64 0))
  %145 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @elf_header, i32 0, i32 8), align 8
  %146 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @elf_header, i32 0, i32 8), align 8
  %147 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @elf_header, i32 0, i32 7), align 8
  %148 = call i32 @get_machine_flags(i64 %146, i32 %147)
  %149 = call i32 (i8*, ...) @printf(i8* %144, i64 %145, i32 %148)
  %150 = call i8* @_(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.21, i64 0, i64 0))
  %151 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @elf_header, i32 0, i32 6), align 8
  %152 = call i32 (i8*, ...) @printf(i8* %150, i64 %151)
  %153 = call i8* @_(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.22, i64 0, i64 0))
  %154 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @elf_header, i32 0, i32 5), align 8
  %155 = call i32 (i8*, ...) @printf(i8* %153, i64 %154)
  %156 = call i8* @_(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.23, i64 0, i64 0))
  %157 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @elf_header, i32 0, i32 4), align 8
  %158 = call i32 (i8*, ...) @printf(i8* %156, i64 %157)
  %159 = call i8* @_(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.24, i64 0, i64 0))
  %160 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @elf_header, i32 0, i32 3), align 8
  %161 = call i32 (i8*, ...) @printf(i8* %159, i64 %160)
  %162 = call i8* @_(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.25, i64 0, i64 0))
  %163 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @elf_header, i32 0, i32 1), align 8
  %164 = call i32 (i8*, ...) @printf(i8* %162, i64 %163)
  %165 = load %struct.TYPE_4__*, %struct.TYPE_4__** @section_headers, align 8
  %166 = icmp ne %struct.TYPE_4__* %165, null
  br i1 %166, label %167, label %176

167:                                              ; preds = %96
  %168 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @elf_header, i32 0, i32 1), align 8
  %169 = icmp eq i64 %168, 0
  br i1 %169, label %170, label %176

170:                                              ; preds = %167
  %171 = load %struct.TYPE_4__*, %struct.TYPE_4__** @section_headers, align 8
  %172 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %171, i64 0
  %173 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %172, i32 0, i32 0
  %174 = load i64, i64* %173, align 8
  %175 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.26, i64 0, i64 0), i64 %174)
  br label %176

176:                                              ; preds = %170, %167, %96
  %177 = load i32, i32* @stdout, align 4
  %178 = call i32 @putc(i8 signext 10, i32 %177)
  %179 = call i8* @_(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.27, i64 0, i64 0))
  %180 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @elf_header, i32 0, i32 2), align 8
  %181 = call i32 (i8*, ...) @printf(i8* %179, i64 %180)
  %182 = load %struct.TYPE_4__*, %struct.TYPE_4__** @section_headers, align 8
  %183 = icmp ne %struct.TYPE_4__* %182, null
  br i1 %183, label %184, label %194

184:                                              ; preds = %176
  %185 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @elf_header, i32 0, i32 2), align 8
  %186 = load i64, i64* @SHN_XINDEX, align 8
  %187 = icmp eq i64 %185, %186
  br i1 %187, label %188, label %194

188:                                              ; preds = %184
  %189 = load %struct.TYPE_4__*, %struct.TYPE_4__** @section_headers, align 8
  %190 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %189, i64 0
  %191 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %190, i32 0, i32 1
  %192 = load i64, i64* %191, align 8
  %193 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.26, i64 0, i64 0), i64 %192)
  br label %213

194:                                              ; preds = %184, %176
  %195 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @elf_header, i32 0, i32 2), align 8
  %196 = load i64, i64* @SHN_UNDEF, align 8
  %197 = icmp ne i64 %195, %196
  br i1 %197, label %198, label %212

198:                                              ; preds = %194
  %199 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @elf_header, i32 0, i32 2), align 8
  %200 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @elf_header, i32 0, i32 1), align 8
  %201 = icmp sge i64 %199, %200
  br i1 %201, label %210, label %202

202:                                              ; preds = %198
  %203 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @elf_header, i32 0, i32 2), align 8
  %204 = load i64, i64* @SHN_LORESERVE, align 8
  %205 = icmp sge i64 %203, %204
  br i1 %205, label %206, label %212

206:                                              ; preds = %202
  %207 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @elf_header, i32 0, i32 2), align 8
  %208 = load i64, i64* @SHN_HIRESERVE, align 8
  %209 = icmp sle i64 %207, %208
  br i1 %209, label %210, label %212

210:                                              ; preds = %206, %198
  %211 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.28, i64 0, i64 0))
  br label %212

212:                                              ; preds = %210, %206, %202, %194
  br label %213

213:                                              ; preds = %212, %188
  %214 = load i32, i32* @stdout, align 4
  %215 = call i32 @putc(i8 signext 10, i32 %214)
  br label %216

216:                                              ; preds = %213, %33
  %217 = load %struct.TYPE_4__*, %struct.TYPE_4__** @section_headers, align 8
  %218 = icmp ne %struct.TYPE_4__* %217, null
  br i1 %218, label %219, label %258

219:                                              ; preds = %216
  %220 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @elf_header, i32 0, i32 1), align 8
  %221 = icmp eq i64 %220, 0
  br i1 %221, label %222, label %227

222:                                              ; preds = %219
  %223 = load %struct.TYPE_4__*, %struct.TYPE_4__** @section_headers, align 8
  %224 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %223, i64 0
  %225 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %224, i32 0, i32 0
  %226 = load i64, i64* %225, align 8
  store i64 %226, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @elf_header, i32 0, i32 1), align 8
  br label %227

227:                                              ; preds = %222, %219
  %228 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @elf_header, i32 0, i32 2), align 8
  %229 = load i64, i64* @SHN_XINDEX, align 8
  %230 = icmp eq i64 %228, %229
  br i1 %230, label %231, label %236

231:                                              ; preds = %227
  %232 = load %struct.TYPE_4__*, %struct.TYPE_4__** @section_headers, align 8
  %233 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %232, i64 0
  %234 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %233, i32 0, i32 1
  %235 = load i64, i64* %234, align 8
  store i64 %235, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @elf_header, i32 0, i32 2), align 8
  br label %255

236:                                              ; preds = %227
  %237 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @elf_header, i32 0, i32 2), align 8
  %238 = load i64, i64* @SHN_UNDEF, align 8
  %239 = icmp ne i64 %237, %238
  br i1 %239, label %240, label %254

240:                                              ; preds = %236
  %241 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @elf_header, i32 0, i32 2), align 8
  %242 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @elf_header, i32 0, i32 1), align 8
  %243 = icmp sge i64 %241, %242
  br i1 %243, label %252, label %244

244:                                              ; preds = %240
  %245 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @elf_header, i32 0, i32 2), align 8
  %246 = load i64, i64* @SHN_LORESERVE, align 8
  %247 = icmp sge i64 %245, %246
  br i1 %247, label %248, label %254

248:                                              ; preds = %244
  %249 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @elf_header, i32 0, i32 2), align 8
  %250 = load i64, i64* @SHN_HIRESERVE, align 8
  %251 = icmp sle i64 %249, %250
  br i1 %251, label %252, label %254

252:                                              ; preds = %248, %240
  %253 = load i64, i64* @SHN_UNDEF, align 8
  store i64 %253, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @elf_header, i32 0, i32 2), align 8
  br label %254

254:                                              ; preds = %252, %248, %244, %236
  br label %255

255:                                              ; preds = %254, %231
  %256 = load %struct.TYPE_4__*, %struct.TYPE_4__** @section_headers, align 8
  %257 = call i32 @free(%struct.TYPE_4__* %256)
  store %struct.TYPE_4__* null, %struct.TYPE_4__** @section_headers, align 8
  br label %258

258:                                              ; preds = %255, %216
  store i32 1, i32* %1, align 4
  br label %259

259:                                              ; preds = %258, %30
  %260 = load i32, i32* %1, align 4
  ret i32 %260
}

declare dso_local i32 @error(i8*) #1

declare dso_local i8* @_(i8*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i8* @get_elf_class(i32) #1

declare dso_local i8* @get_data_encoding(i32) #1

declare dso_local i8* @get_osabi_name(i32) #1

declare dso_local i8* @get_file_type(i32) #1

declare dso_local i8* @get_machine_name(i32) #1

declare dso_local i32 @print_vma(i32, i32) #1

declare dso_local i32 @get_machine_flags(i64, i32) #1

declare dso_local i32 @putc(i8 signext, i32) #1

declare dso_local i32 @free(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
