; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/readelf/extr_readelf.c_load_sections.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/readelf/extr_readelf.c_load_sections.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.readelf = type { i64, %struct.section*, i32 }
%struct.section = type { i8*, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32* }
%struct.TYPE_3__ = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [24 x i8] c"elf_getshnum failed: %s\00", align 1
@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"calloc failed\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"elf_getshstrndx failed: %s\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"gelf_getshdr failed: %s\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"<no-name>\00", align 1
@SHN_UNDEF = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [22 x i8] c"elf_ndxscn failed: %s\00", align 1
@.str.6 = private unnamed_addr constant [35 x i8] c"section index of '%s' out of range\00", align 1
@.str.7 = private unnamed_addr constant [39 x i8] c"section link %llu of '%s' out of range\00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"elf_nextscn failed: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.readelf*)* @load_sections to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @load_sections(%struct.readelf* %0) #0 {
  %2 = alloca %struct.readelf*, align 8
  %3 = alloca %struct.section*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_3__, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.readelf* %0, %struct.readelf** %2, align 8
  %10 = load %struct.readelf*, %struct.readelf** %2, align 8
  %11 = getelementptr inbounds %struct.readelf, %struct.readelf* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.readelf*, %struct.readelf** %2, align 8
  %14 = getelementptr inbounds %struct.readelf, %struct.readelf* %13, i32 0, i32 0
  %15 = call i32 @elf_getshnum(i32 %12, i64* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %1
  %18 = call i8* @elf_errmsg(i32 -1)
  %19 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8* %18)
  br label %175

20:                                               ; preds = %1
  %21 = load %struct.readelf*, %struct.readelf** %2, align 8
  %22 = getelementptr inbounds %struct.readelf, %struct.readelf* %21, i32 0, i32 1
  %23 = load %struct.section*, %struct.section** %22, align 8
  %24 = icmp ne %struct.section* %23, null
  br i1 %24, label %25, label %30

25:                                               ; preds = %20
  %26 = load %struct.readelf*, %struct.readelf** %2, align 8
  %27 = getelementptr inbounds %struct.readelf, %struct.readelf* %26, i32 0, i32 1
  %28 = load %struct.section*, %struct.section** %27, align 8
  %29 = call i32 @free(%struct.section* %28)
  br label %30

30:                                               ; preds = %25, %20
  %31 = load %struct.readelf*, %struct.readelf** %2, align 8
  %32 = getelementptr inbounds %struct.readelf, %struct.readelf* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = call %struct.section* @calloc(i64 %33, i32 56)
  %35 = load %struct.readelf*, %struct.readelf** %2, align 8
  %36 = getelementptr inbounds %struct.readelf, %struct.readelf* %35, i32 0, i32 1
  store %struct.section* %34, %struct.section** %36, align 8
  %37 = icmp eq %struct.section* %34, null
  br i1 %37, label %38, label %41

38:                                               ; preds = %30
  %39 = load i32, i32* @EXIT_FAILURE, align 4
  %40 = call i32 @err(i32 %39, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  br label %41

41:                                               ; preds = %38, %30
  %42 = load %struct.readelf*, %struct.readelf** %2, align 8
  %43 = getelementptr inbounds %struct.readelf, %struct.readelf* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @elf_getshstrndx(i32 %44, i64* %7)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %41
  %48 = call i8* @elf_errmsg(i32 -1)
  %49 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i8* %48)
  br label %175

50:                                               ; preds = %41
  %51 = load %struct.readelf*, %struct.readelf** %2, align 8
  %52 = getelementptr inbounds %struct.readelf, %struct.readelf* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = call i32* @elf_getscn(i32 %53, i32 0)
  store i32* %54, i32** %5, align 8
  %55 = icmp eq i32* %54, null
  br i1 %55, label %56, label %57

56:                                               ; preds = %50
  br label %175

57:                                               ; preds = %50
  %58 = call i32 (...) @elf_errno()
  br label %59

59:                                               ; preds = %160, %57
  %60 = load i32*, i32** %5, align 8
  %61 = call i32* @gelf_getshdr(i32* %60, %struct.TYPE_3__* %6)
  %62 = icmp eq i32* %61, null
  br i1 %62, label %63, label %67

63:                                               ; preds = %59
  %64 = call i8* @elf_errmsg(i32 -1)
  %65 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i8* %64)
  %66 = call i32 (...) @elf_errno()
  br label %160

67:                                               ; preds = %59
  %68 = load %struct.readelf*, %struct.readelf** %2, align 8
  %69 = getelementptr inbounds %struct.readelf, %struct.readelf* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = load i64, i64* %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 9
  %73 = load i32, i32* %72, align 8
  %74 = call i8* @elf_strptr(i32 %70, i64 %71, i32 %73)
  store i8* %74, i8** %4, align 8
  %75 = icmp eq i8* %74, null
  br i1 %75, label %76, label %78

76:                                               ; preds = %67
  %77 = call i32 (...) @elf_errno()
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i8** %4, align 8
  br label %78

78:                                               ; preds = %76, %67
  %79 = load i32*, i32** %5, align 8
  %80 = call i64 @elf_ndxscn(i32* %79)
  store i64 %80, i64* %8, align 8
  %81 = load i64, i64* @SHN_UNDEF, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %91

83:                                               ; preds = %78
  %84 = call i32 (...) @elf_errno()
  store i32 %84, i32* %9, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %83
  %87 = load i32, i32* %9, align 4
  %88 = call i8* @elf_errmsg(i32 %87)
  %89 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i8* %88)
  br label %160

90:                                               ; preds = %83
  br label %91

91:                                               ; preds = %90, %78
  %92 = load i64, i64* %8, align 8
  %93 = load %struct.readelf*, %struct.readelf** %2, align 8
  %94 = getelementptr inbounds %struct.readelf, %struct.readelf* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = icmp uge i64 %92, %95
  br i1 %96, label %97, label %100

97:                                               ; preds = %91
  %98 = load i8*, i8** %4, align 8
  %99 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i64 0, i64 0), i8* %98)
  br label %160

100:                                              ; preds = %91
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = load %struct.readelf*, %struct.readelf** %2, align 8
  %104 = getelementptr inbounds %struct.readelf, %struct.readelf* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = icmp uge i64 %102, %105
  br i1 %106, label %107, label %112

107:                                              ; preds = %100
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load i8*, i8** %4, align 8
  %111 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.7, i64 0, i64 0), i64 %109, i8* %110)
  br label %112

112:                                              ; preds = %107, %100
  %113 = load %struct.readelf*, %struct.readelf** %2, align 8
  %114 = getelementptr inbounds %struct.readelf, %struct.readelf* %113, i32 0, i32 1
  %115 = load %struct.section*, %struct.section** %114, align 8
  %116 = load i64, i64* %8, align 8
  %117 = getelementptr inbounds %struct.section, %struct.section* %115, i64 %116
  store %struct.section* %117, %struct.section** %3, align 8
  %118 = load i8*, i8** %4, align 8
  %119 = load %struct.section*, %struct.section** %3, align 8
  %120 = getelementptr inbounds %struct.section, %struct.section* %119, i32 0, i32 0
  store i8* %118, i8** %120, align 8
  %121 = load i32*, i32** %5, align 8
  %122 = load %struct.section*, %struct.section** %3, align 8
  %123 = getelementptr inbounds %struct.section, %struct.section* %122, i32 0, i32 10
  store i32* %121, i32** %123, align 8
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 8
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.section*, %struct.section** %3, align 8
  %127 = getelementptr inbounds %struct.section, %struct.section* %126, i32 0, i32 9
  store i32 %125, i32* %127, align 4
  %128 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 7
  %129 = load i32, i32* %128, align 8
  %130 = load %struct.section*, %struct.section** %3, align 8
  %131 = getelementptr inbounds %struct.section, %struct.section* %130, i32 0, i32 8
  store i32 %129, i32* %131, align 8
  %132 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 6
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.section*, %struct.section** %3, align 8
  %135 = getelementptr inbounds %struct.section, %struct.section* %134, i32 0, i32 7
  store i32 %133, i32* %135, align 4
  %136 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 5
  %137 = load i32, i32* %136, align 8
  %138 = load %struct.section*, %struct.section** %3, align 8
  %139 = getelementptr inbounds %struct.section, %struct.section* %138, i32 0, i32 6
  store i32 %137, i32* %139, align 8
  %140 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 4
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.section*, %struct.section** %3, align 8
  %143 = getelementptr inbounds %struct.section, %struct.section* %142, i32 0, i32 5
  store i32 %141, i32* %143, align 4
  %144 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 3
  %145 = load i32, i32* %144, align 8
  %146 = load %struct.section*, %struct.section** %3, align 8
  %147 = getelementptr inbounds %struct.section, %struct.section* %146, i32 0, i32 4
  store i32 %145, i32* %147, align 8
  %148 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 2
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.section*, %struct.section** %3, align 8
  %151 = getelementptr inbounds %struct.section, %struct.section* %150, i32 0, i32 3
  store i32 %149, i32* %151, align 4
  %152 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = load %struct.section*, %struct.section** %3, align 8
  %155 = getelementptr inbounds %struct.section, %struct.section* %154, i32 0, i32 1
  store i64 %153, i64* %155, align 8
  %156 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 1
  %157 = load i32, i32* %156, align 8
  %158 = load %struct.section*, %struct.section** %3, align 8
  %159 = getelementptr inbounds %struct.section, %struct.section* %158, i32 0, i32 2
  store i32 %157, i32* %159, align 8
  br label %160

160:                                              ; preds = %112, %97, %86, %63
  %161 = load %struct.readelf*, %struct.readelf** %2, align 8
  %162 = getelementptr inbounds %struct.readelf, %struct.readelf* %161, i32 0, i32 2
  %163 = load i32, i32* %162, align 8
  %164 = load i32*, i32** %5, align 8
  %165 = call i32* @elf_nextscn(i32 %163, i32* %164)
  store i32* %165, i32** %5, align 8
  %166 = icmp ne i32* %165, null
  br i1 %166, label %59, label %167

167:                                              ; preds = %160
  %168 = call i32 (...) @elf_errno()
  store i32 %168, i32* %9, align 4
  %169 = load i32, i32* %9, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %175

171:                                              ; preds = %167
  %172 = load i32, i32* %9, align 4
  %173 = call i8* @elf_errmsg(i32 %172)
  %174 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0), i8* %173)
  br label %175

175:                                              ; preds = %17, %47, %56, %171, %167
  ret void
}

declare dso_local i32 @elf_getshnum(i32, i64*) #1

declare dso_local i32 @warnx(i8*, ...) #1

declare dso_local i8* @elf_errmsg(i32) #1

declare dso_local i32 @free(%struct.section*) #1

declare dso_local %struct.section* @calloc(i64, i32) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @elf_getshstrndx(i32, i64*) #1

declare dso_local i32* @elf_getscn(i32, i32) #1

declare dso_local i32 @elf_errno(...) #1

declare dso_local i32* @gelf_getshdr(i32*, %struct.TYPE_3__*) #1

declare dso_local i8* @elf_strptr(i32, i64, i32) #1

declare dso_local i64 @elf_ndxscn(i32*) #1

declare dso_local i32* @elf_nextscn(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
