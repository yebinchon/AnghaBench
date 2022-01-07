; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/readelf/extr_readelf.c_dump_mips_specific_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/readelf/extr_readelf.c_dump_mips_specific_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.readelf = type { i64, %struct.section* }
%struct.section = type { i64, i32* }

@.str = private unnamed_addr constant [14 x i8] c".MIPS.options\00", align 1
@SHT_MIPS_OPTIONS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [15 x i8] c".MIPS.abiflags\00", align 1
@SHT_MIPS_ABIFLAGS = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [9 x i8] c".reginfo\00", align 1
@SHT_MIPS_REGINFO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.readelf*)* @dump_mips_specific_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_mips_specific_info(%struct.readelf* %0) #0 {
  %2 = alloca %struct.readelf*, align 8
  %3 = alloca %struct.section*, align 8
  %4 = alloca i32, align 4
  store %struct.readelf* %0, %struct.readelf** %2, align 8
  store %struct.section* null, %struct.section** %3, align 8
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %40, %1
  %6 = load i32, i32* %4, align 4
  %7 = sext i32 %6 to i64
  %8 = load %struct.readelf*, %struct.readelf** %2, align 8
  %9 = getelementptr inbounds %struct.readelf, %struct.readelf* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ult i64 %7, %10
  br i1 %11, label %12, label %43

12:                                               ; preds = %5
  %13 = load %struct.readelf*, %struct.readelf** %2, align 8
  %14 = getelementptr inbounds %struct.readelf, %struct.readelf* %13, i32 0, i32 1
  %15 = load %struct.section*, %struct.section** %14, align 8
  %16 = load i32, i32* %4, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.section, %struct.section* %15, i64 %17
  store %struct.section* %18, %struct.section** %3, align 8
  %19 = load %struct.section*, %struct.section** %3, align 8
  %20 = getelementptr inbounds %struct.section, %struct.section* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %23, label %39

23:                                               ; preds = %12
  %24 = load %struct.section*, %struct.section** %3, align 8
  %25 = getelementptr inbounds %struct.section, %struct.section* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = call i32 @strcmp(i32* %26, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %23
  %30 = load %struct.section*, %struct.section** %3, align 8
  %31 = getelementptr inbounds %struct.section, %struct.section* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @SHT_MIPS_OPTIONS, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %29, %23
  %36 = load %struct.readelf*, %struct.readelf** %2, align 8
  %37 = load %struct.section*, %struct.section** %3, align 8
  %38 = call i32 @dump_mips_options(%struct.readelf* %36, %struct.section* %37)
  br label %39

39:                                               ; preds = %35, %29, %12
  br label %40

40:                                               ; preds = %39
  %41 = load i32, i32* %4, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %4, align 4
  br label %5

43:                                               ; preds = %5
  %44 = load %struct.section*, %struct.section** %3, align 8
  %45 = getelementptr inbounds %struct.section, %struct.section* %44, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = icmp ne i32* %46, null
  br i1 %47, label %48, label %64

48:                                               ; preds = %43
  %49 = load %struct.section*, %struct.section** %3, align 8
  %50 = getelementptr inbounds %struct.section, %struct.section* %49, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  %52 = call i32 @strcmp(i32* %51, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %48
  %55 = load %struct.section*, %struct.section** %3, align 8
  %56 = getelementptr inbounds %struct.section, %struct.section* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @SHT_MIPS_ABIFLAGS, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %64

60:                                               ; preds = %54, %48
  %61 = load %struct.readelf*, %struct.readelf** %2, align 8
  %62 = load %struct.section*, %struct.section** %3, align 8
  %63 = call i32 @dump_mips_abiflags(%struct.readelf* %61, %struct.section* %62)
  br label %64

64:                                               ; preds = %60, %54, %43
  store i32 0, i32* %4, align 4
  br label %65

65:                                               ; preds = %100, %64
  %66 = load i32, i32* %4, align 4
  %67 = sext i32 %66 to i64
  %68 = load %struct.readelf*, %struct.readelf** %2, align 8
  %69 = getelementptr inbounds %struct.readelf, %struct.readelf* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = icmp ult i64 %67, %70
  br i1 %71, label %72, label %103

72:                                               ; preds = %65
  %73 = load %struct.readelf*, %struct.readelf** %2, align 8
  %74 = getelementptr inbounds %struct.readelf, %struct.readelf* %73, i32 0, i32 1
  %75 = load %struct.section*, %struct.section** %74, align 8
  %76 = load i32, i32* %4, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.section, %struct.section* %75, i64 %77
  store %struct.section* %78, %struct.section** %3, align 8
  %79 = load %struct.section*, %struct.section** %3, align 8
  %80 = getelementptr inbounds %struct.section, %struct.section* %79, i32 0, i32 1
  %81 = load i32*, i32** %80, align 8
  %82 = icmp ne i32* %81, null
  br i1 %82, label %83, label %99

83:                                               ; preds = %72
  %84 = load %struct.section*, %struct.section** %3, align 8
  %85 = getelementptr inbounds %struct.section, %struct.section* %84, i32 0, i32 1
  %86 = load i32*, i32** %85, align 8
  %87 = call i32 @strcmp(i32* %86, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %95

89:                                               ; preds = %83
  %90 = load %struct.section*, %struct.section** %3, align 8
  %91 = getelementptr inbounds %struct.section, %struct.section* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @SHT_MIPS_REGINFO, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %95, label %99

95:                                               ; preds = %89, %83
  %96 = load %struct.readelf*, %struct.readelf** %2, align 8
  %97 = load %struct.section*, %struct.section** %3, align 8
  %98 = call i32 @dump_mips_reginfo(%struct.readelf* %96, %struct.section* %97)
  br label %99

99:                                               ; preds = %95, %89, %72
  br label %100

100:                                              ; preds = %99
  %101 = load i32, i32* %4, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %4, align 4
  br label %65

103:                                              ; preds = %65
  ret void
}

declare dso_local i32 @strcmp(i32*, i8*) #1

declare dso_local i32 @dump_mips_options(%struct.readelf*, %struct.section*) #1

declare dso_local i32 @dump_mips_abiflags(%struct.readelf*, %struct.section*) #1

declare dso_local i32 @dump_mips_reginfo(%struct.readelf*, %struct.section*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
