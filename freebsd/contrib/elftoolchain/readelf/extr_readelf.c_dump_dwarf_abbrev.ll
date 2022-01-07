; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/readelf/extr_readelf.c_dump_dwarf_abbrev.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/readelf/extr_readelf.c_dump_dwarf_abbrev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.readelf = type { i32 }

@.str = private unnamed_addr constant [38 x i8] c"\0AContents of section .debug_abbrev:\0A\0A\00", align 1
@DW_DLV_OK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"  Number TAG\0A\00", align 1
@DW_DLA_ABBREV = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"%4d\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"dwarf_get_abbrev_tag failed: %s\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"[Unknown Tag: %#x]\00", align 1
@.str.5 = private unnamed_addr constant [42 x i8] c"dwarf_get_abbrev_children_flag failed: %s\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"      %s    %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"[has children]\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"[no children]\00", align 1
@.str.9 = private unnamed_addr constant [34 x i8] c"dwarf_get_abbrev_entry failed: %s\00", align 1
@.str.10 = private unnamed_addr constant [18 x i8] c"[Unknown AT: %#x]\00", align 1
@.str.11 = private unnamed_addr constant [20 x i8] c"[Unknown Form: %#x]\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"    %-18s %s\0A\00", align 1
@.str.13 = private unnamed_addr constant [21 x i8] c"dwarf_get_abbrev: %s\00", align 1
@DW_DLV_ERROR = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [25 x i8] c"dwarf_next_cu_header: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.readelf*)* @dump_dwarf_abbrev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_dwarf_abbrev(%struct.readelf* %0) #0 {
  %2 = alloca %struct.readelf*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca [32 x i8], align 16
  %17 = alloca [32 x i8], align 16
  %18 = alloca [32 x i8], align 16
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.readelf* %0, %struct.readelf** %2, align 8
  %22 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  br label %23

23:                                               ; preds = %150, %1
  %24 = load %struct.readelf*, %struct.readelf** %2, align 8
  %25 = getelementptr inbounds %struct.readelf, %struct.readelf* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @dwarf_next_cu_header(i32 %26, i32* null, i32* null, i32* %4, i32* null, i32* null, i32* %12)
  store i32 %27, i32* %21, align 4
  %28 = load i32, i32* @DW_DLV_OK, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %151

30:                                               ; preds = %23
  %31 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %19, align 4
  br label %32

32:                                               ; preds = %135, %30
  %33 = load %struct.readelf*, %struct.readelf** %2, align 8
  %34 = getelementptr inbounds %struct.readelf, %struct.readelf* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %4, align 4
  %37 = call i32 @dwarf_get_abbrev(i32 %35, i32 %36, i32* %3, i32* %6, i32* %7, i32* %12)
  store i32 %37, i32* %21, align 4
  %38 = load i32, i32* @DW_DLV_OK, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %142

40:                                               ; preds = %32
  %41 = load i32, i32* %6, align 4
  %42 = icmp eq i32 %41, 1
  br i1 %42, label %43, label %50

43:                                               ; preds = %40
  %44 = load %struct.readelf*, %struct.readelf** %2, align 8
  %45 = getelementptr inbounds %struct.readelf, %struct.readelf* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %3, align 4
  %48 = load i32, i32* @DW_DLA_ABBREV, align 4
  %49 = call i32 @dwarf_dealloc(i32 %46, i32 %47, i32 %48)
  br label %142

50:                                               ; preds = %40
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* %4, align 4
  %53 = add nsw i32 %52, %51
  store i32 %53, i32* %4, align 4
  %54 = load i32, i32* %19, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %19, align 4
  %56 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %55)
  %57 = load i32, i32* %3, align 4
  %58 = call i32 @dwarf_get_abbrev_tag(i32 %57, i32* %10, i32* %12)
  %59 = load i32, i32* @DW_DLV_OK, align 4
  %60 = icmp ne i32 %58, %59
  br i1 %60, label %61, label %65

61:                                               ; preds = %50
  %62 = load i32, i32* %12, align 4
  %63 = call i32 @dwarf_errmsg(i32 %62)
  %64 = call i32 @warnx(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %63)
  br label %135

65:                                               ; preds = %50
  %66 = load i32, i32* %10, align 4
  %67 = call i32 @dwarf_get_TAG_name(i32 %66, i8** %13)
  %68 = load i32, i32* @DW_DLV_OK, align 4
  %69 = icmp ne i32 %67, %68
  br i1 %69, label %70, label %75

70:                                               ; preds = %65
  %71 = getelementptr inbounds [32 x i8], [32 x i8]* %16, i64 0, i64 0
  %72 = load i32, i32* %10, align 4
  %73 = call i32 @snprintf(i8* %71, i32 32, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i32 %72)
  %74 = getelementptr inbounds [32 x i8], [32 x i8]* %16, i64 0, i64 0
  store i8* %74, i8** %13, align 8
  br label %75

75:                                               ; preds = %70, %65
  %76 = load i32, i32* %3, align 4
  %77 = call i32 @dwarf_get_abbrev_children_flag(i32 %76, i64* %8, i32* %12)
  %78 = load i32, i32* @DW_DLV_OK, align 4
  %79 = icmp ne i32 %77, %78
  br i1 %79, label %80, label %84

80:                                               ; preds = %75
  %81 = load i32, i32* %12, align 4
  %82 = call i32 @dwarf_errmsg(i32 %81)
  %83 = call i32 @warnx(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i64 0, i64 0), i32 %82)
  br label %135

84:                                               ; preds = %75
  %85 = load i8*, i8** %13, align 8
  %86 = load i64, i64* %8, align 8
  %87 = icmp ne i64 %86, 0
  %88 = zext i1 %87 to i64
  %89 = select i1 %87, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0)
  %90 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0), i8* %85, i8* %89)
  store i32 0, i32* %20, align 4
  br label %91

91:                                               ; preds = %131, %84
  %92 = load i32, i32* %20, align 4
  %93 = load i32, i32* %7, align 4
  %94 = icmp slt i32 %92, %93
  br i1 %94, label %95, label %134

95:                                               ; preds = %91
  %96 = load i32, i32* %3, align 4
  %97 = load i32, i32* %20, align 4
  %98 = sext i32 %97 to i64
  %99 = call i32 @dwarf_get_abbrev_entry(i32 %96, i64 %98, i32* %11, i64* %9, i32* %5, i32* %12)
  %100 = load i32, i32* @DW_DLV_OK, align 4
  %101 = icmp ne i32 %99, %100
  br i1 %101, label %102, label %106

102:                                              ; preds = %95
  %103 = load i32, i32* %12, align 4
  %104 = call i32 @dwarf_errmsg(i32 %103)
  %105 = call i32 @warnx(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.9, i64 0, i64 0), i32 %104)
  br label %131

106:                                              ; preds = %95
  %107 = load i32, i32* %11, align 4
  %108 = call i32 @dwarf_get_AT_name(i32 %107, i8** %14)
  %109 = load i32, i32* @DW_DLV_OK, align 4
  %110 = icmp ne i32 %108, %109
  br i1 %110, label %111, label %116

111:                                              ; preds = %106
  %112 = getelementptr inbounds [32 x i8], [32 x i8]* %17, i64 0, i64 0
  %113 = load i32, i32* %11, align 4
  %114 = call i32 @snprintf(i8* %112, i32 32, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i64 0, i64 0), i32 %113)
  %115 = getelementptr inbounds [32 x i8], [32 x i8]* %17, i64 0, i64 0
  store i8* %115, i8** %14, align 8
  br label %116

116:                                              ; preds = %111, %106
  %117 = load i64, i64* %9, align 8
  %118 = call i32 @dwarf_get_FORM_name(i64 %117, i8** %15)
  %119 = load i32, i32* @DW_DLV_OK, align 4
  %120 = icmp ne i32 %118, %119
  br i1 %120, label %121, label %127

121:                                              ; preds = %116
  %122 = getelementptr inbounds [32 x i8], [32 x i8]* %18, i64 0, i64 0
  %123 = load i64, i64* %9, align 8
  %124 = trunc i64 %123 to i32
  %125 = call i32 @snprintf(i8* %122, i32 32, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i64 0, i64 0), i32 %124)
  %126 = getelementptr inbounds [32 x i8], [32 x i8]* %18, i64 0, i64 0
  store i8* %126, i8** %15, align 8
  br label %127

127:                                              ; preds = %121, %116
  %128 = load i8*, i8** %14, align 8
  %129 = load i8*, i8** %15, align 8
  %130 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0), i8* %128, i8* %129)
  br label %131

131:                                              ; preds = %127, %102
  %132 = load i32, i32* %20, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %20, align 4
  br label %91

134:                                              ; preds = %91
  br label %135

135:                                              ; preds = %134, %80, %61
  %136 = load %struct.readelf*, %struct.readelf** %2, align 8
  %137 = getelementptr inbounds %struct.readelf, %struct.readelf* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* %3, align 4
  %140 = load i32, i32* @DW_DLA_ABBREV, align 4
  %141 = call i32 @dwarf_dealloc(i32 %138, i32 %139, i32 %140)
  br label %32

142:                                              ; preds = %43, %32
  %143 = load i32, i32* %21, align 4
  %144 = load i32, i32* @DW_DLV_OK, align 4
  %145 = icmp ne i32 %143, %144
  br i1 %145, label %146, label %150

146:                                              ; preds = %142
  %147 = load i32, i32* %12, align 4
  %148 = call i32 @dwarf_errmsg(i32 %147)
  %149 = call i32 @warnx(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.13, i64 0, i64 0), i32 %148)
  br label %150

150:                                              ; preds = %146, %142
  br label %23

151:                                              ; preds = %23
  %152 = load i32, i32* %21, align 4
  %153 = load i32, i32* @DW_DLV_ERROR, align 4
  %154 = icmp eq i32 %152, %153
  br i1 %154, label %155, label %159

155:                                              ; preds = %151
  %156 = load i32, i32* %12, align 4
  %157 = call i32 @dwarf_errmsg(i32 %156)
  %158 = call i32 @warnx(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.14, i64 0, i64 0), i32 %157)
  br label %159

159:                                              ; preds = %155, %151
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @dwarf_next_cu_header(i32, i32*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @dwarf_get_abbrev(i32, i32, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @dwarf_dealloc(i32, i32, i32) #1

declare dso_local i32 @dwarf_get_abbrev_tag(i32, i32*, i32*) #1

declare dso_local i32 @warnx(i8*, i32) #1

declare dso_local i32 @dwarf_errmsg(i32) #1

declare dso_local i32 @dwarf_get_TAG_name(i32, i8**) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @dwarf_get_abbrev_children_flag(i32, i64*, i32*) #1

declare dso_local i32 @dwarf_get_abbrev_entry(i32, i64, i32*, i64*, i32*, i32*) #1

declare dso_local i32 @dwarf_get_AT_name(i32, i8**) #1

declare dso_local i32 @dwarf_get_FORM_name(i64, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
