; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_coffread.c_coff_locate_sections.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_coffread.c_coff_locate_sections.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.coff_symfile_info = type { %struct.stab_section_list*, i32*, i32, i32 }
%struct.stab_section_list = type { %struct.stab_section_list*, i32* }

@.str = private unnamed_addr constant [6 x i8] c".text\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c".stabstr\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c".stab\00", align 1
@xfree = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i8*)* @coff_locate_sections to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @coff_locate_sections(i32* %0, i32* %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.coff_symfile_info*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.stab_section_list*, align 8
  %11 = alloca %struct.stab_section_list**, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i8* %2, i8** %6, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = bitcast i8* %12 to %struct.coff_symfile_info*
  store %struct.coff_symfile_info* %13, %struct.coff_symfile_info** %7, align 8
  %14 = load i32*, i32** %4, align 8
  %15 = load i32*, i32** %5, align 8
  %16 = call i8* @bfd_get_section_name(i32* %14, i32* %15)
  store i8* %16, i8** %8, align 8
  %17 = load i8*, i8** %8, align 8
  %18 = call i64 @DEPRECATED_STREQ(i8* %17, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %35

20:                                               ; preds = %3
  %21 = load i32*, i32** %4, align 8
  %22 = load i32*, i32** %5, align 8
  %23 = call i32 @bfd_section_vma(i32* %21, i32* %22)
  %24 = load %struct.coff_symfile_info*, %struct.coff_symfile_info** %7, align 8
  %25 = getelementptr inbounds %struct.coff_symfile_info, %struct.coff_symfile_info* %24, i32 0, i32 3
  store i32 %23, i32* %25, align 4
  %26 = load i32*, i32** %4, align 8
  %27 = load i32*, i32** %5, align 8
  %28 = call i64 @bfd_section_size(i32* %26, i32* %27)
  %29 = load %struct.coff_symfile_info*, %struct.coff_symfile_info** %7, align 8
  %30 = getelementptr inbounds %struct.coff_symfile_info, %struct.coff_symfile_info* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = sext i32 %31 to i64
  %33 = add nsw i64 %32, %28
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %30, align 8
  br label %114

35:                                               ; preds = %3
  %36 = load i8*, i8** %8, align 8
  %37 = call i64 @strncmp(i8* %36, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 5)
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %49

39:                                               ; preds = %35
  %40 = load i32*, i32** %4, align 8
  %41 = load i32*, i32** %5, align 8
  %42 = call i64 @bfd_section_size(i32* %40, i32* %41)
  %43 = load %struct.coff_symfile_info*, %struct.coff_symfile_info** %7, align 8
  %44 = getelementptr inbounds %struct.coff_symfile_info, %struct.coff_symfile_info* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = sext i32 %45 to i64
  %47 = add nsw i64 %46, %42
  %48 = trunc i64 %47 to i32
  store i32 %48, i32* %44, align 8
  br label %113

49:                                               ; preds = %35
  %50 = load i8*, i8** %8, align 8
  %51 = call i64 @DEPRECATED_STREQ(i8* %50, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %49
  %54 = load i32*, i32** %5, align 8
  %55 = load %struct.coff_symfile_info*, %struct.coff_symfile_info** %7, align 8
  %56 = getelementptr inbounds %struct.coff_symfile_info, %struct.coff_symfile_info* %55, i32 0, i32 1
  store i32* %54, i32** %56, align 8
  br label %112

57:                                               ; preds = %49
  %58 = load i8*, i8** %8, align 8
  %59 = call i64 @strncmp(i8* %58, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 5)
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %61, label %111

61:                                               ; preds = %57
  %62 = load i8*, i8** %8, align 8
  %63 = getelementptr inbounds i8, i8* %62, i64 6
  %64 = getelementptr inbounds i8, i8* %63, i64 -1
  store i8* %64, i8** %9, align 8
  br label %65

65:                                               ; preds = %77, %61
  %66 = load i8*, i8** %9, align 8
  %67 = load i8, i8* %66, align 1
  %68 = sext i8 %67 to i32
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %80

70:                                               ; preds = %65
  %71 = load i8*, i8** %9, align 8
  %72 = load i8, i8* %71, align 1
  %73 = call i32 @isdigit(i8 signext %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %76, label %75

75:                                               ; preds = %70
  br label %80

76:                                               ; preds = %70
  br label %77

77:                                               ; preds = %76
  %78 = load i8*, i8** %9, align 8
  %79 = getelementptr inbounds i8, i8* %78, i32 1
  store i8* %79, i8** %9, align 8
  br label %65

80:                                               ; preds = %75, %65
  %81 = load i8*, i8** %9, align 8
  %82 = load i8, i8* %81, align 1
  %83 = sext i8 %82 to i32
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %110

85:                                               ; preds = %80
  %86 = call i64 @xmalloc(i32 16)
  %87 = inttoptr i64 %86 to %struct.stab_section_list*
  store %struct.stab_section_list* %87, %struct.stab_section_list** %10, align 8
  %88 = load i32*, i32** %5, align 8
  %89 = load %struct.stab_section_list*, %struct.stab_section_list** %10, align 8
  %90 = getelementptr inbounds %struct.stab_section_list, %struct.stab_section_list* %89, i32 0, i32 1
  store i32* %88, i32** %90, align 8
  %91 = load %struct.stab_section_list*, %struct.stab_section_list** %10, align 8
  %92 = getelementptr inbounds %struct.stab_section_list, %struct.stab_section_list* %91, i32 0, i32 0
  store %struct.stab_section_list* null, %struct.stab_section_list** %92, align 8
  %93 = load %struct.coff_symfile_info*, %struct.coff_symfile_info** %7, align 8
  %94 = getelementptr inbounds %struct.coff_symfile_info, %struct.coff_symfile_info* %93, i32 0, i32 0
  store %struct.stab_section_list** %94, %struct.stab_section_list*** %11, align 8
  br label %95

95:                                               ; preds = %100, %85
  %96 = load %struct.stab_section_list**, %struct.stab_section_list*** %11, align 8
  %97 = load %struct.stab_section_list*, %struct.stab_section_list** %96, align 8
  %98 = icmp ne %struct.stab_section_list* %97, null
  br i1 %98, label %99, label %104

99:                                               ; preds = %95
  br label %100

100:                                              ; preds = %99
  %101 = load %struct.stab_section_list**, %struct.stab_section_list*** %11, align 8
  %102 = load %struct.stab_section_list*, %struct.stab_section_list** %101, align 8
  %103 = getelementptr inbounds %struct.stab_section_list, %struct.stab_section_list* %102, i32 0, i32 0
  store %struct.stab_section_list** %103, %struct.stab_section_list*** %11, align 8
  br label %95

104:                                              ; preds = %95
  %105 = load %struct.stab_section_list*, %struct.stab_section_list** %10, align 8
  %106 = load %struct.stab_section_list**, %struct.stab_section_list*** %11, align 8
  store %struct.stab_section_list* %105, %struct.stab_section_list** %106, align 8
  %107 = load i32, i32* @xfree, align 4
  %108 = load %struct.stab_section_list*, %struct.stab_section_list** %10, align 8
  %109 = call i32 @make_cleanup(i32 %107, %struct.stab_section_list* %108)
  br label %110

110:                                              ; preds = %104, %80
  br label %111

111:                                              ; preds = %110, %57
  br label %112

112:                                              ; preds = %111, %53
  br label %113

113:                                              ; preds = %112, %39
  br label %114

114:                                              ; preds = %113, %20
  ret void
}

declare dso_local i8* @bfd_get_section_name(i32*, i32*) #1

declare dso_local i64 @DEPRECATED_STREQ(i8*, i8*) #1

declare dso_local i32 @bfd_section_vma(i32*, i32*) #1

declare dso_local i64 @bfd_section_size(i32*, i32*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @isdigit(i8 signext) #1

declare dso_local i64 @xmalloc(i32) #1

declare dso_local i32 @make_cleanup(i32, %struct.stab_section_list*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
