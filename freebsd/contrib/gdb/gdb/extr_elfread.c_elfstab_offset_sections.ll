; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_elfread.c_elfstab_offset_sections.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_elfread.c_elfstab_offset_sections.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.objfile = type { i32, i32, %struct.dbx_symfile_info* }
%struct.dbx_symfile_info = type { %struct.stab_section_info* }
%struct.stab_section_info = type { i8*, i64, i32, i32*, %struct.stab_section_info* }
%struct.partial_symtab = type { i8*, %struct.section_offsets* }
%struct.section_offsets = type { i32* }

@symfile_complaints = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"elf/stab section information questionable for %s\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"elf/stab section information missing for %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @elfstab_offset_sections(%struct.objfile* %0, %struct.partial_symtab* %1) #0 {
  %3 = alloca %struct.objfile*, align 8
  %4 = alloca %struct.partial_symtab*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.dbx_symfile_info*, align 8
  %7 = alloca %struct.stab_section_info*, align 8
  %8 = alloca %struct.stab_section_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store %struct.objfile* %0, %struct.objfile** %3, align 8
  store %struct.partial_symtab* %1, %struct.partial_symtab** %4, align 8
  %11 = load %struct.partial_symtab*, %struct.partial_symtab** %4, align 8
  %12 = getelementptr inbounds %struct.partial_symtab, %struct.partial_symtab* %11, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  store i8* %13, i8** %5, align 8
  %14 = load %struct.objfile*, %struct.objfile** %3, align 8
  %15 = getelementptr inbounds %struct.objfile, %struct.objfile* %14, i32 0, i32 2
  %16 = load %struct.dbx_symfile_info*, %struct.dbx_symfile_info** %15, align 8
  store %struct.dbx_symfile_info* %16, %struct.dbx_symfile_info** %6, align 8
  %17 = load %struct.dbx_symfile_info*, %struct.dbx_symfile_info** %6, align 8
  %18 = getelementptr inbounds %struct.dbx_symfile_info, %struct.dbx_symfile_info* %17, i32 0, i32 0
  %19 = load %struct.stab_section_info*, %struct.stab_section_info** %18, align 8
  store %struct.stab_section_info* %19, %struct.stab_section_info** %7, align 8
  store %struct.stab_section_info* null, %struct.stab_section_info** %8, align 8
  br label %20

20:                                               ; preds = %24, %2
  %21 = load i8*, i8** %5, align 8
  %22 = call i8* @strchr(i8* %21, i8 signext 47)
  store i8* %22, i8** %10, align 8
  %23 = icmp ne i8* null, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %20
  %25 = load i8*, i8** %10, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 1
  store i8* %26, i8** %5, align 8
  br label %20

27:                                               ; preds = %20
  br label %28

28:                                               ; preds = %59, %27
  %29 = load %struct.stab_section_info*, %struct.stab_section_info** %7, align 8
  %30 = icmp ne %struct.stab_section_info* %29, null
  br i1 %30, label %31, label %63

31:                                               ; preds = %28
  %32 = load i8*, i8** %5, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 0
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = load %struct.stab_section_info*, %struct.stab_section_info** %7, align 8
  %37 = getelementptr inbounds %struct.stab_section_info, %struct.stab_section_info* %36, i32 0, i32 0
  %38 = load i8*, i8** %37, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 0
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp eq i32 %35, %41
  br i1 %42, label %43, label %58

43:                                               ; preds = %31
  %44 = load i8*, i8** %5, align 8
  %45 = load %struct.stab_section_info*, %struct.stab_section_info** %7, align 8
  %46 = getelementptr inbounds %struct.stab_section_info, %struct.stab_section_info* %45, i32 0, i32 0
  %47 = load i8*, i8** %46, align 8
  %48 = call i64 @strcmp(i8* %44, i8* %47)
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %58

50:                                               ; preds = %43
  %51 = load %struct.stab_section_info*, %struct.stab_section_info** %7, align 8
  %52 = getelementptr inbounds %struct.stab_section_info, %struct.stab_section_info* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = icmp eq i64 0, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %50
  br label %63

56:                                               ; preds = %50
  %57 = load %struct.stab_section_info*, %struct.stab_section_info** %7, align 8
  store %struct.stab_section_info* %57, %struct.stab_section_info** %8, align 8
  br label %58

58:                                               ; preds = %56, %43, %31
  br label %59

59:                                               ; preds = %58
  %60 = load %struct.stab_section_info*, %struct.stab_section_info** %7, align 8
  %61 = getelementptr inbounds %struct.stab_section_info, %struct.stab_section_info* %60, i32 0, i32 4
  %62 = load %struct.stab_section_info*, %struct.stab_section_info** %61, align 8
  store %struct.stab_section_info* %62, %struct.stab_section_info** %7, align 8
  br label %28

63:                                               ; preds = %55, %28
  %64 = load %struct.stab_section_info*, %struct.stab_section_info** %7, align 8
  %65 = icmp eq %struct.stab_section_info* %64, null
  br i1 %65, label %66, label %73

66:                                               ; preds = %63
  %67 = load %struct.stab_section_info*, %struct.stab_section_info** %8, align 8
  %68 = icmp ne %struct.stab_section_info* %67, null
  br i1 %68, label %69, label %73

69:                                               ; preds = %66
  %70 = load i8*, i8** %5, align 8
  %71 = call i32 @complaint(i32* @symfile_complaints, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i8* %70)
  %72 = load %struct.stab_section_info*, %struct.stab_section_info** %8, align 8
  store %struct.stab_section_info* %72, %struct.stab_section_info** %7, align 8
  br label %73

73:                                               ; preds = %69, %66, %63
  %74 = load %struct.stab_section_info*, %struct.stab_section_info** %7, align 8
  %75 = icmp ne %struct.stab_section_info* %74, null
  br i1 %75, label %76, label %117

76:                                               ; preds = %73
  %77 = load %struct.stab_section_info*, %struct.stab_section_info** %7, align 8
  %78 = getelementptr inbounds %struct.stab_section_info, %struct.stab_section_info* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = add nsw i64 %79, 1
  store i64 %80, i64* %78, align 8
  %81 = load %struct.objfile*, %struct.objfile** %3, align 8
  %82 = getelementptr inbounds %struct.objfile, %struct.objfile* %81, i32 0, i32 1
  %83 = load %struct.objfile*, %struct.objfile** %3, align 8
  %84 = getelementptr inbounds %struct.objfile, %struct.objfile* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @SIZEOF_N_SECTION_OFFSETS(i32 %85)
  %87 = call i64 @obstack_alloc(i32* %82, i32 %86)
  %88 = inttoptr i64 %87 to %struct.section_offsets*
  %89 = load %struct.partial_symtab*, %struct.partial_symtab** %4, align 8
  %90 = getelementptr inbounds %struct.partial_symtab, %struct.partial_symtab* %89, i32 0, i32 1
  store %struct.section_offsets* %88, %struct.section_offsets** %90, align 8
  store i32 0, i32* %9, align 4
  br label %91

91:                                               ; preds = %113, %76
  %92 = load i32, i32* %9, align 4
  %93 = load %struct.stab_section_info*, %struct.stab_section_info** %7, align 8
  %94 = getelementptr inbounds %struct.stab_section_info, %struct.stab_section_info* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = icmp slt i32 %92, %95
  br i1 %96, label %97, label %116

97:                                               ; preds = %91
  %98 = load %struct.stab_section_info*, %struct.stab_section_info** %7, align 8
  %99 = getelementptr inbounds %struct.stab_section_info, %struct.stab_section_info* %98, i32 0, i32 3
  %100 = load i32*, i32** %99, align 8
  %101 = load i32, i32* %9, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %100, i64 %102
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.partial_symtab*, %struct.partial_symtab** %4, align 8
  %106 = getelementptr inbounds %struct.partial_symtab, %struct.partial_symtab* %105, i32 0, i32 1
  %107 = load %struct.section_offsets*, %struct.section_offsets** %106, align 8
  %108 = getelementptr inbounds %struct.section_offsets, %struct.section_offsets* %107, i32 0, i32 0
  %109 = load i32*, i32** %108, align 8
  %110 = load i32, i32* %9, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %109, i64 %111
  store i32 %104, i32* %112, align 4
  br label %113

113:                                              ; preds = %97
  %114 = load i32, i32* %9, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %9, align 4
  br label %91

116:                                              ; preds = %91
  br label %125

117:                                              ; preds = %73
  %118 = load %struct.dbx_symfile_info*, %struct.dbx_symfile_info** %6, align 8
  %119 = getelementptr inbounds %struct.dbx_symfile_info, %struct.dbx_symfile_info* %118, i32 0, i32 0
  %120 = load %struct.stab_section_info*, %struct.stab_section_info** %119, align 8
  %121 = icmp ne %struct.stab_section_info* %120, null
  br i1 %121, label %122, label %125

122:                                              ; preds = %117
  %123 = load i8*, i8** %5, align 8
  %124 = call i32 @complaint(i32* @symfile_complaints, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i8* %123)
  br label %125

125:                                              ; preds = %116, %122, %117
  ret void
}

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @complaint(i32*, i8*, i8*) #1

declare dso_local i64 @obstack_alloc(i32*, i32) #1

declare dso_local i32 @SIZEOF_N_SECTION_OFFSETS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
