; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/readelf/extr_readelf.c_get_symbol_name.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/readelf/extr_readelf.c_get_symbol_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.readelf = type { i64, i32, %struct.section* }
%struct.section = type { i64, i8*, i64, i32 }
%struct.TYPE_4__ = type { i64, i32, i32 }

@SHT_SYMTAB = common dso_local global i64 0, align 8
@SHT_DYNSYM = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"elf_getdata failed: %s\00", align 1
@STT_SECTION = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.readelf*, i32, i32)* @get_symbol_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @get_symbol_name(%struct.readelf* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.readelf*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.section*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_4__, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store %struct.readelf* %0, %struct.readelf** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %13 = load %struct.readelf*, %struct.readelf** %5, align 8
  %14 = getelementptr inbounds %struct.readelf, %struct.readelf* %13, i32 0, i32 2
  %15 = load %struct.section*, %struct.section** %14, align 8
  %16 = load i32, i32* %6, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.section, %struct.section* %15, i64 %17
  store %struct.section* %18, %struct.section** %8, align 8
  %19 = load %struct.section*, %struct.section** %8, align 8
  %20 = getelementptr inbounds %struct.section, %struct.section* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @SHT_SYMTAB, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %31

24:                                               ; preds = %3
  %25 = load %struct.section*, %struct.section** %8, align 8
  %26 = getelementptr inbounds %struct.section, %struct.section* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @SHT_DYNSYM, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %24
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %4, align 8
  br label %108

31:                                               ; preds = %24, %3
  %32 = call i32 (...) @elf_errno()
  %33 = load %struct.section*, %struct.section** %8, align 8
  %34 = getelementptr inbounds %struct.section, %struct.section* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 8
  %36 = call i32* @elf_getdata(i32 %35, i32* null)
  store i32* %36, i32** %11, align 8
  %37 = icmp eq i32* %36, null
  br i1 %37, label %38, label %47

38:                                               ; preds = %31
  %39 = call i32 (...) @elf_errno()
  store i32 %39, i32* %12, align 4
  %40 = load i32, i32* %12, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %38
  %43 = load i32, i32* %12, align 4
  %44 = call i32 @elf_errmsg(i32 %43)
  %45 = call i32 @warnx(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %44)
  br label %46

46:                                               ; preds = %42, %38
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %4, align 8
  br label %108

47:                                               ; preds = %31
  %48 = load i32*, i32** %11, align 8
  %49 = load i32, i32* %7, align 4
  %50 = call %struct.TYPE_4__* @gelf_getsym(i32* %48, i32 %49, %struct.TYPE_4__* %10)
  %51 = icmp ne %struct.TYPE_4__* %50, %10
  br i1 %51, label %52, label %53

52:                                               ; preds = %47
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %4, align 8
  br label %108

53:                                               ; preds = %47
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = call i64 @GELF_ST_TYPE(i32 %55)
  %57 = load i64, i64* @STT_SECTION, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %86

59:                                               ; preds = %53
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.readelf*, %struct.readelf** %5, align 8
  %63 = getelementptr inbounds %struct.readelf, %struct.readelf* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp slt i64 %61, %64
  br i1 %65, label %66, label %85

66:                                               ; preds = %59
  %67 = load %struct.readelf*, %struct.readelf** %5, align 8
  %68 = getelementptr inbounds %struct.readelf, %struct.readelf* %67, i32 0, i32 2
  %69 = load %struct.section*, %struct.section** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = getelementptr inbounds %struct.section, %struct.section* %69, i64 %71
  %73 = getelementptr inbounds %struct.section, %struct.section* %72, i32 0, i32 1
  %74 = load i8*, i8** %73, align 8
  %75 = icmp ne i8* %74, null
  br i1 %75, label %76, label %85

76:                                               ; preds = %66
  %77 = load %struct.readelf*, %struct.readelf** %5, align 8
  %78 = getelementptr inbounds %struct.readelf, %struct.readelf* %77, i32 0, i32 2
  %79 = load %struct.section*, %struct.section** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = getelementptr inbounds %struct.section, %struct.section* %79, i64 %81
  %83 = getelementptr inbounds %struct.section, %struct.section* %82, i32 0, i32 1
  %84 = load i8*, i8** %83, align 8
  store i8* %84, i8** %4, align 8
  br label %108

85:                                               ; preds = %66, %59
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %4, align 8
  br label %108

86:                                               ; preds = %53
  %87 = load %struct.section*, %struct.section** %8, align 8
  %88 = getelementptr inbounds %struct.section, %struct.section* %87, i32 0, i32 2
  %89 = load i64, i64* %88, align 8
  %90 = load %struct.readelf*, %struct.readelf** %5, align 8
  %91 = getelementptr inbounds %struct.readelf, %struct.readelf* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = icmp sge i64 %89, %92
  br i1 %93, label %105, label %94

94:                                               ; preds = %86
  %95 = load %struct.readelf*, %struct.readelf** %5, align 8
  %96 = getelementptr inbounds %struct.readelf, %struct.readelf* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.section*, %struct.section** %8, align 8
  %99 = getelementptr inbounds %struct.section, %struct.section* %98, i32 0, i32 2
  %100 = load i64, i64* %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 1
  %102 = load i32, i32* %101, align 8
  %103 = call i8* @elf_strptr(i32 %97, i64 %100, i32 %102)
  store i8* %103, i8** %9, align 8
  %104 = icmp eq i8* %103, null
  br i1 %104, label %105, label %106

105:                                              ; preds = %94, %86
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %4, align 8
  br label %108

106:                                              ; preds = %94
  %107 = load i8*, i8** %9, align 8
  store i8* %107, i8** %4, align 8
  br label %108

108:                                              ; preds = %106, %105, %85, %76, %52, %46, %30
  %109 = load i8*, i8** %4, align 8
  ret i8* %109
}

declare dso_local i32 @elf_errno(...) #1

declare dso_local i32* @elf_getdata(i32, i32*) #1

declare dso_local i32 @warnx(i8*, i32) #1

declare dso_local i32 @elf_errmsg(i32) #1

declare dso_local %struct.TYPE_4__* @gelf_getsym(i32*, i32, %struct.TYPE_4__*) #1

declare dso_local i64 @GELF_ST_TYPE(i32) #1

declare dso_local i8* @elf_strptr(i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
