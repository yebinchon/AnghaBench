; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/readelf/extr_readelf.c_section_flags.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/readelf/extr_readelf.c_section_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i32, i8 }
%struct.readelf = type { i64, i32 }
%struct.section = type { i32 }

@section_flags.buf = internal global [256 x i8] zeroinitializer, align 16
@ELFCLASS32 = common dso_local global i64 0, align 8
@RE_T = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"[%*.*jx]: \00", align 1
@section_flag = common dso_local global %struct.TYPE_2__* null, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"%s, \00", align 1
@BUF_SZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.readelf*, %struct.section*)* @section_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @section_flags(%struct.readelf* %0, %struct.section* %1) #0 {
  %3 = alloca %struct.readelf*, align 8
  %4 = alloca %struct.section*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.readelf* %0, %struct.readelf** %3, align 8
  store %struct.section* %1, %struct.section** %4, align 8
  store i32 0, i32* %6, align 4
  %8 = load %struct.readelf*, %struct.readelf** %3, align 8
  %9 = getelementptr inbounds %struct.readelf, %struct.readelf* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @ELFCLASS32, align 8
  %12 = icmp eq i64 %10, %11
  %13 = zext i1 %12 to i64
  %14 = select i1 %12, i32 8, i32 16
  store i32 %14, i32* %7, align 4
  %15 = load %struct.readelf*, %struct.readelf** %3, align 8
  %16 = getelementptr inbounds %struct.readelf, %struct.readelf* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @RE_T, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %32

21:                                               ; preds = %2
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = load %struct.section*, %struct.section** %4, align 8
  %25 = getelementptr inbounds %struct.section, %struct.section* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @section_flags.buf, i64 0, i64 0), i32 256, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %22, i32 %23, i32 %26)
  %28 = load i32, i32* %7, align 4
  %29 = add nsw i32 %28, 4
  %30 = load i32, i32* %6, align 4
  %31 = add nsw i32 %30, %29
  store i32 %31, i32* %6, align 4
  br label %32

32:                                               ; preds = %21, %2
  store i32 0, i32* %5, align 4
  br label %33

33:                                               ; preds = %98, %32
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** @section_flag, align 8
  %35 = load i32, i32* %5, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %41, label %101

41:                                               ; preds = %33
  %42 = load %struct.section*, %struct.section** %4, align 8
  %43 = getelementptr inbounds %struct.section, %struct.section* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** @section_flag, align 8
  %46 = load i32, i32* %5, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = and i32 %44, %50
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %41
  br label %98

54:                                               ; preds = %41
  %55 = load %struct.readelf*, %struct.readelf** %3, align 8
  %56 = getelementptr inbounds %struct.readelf, %struct.readelf* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @RE_T, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %86

61:                                               ; preds = %54
  %62 = load i32, i32* %6, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds [256 x i8], [256 x i8]* @section_flags.buf, i64 0, i64 %63
  %65 = load i32, i32* %6, align 4
  %66 = sub nsw i32 256, %65
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** @section_flag, align 8
  %68 = load i32, i32* %5, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load i8*, i8** %71, align 8
  %73 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %64, i32 %66, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %72)
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** @section_flag, align 8
  %75 = load i32, i32* %5, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  %79 = load i8*, i8** %78, align 8
  %80 = call i64 @strlen(i8* %79)
  %81 = add nsw i64 %80, 2
  %82 = load i32, i32* %6, align 4
  %83 = sext i32 %82 to i64
  %84 = add nsw i64 %83, %81
  %85 = trunc i64 %84 to i32
  store i32 %85, i32* %6, align 4
  br label %97

86:                                               ; preds = %54
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** @section_flag, align 8
  %88 = load i32, i32* %5, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 2
  %92 = load i8, i8* %91, align 4
  %93 = load i32, i32* %6, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %6, align 4
  %95 = sext i32 %93 to i64
  %96 = getelementptr inbounds [256 x i8], [256 x i8]* @section_flags.buf, i64 0, i64 %95
  store i8 %92, i8* %96, align 1
  br label %97

97:                                               ; preds = %86, %61
  br label %98

98:                                               ; preds = %97, %53
  %99 = load i32, i32* %5, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %5, align 4
  br label %33

101:                                              ; preds = %33
  %102 = load %struct.readelf*, %struct.readelf** %3, align 8
  %103 = getelementptr inbounds %struct.readelf, %struct.readelf* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* @RE_T, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %116

108:                                              ; preds = %101
  %109 = load i32, i32* %6, align 4
  %110 = load i32, i32* %7, align 4
  %111 = add nsw i32 %110, 4
  %112 = icmp sgt i32 %109, %111
  br i1 %112, label %113, label %116

113:                                              ; preds = %108
  %114 = load i32, i32* %6, align 4
  %115 = sub nsw i32 %114, 2
  store i32 %115, i32* %6, align 4
  br label %116

116:                                              ; preds = %113, %108, %101
  %117 = load i32, i32* %6, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds [256 x i8], [256 x i8]* @section_flags.buf, i64 0, i64 %118
  store i8 0, i8* %119, align 1
  ret i8* getelementptr inbounds ([256 x i8], [256 x i8]* @section_flags.buf, i64 0, i64 0)
}

declare dso_local i32 @snprintf(i8*, i32, i8*, ...) #1

declare dso_local i64 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
