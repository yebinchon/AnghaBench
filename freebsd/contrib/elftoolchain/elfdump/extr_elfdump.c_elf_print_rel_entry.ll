; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/elfdump/extr_elfdump.c_elf_print_rel_entry.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/elfdump/extr_elfdump.c_elf_print_rel_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elfdump = type { i32, i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.section = type { i32 }
%struct.rel_entry = type { i64, i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { i64, i64 }

@SOLARIS_FMT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"        %-23s \00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"%#12jx \00", align 1
@SHT_RELA = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [8 x i8] c"%10jd  \00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"    \00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"%-14s \00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"entry: %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"\09r_offset: %#jx\0A\00", align 1
@ELFCLASS32 = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [15 x i8] c"\09r_info: %#jx\0A\00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"\09r_addend: %jd\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.elfdump*, %struct.section*, i32, %struct.rel_entry*)* @elf_print_rel_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @elf_print_rel_entry(%struct.elfdump* %0, %struct.section* %1, i32 %2, %struct.rel_entry* %3) #0 {
  %5 = alloca %struct.elfdump*, align 8
  %6 = alloca %struct.section*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.rel_entry*, align 8
  store %struct.elfdump* %0, %struct.elfdump** %5, align 8
  store %struct.section* %1, %struct.section** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.rel_entry* %3, %struct.rel_entry** %8, align 8
  %9 = load %struct.elfdump*, %struct.elfdump** %5, align 8
  %10 = getelementptr inbounds %struct.elfdump, %struct.elfdump* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @SOLARIS_FMT, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %59

15:                                               ; preds = %4
  %16 = load %struct.elfdump*, %struct.elfdump** %5, align 8
  %17 = getelementptr inbounds %struct.elfdump, %struct.elfdump* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.rel_entry*, %struct.rel_entry** %8, align 8
  %21 = getelementptr inbounds %struct.rel_entry, %struct.rel_entry* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = call i32 @GELF_R_TYPE(i64 %24)
  %26 = call i32 @elftc_reloc_type_str(i32 %19, i32 %25)
  %27 = call i32 (i8*, ...) @PRT(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %26)
  %28 = load %struct.rel_entry*, %struct.rel_entry** %8, align 8
  %29 = getelementptr inbounds %struct.rel_entry, %struct.rel_entry* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = trunc i64 %32 to i32
  %34 = call i32 (i8*, ...) @PRT(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %33)
  %35 = load %struct.rel_entry*, %struct.rel_entry** %8, align 8
  %36 = getelementptr inbounds %struct.rel_entry, %struct.rel_entry* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @SHT_RELA, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %48

40:                                               ; preds = %15
  %41 = load %struct.rel_entry*, %struct.rel_entry** %8, align 8
  %42 = getelementptr inbounds %struct.rel_entry, %struct.rel_entry* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = trunc i64 %45 to i32
  %47 = call i32 (i8*, ...) @PRT(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %46)
  br label %50

48:                                               ; preds = %15
  %49 = call i32 (i8*, ...) @PRT(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  br label %50

50:                                               ; preds = %48, %40
  %51 = load %struct.section*, %struct.section** %6, align 8
  %52 = getelementptr inbounds %struct.section, %struct.section* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 (i8*, ...) @PRT(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32 %53)
  %55 = load %struct.rel_entry*, %struct.rel_entry** %8, align 8
  %56 = getelementptr inbounds %struct.rel_entry, %struct.rel_entry* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = call i32 (i8*, ...) @PRT(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i32 %57)
  br label %114

59:                                               ; preds = %4
  %60 = call i32 (i8*, ...) @PRT(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  %61 = load i32, i32* %7, align 4
  %62 = call i32 (i8*, ...) @PRT(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0), i32 %61)
  %63 = load %struct.rel_entry*, %struct.rel_entry** %8, align 8
  %64 = getelementptr inbounds %struct.rel_entry, %struct.rel_entry* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = trunc i64 %67 to i32
  %69 = call i32 (i8*, ...) @PRT(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0), i32 %68)
  %70 = load %struct.elfdump*, %struct.elfdump** %5, align 8
  %71 = getelementptr inbounds %struct.elfdump, %struct.elfdump* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @ELFCLASS32, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %91

75:                                               ; preds = %59
  %76 = load %struct.rel_entry*, %struct.rel_entry** %8, align 8
  %77 = getelementptr inbounds %struct.rel_entry, %struct.rel_entry* %76, i32 0, i32 2
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = call i32 @ELF64_R_SYM(i64 %80)
  %82 = load %struct.rel_entry*, %struct.rel_entry** %8, align 8
  %83 = getelementptr inbounds %struct.rel_entry, %struct.rel_entry* %82, i32 0, i32 2
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = call i32 @ELF64_R_TYPE(i64 %86)
  %88 = call i64 @ELF32_R_INFO(i32 %81, i32 %87)
  %89 = trunc i64 %88 to i32
  %90 = call i32 (i8*, ...) @PRT(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0), i32 %89)
  br label %99

91:                                               ; preds = %59
  %92 = load %struct.rel_entry*, %struct.rel_entry** %8, align 8
  %93 = getelementptr inbounds %struct.rel_entry, %struct.rel_entry* %92, i32 0, i32 2
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = trunc i64 %96 to i32
  %98 = call i32 (i8*, ...) @PRT(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0), i32 %97)
  br label %99

99:                                               ; preds = %91, %75
  %100 = load %struct.rel_entry*, %struct.rel_entry** %8, align 8
  %101 = getelementptr inbounds %struct.rel_entry, %struct.rel_entry* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* @SHT_RELA, align 8
  %104 = icmp eq i64 %102, %103
  br i1 %104, label %105, label %113

105:                                              ; preds = %99
  %106 = load %struct.rel_entry*, %struct.rel_entry** %8, align 8
  %107 = getelementptr inbounds %struct.rel_entry, %struct.rel_entry* %106, i32 0, i32 2
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = trunc i64 %110 to i32
  %112 = call i32 (i8*, ...) @PRT(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i64 0, i64 0), i32 %111)
  br label %113

113:                                              ; preds = %105, %99
  br label %114

114:                                              ; preds = %113, %50
  ret void
}

declare dso_local i32 @PRT(i8*, ...) #1

declare dso_local i32 @elftc_reloc_type_str(i32, i32) #1

declare dso_local i32 @GELF_R_TYPE(i64) #1

declare dso_local i64 @ELF32_R_INFO(i32, i32) #1

declare dso_local i32 @ELF64_R_SYM(i64) #1

declare dso_local i32 @ELF64_R_TYPE(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
