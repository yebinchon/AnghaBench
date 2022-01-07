; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/readelf/extr_readelf.c_dump_dwarf_line_decoded.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/readelf/extr_readelf.c_dump_dwarf_line_decoded.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.readelf = type { i32 }

@.str = private unnamed_addr constant [57 x i8] c"Decoded dump of debug contents of section .debug_line:\0A\0A\00", align 1
@DW_DLV_OK = common dso_local global i32 0, align 4
@DW_AT_name = common dso_local global i32 0, align 4
@DW_AT_comp_dir = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"CU: \00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%s/\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"%-37s %11s   %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"Filename\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"Line Number\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"Starting Address\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"%-37s %11ju %#18jx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.readelf*)* @dump_dwarf_line_decoded to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_dwarf_line_decoded(%struct.readelf* %0) #0 {
  %2 = alloca %struct.readelf*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8**, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.readelf* %0, %struct.readelf** %2, align 8
  %17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0))
  br label %18

18:                                               ; preds = %128, %82, %76, %32, %1
  %19 = load %struct.readelf*, %struct.readelf** %2, align 8
  %20 = getelementptr inbounds %struct.readelf, %struct.readelf* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @dwarf_next_cu_header(i32 %21, i32* null, i32* null, i32* null, i32* null, i32* null, i32* %11)
  store i32 %22, i32* %16, align 4
  %23 = load i32, i32* @DW_DLV_OK, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %130

25:                                               ; preds = %18
  %26 = load %struct.readelf*, %struct.readelf** %2, align 8
  %27 = getelementptr inbounds %struct.readelf, %struct.readelf* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @dwarf_siblingof(i32 %28, i32* null, i32* %3, i32* %11)
  %30 = load i32, i32* @DW_DLV_OK, align 4
  %31 = icmp ne i32 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %25
  br label %18

33:                                               ; preds = %25
  %34 = load i32, i32* %3, align 4
  %35 = load i32, i32* @DW_AT_name, align 4
  %36 = call i32 @dwarf_attrval_string(i32 %34, i32 %35, i8** %13, i32* %11)
  %37 = load i32, i32* @DW_DLV_OK, align 4
  %38 = icmp ne i32 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %33
  store i8* null, i8** %13, align 8
  br label %40

40:                                               ; preds = %39, %33
  %41 = load i32, i32* %3, align 4
  %42 = load i32, i32* @DW_AT_comp_dir, align 4
  %43 = call i32 @dwarf_attrval_string(i32 %41, i32 %42, i8** %12, i32* %11)
  %44 = load i32, i32* @DW_DLV_OK, align 4
  %45 = icmp ne i32 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %40
  store i8* null, i8** %12, align 8
  br label %47

47:                                               ; preds = %46, %40
  %48 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %49 = load i8*, i8** %12, align 8
  %50 = icmp ne i8* %49, null
  br i1 %50, label %51, label %63

51:                                               ; preds = %47
  %52 = load i8*, i8** %13, align 8
  %53 = icmp ne i8* %52, null
  br i1 %53, label %54, label %63

54:                                               ; preds = %51
  %55 = load i8*, i8** %13, align 8
  %56 = getelementptr inbounds i8, i8* %55, i64 0
  %57 = load i8, i8* %56, align 1
  %58 = sext i8 %57 to i32
  %59 = icmp ne i32 %58, 47
  br i1 %59, label %60, label %63

60:                                               ; preds = %54
  %61 = load i8*, i8** %12, align 8
  %62 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %61)
  br label %63

63:                                               ; preds = %60, %54, %51, %47
  %64 = load i8*, i8** %13, align 8
  %65 = icmp ne i8* %64, null
  br i1 %65, label %66, label %69

66:                                               ; preds = %63
  %67 = load i8*, i8** %13, align 8
  %68 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %67)
  br label %69

69:                                               ; preds = %66, %63
  %70 = call i32 @putchar(i8 signext 10)
  %71 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0))
  %72 = load i32, i32* %3, align 4
  %73 = call i32 @dwarf_srclines(i32 %72, i32** %4, i32* %7, i32* %11)
  %74 = load i32, i32* @DW_DLV_OK, align 4
  %75 = icmp ne i32 %73, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %69
  br label %18

77:                                               ; preds = %69
  %78 = load i32, i32* %3, align 4
  %79 = call i32 @dwarf_srcfiles(i32 %78, i8*** %14, i32* %8, i32* %11)
  %80 = load i32, i32* @DW_DLV_OK, align 4
  %81 = icmp ne i32 %79, %80
  br i1 %81, label %82, label %83

82:                                               ; preds = %77
  br label %18

83:                                               ; preds = %77
  store i32 0, i32* %15, align 4
  br label %84

84:                                               ; preds = %125, %83
  %85 = load i32, i32* %15, align 4
  %86 = load i32, i32* %7, align 4
  %87 = icmp slt i32 %85, %86
  br i1 %87, label %88, label %128

88:                                               ; preds = %84
  %89 = load i32*, i32** %4, align 8
  %90 = load i32, i32* %15, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %89, i64 %91
  %93 = load i32, i32* %92, align 4
  store i32 %93, i32* %5, align 4
  %94 = load i32, i32* %5, align 4
  %95 = call i32 @dwarf_line_srcfileno(i32 %94, i32* %10, i32* %11)
  %96 = load i32, i32* @DW_DLV_OK, align 4
  %97 = icmp ne i32 %95, %96
  br i1 %97, label %98, label %99

98:                                               ; preds = %88
  br label %125

99:                                               ; preds = %88
  %100 = load i32, i32* %5, align 4
  %101 = call i32 @dwarf_lineno(i32 %100, i32* %9, i32* %11)
  %102 = load i32, i32* @DW_DLV_OK, align 4
  %103 = icmp ne i32 %101, %102
  br i1 %103, label %104, label %105

104:                                              ; preds = %99
  br label %125

105:                                              ; preds = %99
  %106 = load i32, i32* %5, align 4
  %107 = call i32 @dwarf_lineaddr(i32 %106, i64* %6, i32* %11)
  %108 = load i32, i32* @DW_DLV_OK, align 4
  %109 = icmp ne i32 %107, %108
  br i1 %109, label %110, label %111

110:                                              ; preds = %105
  br label %125

111:                                              ; preds = %105
  %112 = load i8**, i8*** %14, align 8
  %113 = load i32, i32* %10, align 4
  %114 = sub nsw i32 %113, 1
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i8*, i8** %112, i64 %115
  %117 = load i8*, i8** %116, align 8
  %118 = call i8* @basename(i8* %117)
  %119 = load i32, i32* %9, align 4
  %120 = sext i32 %119 to i64
  %121 = inttoptr i64 %120 to i8*
  %122 = load i64, i64* %6, align 8
  %123 = inttoptr i64 %122 to i8*
  %124 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0), i8* %118, i8* %121, i8* %123)
  br label %125

125:                                              ; preds = %111, %110, %104, %98
  %126 = load i32, i32* %15, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %15, align 4
  br label %84

128:                                              ; preds = %84
  %129 = call i32 @putchar(i8 signext 10)
  br label %18

130:                                              ; preds = %18
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @dwarf_next_cu_header(i32, i32*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @dwarf_siblingof(i32, i32*, i32*, i32*) #1

declare dso_local i32 @dwarf_attrval_string(i32, i32, i8**, i32*) #1

declare dso_local i32 @putchar(i8 signext) #1

declare dso_local i32 @dwarf_srclines(i32, i32**, i32*, i32*) #1

declare dso_local i32 @dwarf_srcfiles(i32, i8***, i32*, i32*) #1

declare dso_local i32 @dwarf_line_srcfileno(i32, i32*, i32*) #1

declare dso_local i32 @dwarf_lineno(i32, i32*, i32*) #1

declare dso_local i32 @dwarf_lineaddr(i32, i64*, i32*) #1

declare dso_local i8* @basename(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
