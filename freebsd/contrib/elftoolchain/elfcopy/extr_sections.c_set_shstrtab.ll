; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/elfcopy/extr_sections.c_set_shstrtab.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/elfcopy/extr_sections.c_set_shstrtab.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elfcopy = type { i32, i32, %struct.section* }
%struct.section = type { i64, i32*, i32, i32 }
%struct.TYPE_7__ = type { i32, i64, i32, i32, i64, i8* }
%struct.TYPE_6__ = type { i32, i64, i64, i64, i64, i64, i32, i32, i64 }

@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"elf_newscn failed: %s\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"gelf_getshdr() failed: %s\00", align 1
@SHT_STRTAB = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"elf_newdata() failed: %s\00", align 1
@SYMTAB_EXIST = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c".symtab\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c".strtab\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"gelf_update_shdr() failed: %s\00", align 1
@ELF_T_BYTE = common dso_local global i32 0, align 4
@EV_CURRENT = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [29 x i8] c"elf_setshstrndx() failed: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.elfcopy*)* @set_shstrtab to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_shstrtab(%struct.elfcopy* %0) #0 {
  %2 = alloca %struct.elfcopy*, align 8
  %3 = alloca %struct.section*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca %struct.TYPE_6__, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  store %struct.elfcopy* %0, %struct.elfcopy** %2, align 8
  %8 = load %struct.elfcopy*, %struct.elfcopy** %2, align 8
  %9 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %8, i32 0, i32 2
  %10 = load %struct.section*, %struct.section** %9, align 8
  store %struct.section* %10, %struct.section** %3, align 8
  %11 = load %struct.section*, %struct.section** %3, align 8
  %12 = getelementptr inbounds %struct.section, %struct.section* %11, i32 0, i32 1
  %13 = load i32*, i32** %12, align 8
  %14 = icmp eq i32* %13, null
  br i1 %14, label %15, label %31

15:                                               ; preds = %1
  %16 = load %struct.elfcopy*, %struct.elfcopy** %2, align 8
  %17 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32* @elf_newscn(i32 %18)
  %20 = load %struct.section*, %struct.section** %3, align 8
  %21 = getelementptr inbounds %struct.section, %struct.section* %20, i32 0, i32 1
  store i32* %19, i32** %21, align 8
  %22 = icmp eq i32* %19, null
  br i1 %22, label %23, label %27

23:                                               ; preds = %15
  %24 = load i32, i32* @EXIT_FAILURE, align 4
  %25 = call i32 @elf_errmsg(i32 -1)
  %26 = call i32 @errx(i32 %24, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %25)
  br label %27

27:                                               ; preds = %23, %15
  %28 = load %struct.elfcopy*, %struct.elfcopy** %2, align 8
  %29 = load %struct.section*, %struct.section** %3, align 8
  %30 = call i32 @insert_to_sec_list(%struct.elfcopy* %28, %struct.section* %29, i32 1)
  br label %31

31:                                               ; preds = %27, %1
  %32 = load %struct.section*, %struct.section** %3, align 8
  %33 = getelementptr inbounds %struct.section, %struct.section* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = call i32* @gelf_getshdr(i32* %34, %struct.TYPE_6__* %5)
  %36 = icmp eq i32* %35, null
  br i1 %36, label %37, label %41

37:                                               ; preds = %31
  %38 = load i32, i32* @EXIT_FAILURE, align 4
  %39 = call i32 @elf_errmsg(i32 -1)
  %40 = call i32 @errx(i32 %38, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %39)
  br label %41

41:                                               ; preds = %37, %31
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 8
  store i64 0, i64* %42, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 0
  store i32 1, i32* %43, align 8
  %44 = load %struct.section*, %struct.section** %3, align 8
  %45 = getelementptr inbounds %struct.section, %struct.section* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 7
  store i32 %46, i32* %47, align 4
  %48 = load i32, i32* @SHT_STRTAB, align 4
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 6
  store i32 %48, i32* %49, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 5
  store i64 0, i64* %50, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 4
  store i64 0, i64* %51, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 3
  store i64 0, i64* %52, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 2
  store i64 0, i64* %53, align 8
  %54 = load %struct.section*, %struct.section** %3, align 8
  %55 = getelementptr inbounds %struct.section, %struct.section* %54, i32 0, i32 1
  %56 = load i32*, i32** %55, align 8
  %57 = call %struct.TYPE_7__* @elf_newdata(i32* %56)
  store %struct.TYPE_7__* %57, %struct.TYPE_7__** %4, align 8
  %58 = icmp eq %struct.TYPE_7__* %57, null
  br i1 %58, label %59, label %63

59:                                               ; preds = %41
  %60 = load i32, i32* @EXIT_FAILURE, align 4
  %61 = call i32 @elf_errmsg(i32 -1)
  %62 = call i32 @errx(i32 %60, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %61)
  br label %63

63:                                               ; preds = %59, %41
  %64 = load %struct.elfcopy*, %struct.elfcopy** %2, align 8
  %65 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @SYMTAB_EXIST, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %79, label %70

70:                                               ; preds = %63
  %71 = load %struct.section*, %struct.section** %3, align 8
  %72 = getelementptr inbounds %struct.section, %struct.section* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @elftc_string_table_remove(i32 %73, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %75 = load %struct.section*, %struct.section** %3, align 8
  %76 = getelementptr inbounds %struct.section, %struct.section* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @elftc_string_table_remove(i32 %77, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  br label %79

79:                                               ; preds = %70, %63
  %80 = load %struct.section*, %struct.section** %3, align 8
  %81 = getelementptr inbounds %struct.section, %struct.section* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = call i8* @elftc_string_table_image(i32 %82, i64* %7)
  store i8* %83, i8** %6, align 8
  %84 = load i64, i64* %7, align 8
  %85 = load %struct.section*, %struct.section** %3, align 8
  %86 = getelementptr inbounds %struct.section, %struct.section* %85, i32 0, i32 0
  store i64 %84, i64* %86, align 8
  %87 = load i64, i64* %7, align 8
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 1
  store i64 %87, i64* %88, align 8
  %89 = load %struct.section*, %struct.section** %3, align 8
  %90 = getelementptr inbounds %struct.section, %struct.section* %89, i32 0, i32 1
  %91 = load i32*, i32** %90, align 8
  %92 = call i32 @gelf_update_shdr(i32* %91, %struct.TYPE_6__* %5)
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %98, label %94

94:                                               ; preds = %79
  %95 = load i32, i32* @EXIT_FAILURE, align 4
  %96 = call i32 @elf_errmsg(i32 -1)
  %97 = call i32 @errx(i32 %95, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0), i32 %96)
  br label %98

98:                                               ; preds = %94, %79
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 0
  store i32 1, i32* %100, align 8
  %101 = load i8*, i8** %6, align 8
  %102 = ptrtoint i8* %101 to i64
  %103 = inttoptr i64 %102 to i8*
  %104 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 5
  store i8* %103, i8** %105, align 8
  %106 = load i64, i64* %7, align 8
  %107 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 1
  store i64 %106, i64* %108, align 8
  %109 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 4
  store i64 0, i64* %110, align 8
  %111 = load i32, i32* @ELF_T_BYTE, align 4
  %112 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i32 0, i32 3
  store i32 %111, i32* %113, align 4
  %114 = load i32, i32* @EV_CURRENT, align 4
  %115 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 2
  store i32 %114, i32* %116, align 8
  %117 = load %struct.elfcopy*, %struct.elfcopy** %2, align 8
  %118 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.section*, %struct.section** %3, align 8
  %121 = getelementptr inbounds %struct.section, %struct.section* %120, i32 0, i32 1
  %122 = load i32*, i32** %121, align 8
  %123 = call i32 @elf_ndxscn(i32* %122)
  %124 = call i32 @elf_setshstrndx(i32 %119, i32 %123)
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %130, label %126

126:                                              ; preds = %98
  %127 = load i32, i32* @EXIT_FAILURE, align 4
  %128 = call i32 @elf_errmsg(i32 -1)
  %129 = call i32 @errx(i32 %127, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0), i32 %128)
  br label %130

130:                                              ; preds = %126, %98
  ret void
}

declare dso_local i32* @elf_newscn(i32) #1

declare dso_local i32 @errx(i32, i8*, i32) #1

declare dso_local i32 @elf_errmsg(i32) #1

declare dso_local i32 @insert_to_sec_list(%struct.elfcopy*, %struct.section*, i32) #1

declare dso_local i32* @gelf_getshdr(i32*, %struct.TYPE_6__*) #1

declare dso_local %struct.TYPE_7__* @elf_newdata(i32*) #1

declare dso_local i32 @elftc_string_table_remove(i32, i8*) #1

declare dso_local i8* @elftc_string_table_image(i32, i64*) #1

declare dso_local i32 @gelf_update_shdr(i32*, %struct.TYPE_6__*) #1

declare dso_local i32 @elf_setshstrndx(i32, i32) #1

declare dso_local i32 @elf_ndxscn(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
