; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_dwarf2read.c_read_full_die.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_dwarf2read.c_read_full_die.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.die_info = type { i32, i32, i32, %struct.attribute*, i32*, i64 }
%struct.attribute = type { i32 }
%struct.dwarf2_cu = type { i32 }
%struct.abbrev_info = type { i32, i32, i32*, i64 }

@dwarf_info_buffer = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [60 x i8] c"Dwarf Error: could not find abbrev number %d [in module %s]\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.die_info**, i32*, i8*, %struct.dwarf2_cu*, i32*)* @read_full_die to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @read_full_die(%struct.die_info** %0, i32* %1, i8* %2, %struct.dwarf2_cu* %3, i32* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca %struct.die_info**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.dwarf2_cu*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.abbrev_info*, align 8
  %17 = alloca %struct.die_info*, align 8
  store %struct.die_info** %0, %struct.die_info*** %7, align 8
  store i32* %1, i32** %8, align 8
  store i8* %2, i8** %9, align 8
  store %struct.dwarf2_cu* %3, %struct.dwarf2_cu** %10, align 8
  store i32* %4, i32** %11, align 8
  %18 = load i8*, i8** %9, align 8
  %19 = load i8*, i8** @dwarf_info_buffer, align 8
  %20 = ptrtoint i8* %18 to i64
  %21 = ptrtoint i8* %19 to i64
  %22 = sub i64 %20, %21
  %23 = trunc i64 %22 to i32
  store i32 %23, i32* %15, align 4
  %24 = load i32*, i32** %8, align 8
  %25 = load i8*, i8** %9, align 8
  %26 = call i32 @read_unsigned_leb128(i32* %24, i8* %25, i32* %13)
  store i32 %26, i32* %12, align 4
  %27 = load i32, i32* %13, align 4
  %28 = load i8*, i8** %9, align 8
  %29 = zext i32 %27 to i64
  %30 = getelementptr inbounds i8, i8* %28, i64 %29
  store i8* %30, i8** %9, align 8
  %31 = load i32, i32* %12, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %46, label %33

33:                                               ; preds = %5
  %34 = call %struct.die_info* (...) @dwarf_alloc_die()
  store %struct.die_info* %34, %struct.die_info** %17, align 8
  %35 = load %struct.die_info*, %struct.die_info** %17, align 8
  %36 = getelementptr inbounds %struct.die_info, %struct.die_info* %35, i32 0, i32 5
  store i64 0, i64* %36, align 8
  %37 = load i32, i32* %12, align 4
  %38 = load %struct.die_info*, %struct.die_info** %17, align 8
  %39 = getelementptr inbounds %struct.die_info, %struct.die_info* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  %40 = load %struct.die_info*, %struct.die_info** %17, align 8
  %41 = getelementptr inbounds %struct.die_info, %struct.die_info* %40, i32 0, i32 4
  store i32* null, i32** %41, align 8
  %42 = load %struct.die_info*, %struct.die_info** %17, align 8
  %43 = load %struct.die_info**, %struct.die_info*** %7, align 8
  store %struct.die_info* %42, %struct.die_info** %43, align 8
  %44 = load i32*, i32** %11, align 8
  store i32 0, i32* %44, align 4
  %45 = load i8*, i8** %9, align 8
  store i8* %45, i8** %6, align 8
  br label %121

46:                                               ; preds = %5
  %47 = load i32, i32* %12, align 4
  %48 = load %struct.dwarf2_cu*, %struct.dwarf2_cu** %10, align 8
  %49 = call %struct.abbrev_info* @dwarf2_lookup_abbrev(i32 %47, %struct.dwarf2_cu* %48)
  store %struct.abbrev_info* %49, %struct.abbrev_info** %16, align 8
  %50 = load %struct.abbrev_info*, %struct.abbrev_info** %16, align 8
  %51 = icmp ne %struct.abbrev_info* %50, null
  br i1 %51, label %57, label %52

52:                                               ; preds = %46
  %53 = load i32, i32* %12, align 4
  %54 = load i32*, i32** %8, align 8
  %55 = call i8* @bfd_get_filename(i32* %54)
  %56 = call i32 @error(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i32 %53, i8* %55)
  br label %57

57:                                               ; preds = %52, %46
  %58 = call %struct.die_info* (...) @dwarf_alloc_die()
  store %struct.die_info* %58, %struct.die_info** %17, align 8
  %59 = load i32, i32* %15, align 4
  %60 = load %struct.die_info*, %struct.die_info** %17, align 8
  %61 = getelementptr inbounds %struct.die_info, %struct.die_info* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 4
  %62 = load %struct.abbrev_info*, %struct.abbrev_info** %16, align 8
  %63 = getelementptr inbounds %struct.abbrev_info, %struct.abbrev_info* %62, i32 0, i32 3
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.die_info*, %struct.die_info** %17, align 8
  %66 = getelementptr inbounds %struct.die_info, %struct.die_info* %65, i32 0, i32 5
  store i64 %64, i64* %66, align 8
  %67 = load i32, i32* %12, align 4
  %68 = load %struct.die_info*, %struct.die_info** %17, align 8
  %69 = getelementptr inbounds %struct.die_info, %struct.die_info* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 8
  %70 = load %struct.die_info*, %struct.die_info** %17, align 8
  %71 = getelementptr inbounds %struct.die_info, %struct.die_info* %70, i32 0, i32 4
  store i32* null, i32** %71, align 8
  %72 = load %struct.abbrev_info*, %struct.abbrev_info** %16, align 8
  %73 = getelementptr inbounds %struct.abbrev_info, %struct.abbrev_info* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.die_info*, %struct.die_info** %17, align 8
  %76 = getelementptr inbounds %struct.die_info, %struct.die_info* %75, i32 0, i32 2
  store i32 %74, i32* %76, align 8
  %77 = load %struct.die_info*, %struct.die_info** %17, align 8
  %78 = getelementptr inbounds %struct.die_info, %struct.die_info* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = sext i32 %79 to i64
  %81 = mul i64 %80, 4
  %82 = trunc i64 %81 to i32
  %83 = call i64 @xmalloc(i32 %82)
  %84 = inttoptr i64 %83 to %struct.attribute*
  %85 = load %struct.die_info*, %struct.die_info** %17, align 8
  %86 = getelementptr inbounds %struct.die_info, %struct.die_info* %85, i32 0, i32 3
  store %struct.attribute* %84, %struct.attribute** %86, align 8
  store i32 0, i32* %14, align 4
  br label %87

87:                                               ; preds = %110, %57
  %88 = load i32, i32* %14, align 4
  %89 = load %struct.abbrev_info*, %struct.abbrev_info** %16, align 8
  %90 = getelementptr inbounds %struct.abbrev_info, %struct.abbrev_info* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = icmp ult i32 %88, %91
  br i1 %92, label %93, label %113

93:                                               ; preds = %87
  %94 = load %struct.die_info*, %struct.die_info** %17, align 8
  %95 = getelementptr inbounds %struct.die_info, %struct.die_info* %94, i32 0, i32 3
  %96 = load %struct.attribute*, %struct.attribute** %95, align 8
  %97 = load i32, i32* %14, align 4
  %98 = zext i32 %97 to i64
  %99 = getelementptr inbounds %struct.attribute, %struct.attribute* %96, i64 %98
  %100 = load %struct.abbrev_info*, %struct.abbrev_info** %16, align 8
  %101 = getelementptr inbounds %struct.abbrev_info, %struct.abbrev_info* %100, i32 0, i32 2
  %102 = load i32*, i32** %101, align 8
  %103 = load i32, i32* %14, align 4
  %104 = zext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %102, i64 %104
  %106 = load i32*, i32** %8, align 8
  %107 = load i8*, i8** %9, align 8
  %108 = load %struct.dwarf2_cu*, %struct.dwarf2_cu** %10, align 8
  %109 = call i8* @read_attribute(%struct.attribute* %99, i32* %105, i32* %106, i8* %107, %struct.dwarf2_cu* %108)
  store i8* %109, i8** %9, align 8
  br label %110

110:                                              ; preds = %93
  %111 = load i32, i32* %14, align 4
  %112 = add i32 %111, 1
  store i32 %112, i32* %14, align 4
  br label %87

113:                                              ; preds = %87
  %114 = load %struct.die_info*, %struct.die_info** %17, align 8
  %115 = load %struct.die_info**, %struct.die_info*** %7, align 8
  store %struct.die_info* %114, %struct.die_info** %115, align 8
  %116 = load %struct.abbrev_info*, %struct.abbrev_info** %16, align 8
  %117 = getelementptr inbounds %struct.abbrev_info, %struct.abbrev_info* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = load i32*, i32** %11, align 8
  store i32 %118, i32* %119, align 4
  %120 = load i8*, i8** %9, align 8
  store i8* %120, i8** %6, align 8
  br label %121

121:                                              ; preds = %113, %33
  %122 = load i8*, i8** %6, align 8
  ret i8* %122
}

declare dso_local i32 @read_unsigned_leb128(i32*, i8*, i32*) #1

declare dso_local %struct.die_info* @dwarf_alloc_die(...) #1

declare dso_local %struct.abbrev_info* @dwarf2_lookup_abbrev(i32, %struct.dwarf2_cu*) #1

declare dso_local i32 @error(i8*, i32, i8*) #1

declare dso_local i8* @bfd_get_filename(i32*) #1

declare dso_local i64 @xmalloc(i32) #1

declare dso_local i8* @read_attribute(%struct.attribute*, i32*, i32*, i8*, %struct.dwarf2_cu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
