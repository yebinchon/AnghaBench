; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/readelf/extr_readelf.c_dump_dwarf_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/readelf/extr_readelf.c_dump_dwarf_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.readelf = type { i64, i64 (i32**, i32)*, i32, %struct.section* }
%struct.section = type { i32* }
%struct.TYPE_3__ = type { i32* }

@.str = private unnamed_addr constant [12 x i8] c".debug_info\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c".debug_types\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"\0ADump of debug contents of section %s:\0A\00", align 1
@DW_DLV_OK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"dwarf_tag failed: %s\00", align 1
@DW_TAG_compile_unit = common dso_local global i64 0, align 8
@DW_TAG_type_unit = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [39 x i8] c"could not find DW_TAG_compile_unit die\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"could not find DW_TAG_type_unit die\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"dwarf_die_CU_offset failed: %s\00", align 1
@.str.7 = private unnamed_addr constant [30 x i8] c"\0A  Type Unit @ offset 0x%jx:\0A\00", align 1
@.str.8 = private unnamed_addr constant [28 x i8] c"    Length:\09\09%#jx (%d-bit)\0A\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"    Version:\09\09%u\0A\00", align 1
@.str.10 = private unnamed_addr constant [26 x i8] c"    Abbrev Offset:\090x%jx\0A\00", align 1
@.str.11 = private unnamed_addr constant [22 x i8] c"    Pointer Size:\09%u\0A\00", align 1
@.str.12 = private unnamed_addr constant [26 x i8] c"    Signature:\09\090x%016jx\0A\00", align 1
@.str.13 = private unnamed_addr constant [24 x i8] c"    Type Offset:\090x%jx\0A\00", align 1
@DW_DLV_ERROR = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [25 x i8] c"dwarf_next_cu_header: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.readelf*, i64)* @dump_dwarf_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_dwarf_info(%struct.readelf* %0, i64 %1) #0 {
  %3 = alloca %struct.readelf*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.section*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.TYPE_3__, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.readelf* %0, %struct.readelf** %3, align 8
  store i64 %1, i64* %4, align 8
  %22 = load i64, i64* %4, align 8
  %23 = icmp ne i64 %22, 0
  %24 = zext i1 %23 to i64
  %25 = select i1 %23, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0)
  store i8* %25, i8** %19, align 8
  store %struct.section* null, %struct.section** %5, align 8
  store i32 0, i32* %20, align 4
  br label %26

26:                                               ; preds = %53, %2
  %27 = load i32, i32* %20, align 4
  %28 = sext i32 %27 to i64
  %29 = load %struct.readelf*, %struct.readelf** %3, align 8
  %30 = getelementptr inbounds %struct.readelf, %struct.readelf* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ult i64 %28, %31
  br i1 %32, label %33, label %56

33:                                               ; preds = %26
  %34 = load %struct.readelf*, %struct.readelf** %3, align 8
  %35 = getelementptr inbounds %struct.readelf, %struct.readelf* %34, i32 0, i32 3
  %36 = load %struct.section*, %struct.section** %35, align 8
  %37 = load i32, i32* %20, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.section, %struct.section* %36, i64 %38
  store %struct.section* %39, %struct.section** %5, align 8
  %40 = load %struct.section*, %struct.section** %5, align 8
  %41 = getelementptr inbounds %struct.section, %struct.section* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %44, label %52

44:                                               ; preds = %33
  %45 = load %struct.section*, %struct.section** %5, align 8
  %46 = getelementptr inbounds %struct.section, %struct.section* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = load i8*, i8** %19, align 8
  %49 = call i32 @strcmp(i32* %47, i8* %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %44
  br label %56

52:                                               ; preds = %44, %33
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %20, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %20, align 4
  br label %26

56:                                               ; preds = %51, %26
  %57 = load i32, i32* %20, align 4
  %58 = sext i32 %57 to i64
  %59 = load %struct.readelf*, %struct.readelf** %3, align 8
  %60 = getelementptr inbounds %struct.readelf, %struct.readelf* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp uge i64 %58, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %56
  br label %209

64:                                               ; preds = %56
  br label %65

65:                                               ; preds = %202, %64
  %66 = load i8*, i8** %19, align 8
  %67 = ptrtoint i8* %66 to i64
  %68 = call i32 (i8*, i64, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i64 %67)
  br label %69

69:                                               ; preds = %185, %139, %131, %123, %65
  %70 = load %struct.readelf*, %struct.readelf** %3, align 8
  %71 = getelementptr inbounds %struct.readelf, %struct.readelf* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = load i64, i64* %4, align 8
  %74 = call i32 @dwarf_next_cu_header_c(i32 %72, i64 %73, i32* null, i64* %9, i64* %14, i64* %10, i64* %11, i32* null, %struct.TYPE_3__* %16, i64* %15, i32* null, i32* %7)
  store i32 %74, i32* %21, align 4
  %75 = load i32, i32* @DW_DLV_OK, align 4
  %76 = icmp eq i32 %74, %75
  br i1 %76, label %77, label %189

77:                                               ; preds = %69
  %78 = load %struct.readelf*, %struct.readelf** %3, align 8
  %79 = load i64, i64* %10, align 8
  %80 = load i64, i64* %11, align 8
  %81 = load i64, i64* %9, align 8
  %82 = call i32 @set_cu_context(%struct.readelf* %78, i64 %79, i64 %80, i64 %81)
  store i32* null, i32** %6, align 8
  br label %83

83:                                               ; preds = %116, %97, %77
  %84 = load %struct.readelf*, %struct.readelf** %3, align 8
  %85 = getelementptr inbounds %struct.readelf, %struct.readelf* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = load i32*, i32** %6, align 8
  %88 = load i64, i64* %4, align 8
  %89 = call i32 @dwarf_siblingof_b(i32 %86, i32* %87, i32** %6, i64 %88, i32* %7)
  %90 = load i32, i32* @DW_DLV_OK, align 4
  %91 = icmp eq i32 %89, %90
  br i1 %91, label %92, label %117

92:                                               ; preds = %83
  %93 = load i32*, i32** %6, align 8
  %94 = call i32 @dwarf_tag(i32* %93, i64* %8, i32* %7)
  %95 = load i32, i32* @DW_DLV_OK, align 4
  %96 = icmp ne i32 %94, %95
  br i1 %96, label %97, label %101

97:                                               ; preds = %92
  %98 = load i32, i32* %7, align 4
  %99 = call i32 @dwarf_errmsg(i32 %98)
  %100 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 %99)
  br label %83

101:                                              ; preds = %92
  %102 = load i64, i64* %4, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %108

104:                                              ; preds = %101
  %105 = load i64, i64* %8, align 8
  %106 = load i64, i64* @DW_TAG_compile_unit, align 8
  %107 = icmp eq i64 %105, %106
  br i1 %107, label %115, label %108

108:                                              ; preds = %104, %101
  %109 = load i64, i64* %4, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %116, label %111

111:                                              ; preds = %108
  %112 = load i64, i64* %8, align 8
  %113 = load i64, i64* @DW_TAG_type_unit, align 8
  %114 = icmp eq i64 %112, %113
  br i1 %114, label %115, label %116

115:                                              ; preds = %111, %104
  br label %117

116:                                              ; preds = %111, %108
  br label %83

117:                                              ; preds = %115, %83
  %118 = load i32*, i32** %6, align 8
  %119 = icmp eq i32* %118, null
  br i1 %119, label %120, label %125

120:                                              ; preds = %117
  %121 = load i64, i64* %4, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %125

123:                                              ; preds = %120
  %124 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0))
  br label %69

125:                                              ; preds = %120, %117
  %126 = load i32*, i32** %6, align 8
  %127 = icmp eq i32* %126, null
  br i1 %127, label %128, label %133

128:                                              ; preds = %125
  %129 = load i64, i64* %4, align 8
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %133, label %131

131:                                              ; preds = %128
  %132 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0))
  br label %69

133:                                              ; preds = %128, %125
  br label %134

134:                                              ; preds = %133
  %135 = load i32*, i32** %6, align 8
  %136 = call i32 @dwarf_die_CU_offset_range(i32* %135, i64* %12, i64* %13, i32* %7)
  %137 = load i32, i32* @DW_DLV_OK, align 4
  %138 = icmp ne i32 %136, %137
  br i1 %138, label %139, label %143

139:                                              ; preds = %134
  %140 = load i32, i32* %7, align 4
  %141 = call i32 @dwarf_errmsg(i32 %140)
  %142 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0), i32 %141)
  br label %69

143:                                              ; preds = %134
  %144 = load i64, i64* %11, align 8
  %145 = icmp eq i64 %144, 4
  %146 = zext i1 %145 to i64
  %147 = select i1 %145, i32 4, i32 12
  %148 = sext i32 %147 to i64
  %149 = load i64, i64* %13, align 8
  %150 = sub nsw i64 %149, %148
  store i64 %150, i64* %13, align 8
  store i64 0, i64* %17, align 8
  %151 = load i64, i64* %4, align 8
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %163, label %153

153:                                              ; preds = %143
  %154 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %155 = load i32*, i32** %154, align 8
  %156 = getelementptr inbounds i32, i32* %155, i64 0
  %157 = ptrtoint i32* %156 to i64
  %158 = inttoptr i64 %157 to i32*
  store i32* %158, i32** %18, align 8
  %159 = load %struct.readelf*, %struct.readelf** %3, align 8
  %160 = getelementptr inbounds %struct.readelf, %struct.readelf* %159, i32 0, i32 1
  %161 = load i64 (i32**, i32)*, i64 (i32**, i32)** %160, align 8
  %162 = call i64 %161(i32** %18, i32 8)
  store i64 %162, i64* %17, align 8
  br label %163

163:                                              ; preds = %153, %143
  %164 = load i64, i64* %12, align 8
  %165 = call i32 (i8*, i64, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0), i64 %164)
  %166 = load i64, i64* %13, align 8
  %167 = load i64, i64* %11, align 8
  %168 = icmp eq i64 %167, 4
  %169 = zext i1 %168 to i64
  %170 = select i1 %168, i32 32, i32 64
  %171 = call i32 (i8*, i64, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i64 0, i64 0), i64 %166, i32 %170)
  %172 = load i64, i64* %9, align 8
  %173 = call i32 (i8*, i64, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i64 0, i64 0), i64 %172)
  %174 = load i64, i64* %14, align 8
  %175 = call i32 (i8*, i64, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i64 %174)
  %176 = load i64, i64* %10, align 8
  %177 = call i32 (i8*, i64, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.11, i64 0, i64 0), i64 %176)
  %178 = load i64, i64* %4, align 8
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %185, label %180

180:                                              ; preds = %163
  %181 = load i64, i64* %17, align 8
  %182 = call i32 (i8*, i64, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.12, i64 0, i64 0), i64 %181)
  %183 = load i64, i64* %15, align 8
  %184 = call i32 (i8*, i64, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.13, i64 0, i64 0), i64 %183)
  br label %185

185:                                              ; preds = %180, %163
  %186 = load %struct.readelf*, %struct.readelf** %3, align 8
  %187 = load i32*, i32** %6, align 8
  %188 = call i32 @dump_dwarf_die(%struct.readelf* %186, i32* %187, i32 0)
  br label %69

189:                                              ; preds = %69
  %190 = load i32, i32* %21, align 4
  %191 = load i32, i32* @DW_DLV_ERROR, align 4
  %192 = icmp eq i32 %190, %191
  br i1 %192, label %193, label %197

193:                                              ; preds = %189
  %194 = load i32, i32* %7, align 4
  %195 = call i32 @dwarf_errmsg(i32 %194)
  %196 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.14, i64 0, i64 0), i32 %195)
  br label %197

197:                                              ; preds = %193, %189
  %198 = load i64, i64* %4, align 8
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %200, label %201

200:                                              ; preds = %197
  br label %209

201:                                              ; preds = %197
  br label %202

202:                                              ; preds = %201
  %203 = load %struct.readelf*, %struct.readelf** %3, align 8
  %204 = getelementptr inbounds %struct.readelf, %struct.readelf* %203, i32 0, i32 2
  %205 = load i32, i32* %204, align 8
  %206 = call i32 @dwarf_next_types_section(i32 %205, i32* %7)
  %207 = load i32, i32* @DW_DLV_OK, align 4
  %208 = icmp eq i32 %206, %207
  br i1 %208, label %65, label %209

209:                                              ; preds = %63, %202, %200
  ret void
}

declare dso_local i32 @strcmp(i32*, i8*) #1

declare dso_local i32 @printf(i8*, i64, ...) #1

declare dso_local i32 @dwarf_next_cu_header_c(i32, i64, i32*, i64*, i64*, i64*, i64*, i32*, %struct.TYPE_3__*, i64*, i32*, i32*) #1

declare dso_local i32 @set_cu_context(%struct.readelf*, i64, i64, i64) #1

declare dso_local i32 @dwarf_siblingof_b(i32, i32*, i32**, i64, i32*) #1

declare dso_local i32 @dwarf_tag(i32*, i64*, i32*) #1

declare dso_local i32 @warnx(i8*, ...) #1

declare dso_local i32 @dwarf_errmsg(i32) #1

declare dso_local i32 @dwarf_die_CU_offset_range(i32*, i64*, i64*, i32*) #1

declare dso_local i32 @dump_dwarf_die(%struct.readelf*, i32*, i32) #1

declare dso_local i32 @dwarf_next_types_section(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
