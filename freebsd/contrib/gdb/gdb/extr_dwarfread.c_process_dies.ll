; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_dwarfread.c_process_dies.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_dwarfread.c_process_dies.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.objfile = type { i32 }
%struct.dieinfo = type { i64, i32, i64, i32, i8*, i8* }

@SIZEOF_DIE_LENGTH = common dso_local global i64 0, align 8
@TAG_padding = common dso_local global i32 0, align 4
@dbbase = common dso_local global i32 0, align 4
@dbroff = common dso_local global i32 0, align 4
@current_subfile = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, %struct.objfile*)* @process_dies to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_dies(i8* %0, i8* %1, %struct.objfile* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.objfile*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.dieinfo, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.objfile* %2, %struct.objfile** %6, align 8
  br label %9

9:                                                ; preds = %118, %3
  %10 = load i8*, i8** %4, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = icmp ult i8* %10, %11
  br i1 %12, label %13, label %120

13:                                               ; preds = %9
  %14 = load i8*, i8** %4, align 8
  %15 = load %struct.objfile*, %struct.objfile** %6, align 8
  %16 = call i32 @basicdieinfo(%struct.dieinfo* %8, i8* %14, %struct.objfile* %15)
  %17 = getelementptr inbounds %struct.dieinfo, %struct.dieinfo* %8, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @SIZEOF_DIE_LENGTH, align 8
  %20 = icmp slt i64 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %13
  br label %120

22:                                               ; preds = %13
  %23 = getelementptr inbounds %struct.dieinfo, %struct.dieinfo* %8, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @TAG_padding, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %32

27:                                               ; preds = %22
  %28 = load i8*, i8** %4, align 8
  %29 = getelementptr inbounds %struct.dieinfo, %struct.dieinfo* %8, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = getelementptr inbounds i8, i8* %28, i64 %30
  store i8* %31, i8** %7, align 8
  br label %117

32:                                               ; preds = %22
  %33 = load %struct.objfile*, %struct.objfile** %6, align 8
  %34 = call i32 @completedieinfo(%struct.dieinfo* %8, %struct.objfile* %33)
  %35 = getelementptr inbounds %struct.dieinfo, %struct.dieinfo* %8, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %48

38:                                               ; preds = %32
  %39 = load i32, i32* @dbbase, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.dieinfo, %struct.dieinfo* %8, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = add nsw i64 %40, %42
  %44 = load i32, i32* @dbroff, align 4
  %45 = sext i32 %44 to i64
  %46 = sub nsw i64 %43, %45
  %47 = inttoptr i64 %46 to i8*
  store i8* %47, i8** %7, align 8
  br label %53

48:                                               ; preds = %32
  %49 = load i8*, i8** %4, align 8
  %50 = getelementptr inbounds %struct.dieinfo, %struct.dieinfo* %8, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = getelementptr inbounds i8, i8* %49, i64 %51
  store i8* %52, i8** %7, align 8
  br label %53

53:                                               ; preds = %48, %38
  %54 = getelementptr inbounds %struct.dieinfo, %struct.dieinfo* %8, i32 0, i32 5
  %55 = load i8*, i8** %54, align 8
  %56 = call i8* @SMASH_TEXT_ADDRESS(i8* %55)
  %57 = getelementptr inbounds %struct.dieinfo, %struct.dieinfo* %8, i32 0, i32 5
  store i8* %56, i8** %57, align 8
  %58 = getelementptr inbounds %struct.dieinfo, %struct.dieinfo* %8, i32 0, i32 4
  %59 = load i8*, i8** %58, align 8
  %60 = call i8* @SMASH_TEXT_ADDRESS(i8* %59)
  %61 = getelementptr inbounds %struct.dieinfo, %struct.dieinfo* %8, i32 0, i32 4
  store i8* %60, i8** %61, align 8
  %62 = getelementptr inbounds %struct.dieinfo, %struct.dieinfo* %8, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  switch i32 %63, label %113 [
    i32 137, label %64
    i32 135, label %78
    i32 130, label %78
    i32 134, label %88
    i32 138, label %93
    i32 131, label %93
    i32 128, label %93
    i32 136, label %98
    i32 129, label %103
    i32 139, label %107
    i32 133, label %109
    i32 132, label %111
  ]

64:                                               ; preds = %53
  %65 = load i32*, i32** @current_subfile, align 8
  %66 = icmp eq i32* %65, null
  br i1 %66, label %67, label %72

67:                                               ; preds = %64
  %68 = load i8*, i8** %4, align 8
  %69 = load i8*, i8** %7, align 8
  %70 = load %struct.objfile*, %struct.objfile** %6, align 8
  %71 = call i32 @read_file_scope(%struct.dieinfo* %8, i8* %68, i8* %69, %struct.objfile* %70)
  br label %77

72:                                               ; preds = %64
  %73 = load i8*, i8** %4, align 8
  %74 = getelementptr inbounds %struct.dieinfo, %struct.dieinfo* %8, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = getelementptr inbounds i8, i8* %73, i64 %75
  store i8* %76, i8** %7, align 8
  br label %77

77:                                               ; preds = %72, %67
  br label %116

78:                                               ; preds = %53, %53
  %79 = getelementptr inbounds %struct.dieinfo, %struct.dieinfo* %8, i32 0, i32 3
  %80 = load i32, i32* %79, align 8
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %87

82:                                               ; preds = %78
  %83 = load i8*, i8** %4, align 8
  %84 = load i8*, i8** %7, align 8
  %85 = load %struct.objfile*, %struct.objfile** %6, align 8
  %86 = call i32 @read_func_scope(%struct.dieinfo* %8, i8* %83, i8* %84, %struct.objfile* %85)
  br label %87

87:                                               ; preds = %82, %78
  br label %116

88:                                               ; preds = %53
  %89 = load i8*, i8** %4, align 8
  %90 = load i8*, i8** %7, align 8
  %91 = load %struct.objfile*, %struct.objfile** %6, align 8
  %92 = call i32 @read_lexical_block_scope(%struct.dieinfo* %8, i8* %89, i8* %90, %struct.objfile* %91)
  br label %116

93:                                               ; preds = %53, %53, %53
  %94 = load i8*, i8** %4, align 8
  %95 = load i8*, i8** %7, align 8
  %96 = load %struct.objfile*, %struct.objfile** %6, align 8
  %97 = call i32 @read_structure_scope(%struct.dieinfo* %8, i8* %94, i8* %95, %struct.objfile* %96)
  br label %116

98:                                               ; preds = %53
  %99 = load i8*, i8** %4, align 8
  %100 = load i8*, i8** %7, align 8
  %101 = load %struct.objfile*, %struct.objfile** %6, align 8
  %102 = call i32 @read_enumeration(%struct.dieinfo* %8, i8* %99, i8* %100, %struct.objfile* %101)
  br label %116

103:                                              ; preds = %53
  %104 = load i8*, i8** %4, align 8
  %105 = load i8*, i8** %7, align 8
  %106 = call i32 @read_subroutine_type(%struct.dieinfo* %8, i8* %104, i8* %105)
  br label %116

107:                                              ; preds = %53
  %108 = call i32 @dwarf_read_array_type(%struct.dieinfo* %8)
  br label %116

109:                                              ; preds = %53
  %110 = call i32 @read_tag_pointer_type(%struct.dieinfo* %8)
  br label %116

111:                                              ; preds = %53
  %112 = call i32 @read_tag_string_type(%struct.dieinfo* %8)
  br label %116

113:                                              ; preds = %53
  %114 = load %struct.objfile*, %struct.objfile** %6, align 8
  %115 = call i32 @new_symbol(%struct.dieinfo* %8, %struct.objfile* %114)
  br label %116

116:                                              ; preds = %113, %111, %109, %107, %103, %98, %93, %88, %87, %77
  br label %117

117:                                              ; preds = %116, %27
  br label %118

118:                                              ; preds = %117
  %119 = load i8*, i8** %7, align 8
  store i8* %119, i8** %4, align 8
  br label %9

120:                                              ; preds = %21, %9
  ret void
}

declare dso_local i32 @basicdieinfo(%struct.dieinfo*, i8*, %struct.objfile*) #1

declare dso_local i32 @completedieinfo(%struct.dieinfo*, %struct.objfile*) #1

declare dso_local i8* @SMASH_TEXT_ADDRESS(i8*) #1

declare dso_local i32 @read_file_scope(%struct.dieinfo*, i8*, i8*, %struct.objfile*) #1

declare dso_local i32 @read_func_scope(%struct.dieinfo*, i8*, i8*, %struct.objfile*) #1

declare dso_local i32 @read_lexical_block_scope(%struct.dieinfo*, i8*, i8*, %struct.objfile*) #1

declare dso_local i32 @read_structure_scope(%struct.dieinfo*, i8*, i8*, %struct.objfile*) #1

declare dso_local i32 @read_enumeration(%struct.dieinfo*, i8*, i8*, %struct.objfile*) #1

declare dso_local i32 @read_subroutine_type(%struct.dieinfo*, i8*, i8*) #1

declare dso_local i32 @dwarf_read_array_type(%struct.dieinfo*) #1

declare dso_local i32 @read_tag_pointer_type(%struct.dieinfo*) #1

declare dso_local i32 @read_tag_string_type(%struct.dieinfo*) #1

declare dso_local i32 @new_symbol(%struct.dieinfo*, %struct.objfile*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
