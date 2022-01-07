; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_dwarf2read.c_dwarf2_read_abbrevs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_dwarf2read.c_dwarf2_read_abbrevs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwarf2_cu = type { %struct.comp_unit_head }
%struct.comp_unit_head = type { i32, %struct.abbrev_info** }
%struct.abbrev_info = type { i32, i32, %struct.abbrev_info*, %struct.attr_abbrev*, i32, i8* }
%struct.attr_abbrev = type { i32, i32 }

@ABBREV_HASH_SIZE = common dso_local global i32 0, align 4
@dwarf_abbrev_buffer = common dso_local global i8* null, align 8
@ATTR_ALLOC_CHUNK = common dso_local global i32 0, align 4
@dwarf_abbrev_size = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.dwarf2_cu*)* @dwarf2_read_abbrevs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dwarf2_read_abbrevs(i32* %0, %struct.dwarf2_cu* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.dwarf2_cu*, align 8
  %5 = alloca %struct.comp_unit_head*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.abbrev_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store %struct.dwarf2_cu* %1, %struct.dwarf2_cu** %4, align 8
  %13 = load %struct.dwarf2_cu*, %struct.dwarf2_cu** %4, align 8
  %14 = getelementptr inbounds %struct.dwarf2_cu, %struct.dwarf2_cu* %13, i32 0, i32 0
  store %struct.comp_unit_head* %14, %struct.comp_unit_head** %5, align 8
  %15 = load %struct.comp_unit_head*, %struct.comp_unit_head** %5, align 8
  %16 = getelementptr inbounds %struct.comp_unit_head, %struct.comp_unit_head* %15, i32 0, i32 1
  %17 = load %struct.abbrev_info**, %struct.abbrev_info*** %16, align 8
  %18 = load i32, i32* @ABBREV_HASH_SIZE, align 4
  %19 = sext i32 %18 to i64
  %20 = mul i64 %19, 8
  %21 = trunc i64 %20 to i32
  %22 = call i32 @memset(%struct.abbrev_info** %17, i32 0, i32 %21)
  %23 = load i8*, i8** @dwarf_abbrev_buffer, align 8
  %24 = load %struct.comp_unit_head*, %struct.comp_unit_head** %5, align 8
  %25 = getelementptr inbounds %struct.comp_unit_head, %struct.comp_unit_head* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i8, i8* %23, i64 %27
  store i8* %28, i8** %6, align 8
  %29 = load i32*, i32** %3, align 8
  %30 = load i8*, i8** %6, align 8
  %31 = call i8* @read_unsigned_leb128(i32* %29, i8* %30, i32* %9)
  %32 = ptrtoint i8* %31 to i32
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %9, align 4
  %34 = load i8*, i8** %6, align 8
  %35 = zext i32 %33 to i64
  %36 = getelementptr inbounds i8, i8* %34, i64 %35
  store i8* %36, i8** %6, align 8
  br label %37

37:                                               ; preds = %184, %2
  %38 = load i32, i32* %8, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %185

40:                                               ; preds = %37
  %41 = call %struct.abbrev_info* (...) @dwarf_alloc_abbrev()
  store %struct.abbrev_info* %41, %struct.abbrev_info** %7, align 8
  %42 = load i32, i32* %8, align 4
  %43 = load %struct.abbrev_info*, %struct.abbrev_info** %7, align 8
  %44 = getelementptr inbounds %struct.abbrev_info, %struct.abbrev_info* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 8
  %45 = load i32*, i32** %3, align 8
  %46 = load i8*, i8** %6, align 8
  %47 = call i8* @read_unsigned_leb128(i32* %45, i8* %46, i32* %9)
  %48 = load %struct.abbrev_info*, %struct.abbrev_info** %7, align 8
  %49 = getelementptr inbounds %struct.abbrev_info, %struct.abbrev_info* %48, i32 0, i32 5
  store i8* %47, i8** %49, align 8
  %50 = load i32, i32* %9, align 4
  %51 = load i8*, i8** %6, align 8
  %52 = zext i32 %50 to i64
  %53 = getelementptr inbounds i8, i8* %51, i64 %52
  store i8* %53, i8** %6, align 8
  %54 = load i32*, i32** %3, align 8
  %55 = load i8*, i8** %6, align 8
  %56 = call i32 @read_1_byte(i32* %54, i8* %55)
  %57 = load %struct.abbrev_info*, %struct.abbrev_info** %7, align 8
  %58 = getelementptr inbounds %struct.abbrev_info, %struct.abbrev_info* %57, i32 0, i32 4
  store i32 %56, i32* %58, align 8
  %59 = load i8*, i8** %6, align 8
  %60 = getelementptr inbounds i8, i8* %59, i64 1
  store i8* %60, i8** %6, align 8
  %61 = load i32*, i32** %3, align 8
  %62 = load i8*, i8** %6, align 8
  %63 = call i8* @read_unsigned_leb128(i32* %61, i8* %62, i32* %9)
  %64 = ptrtoint i8* %63 to i32
  store i32 %64, i32* %10, align 4
  %65 = load i32, i32* %9, align 4
  %66 = load i8*, i8** %6, align 8
  %67 = zext i32 %65 to i64
  %68 = getelementptr inbounds i8, i8* %66, i64 %67
  store i8* %68, i8** %6, align 8
  %69 = load i32*, i32** %3, align 8
  %70 = load i8*, i8** %6, align 8
  %71 = call i8* @read_unsigned_leb128(i32* %69, i8* %70, i32* %9)
  %72 = ptrtoint i8* %71 to i32
  store i32 %72, i32* %11, align 4
  %73 = load i32, i32* %9, align 4
  %74 = load i8*, i8** %6, align 8
  %75 = zext i32 %73 to i64
  %76 = getelementptr inbounds i8, i8* %74, i64 %75
  store i8* %76, i8** %6, align 8
  br label %77

77:                                               ; preds = %103, %40
  %78 = load i32, i32* %10, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %141

80:                                               ; preds = %77
  %81 = load %struct.abbrev_info*, %struct.abbrev_info** %7, align 8
  %82 = getelementptr inbounds %struct.abbrev_info, %struct.abbrev_info* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @ATTR_ALLOC_CHUNK, align 4
  %85 = srem i32 %83, %84
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %103

87:                                               ; preds = %80
  %88 = load %struct.abbrev_info*, %struct.abbrev_info** %7, align 8
  %89 = getelementptr inbounds %struct.abbrev_info, %struct.abbrev_info* %88, i32 0, i32 3
  %90 = load %struct.attr_abbrev*, %struct.attr_abbrev** %89, align 8
  %91 = load %struct.abbrev_info*, %struct.abbrev_info** %7, align 8
  %92 = getelementptr inbounds %struct.abbrev_info, %struct.abbrev_info* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @ATTR_ALLOC_CHUNK, align 4
  %95 = add nsw i32 %93, %94
  %96 = sext i32 %95 to i64
  %97 = mul i64 %96, 8
  %98 = trunc i64 %97 to i32
  %99 = call i64 @xrealloc(%struct.attr_abbrev* %90, i32 %98)
  %100 = inttoptr i64 %99 to %struct.attr_abbrev*
  %101 = load %struct.abbrev_info*, %struct.abbrev_info** %7, align 8
  %102 = getelementptr inbounds %struct.abbrev_info, %struct.abbrev_info* %101, i32 0, i32 3
  store %struct.attr_abbrev* %100, %struct.attr_abbrev** %102, align 8
  br label %103

103:                                              ; preds = %87, %80
  %104 = load i32, i32* %10, align 4
  %105 = load %struct.abbrev_info*, %struct.abbrev_info** %7, align 8
  %106 = getelementptr inbounds %struct.abbrev_info, %struct.abbrev_info* %105, i32 0, i32 3
  %107 = load %struct.attr_abbrev*, %struct.attr_abbrev** %106, align 8
  %108 = load %struct.abbrev_info*, %struct.abbrev_info** %7, align 8
  %109 = getelementptr inbounds %struct.abbrev_info, %struct.abbrev_info* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.attr_abbrev, %struct.attr_abbrev* %107, i64 %111
  %113 = getelementptr inbounds %struct.attr_abbrev, %struct.attr_abbrev* %112, i32 0, i32 0
  store i32 %104, i32* %113, align 4
  %114 = load i32, i32* %11, align 4
  %115 = load %struct.abbrev_info*, %struct.abbrev_info** %7, align 8
  %116 = getelementptr inbounds %struct.abbrev_info, %struct.abbrev_info* %115, i32 0, i32 3
  %117 = load %struct.attr_abbrev*, %struct.attr_abbrev** %116, align 8
  %118 = load %struct.abbrev_info*, %struct.abbrev_info** %7, align 8
  %119 = getelementptr inbounds %struct.abbrev_info, %struct.abbrev_info* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %119, align 4
  %122 = sext i32 %120 to i64
  %123 = getelementptr inbounds %struct.attr_abbrev, %struct.attr_abbrev* %117, i64 %122
  %124 = getelementptr inbounds %struct.attr_abbrev, %struct.attr_abbrev* %123, i32 0, i32 1
  store i32 %114, i32* %124, align 4
  %125 = load i32*, i32** %3, align 8
  %126 = load i8*, i8** %6, align 8
  %127 = call i8* @read_unsigned_leb128(i32* %125, i8* %126, i32* %9)
  %128 = ptrtoint i8* %127 to i32
  store i32 %128, i32* %10, align 4
  %129 = load i32, i32* %9, align 4
  %130 = load i8*, i8** %6, align 8
  %131 = zext i32 %129 to i64
  %132 = getelementptr inbounds i8, i8* %130, i64 %131
  store i8* %132, i8** %6, align 8
  %133 = load i32*, i32** %3, align 8
  %134 = load i8*, i8** %6, align 8
  %135 = call i8* @read_unsigned_leb128(i32* %133, i8* %134, i32* %9)
  %136 = ptrtoint i8* %135 to i32
  store i32 %136, i32* %11, align 4
  %137 = load i32, i32* %9, align 4
  %138 = load i8*, i8** %6, align 8
  %139 = zext i32 %137 to i64
  %140 = getelementptr inbounds i8, i8* %138, i64 %139
  store i8* %140, i8** %6, align 8
  br label %77

141:                                              ; preds = %77
  %142 = load i32, i32* %8, align 4
  %143 = load i32, i32* @ABBREV_HASH_SIZE, align 4
  %144 = urem i32 %142, %143
  store i32 %144, i32* %12, align 4
  %145 = load %struct.comp_unit_head*, %struct.comp_unit_head** %5, align 8
  %146 = getelementptr inbounds %struct.comp_unit_head, %struct.comp_unit_head* %145, i32 0, i32 1
  %147 = load %struct.abbrev_info**, %struct.abbrev_info*** %146, align 8
  %148 = load i32, i32* %12, align 4
  %149 = zext i32 %148 to i64
  %150 = getelementptr inbounds %struct.abbrev_info*, %struct.abbrev_info** %147, i64 %149
  %151 = load %struct.abbrev_info*, %struct.abbrev_info** %150, align 8
  %152 = load %struct.abbrev_info*, %struct.abbrev_info** %7, align 8
  %153 = getelementptr inbounds %struct.abbrev_info, %struct.abbrev_info* %152, i32 0, i32 2
  store %struct.abbrev_info* %151, %struct.abbrev_info** %153, align 8
  %154 = load %struct.abbrev_info*, %struct.abbrev_info** %7, align 8
  %155 = load %struct.comp_unit_head*, %struct.comp_unit_head** %5, align 8
  %156 = getelementptr inbounds %struct.comp_unit_head, %struct.comp_unit_head* %155, i32 0, i32 1
  %157 = load %struct.abbrev_info**, %struct.abbrev_info*** %156, align 8
  %158 = load i32, i32* %12, align 4
  %159 = zext i32 %158 to i64
  %160 = getelementptr inbounds %struct.abbrev_info*, %struct.abbrev_info** %157, i64 %159
  store %struct.abbrev_info* %154, %struct.abbrev_info** %160, align 8
  %161 = load i8*, i8** %6, align 8
  %162 = load i8*, i8** @dwarf_abbrev_buffer, align 8
  %163 = ptrtoint i8* %161 to i64
  %164 = ptrtoint i8* %162 to i64
  %165 = sub i64 %163, %164
  %166 = trunc i64 %165 to i32
  %167 = load i32, i32* @dwarf_abbrev_size, align 4
  %168 = icmp uge i32 %166, %167
  br i1 %168, label %169, label %170

169:                                              ; preds = %141
  br label %185

170:                                              ; preds = %141
  %171 = load i32*, i32** %3, align 8
  %172 = load i8*, i8** %6, align 8
  %173 = call i8* @read_unsigned_leb128(i32* %171, i8* %172, i32* %9)
  %174 = ptrtoint i8* %173 to i32
  store i32 %174, i32* %8, align 4
  %175 = load i32, i32* %9, align 4
  %176 = load i8*, i8** %6, align 8
  %177 = zext i32 %175 to i64
  %178 = getelementptr inbounds i8, i8* %176, i64 %177
  store i8* %178, i8** %6, align 8
  %179 = load i32, i32* %8, align 4
  %180 = load %struct.dwarf2_cu*, %struct.dwarf2_cu** %4, align 8
  %181 = call i32* @dwarf2_lookup_abbrev(i32 %179, %struct.dwarf2_cu* %180)
  %182 = icmp ne i32* %181, null
  br i1 %182, label %183, label %184

183:                                              ; preds = %170
  br label %185

184:                                              ; preds = %170
  br label %37

185:                                              ; preds = %183, %169, %37
  ret void
}

declare dso_local i32 @memset(%struct.abbrev_info**, i32, i32) #1

declare dso_local i8* @read_unsigned_leb128(i32*, i8*, i32*) #1

declare dso_local %struct.abbrev_info* @dwarf_alloc_abbrev(...) #1

declare dso_local i32 @read_1_byte(i32*, i8*) #1

declare dso_local i64 @xrealloc(%struct.attr_abbrev*, i32) #1

declare dso_local i32* @dwarf2_lookup_abbrev(i32, %struct.dwarf2_cu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
