; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/elfcopy/extr_sections.c_create_external_section.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/elfcopy/extr_sections.c_create_external_section.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.section = type { i8*, i8*, i32, i32, i64, i64, i64, i32*, i32*, i64, i64 }
%struct.elfcopy = type { i32, i32 }
%struct.TYPE_7__ = type { i32, i32, i64, i8*, i64, i64 }
%struct.TYPE_6__ = type { i64, i64, i64, i64 }

@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"elf_newscn() failed: %s\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"calloc failed\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"gelf_getshdr() failed: %s\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"gelf_update_shdr() failed: %s\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"elf_newdata() failed: %s\00", align 1
@EV_CURRENT = common dso_local global i32 0, align 4
@SYMTAB_INTACT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.section* @create_external_section(%struct.elfcopy* %0, i8* %1, i8* %2, i8* %3, i64 %4, i64 %5, i64 %6, i32 %7, i64 %8, i64 %9, i64 %10, i32 %11) #0 {
  %13 = alloca %struct.elfcopy*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i32, align 4
  %25 = alloca %struct.section*, align 8
  %26 = alloca i32*, align 8
  %27 = alloca %struct.TYPE_7__*, align 8
  %28 = alloca %struct.TYPE_6__, align 8
  store %struct.elfcopy* %0, %struct.elfcopy** %13, align 8
  store i8* %1, i8** %14, align 8
  store i8* %2, i8** %15, align 8
  store i8* %3, i8** %16, align 8
  store i64 %4, i64* %17, align 8
  store i64 %5, i64* %18, align 8
  store i64 %6, i64* %19, align 8
  store i32 %7, i32* %20, align 4
  store i64 %8, i64* %21, align 8
  store i64 %9, i64* %22, align 8
  store i64 %10, i64* %23, align 8
  store i32 %11, i32* %24, align 4
  %29 = load %struct.elfcopy*, %struct.elfcopy** %13, align 8
  %30 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32* @elf_newscn(i32 %31)
  store i32* %32, i32** %26, align 8
  %33 = icmp eq i32* %32, null
  br i1 %33, label %34, label %38

34:                                               ; preds = %12
  %35 = load i32, i32* @EXIT_FAILURE, align 4
  %36 = call i32 @elf_errmsg(i32 -1)
  %37 = call i32 @errx(i32 %35, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %36)
  br label %38

38:                                               ; preds = %34, %12
  %39 = call %struct.section* @calloc(i32 1, i32 80)
  store %struct.section* %39, %struct.section** %25, align 8
  %40 = icmp eq %struct.section* %39, null
  br i1 %40, label %41, label %44

41:                                               ; preds = %38
  %42 = load i32, i32* @EXIT_FAILURE, align 4
  %43 = call i32 @err(i32 %42, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  br label %44

44:                                               ; preds = %41, %38
  %45 = load i8*, i8** %14, align 8
  %46 = load %struct.section*, %struct.section** %25, align 8
  %47 = getelementptr inbounds %struct.section, %struct.section* %46, i32 0, i32 0
  store i8* %45, i8** %47, align 8
  %48 = load i8*, i8** %15, align 8
  %49 = load %struct.section*, %struct.section** %25, align 8
  %50 = getelementptr inbounds %struct.section, %struct.section* %49, i32 0, i32 1
  store i8* %48, i8** %50, align 8
  %51 = load i64, i64* %18, align 8
  %52 = load %struct.section*, %struct.section** %25, align 8
  %53 = getelementptr inbounds %struct.section, %struct.section* %52, i32 0, i32 10
  store i64 %51, i64* %53, align 8
  %54 = load i64, i64* %17, align 8
  %55 = load %struct.section*, %struct.section** %25, align 8
  %56 = getelementptr inbounds %struct.section, %struct.section* %55, i32 0, i32 9
  store i64 %54, i64* %56, align 8
  %57 = load i64, i64* %23, align 8
  %58 = load %struct.section*, %struct.section** %25, align 8
  %59 = getelementptr inbounds %struct.section, %struct.section* %58, i32 0, i32 5
  store i64 %57, i64* %59, align 8
  %60 = load i64, i64* %22, align 8
  %61 = load %struct.section*, %struct.section** %25, align 8
  %62 = getelementptr inbounds %struct.section, %struct.section* %61, i32 0, i32 4
  store i64 %60, i64* %62, align 8
  %63 = load i32, i32* %24, align 4
  %64 = load %struct.section*, %struct.section** %25, align 8
  %65 = getelementptr inbounds %struct.section, %struct.section* %64, i32 0, i32 2
  store i32 %63, i32* %65, align 8
  %66 = load %struct.section*, %struct.section** %25, align 8
  %67 = getelementptr inbounds %struct.section, %struct.section* %66, i32 0, i32 8
  store i32* null, i32** %67, align 8
  %68 = load i32*, i32** %26, align 8
  %69 = load %struct.section*, %struct.section** %25, align 8
  %70 = getelementptr inbounds %struct.section, %struct.section* %69, i32 0, i32 7
  store i32* %68, i32** %70, align 8
  %71 = load i64, i64* %19, align 8
  %72 = load %struct.section*, %struct.section** %25, align 8
  %73 = getelementptr inbounds %struct.section, %struct.section* %72, i32 0, i32 6
  store i64 %71, i64* %73, align 8
  %74 = load %struct.section*, %struct.section** %25, align 8
  %75 = getelementptr inbounds %struct.section, %struct.section* %74, i32 0, i32 3
  store i32 1, i32* %75, align 4
  %76 = load %struct.elfcopy*, %struct.elfcopy** %13, align 8
  %77 = load %struct.section*, %struct.section** %25, align 8
  %78 = call i32 @insert_to_sec_list(%struct.elfcopy* %76, %struct.section* %77, i32 1)
  %79 = load i32*, i32** %26, align 8
  %80 = call i32* @gelf_getshdr(i32* %79, %struct.TYPE_6__* %28)
  %81 = icmp eq i32* %80, null
  br i1 %81, label %82, label %86

82:                                               ; preds = %44
  %83 = load i32, i32* @EXIT_FAILURE, align 4
  %84 = call i32 @elf_errmsg(i32 -1)
  %85 = call i32 @errx(i32 %83, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %84)
  br label %86

86:                                               ; preds = %82, %44
  %87 = load i64, i64* %21, align 8
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 3
  store i64 %87, i64* %88, align 8
  %89 = load %struct.section*, %struct.section** %25, align 8
  %90 = getelementptr inbounds %struct.section, %struct.section* %89, i32 0, i32 6
  %91 = load i64, i64* %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 2
  store i64 %91, i64* %92, align 8
  %93 = load %struct.section*, %struct.section** %25, align 8
  %94 = getelementptr inbounds %struct.section, %struct.section* %93, i32 0, i32 5
  %95 = load i64, i64* %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 1
  store i64 %95, i64* %96, align 8
  %97 = load %struct.section*, %struct.section** %25, align 8
  %98 = getelementptr inbounds %struct.section, %struct.section* %97, i32 0, i32 4
  %99 = load i64, i64* %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  store i64 %99, i64* %100, align 8
  %101 = load i32*, i32** %26, align 8
  %102 = call i32 @gelf_update_shdr(i32* %101, %struct.TYPE_6__* %28)
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %108, label %104

104:                                              ; preds = %86
  %105 = load i32, i32* @EXIT_FAILURE, align 4
  %106 = call i32 @elf_errmsg(i32 -1)
  %107 = call i32 @errx(i32 %105, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i32 %106)
  br label %108

108:                                              ; preds = %104, %86
  %109 = load %struct.elfcopy*, %struct.elfcopy** %13, align 8
  %110 = load i8*, i8** %14, align 8
  %111 = call i32 @add_to_shstrtab(%struct.elfcopy* %109, i8* %110)
  %112 = load i8*, i8** %16, align 8
  %113 = icmp ne i8* %112, null
  br i1 %113, label %114, label %143

114:                                              ; preds = %108
  %115 = load i64, i64* %17, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %143

117:                                              ; preds = %114
  %118 = load i32*, i32** %26, align 8
  %119 = call %struct.TYPE_7__* @elf_newdata(i32* %118)
  store %struct.TYPE_7__* %119, %struct.TYPE_7__** %27, align 8
  %120 = icmp eq %struct.TYPE_7__* %119, null
  br i1 %120, label %121, label %125

121:                                              ; preds = %117
  %122 = load i32, i32* @EXIT_FAILURE, align 4
  %123 = call i32 @elf_errmsg(i32 -1)
  %124 = call i32 @errx(i32 %122, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i32 %123)
  br label %125

125:                                              ; preds = %121, %117
  %126 = load i64, i64* %22, align 8
  %127 = load %struct.TYPE_7__*, %struct.TYPE_7__** %27, align 8
  %128 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %127, i32 0, i32 5
  store i64 %126, i64* %128, align 8
  %129 = load %struct.TYPE_7__*, %struct.TYPE_7__** %27, align 8
  %130 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %129, i32 0, i32 4
  store i64 0, i64* %130, align 8
  %131 = load i8*, i8** %16, align 8
  %132 = load %struct.TYPE_7__*, %struct.TYPE_7__** %27, align 8
  %133 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %132, i32 0, i32 3
  store i8* %131, i8** %133, align 8
  %134 = load i64, i64* %17, align 8
  %135 = load %struct.TYPE_7__*, %struct.TYPE_7__** %27, align 8
  %136 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %135, i32 0, i32 2
  store i64 %134, i64* %136, align 8
  %137 = load i32, i32* %20, align 4
  %138 = load %struct.TYPE_7__*, %struct.TYPE_7__** %27, align 8
  %139 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %138, i32 0, i32 1
  store i32 %137, i32* %139, align 4
  %140 = load i32, i32* @EV_CURRENT, align 4
  %141 = load %struct.TYPE_7__*, %struct.TYPE_7__** %27, align 8
  %142 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %141, i32 0, i32 0
  store i32 %140, i32* %142, align 8
  br label %143

143:                                              ; preds = %125, %114, %108
  %144 = load i32, i32* @SYMTAB_INTACT, align 4
  %145 = xor i32 %144, -1
  %146 = load %struct.elfcopy*, %struct.elfcopy** %13, align 8
  %147 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = and i32 %148, %145
  store i32 %149, i32* %147, align 4
  %150 = load %struct.section*, %struct.section** %25, align 8
  ret %struct.section* %150
}

declare dso_local i32* @elf_newscn(i32) #1

declare dso_local i32 @errx(i32, i8*, i32) #1

declare dso_local i32 @elf_errmsg(i32) #1

declare dso_local %struct.section* @calloc(i32, i32) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @insert_to_sec_list(%struct.elfcopy*, %struct.section*, i32) #1

declare dso_local i32* @gelf_getshdr(i32*, %struct.TYPE_6__*) #1

declare dso_local i32 @gelf_update_shdr(i32*, %struct.TYPE_6__*) #1

declare dso_local i32 @add_to_shstrtab(%struct.elfcopy*, i8*) #1

declare dso_local %struct.TYPE_7__* @elf_newdata(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
