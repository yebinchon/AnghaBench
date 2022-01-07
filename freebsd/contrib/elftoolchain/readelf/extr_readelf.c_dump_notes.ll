; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/readelf/extr_readelf.c_dump_notes.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/readelf/extr_readelf.c_dump_notes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.readelf = type { i64, %struct.section*, i32, %struct.TYPE_7__ }
%struct.section = type { i64, i64, i32 }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_8__ = type { i64, i64, i64 }
%struct.TYPE_9__ = type { i8*, i64 }

@ET_CORE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"elf_getphnum failed: %s\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"elf_rawfile failed: %s\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"gelf_getphdr failed: %s\00", align 1
@PT_NOTE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [20 x i8] c"invalid PHDR offset\00", align 1
@SHT_NOTE = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [23 x i8] c"elf_getdata failed: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.readelf*)* @dump_notes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_notes(%struct.readelf* %0) #0 {
  %2 = alloca %struct.readelf*, align 8
  %3 = alloca %struct.section*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_8__, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.readelf* %0, %struct.readelf** %2, align 8
  %11 = load %struct.readelf*, %struct.readelf** %2, align 8
  %12 = getelementptr inbounds %struct.readelf, %struct.readelf* %11, i32 0, i32 3
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @ET_CORE, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %91

17:                                               ; preds = %1
  %18 = load %struct.readelf*, %struct.readelf** %2, align 8
  %19 = getelementptr inbounds %struct.readelf, %struct.readelf* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = call i64 @elf_getphnum(i32 %20, i64* %8)
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %17
  %24 = call i32 @elf_errmsg(i32 -1)
  %25 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %24)
  br label %144

26:                                               ; preds = %17
  %27 = load i64, i64* %8, align 8
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %26
  br label %144

30:                                               ; preds = %26
  %31 = load %struct.readelf*, %struct.readelf** %2, align 8
  %32 = getelementptr inbounds %struct.readelf, %struct.readelf* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = call i8* @elf_rawfile(i32 %33, i64* %7)
  store i8* %34, i8** %4, align 8
  %35 = icmp eq i8* %34, null
  br i1 %35, label %36, label %39

36:                                               ; preds = %30
  %37 = call i32 @elf_errmsg(i32 -1)
  %38 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %37)
  br label %144

39:                                               ; preds = %30
  store i32 0, i32* %9, align 4
  br label %40

40:                                               ; preds = %87, %39
  %41 = load i32, i32* %9, align 4
  %42 = sext i32 %41 to i64
  %43 = load i64, i64* %8, align 8
  %44 = icmp ult i64 %42, %43
  br i1 %44, label %45, label %90

45:                                               ; preds = %40
  %46 = load %struct.readelf*, %struct.readelf** %2, align 8
  %47 = getelementptr inbounds %struct.readelf, %struct.readelf* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* %9, align 4
  %50 = call %struct.TYPE_8__* @gelf_getphdr(i32 %48, i32 %49, %struct.TYPE_8__* %5)
  %51 = icmp ne %struct.TYPE_8__* %50, %5
  br i1 %51, label %52, label %55

52:                                               ; preds = %45
  %53 = call i32 @elf_errmsg(i32 -1)
  %54 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %53)
  br label %87

55:                                               ; preds = %45
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @PT_NOTE, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %86

60:                                               ; preds = %55
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* %7, align 8
  %64 = icmp uge i64 %62, %63
  br i1 %64, label %73, label %65

65:                                               ; preds = %60
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = sub i64 %68, %70
  %72 = icmp ugt i64 %67, %71
  br i1 %72, label %73, label %75

73:                                               ; preds = %65, %60
  %74 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  br label %87

75:                                               ; preds = %65
  %76 = load %struct.readelf*, %struct.readelf** %2, align 8
  %77 = load i8*, i8** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = getelementptr inbounds i8, i8* %77, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 2
  %82 = load i64, i64* %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = call i32 @dump_notes_content(%struct.readelf* %76, i8* %80, i64 %82, i64 %84)
  br label %86

86:                                               ; preds = %75, %55
  br label %87

87:                                               ; preds = %86, %73, %52
  %88 = load i32, i32* %9, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %9, align 4
  br label %40

90:                                               ; preds = %40
  br label %144

91:                                               ; preds = %1
  store i32 0, i32* %9, align 4
  br label %92

92:                                               ; preds = %140, %91
  %93 = load i32, i32* %9, align 4
  %94 = sext i32 %93 to i64
  %95 = load %struct.readelf*, %struct.readelf** %2, align 8
  %96 = getelementptr inbounds %struct.readelf, %struct.readelf* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = icmp ult i64 %94, %97
  br i1 %98, label %99, label %143

99:                                               ; preds = %92
  %100 = load %struct.readelf*, %struct.readelf** %2, align 8
  %101 = getelementptr inbounds %struct.readelf, %struct.readelf* %100, i32 0, i32 1
  %102 = load %struct.section*, %struct.section** %101, align 8
  %103 = load i32, i32* %9, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.section, %struct.section* %102, i64 %104
  store %struct.section* %105, %struct.section** %3, align 8
  %106 = load %struct.section*, %struct.section** %3, align 8
  %107 = getelementptr inbounds %struct.section, %struct.section* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @SHT_NOTE, align 8
  %110 = icmp eq i64 %108, %109
  br i1 %110, label %111, label %139

111:                                              ; preds = %99
  %112 = call i32 (...) @elf_errno()
  %113 = load %struct.section*, %struct.section** %3, align 8
  %114 = getelementptr inbounds %struct.section, %struct.section* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 8
  %116 = call %struct.TYPE_9__* @elf_getdata(i32 %115, i32* null)
  store %struct.TYPE_9__* %116, %struct.TYPE_9__** %6, align 8
  %117 = icmp eq %struct.TYPE_9__* %116, null
  br i1 %117, label %118, label %127

118:                                              ; preds = %111
  %119 = call i32 (...) @elf_errno()
  store i32 %119, i32* %10, align 4
  %120 = load i32, i32* %10, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %126

122:                                              ; preds = %118
  %123 = load i32, i32* %10, align 4
  %124 = call i32 @elf_errmsg(i32 %123)
  %125 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i32 %124)
  br label %126

126:                                              ; preds = %122, %118
  br label %140

127:                                              ; preds = %111
  %128 = load %struct.readelf*, %struct.readelf** %2, align 8
  %129 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %130 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %129, i32 0, i32 0
  %131 = load i8*, i8** %130, align 8
  %132 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %133 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %132, i32 0, i32 1
  %134 = load i64, i64* %133, align 8
  %135 = load %struct.section*, %struct.section** %3, align 8
  %136 = getelementptr inbounds %struct.section, %struct.section* %135, i32 0, i32 1
  %137 = load i64, i64* %136, align 8
  %138 = call i32 @dump_notes_content(%struct.readelf* %128, i8* %131, i64 %134, i64 %137)
  br label %139

139:                                              ; preds = %127, %99
  br label %140

140:                                              ; preds = %139, %126
  %141 = load i32, i32* %9, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %9, align 4
  br label %92

143:                                              ; preds = %92
  br label %144

144:                                              ; preds = %23, %29, %36, %143, %90
  ret void
}

declare dso_local i64 @elf_getphnum(i32, i64*) #1

declare dso_local i32 @warnx(i8*, ...) #1

declare dso_local i32 @elf_errmsg(i32) #1

declare dso_local i8* @elf_rawfile(i32, i64*) #1

declare dso_local %struct.TYPE_8__* @gelf_getphdr(i32, i32, %struct.TYPE_8__*) #1

declare dso_local i32 @dump_notes_content(%struct.readelf*, i8*, i64, i64) #1

declare dso_local i32 @elf_errno(...) #1

declare dso_local %struct.TYPE_9__* @elf_getdata(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
