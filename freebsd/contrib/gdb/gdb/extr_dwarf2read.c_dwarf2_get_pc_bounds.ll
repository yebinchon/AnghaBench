; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_dwarf2read.c_dwarf2_get_pc_bounds.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_dwarf2read.c_dwarf2_get_pc_bounds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.die_info = type { i32 }
%struct.dwarf2_cu = type { %struct.comp_unit_head, %struct.objfile* }
%struct.comp_unit_head = type { i32, i32, i32 }
%struct.objfile = type { i32* }
%struct.attribute = type { i32 }

@DW_AT_high_pc = common dso_local global i32 0, align 4
@DW_AT_low_pc = common dso_local global i32 0, align 4
@DW_AT_ranges = common dso_local global i32 0, align 4
@dwarf_ranges_size = common dso_local global i32 0, align 4
@symfile_complaints = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"Offset %d out of bounds for DW_AT_ranges attribute\00", align 1
@dwarf_ranges_buffer = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [45 x i8] c"Invalid .debug_ranges data (no base address)\00", align 1
@HAS_RELOC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.die_info*, i32*, i32*, %struct.dwarf2_cu*)* @dwarf2_get_pc_bounds to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dwarf2_get_pc_bounds(%struct.die_info* %0, i32* %1, i32* %2, %struct.dwarf2_cu* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.die_info*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.dwarf2_cu*, align 8
  %10 = alloca %struct.objfile*, align 8
  %11 = alloca %struct.comp_unit_head*, align 8
  %12 = alloca %struct.attribute*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i8*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  store %struct.die_info* %0, %struct.die_info** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.dwarf2_cu* %3, %struct.dwarf2_cu** %9, align 8
  %28 = load %struct.dwarf2_cu*, %struct.dwarf2_cu** %9, align 8
  %29 = getelementptr inbounds %struct.dwarf2_cu, %struct.dwarf2_cu* %28, i32 0, i32 1
  %30 = load %struct.objfile*, %struct.objfile** %29, align 8
  store %struct.objfile* %30, %struct.objfile** %10, align 8
  %31 = load %struct.dwarf2_cu*, %struct.dwarf2_cu** %9, align 8
  %32 = getelementptr inbounds %struct.dwarf2_cu, %struct.dwarf2_cu* %31, i32 0, i32 0
  store %struct.comp_unit_head* %32, %struct.comp_unit_head** %11, align 8
  %33 = load %struct.objfile*, %struct.objfile** %10, align 8
  %34 = getelementptr inbounds %struct.objfile, %struct.objfile* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  store i32* %35, i32** %13, align 8
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %36 = load %struct.die_info*, %struct.die_info** %6, align 8
  %37 = load i32, i32* @DW_AT_high_pc, align 4
  %38 = load %struct.dwarf2_cu*, %struct.dwarf2_cu** %9, align 8
  %39 = call %struct.attribute* @dwarf2_attr(%struct.die_info* %36, i32 %37, %struct.dwarf2_cu* %38)
  store %struct.attribute* %39, %struct.attribute** %12, align 8
  %40 = load %struct.attribute*, %struct.attribute** %12, align 8
  %41 = icmp ne %struct.attribute* %40, null
  br i1 %41, label %42, label %56

42:                                               ; preds = %4
  %43 = load %struct.attribute*, %struct.attribute** %12, align 8
  %44 = call i32 @DW_ADDR(%struct.attribute* %43)
  store i32 %44, i32* %15, align 4
  %45 = load %struct.die_info*, %struct.die_info** %6, align 8
  %46 = load i32, i32* @DW_AT_low_pc, align 4
  %47 = load %struct.dwarf2_cu*, %struct.dwarf2_cu** %9, align 8
  %48 = call %struct.attribute* @dwarf2_attr(%struct.die_info* %45, i32 %46, %struct.dwarf2_cu* %47)
  store %struct.attribute* %48, %struct.attribute** %12, align 8
  %49 = load %struct.attribute*, %struct.attribute** %12, align 8
  %50 = icmp ne %struct.attribute* %49, null
  br i1 %50, label %51, label %54

51:                                               ; preds = %42
  %52 = load %struct.attribute*, %struct.attribute** %12, align 8
  %53 = call i32 @DW_ADDR(%struct.attribute* %52)
  store i32 %53, i32* %14, align 4
  br label %55

54:                                               ; preds = %42
  store i32 0, i32* %5, align 4
  br label %217

55:                                               ; preds = %51
  store i32 1, i32* %16, align 4
  br label %196

56:                                               ; preds = %4
  %57 = load %struct.die_info*, %struct.die_info** %6, align 8
  %58 = load i32, i32* @DW_AT_ranges, align 4
  %59 = load %struct.dwarf2_cu*, %struct.dwarf2_cu** %9, align 8
  %60 = call %struct.attribute* @dwarf2_attr(%struct.die_info* %57, i32 %58, %struct.dwarf2_cu* %59)
  store %struct.attribute* %60, %struct.attribute** %12, align 8
  %61 = load %struct.attribute*, %struct.attribute** %12, align 8
  %62 = icmp ne %struct.attribute* %61, null
  br i1 %62, label %63, label %195

63:                                               ; preds = %56
  %64 = load %struct.comp_unit_head*, %struct.comp_unit_head** %11, align 8
  %65 = getelementptr inbounds %struct.comp_unit_head, %struct.comp_unit_head* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  store i32 %66, i32* %17, align 4
  %67 = load i32, i32* %17, align 4
  %68 = mul i32 %67, 8
  %69 = sub i32 %68, 1
  %70 = shl i32 -2, %69
  %71 = xor i32 %70, -1
  store i32 %71, i32* %18, align 4
  %72 = load %struct.attribute*, %struct.attribute** %12, align 8
  %73 = call i32 @DW_UNSND(%struct.attribute* %72)
  store i32 %73, i32* %19, align 4
  %74 = load %struct.comp_unit_head*, %struct.comp_unit_head** %11, align 8
  %75 = getelementptr inbounds %struct.comp_unit_head, %struct.comp_unit_head* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  store i32 %76, i32* %21, align 4
  %77 = load %struct.comp_unit_head*, %struct.comp_unit_head** %11, align 8
  %78 = getelementptr inbounds %struct.comp_unit_head, %struct.comp_unit_head* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  store i32 %79, i32* %20, align 4
  %80 = load i32, i32* %19, align 4
  %81 = load i32, i32* @dwarf_ranges_size, align 4
  %82 = icmp uge i32 %80, %81
  br i1 %82, label %83, label %86

83:                                               ; preds = %63
  %84 = load i32, i32* %19, align 4
  %85 = call i32 (i32*, i8*, ...) @complaint(i32* @symfile_complaints, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %84)
  store i32 0, i32* %5, align 4
  br label %217

86:                                               ; preds = %63
  %87 = load i8*, i8** @dwarf_ranges_buffer, align 8
  %88 = load i32, i32* %19, align 4
  %89 = zext i32 %88 to i64
  %90 = getelementptr inbounds i8, i8* %87, i64 %89
  store i8* %90, i8** %23, align 8
  %91 = load i32*, i32** %13, align 8
  %92 = load i8*, i8** %23, align 8
  %93 = load %struct.dwarf2_cu*, %struct.dwarf2_cu** %9, align 8
  %94 = call i32 @read_address(i32* %91, i8* %92, %struct.dwarf2_cu* %93, i32* %22)
  store i32 %94, i32* %24, align 4
  %95 = load i32, i32* %24, align 4
  %96 = load i32, i32* %18, align 4
  %97 = and i32 %95, %96
  %98 = load i32, i32* %18, align 4
  %99 = icmp eq i32 %97, %98
  br i1 %99, label %100, label %117

100:                                              ; preds = %86
  %101 = load i32*, i32** %13, align 8
  %102 = load i8*, i8** %23, align 8
  %103 = load i32, i32* %17, align 4
  %104 = zext i32 %103 to i64
  %105 = getelementptr inbounds i8, i8* %102, i64 %104
  %106 = load %struct.dwarf2_cu*, %struct.dwarf2_cu** %9, align 8
  %107 = call i32 @read_address(i32* %101, i8* %105, %struct.dwarf2_cu* %106, i32* %22)
  store i32 %107, i32* %20, align 4
  %108 = load i32, i32* %17, align 4
  %109 = mul i32 2, %108
  %110 = load i8*, i8** %23, align 8
  %111 = zext i32 %109 to i64
  %112 = getelementptr inbounds i8, i8* %110, i64 %111
  store i8* %112, i8** %23, align 8
  %113 = load i32, i32* %17, align 4
  %114 = mul i32 2, %113
  %115 = load i32, i32* %19, align 4
  %116 = add i32 %115, %114
  store i32 %116, i32* %19, align 4
  store i32 1, i32* %21, align 4
  br label %117

117:                                              ; preds = %100, %86
  store i32 0, i32* %25, align 4
  br label %118

118:                                              ; preds = %117, %151, %189
  %119 = load i32*, i32** %13, align 8
  %120 = load i8*, i8** %23, align 8
  %121 = load %struct.dwarf2_cu*, %struct.dwarf2_cu** %9, align 8
  %122 = call i32 @read_address(i32* %119, i8* %120, %struct.dwarf2_cu* %121, i32* %22)
  store i32 %122, i32* %26, align 4
  %123 = load i32, i32* %17, align 4
  %124 = load i8*, i8** %23, align 8
  %125 = zext i32 %123 to i64
  %126 = getelementptr inbounds i8, i8* %124, i64 %125
  store i8* %126, i8** %23, align 8
  %127 = load i32*, i32** %13, align 8
  %128 = load i8*, i8** %23, align 8
  %129 = load %struct.dwarf2_cu*, %struct.dwarf2_cu** %9, align 8
  %130 = call i32 @read_address(i32* %127, i8* %128, %struct.dwarf2_cu* %129, i32* %22)
  store i32 %130, i32* %27, align 4
  %131 = load i32, i32* %17, align 4
  %132 = load i8*, i8** %23, align 8
  %133 = zext i32 %131 to i64
  %134 = getelementptr inbounds i8, i8* %132, i64 %133
  store i8* %134, i8** %23, align 8
  %135 = load i32, i32* %17, align 4
  %136 = mul i32 2, %135
  %137 = load i32, i32* %19, align 4
  %138 = add i32 %137, %136
  store i32 %138, i32* %19, align 4
  %139 = load i32, i32* %26, align 4
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %141, label %145

141:                                              ; preds = %118
  %142 = load i32, i32* %27, align 4
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %144, label %145

144:                                              ; preds = %141
  br label %190

145:                                              ; preds = %141, %118
  %146 = load i32, i32* %26, align 4
  %147 = load i32, i32* %18, align 4
  %148 = and i32 %146, %147
  %149 = load i32, i32* %18, align 4
  %150 = icmp eq i32 %148, %149
  br i1 %150, label %151, label %159

151:                                              ; preds = %145
  %152 = load i32*, i32** %13, align 8
  %153 = load i8*, i8** %23, align 8
  %154 = load i32, i32* %17, align 4
  %155 = zext i32 %154 to i64
  %156 = getelementptr inbounds i8, i8* %153, i64 %155
  %157 = load %struct.dwarf2_cu*, %struct.dwarf2_cu** %9, align 8
  %158 = call i32 @read_address(i32* %152, i8* %156, %struct.dwarf2_cu* %157, i32* %22)
  store i32 %158, i32* %20, align 4
  store i32 1, i32* %21, align 4
  br label %118

159:                                              ; preds = %145
  %160 = load i32, i32* %21, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %164, label %162

162:                                              ; preds = %159
  %163 = call i32 (i32*, i8*, ...) @complaint(i32* @symfile_complaints, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %217

164:                                              ; preds = %159
  %165 = load i32, i32* %20, align 4
  %166 = load i32, i32* %26, align 4
  %167 = add i32 %166, %165
  store i32 %167, i32* %26, align 4
  %168 = load i32, i32* %20, align 4
  %169 = load i32, i32* %27, align 4
  %170 = add i32 %169, %168
  store i32 %170, i32* %27, align 4
  %171 = load i32, i32* %25, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %176, label %173

173:                                              ; preds = %164
  %174 = load i32, i32* %26, align 4
  store i32 %174, i32* %14, align 4
  %175 = load i32, i32* %27, align 4
  store i32 %175, i32* %15, align 4
  store i32 1, i32* %25, align 4
  br label %189

176:                                              ; preds = %164
  %177 = load i32, i32* %26, align 4
  %178 = load i32, i32* %14, align 4
  %179 = icmp ult i32 %177, %178
  br i1 %179, label %180, label %182

180:                                              ; preds = %176
  %181 = load i32, i32* %26, align 4
  store i32 %181, i32* %14, align 4
  br label %182

182:                                              ; preds = %180, %176
  %183 = load i32, i32* %27, align 4
  %184 = load i32, i32* %15, align 4
  %185 = icmp ugt i32 %183, %184
  br i1 %185, label %186, label %188

186:                                              ; preds = %182
  %187 = load i32, i32* %27, align 4
  store i32 %187, i32* %15, align 4
  br label %188

188:                                              ; preds = %186, %182
  br label %189

189:                                              ; preds = %188, %173
  br label %118

190:                                              ; preds = %144
  %191 = load i32, i32* %25, align 4
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %194, label %193

193:                                              ; preds = %190
  store i32 0, i32* %5, align 4
  br label %217

194:                                              ; preds = %190
  store i32 -1, i32* %16, align 4
  br label %195

195:                                              ; preds = %194, %56
  br label %196

196:                                              ; preds = %195, %55
  %197 = load i32, i32* %15, align 4
  %198 = load i32, i32* %14, align 4
  %199 = icmp ult i32 %197, %198
  br i1 %199, label %200, label %201

200:                                              ; preds = %196
  store i32 0, i32* %5, align 4
  br label %217

201:                                              ; preds = %196
  %202 = load i32, i32* %14, align 4
  %203 = icmp eq i32 %202, 0
  br i1 %203, label %204, label %211

204:                                              ; preds = %201
  %205 = load i32*, i32** %13, align 8
  %206 = call i32 @bfd_get_file_flags(i32* %205)
  %207 = load i32, i32* @HAS_RELOC, align 4
  %208 = and i32 %206, %207
  %209 = icmp eq i32 %208, 0
  br i1 %209, label %210, label %211

210:                                              ; preds = %204
  store i32 0, i32* %5, align 4
  br label %217

211:                                              ; preds = %204, %201
  %212 = load i32, i32* %14, align 4
  %213 = load i32*, i32** %7, align 8
  store i32 %212, i32* %213, align 4
  %214 = load i32, i32* %15, align 4
  %215 = load i32*, i32** %8, align 8
  store i32 %214, i32* %215, align 4
  %216 = load i32, i32* %16, align 4
  store i32 %216, i32* %5, align 4
  br label %217

217:                                              ; preds = %211, %210, %200, %193, %162, %83, %54
  %218 = load i32, i32* %5, align 4
  ret i32 %218
}

declare dso_local %struct.attribute* @dwarf2_attr(%struct.die_info*, i32, %struct.dwarf2_cu*) #1

declare dso_local i32 @DW_ADDR(%struct.attribute*) #1

declare dso_local i32 @DW_UNSND(%struct.attribute*) #1

declare dso_local i32 @complaint(i32*, i8*, ...) #1

declare dso_local i32 @read_address(i32*, i8*, %struct.dwarf2_cu*, i32*) #1

declare dso_local i32 @bfd_get_file_flags(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
