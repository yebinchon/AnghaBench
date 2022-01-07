; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/readelf/extr_readelf.c_dump_section_groups.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/readelf/extr_readelf.c_dump_section_groups.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.readelf = type { i64, %struct.section* }
%struct.section = type { i64, i64, i32, i64, i8*, i32, i32 }
%struct.TYPE_3__ = type { i64, i64* }

@SHT_GROUP = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"elf_getdata failed: %s\00", align 1
@.str.1 = private unnamed_addr constant [62 x i8] c"\0ACOMDAT group section [%5d] `%s' [%s] contains %ju sections:\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"   %-10.10s %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"[Index]\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"Name\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"invalid section index: %u\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"   [%5u]   %s\0A\00", align 1
@GRP_COMDAT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.readelf*)* @dump_section_groups to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_section_groups(%struct.readelf* %0) #0 {
  %2 = alloca %struct.readelf*, align 8
  %3 = alloca %struct.section*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.readelf* %0, %struct.readelf** %2, align 8
  store i32 0, i32* %7, align 4
  br label %11

11:                                               ; preds = %145, %1
  %12 = load i32, i32* %7, align 4
  %13 = sext i32 %12 to i64
  %14 = load %struct.readelf*, %struct.readelf** %2, align 8
  %15 = getelementptr inbounds %struct.readelf, %struct.readelf* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ult i64 %13, %16
  br i1 %17, label %18, label %148

18:                                               ; preds = %11
  %19 = load %struct.readelf*, %struct.readelf** %2, align 8
  %20 = getelementptr inbounds %struct.readelf, %struct.readelf* %19, i32 0, i32 1
  %21 = load %struct.section*, %struct.section** %20, align 8
  %22 = load i32, i32* %7, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.section, %struct.section* %21, i64 %23
  store %struct.section* %24, %struct.section** %3, align 8
  %25 = load %struct.section*, %struct.section** %3, align 8
  %26 = getelementptr inbounds %struct.section, %struct.section* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @SHT_GROUP, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %18
  br label %145

31:                                               ; preds = %18
  %32 = load %struct.section*, %struct.section** %3, align 8
  %33 = getelementptr inbounds %struct.section, %struct.section* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.readelf*, %struct.readelf** %2, align 8
  %36 = getelementptr inbounds %struct.readelf, %struct.readelf* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp uge i64 %34, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %31
  br label %145

40:                                               ; preds = %31
  %41 = call i32 (...) @elf_errno()
  %42 = load %struct.section*, %struct.section** %3, align 8
  %43 = getelementptr inbounds %struct.section, %struct.section* %42, i32 0, i32 6
  %44 = load i32, i32* %43, align 4
  %45 = call %struct.TYPE_3__* @elf_getdata(i32 %44, i32* null)
  store %struct.TYPE_3__* %45, %struct.TYPE_3__** %5, align 8
  %46 = icmp eq %struct.TYPE_3__* %45, null
  br i1 %46, label %47, label %56

47:                                               ; preds = %40
  %48 = call i32 (...) @elf_errno()
  store i32 %48, i32* %9, align 4
  %49 = load i32, i32* %9, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %47
  %52 = load i32, i32* %9, align 4
  %53 = call i64 @elf_errmsg(i32 %52)
  %54 = call i32 @warnx(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i64 %53)
  br label %55

55:                                               ; preds = %51, %47
  br label %145

56:                                               ; preds = %40
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp sle i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %56
  br label %145

62:                                               ; preds = %56
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 1
  %65 = load i64*, i64** %64, align 8
  store i64* %65, i64** %6, align 8
  %66 = load i64*, i64** %6, align 8
  %67 = getelementptr inbounds i64, i64* %66, i32 1
  store i64* %67, i64** %6, align 8
  %68 = load i64, i64* %66, align 8
  %69 = and i64 %68, 1
  %70 = icmp eq i64 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %62
  br label %148

72:                                               ; preds = %62
  %73 = load %struct.section*, %struct.section** %3, align 8
  %74 = getelementptr inbounds %struct.section, %struct.section* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %72
  %78 = load %struct.section*, %struct.section** %3, align 8
  %79 = getelementptr inbounds %struct.section, %struct.section* %78, i32 0, i32 2
  store i32 4, i32* %79, align 8
  br label %80

80:                                               ; preds = %77, %72
  %81 = load %struct.readelf*, %struct.readelf** %2, align 8
  %82 = load %struct.section*, %struct.section** %3, align 8
  %83 = getelementptr inbounds %struct.section, %struct.section* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = load %struct.section*, %struct.section** %3, align 8
  %86 = getelementptr inbounds %struct.section, %struct.section* %85, i32 0, i32 5
  %87 = load i32, i32* %86, align 8
  %88 = call i8* @get_symbol_name(%struct.readelf* %81, i64 %84, i32 %87)
  store i8* %88, i8** %4, align 8
  %89 = load %struct.section*, %struct.section** %3, align 8
  %90 = getelementptr inbounds %struct.section, %struct.section* %89, i32 0, i32 3
  %91 = load i64, i64* %90, align 8
  %92 = load %struct.section*, %struct.section** %3, align 8
  %93 = getelementptr inbounds %struct.section, %struct.section* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = sext i32 %94 to i64
  %96 = udiv i64 %91, %95
  store i64 %96, i64* %10, align 8
  %97 = load i64, i64* %10, align 8
  %98 = add i64 %97, -1
  store i64 %98, i64* %10, align 8
  %99 = icmp ult i64 %97, 1
  br i1 %99, label %100, label %101

100:                                              ; preds = %80
  br label %148

101:                                              ; preds = %80
  %102 = load i32, i32* %7, align 4
  %103 = load %struct.section*, %struct.section** %3, align 8
  %104 = getelementptr inbounds %struct.section, %struct.section* %103, i32 0, i32 4
  %105 = load i8*, i8** %104, align 8
  %106 = load i8*, i8** %4, align 8
  %107 = load i64, i64* %10, align 8
  %108 = trunc i64 %107 to i32
  %109 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.1, i64 0, i64 0), i32 %102, i8* %105, i8* %106, i32 %108)
  %110 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %8, align 4
  br label %111

111:                                              ; preds = %139, %101
  %112 = load i32, i32* %8, align 4
  %113 = sext i32 %112 to i64
  %114 = load i64, i64* %10, align 8
  %115 = icmp ult i64 %113, %114
  br i1 %115, label %116, label %144

116:                                              ; preds = %111
  %117 = load i64*, i64** %6, align 8
  %118 = load i64, i64* %117, align 8
  %119 = load %struct.readelf*, %struct.readelf** %2, align 8
  %120 = getelementptr inbounds %struct.readelf, %struct.readelf* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = icmp uge i64 %118, %121
  br i1 %122, label %123, label %127

123:                                              ; preds = %116
  %124 = load i64*, i64** %6, align 8
  %125 = load i64, i64* %124, align 8
  %126 = call i32 @warnx(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i64 %125)
  br label %139

127:                                              ; preds = %116
  %128 = load i64*, i64** %6, align 8
  %129 = load i64, i64* %128, align 8
  %130 = load %struct.readelf*, %struct.readelf** %2, align 8
  %131 = getelementptr inbounds %struct.readelf, %struct.readelf* %130, i32 0, i32 1
  %132 = load %struct.section*, %struct.section** %131, align 8
  %133 = load i64*, i64** %6, align 8
  %134 = load i64, i64* %133, align 8
  %135 = getelementptr inbounds %struct.section, %struct.section* %132, i64 %134
  %136 = getelementptr inbounds %struct.section, %struct.section* %135, i32 0, i32 4
  %137 = load i8*, i8** %136, align 8
  %138 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i64 %129, i8* %137)
  br label %139

139:                                              ; preds = %127, %123
  %140 = load i32, i32* %8, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %8, align 4
  %142 = load i64*, i64** %6, align 8
  %143 = getelementptr inbounds i64, i64* %142, i32 1
  store i64* %143, i64** %6, align 8
  br label %111

144:                                              ; preds = %111
  br label %145

145:                                              ; preds = %144, %61, %55, %39, %30
  %146 = load i32, i32* %7, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %7, align 4
  br label %11

148:                                              ; preds = %71, %100, %11
  ret void
}

declare dso_local i32 @elf_errno(...) #1

declare dso_local %struct.TYPE_3__* @elf_getdata(i32, i32*) #1

declare dso_local i32 @warnx(i8*, i64) #1

declare dso_local i64 @elf_errmsg(i32) #1

declare dso_local i8* @get_symbol_name(%struct.readelf*, i64, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
