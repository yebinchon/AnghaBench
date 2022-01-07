; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_dwarf2read.c_dwarf_decode_macros.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_dwarf2read.c_dwarf_decode_macros.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.line_header = type { i32 }
%struct.dwarf2_cu = type { i32 }
%struct.macro_source_file = type { %struct.macro_source_file* }

@dwarf_macinfo_buffer = common dso_local global i8* null, align 8
@symfile_complaints = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"missing .debug_macinfo section\00", align 1
@dwarf_macinfo_size = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"debug info gives macro %s outside of any file: %s\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"definition\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"undefinition\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"something-or-other\00", align 1
@.str.5 = private unnamed_addr constant [57 x i8] c"macro debug info has an unmatched `close_file' directive\00", align 1
@.str.6 = private unnamed_addr constant [67 x i8] c"no terminating 0-type entry for macros in `.debug_macinfo' section\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.line_header*, i32, i8*, i32*, %struct.dwarf2_cu*)* @dwarf_decode_macros to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dwarf_decode_macros(%struct.line_header* %0, i32 %1, i8* %2, i32* %3, %struct.dwarf2_cu* %4) #0 {
  %6 = alloca %struct.line_header*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.dwarf2_cu*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.macro_source_file*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i8*, align 8
  store %struct.line_header* %0, %struct.line_header** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32* %3, i32** %9, align 8
  store %struct.dwarf2_cu* %4, %struct.dwarf2_cu** %10, align 8
  store %struct.macro_source_file* null, %struct.macro_source_file** %13, align 8
  %25 = load i8*, i8** @dwarf_macinfo_buffer, align 8
  %26 = icmp eq i8* %25, null
  br i1 %26, label %27, label %29

27:                                               ; preds = %5
  %28 = call i32 (i32*, i8*, ...) @complaint(i32* @symfile_complaints, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %169

29:                                               ; preds = %5
  %30 = load i8*, i8** @dwarf_macinfo_buffer, align 8
  %31 = load i32, i32* %7, align 4
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds i8, i8* %30, i64 %32
  store i8* %33, i8** %11, align 8
  %34 = load i8*, i8** @dwarf_macinfo_buffer, align 8
  %35 = load i32, i32* @dwarf_macinfo_size, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i8, i8* %34, i64 %36
  store i8* %37, i8** %12, align 8
  br label %38

38:                                               ; preds = %168, %29
  %39 = load i8*, i8** %11, align 8
  %40 = load i8*, i8** %12, align 8
  %41 = icmp uge i8* %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %38
  %43 = call i32 (...) @dwarf2_macros_too_long_complaint()
  br label %169

44:                                               ; preds = %38
  %45 = load i32*, i32** %9, align 8
  %46 = load i8*, i8** %11, align 8
  %47 = call i32 @read_1_byte(i32* %45, i8* %46)
  store i32 %47, i32* %14, align 4
  %48 = load i8*, i8** %11, align 8
  %49 = getelementptr inbounds i8, i8* %48, i32 1
  store i8* %49, i8** %11, align 8
  %50 = load i32, i32* %14, align 4
  switch i32 %50, label %168 [
    i32 0, label %51
    i32 132, label %52
    i32 129, label %52
    i32 130, label %101
    i32 131, label %125
    i32 128, label %153
  ]

51:                                               ; preds = %44
  br label %169

52:                                               ; preds = %44, %44
  %53 = load i32*, i32** %9, align 8
  %54 = load i8*, i8** %11, align 8
  %55 = call i32 @read_unsigned_leb128(i32* %53, i8* %54, i32* %15)
  store i32 %55, i32* %16, align 4
  %56 = load i32, i32* %15, align 4
  %57 = load i8*, i8** %11, align 8
  %58 = sext i32 %56 to i64
  %59 = getelementptr inbounds i8, i8* %57, i64 %58
  store i8* %59, i8** %11, align 8
  %60 = load i32*, i32** %9, align 8
  %61 = load i8*, i8** %11, align 8
  %62 = call i8* @read_string(i32* %60, i8* %61, i32* %15)
  store i8* %62, i8** %17, align 8
  %63 = load i32, i32* %15, align 4
  %64 = load i8*, i8** %11, align 8
  %65 = sext i32 %63 to i64
  %66 = getelementptr inbounds i8, i8* %64, i64 %65
  store i8* %66, i8** %11, align 8
  %67 = load %struct.macro_source_file*, %struct.macro_source_file** %13, align 8
  %68 = icmp ne %struct.macro_source_file* %67, null
  br i1 %68, label %82, label %69

69:                                               ; preds = %52
  %70 = load i32, i32* %14, align 4
  %71 = icmp eq i32 %70, 132
  br i1 %71, label %72, label %73

72:                                               ; preds = %69
  br label %78

73:                                               ; preds = %69
  %74 = load i32, i32* %14, align 4
  %75 = icmp eq i32 %74, 129
  %76 = zext i1 %75 to i64
  %77 = select i1 %75, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0)
  br label %78

78:                                               ; preds = %73, %72
  %79 = phi i8* [ getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), %72 ], [ %77, %73 ]
  %80 = load i8*, i8** %17, align 8
  %81 = call i32 (i32*, i8*, ...) @complaint(i32* @symfile_complaints, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i8* %79, i8* %80)
  br label %100

82:                                               ; preds = %52
  %83 = load i32, i32* %14, align 4
  %84 = icmp eq i32 %83, 132
  br i1 %84, label %85, label %90

85:                                               ; preds = %82
  %86 = load %struct.macro_source_file*, %struct.macro_source_file** %13, align 8
  %87 = load i32, i32* %16, align 4
  %88 = load i8*, i8** %17, align 8
  %89 = call i32 @parse_macro_definition(%struct.macro_source_file* %86, i32 %87, i8* %88)
  br label %99

90:                                               ; preds = %82
  %91 = load i32, i32* %14, align 4
  %92 = icmp eq i32 %91, 129
  br i1 %92, label %93, label %98

93:                                               ; preds = %90
  %94 = load %struct.macro_source_file*, %struct.macro_source_file** %13, align 8
  %95 = load i32, i32* %16, align 4
  %96 = load i8*, i8** %17, align 8
  %97 = call i32 @macro_undef(%struct.macro_source_file* %94, i32 %95, i8* %96)
  br label %98

98:                                               ; preds = %93, %90
  br label %99

99:                                               ; preds = %98, %85
  br label %100

100:                                              ; preds = %99, %78
  br label %168

101:                                              ; preds = %44
  %102 = load i32*, i32** %9, align 8
  %103 = load i8*, i8** %11, align 8
  %104 = call i32 @read_unsigned_leb128(i32* %102, i8* %103, i32* %18)
  store i32 %104, i32* %19, align 4
  %105 = load i32, i32* %18, align 4
  %106 = load i8*, i8** %11, align 8
  %107 = sext i32 %105 to i64
  %108 = getelementptr inbounds i8, i8* %106, i64 %107
  store i8* %108, i8** %11, align 8
  %109 = load i32*, i32** %9, align 8
  %110 = load i8*, i8** %11, align 8
  %111 = call i32 @read_unsigned_leb128(i32* %109, i8* %110, i32* %18)
  store i32 %111, i32* %20, align 4
  %112 = load i32, i32* %18, align 4
  %113 = load i8*, i8** %11, align 8
  %114 = sext i32 %112 to i64
  %115 = getelementptr inbounds i8, i8* %113, i64 %114
  store i8* %115, i8** %11, align 8
  %116 = load i32, i32* %20, align 4
  %117 = load i32, i32* %19, align 4
  %118 = load %struct.macro_source_file*, %struct.macro_source_file** %13, align 8
  %119 = load i8*, i8** %8, align 8
  %120 = load %struct.line_header*, %struct.line_header** %6, align 8
  %121 = load %struct.dwarf2_cu*, %struct.dwarf2_cu** %10, align 8
  %122 = getelementptr inbounds %struct.dwarf2_cu, %struct.dwarf2_cu* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = call %struct.macro_source_file* @macro_start_file(i32 %116, i32 %117, %struct.macro_source_file* %118, i8* %119, %struct.line_header* %120, i32 %123)
  store %struct.macro_source_file* %124, %struct.macro_source_file** %13, align 8
  br label %168

125:                                              ; preds = %44
  %126 = load %struct.macro_source_file*, %struct.macro_source_file** %13, align 8
  %127 = icmp ne %struct.macro_source_file* %126, null
  br i1 %127, label %130, label %128

128:                                              ; preds = %125
  %129 = call i32 (i32*, i8*, ...) @complaint(i32* @symfile_complaints, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.5, i64 0, i64 0))
  br label %152

130:                                              ; preds = %125
  %131 = load %struct.macro_source_file*, %struct.macro_source_file** %13, align 8
  %132 = getelementptr inbounds %struct.macro_source_file, %struct.macro_source_file* %131, i32 0, i32 0
  %133 = load %struct.macro_source_file*, %struct.macro_source_file** %132, align 8
  store %struct.macro_source_file* %133, %struct.macro_source_file** %13, align 8
  %134 = load %struct.macro_source_file*, %struct.macro_source_file** %13, align 8
  %135 = icmp ne %struct.macro_source_file* %134, null
  br i1 %135, label %151, label %136

136:                                              ; preds = %130
  %137 = load i8*, i8** %11, align 8
  %138 = load i8*, i8** %12, align 8
  %139 = icmp uge i8* %137, %138
  br i1 %139, label %140, label %142

140:                                              ; preds = %136
  %141 = call i32 (...) @dwarf2_macros_too_long_complaint()
  br label %169

142:                                              ; preds = %136
  %143 = load i32*, i32** %9, align 8
  %144 = load i8*, i8** %11, align 8
  %145 = call i32 @read_1_byte(i32* %143, i8* %144)
  store i32 %145, i32* %21, align 4
  %146 = load i32, i32* %21, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %150

148:                                              ; preds = %142
  %149 = call i32 (i32*, i8*, ...) @complaint(i32* @symfile_complaints, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.6, i64 0, i64 0))
  br label %150

150:                                              ; preds = %148, %142
  br label %169

151:                                              ; preds = %130
  br label %152

152:                                              ; preds = %151, %128
  br label %168

153:                                              ; preds = %44
  %154 = load i32*, i32** %9, align 8
  %155 = load i8*, i8** %11, align 8
  %156 = call i32 @read_unsigned_leb128(i32* %154, i8* %155, i32* %22)
  store i32 %156, i32* %23, align 4
  %157 = load i32, i32* %22, align 4
  %158 = load i8*, i8** %11, align 8
  %159 = sext i32 %157 to i64
  %160 = getelementptr inbounds i8, i8* %158, i64 %159
  store i8* %160, i8** %11, align 8
  %161 = load i32*, i32** %9, align 8
  %162 = load i8*, i8** %11, align 8
  %163 = call i8* @read_string(i32* %161, i8* %162, i32* %22)
  store i8* %163, i8** %24, align 8
  %164 = load i32, i32* %22, align 4
  %165 = load i8*, i8** %11, align 8
  %166 = sext i32 %164 to i64
  %167 = getelementptr inbounds i8, i8* %165, i64 %166
  store i8* %167, i8** %11, align 8
  br label %168

168:                                              ; preds = %44, %153, %152, %101, %100
  br label %38

169:                                              ; preds = %150, %140, %51, %42, %27
  ret void
}

declare dso_local i32 @complaint(i32*, i8*, ...) #1

declare dso_local i32 @dwarf2_macros_too_long_complaint(...) #1

declare dso_local i32 @read_1_byte(i32*, i8*) #1

declare dso_local i32 @read_unsigned_leb128(i32*, i8*, i32*) #1

declare dso_local i8* @read_string(i32*, i8*, i32*) #1

declare dso_local i32 @parse_macro_definition(%struct.macro_source_file*, i32, i8*) #1

declare dso_local i32 @macro_undef(%struct.macro_source_file*, i32, i8*) #1

declare dso_local %struct.macro_source_file* @macro_start_file(i32, i32, %struct.macro_source_file*, i8*, %struct.line_header*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
