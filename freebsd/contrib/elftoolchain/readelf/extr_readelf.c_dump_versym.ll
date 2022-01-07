; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/readelf/extr_readelf.c_dump_versym.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/readelf/extr_readelf.c_dump_versym.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.readelf = type { i64*, i32, i64, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i8* }
%struct.TYPE_3__ = type { i8* }

@.str = private unnamed_addr constant [31 x i8] c"\0AVersion symbol section (%s):\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"  %03x:\00", align 1
@VERSYM_VERSION = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [32 x i8] c"invalid versym version index %u\00", align 1
@VERSYM_HIDDEN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [13 x i8] c" %3xh %-12s \00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c" %3x %-12s \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.readelf*)* @dump_versym to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_versym(%struct.readelf* %0) #0 {
  %2 = alloca %struct.readelf*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  store %struct.readelf* %0, %struct.readelf** %2, align 8
  %5 = load %struct.readelf*, %struct.readelf** %2, align 8
  %6 = getelementptr inbounds %struct.readelf, %struct.readelf* %5, i32 0, i32 4
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %8 = icmp eq %struct.TYPE_3__* %7, null
  br i1 %8, label %19, label %9

9:                                                ; preds = %1
  %10 = load %struct.readelf*, %struct.readelf** %2, align 8
  %11 = getelementptr inbounds %struct.readelf, %struct.readelf* %10, i32 0, i32 3
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = icmp eq %struct.TYPE_4__* %12, null
  br i1 %13, label %19, label %14

14:                                               ; preds = %9
  %15 = load %struct.readelf*, %struct.readelf** %2, align 8
  %16 = getelementptr inbounds %struct.readelf, %struct.readelf* %15, i32 0, i32 0
  %17 = load i64*, i64** %16, align 8
  %18 = icmp eq i64* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %14, %9, %1
  br label %130

20:                                               ; preds = %14
  %21 = load %struct.readelf*, %struct.readelf** %2, align 8
  %22 = getelementptr inbounds %struct.readelf, %struct.readelf* %21, i32 0, i32 4
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  %26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i8* %25)
  store i32 0, i32* %3, align 4
  br label %27

27:                                               ; preds = %125, %20
  %28 = load i32, i32* %3, align 4
  %29 = load %struct.readelf*, %struct.readelf** %2, align 8
  %30 = getelementptr inbounds %struct.readelf, %struct.readelf* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = icmp slt i32 %28, %31
  br i1 %32, label %33, label %128

33:                                               ; preds = %27
  %34 = load i32, i32* %3, align 4
  %35 = and i32 %34, 3
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %45

37:                                               ; preds = %33
  %38 = load i32, i32* %3, align 4
  %39 = icmp sgt i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %37
  %41 = call i32 @putchar(i8 signext 10)
  br label %42

42:                                               ; preds = %40, %37
  %43 = load i32, i32* %3, align 4
  %44 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %43)
  br label %45

45:                                               ; preds = %42, %33
  %46 = load %struct.readelf*, %struct.readelf** %2, align 8
  %47 = getelementptr inbounds %struct.readelf, %struct.readelf* %46, i32 0, i32 0
  %48 = load i64*, i64** %47, align 8
  %49 = load i32, i32* %3, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i64, i64* %48, i64 %50
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @VERSYM_VERSION, align 8
  %54 = and i64 %52, %53
  store i64 %54, i64* %4, align 8
  %55 = load i64, i64* %4, align 8
  %56 = load %struct.readelf*, %struct.readelf** %2, align 8
  %57 = getelementptr inbounds %struct.readelf, %struct.readelf* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = icmp uge i64 %55, %58
  br i1 %59, label %69, label %60

60:                                               ; preds = %45
  %61 = load %struct.readelf*, %struct.readelf** %2, align 8
  %62 = getelementptr inbounds %struct.readelf, %struct.readelf* %61, i32 0, i32 3
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %62, align 8
  %64 = load i64, i64* %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load i8*, i8** %66, align 8
  %68 = icmp eq i8* %67, null
  br i1 %68, label %69, label %78

69:                                               ; preds = %60, %45
  %70 = load %struct.readelf*, %struct.readelf** %2, align 8
  %71 = getelementptr inbounds %struct.readelf, %struct.readelf* %70, i32 0, i32 0
  %72 = load i64*, i64** %71, align 8
  %73 = load i32, i32* %3, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i64, i64* %72, i64 %74
  %76 = load i64, i64* %75, align 8
  %77 = call i32 @warnx(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i64 %76)
  br label %128

78:                                               ; preds = %60
  %79 = load %struct.readelf*, %struct.readelf** %2, align 8
  %80 = getelementptr inbounds %struct.readelf, %struct.readelf* %79, i32 0, i32 0
  %81 = load i64*, i64** %80, align 8
  %82 = load i32, i32* %3, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i64, i64* %81, i64 %83
  %85 = load i64, i64* %84, align 8
  %86 = load i32, i32* @VERSYM_HIDDEN, align 4
  %87 = sext i32 %86 to i64
  %88 = and i64 %85, %87
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %108

90:                                               ; preds = %78
  %91 = load i64, i64* %4, align 8
  %92 = load %struct.readelf*, %struct.readelf** %2, align 8
  %93 = getelementptr inbounds %struct.readelf, %struct.readelf* %92, i32 0, i32 3
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %93, align 8
  %95 = load %struct.readelf*, %struct.readelf** %2, align 8
  %96 = getelementptr inbounds %struct.readelf, %struct.readelf* %95, i32 0, i32 0
  %97 = load i64*, i64** %96, align 8
  %98 = load i32, i32* %3, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i64, i64* %97, i64 %99
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @VERSYM_VERSION, align 8
  %103 = and i64 %101, %102
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 0
  %106 = load i8*, i8** %105, align 8
  %107 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i64 %91, i8* %106)
  br label %124

108:                                              ; preds = %78
  %109 = load i64, i64* %4, align 8
  %110 = load %struct.readelf*, %struct.readelf** %2, align 8
  %111 = getelementptr inbounds %struct.readelf, %struct.readelf* %110, i32 0, i32 3
  %112 = load %struct.TYPE_4__*, %struct.TYPE_4__** %111, align 8
  %113 = load %struct.readelf*, %struct.readelf** %2, align 8
  %114 = getelementptr inbounds %struct.readelf, %struct.readelf* %113, i32 0, i32 0
  %115 = load i64*, i64** %114, align 8
  %116 = load i32, i32* %3, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i64, i64* %115, i64 %117
  %119 = load i64, i64* %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 0
  %122 = load i8*, i8** %121, align 8
  %123 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i64 %109, i8* %122)
  br label %124

124:                                              ; preds = %108, %90
  br label %125

125:                                              ; preds = %124
  %126 = load i32, i32* %3, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %3, align 4
  br label %27

128:                                              ; preds = %69, %27
  %129 = call i32 @putchar(i8 signext 10)
  br label %130

130:                                              ; preds = %128, %19
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @putchar(i8 signext) #1

declare dso_local i32 @warnx(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
