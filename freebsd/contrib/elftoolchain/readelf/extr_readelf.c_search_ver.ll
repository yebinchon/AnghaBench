; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/readelf/extr_readelf.c_search_ver.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/readelf/extr_readelf.c_search_ver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.readelf = type { i64, i32, i32, %struct.section*, i32*, %struct.section*, %struct.section*, %struct.section* }
%struct.section = type { i64, i32 }
%struct.TYPE_3__ = type { i32, i32 }

@SHT_SUNW_versym = common dso_local global i64 0, align 8
@SHT_SUNW_verneed = common dso_local global i64 0, align 8
@SHT_SUNW_verdef = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"elf_getdata failed: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.readelf*)* @search_ver to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @search_ver(%struct.readelf* %0) #0 {
  %2 = alloca %struct.readelf*, align 8
  %3 = alloca %struct.section*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.readelf* %0, %struct.readelf** %2, align 8
  store i32 0, i32* %6, align 4
  br label %7

7:                                                ; preds = %51, %1
  %8 = load i32, i32* %6, align 4
  %9 = sext i32 %8 to i64
  %10 = load %struct.readelf*, %struct.readelf** %2, align 8
  %11 = getelementptr inbounds %struct.readelf, %struct.readelf* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ult i64 %9, %12
  br i1 %13, label %14, label %54

14:                                               ; preds = %7
  %15 = load %struct.readelf*, %struct.readelf** %2, align 8
  %16 = getelementptr inbounds %struct.readelf, %struct.readelf* %15, i32 0, i32 7
  %17 = load %struct.section*, %struct.section** %16, align 8
  %18 = load i32, i32* %6, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.section, %struct.section* %17, i64 %19
  store %struct.section* %20, %struct.section** %3, align 8
  %21 = load %struct.section*, %struct.section** %3, align 8
  %22 = getelementptr inbounds %struct.section, %struct.section* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @SHT_SUNW_versym, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %14
  %27 = load %struct.section*, %struct.section** %3, align 8
  %28 = load %struct.readelf*, %struct.readelf** %2, align 8
  %29 = getelementptr inbounds %struct.readelf, %struct.readelf* %28, i32 0, i32 3
  store %struct.section* %27, %struct.section** %29, align 8
  br label %30

30:                                               ; preds = %26, %14
  %31 = load %struct.section*, %struct.section** %3, align 8
  %32 = getelementptr inbounds %struct.section, %struct.section* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @SHT_SUNW_verneed, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %30
  %37 = load %struct.section*, %struct.section** %3, align 8
  %38 = load %struct.readelf*, %struct.readelf** %2, align 8
  %39 = getelementptr inbounds %struct.readelf, %struct.readelf* %38, i32 0, i32 5
  store %struct.section* %37, %struct.section** %39, align 8
  br label %40

40:                                               ; preds = %36, %30
  %41 = load %struct.section*, %struct.section** %3, align 8
  %42 = getelementptr inbounds %struct.section, %struct.section* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @SHT_SUNW_verdef, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %50

46:                                               ; preds = %40
  %47 = load %struct.section*, %struct.section** %3, align 8
  %48 = load %struct.readelf*, %struct.readelf** %2, align 8
  %49 = getelementptr inbounds %struct.readelf, %struct.readelf* %48, i32 0, i32 6
  store %struct.section* %47, %struct.section** %49, align 8
  br label %50

50:                                               ; preds = %46, %40
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %6, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %6, align 4
  br label %7

54:                                               ; preds = %7
  %55 = load %struct.readelf*, %struct.readelf** %2, align 8
  %56 = getelementptr inbounds %struct.readelf, %struct.readelf* %55, i32 0, i32 6
  %57 = load %struct.section*, %struct.section** %56, align 8
  %58 = icmp ne %struct.section* %57, null
  br i1 %58, label %59, label %62

59:                                               ; preds = %54
  %60 = load %struct.readelf*, %struct.readelf** %2, align 8
  %61 = call i32 @dump_verdef(%struct.readelf* %60, i32 0)
  br label %62

62:                                               ; preds = %59, %54
  %63 = load %struct.readelf*, %struct.readelf** %2, align 8
  %64 = getelementptr inbounds %struct.readelf, %struct.readelf* %63, i32 0, i32 5
  %65 = load %struct.section*, %struct.section** %64, align 8
  %66 = icmp ne %struct.section* %65, null
  br i1 %66, label %67, label %70

67:                                               ; preds = %62
  %68 = load %struct.readelf*, %struct.readelf** %2, align 8
  %69 = call i32 @dump_verneed(%struct.readelf* %68, i32 0)
  br label %70

70:                                               ; preds = %67, %62
  %71 = load %struct.readelf*, %struct.readelf** %2, align 8
  %72 = getelementptr inbounds %struct.readelf, %struct.readelf* %71, i32 0, i32 3
  %73 = load %struct.section*, %struct.section** %72, align 8
  %74 = icmp ne %struct.section* %73, null
  br i1 %74, label %75, label %118

75:                                               ; preds = %70
  %76 = load %struct.readelf*, %struct.readelf** %2, align 8
  %77 = getelementptr inbounds %struct.readelf, %struct.readelf* %76, i32 0, i32 4
  %78 = load i32*, i32** %77, align 8
  %79 = icmp ne i32* %78, null
  br i1 %79, label %80, label %118

80:                                               ; preds = %75
  %81 = call i32 (...) @elf_errno()
  %82 = load %struct.readelf*, %struct.readelf** %2, align 8
  %83 = getelementptr inbounds %struct.readelf, %struct.readelf* %82, i32 0, i32 3
  %84 = load %struct.section*, %struct.section** %83, align 8
  %85 = getelementptr inbounds %struct.section, %struct.section* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = call %struct.TYPE_3__* @elf_getdata(i32 %86, i32* null)
  store %struct.TYPE_3__* %87, %struct.TYPE_3__** %4, align 8
  %88 = icmp eq %struct.TYPE_3__* %87, null
  br i1 %88, label %89, label %98

89:                                               ; preds = %80
  %90 = call i32 (...) @elf_errno()
  store i32 %90, i32* %5, align 4
  %91 = load i32, i32* %5, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %97

93:                                               ; preds = %89
  %94 = load i32, i32* %5, align 4
  %95 = call i32 @elf_errmsg(i32 %94)
  %96 = call i32 @warnx(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %95)
  br label %97

97:                                               ; preds = %93, %89
  br label %118

98:                                               ; preds = %80
  %99 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %98
  br label %118

104:                                              ; preds = %98
  %105 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.readelf*, %struct.readelf** %2, align 8
  %109 = getelementptr inbounds %struct.readelf, %struct.readelf* %108, i32 0, i32 2
  store i32 %107, i32* %109, align 4
  %110 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = sext i32 %112 to i64
  %114 = udiv i64 %113, 4
  %115 = trunc i64 %114 to i32
  %116 = load %struct.readelf*, %struct.readelf** %2, align 8
  %117 = getelementptr inbounds %struct.readelf, %struct.readelf* %116, i32 0, i32 1
  store i32 %115, i32* %117, align 8
  br label %118

118:                                              ; preds = %97, %103, %104, %75, %70
  ret void
}

declare dso_local i32 @dump_verdef(%struct.readelf*, i32) #1

declare dso_local i32 @dump_verneed(%struct.readelf*, i32) #1

declare dso_local i32 @elf_errno(...) #1

declare dso_local %struct.TYPE_3__* @elf_getdata(i32, i32*) #1

declare dso_local i32 @warnx(i8*, i32) #1

declare dso_local i32 @elf_errmsg(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
