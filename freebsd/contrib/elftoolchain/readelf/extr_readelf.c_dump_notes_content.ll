; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/readelf/extr_readelf.c_dump_notes_content.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/readelf/extr_readelf.c_dump_notes_content.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.readelf = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [47 x i8] c"\0ANotes at offset %#010jx with length %#010jx:\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"  %-13s %-15s %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"Owner\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"Data size\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"Description\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"invalid note header\00", align 1
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"CORE\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"<invalid>\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"  %-13s %#010jx\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"      %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.readelf*, i8*, i64, i64)* @dump_notes_content to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_notes_content(%struct.readelf* %0, i8* %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.readelf*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_4__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store %struct.readelf* %0, %struct.readelf** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %12 = load i64, i64* %8, align 8
  %13 = trunc i64 %12 to i32
  %14 = sext i32 %13 to i64
  %15 = inttoptr i64 %14 to i8*
  %16 = load i64, i64* %7, align 8
  %17 = trunc i64 %16 to i32
  %18 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i8* %15, i32 %17)
  %19 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  %20 = load i8*, i8** %6, align 8
  %21 = load i64, i64* %7, align 8
  %22 = getelementptr inbounds i8, i8* %20, i64 %21
  store i8* %22, i8** %10, align 8
  br label %23

23:                                               ; preds = %76, %4
  %24 = load i8*, i8** %6, align 8
  %25 = load i8*, i8** %10, align 8
  %26 = icmp ult i8* %24, %25
  br i1 %26, label %27, label %109

27:                                               ; preds = %23
  %28 = load i8*, i8** %6, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 12
  %30 = load i8*, i8** %10, align 8
  %31 = icmp ugt i8* %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %27
  %33 = call i32 @warnx(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0))
  br label %109

34:                                               ; preds = %27
  %35 = load i8*, i8** %6, align 8
  %36 = ptrtoint i8* %35 to i64
  %37 = inttoptr i64 %36 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %37, %struct.TYPE_4__** %9, align 8
  %38 = load i8*, i8** %6, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 12
  store i8* %39, i8** %6, align 8
  %40 = load i8*, i8** %6, align 8
  store i8* %40, i8** %11, align 8
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @roundup2(i32 %43, i32 4)
  %45 = load i8*, i8** %6, align 8
  %46 = sext i32 %44 to i64
  %47 = getelementptr inbounds i8, i8* %45, i64 %46
  store i8* %47, i8** %6, align 8
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %34
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0), i8** %11, align 8
  br label %76

53:                                               ; preds = %34
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = icmp eq i32 %56, 4
  br i1 %57, label %58, label %63

58:                                               ; preds = %53
  %59 = load i8*, i8** %11, align 8
  %60 = call i64 @strncmp(i8* %59, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i32 4)
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %58
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i8** %11, align 8
  br label %75

63:                                               ; preds = %58, %53
  %64 = load i8*, i8** %11, align 8
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @strnlen(i8* %64, i32 %67)
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = icmp sge i32 %68, %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %63
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i8** %11, align 8
  br label %74

74:                                               ; preds = %73, %63
  br label %75

75:                                               ; preds = %74, %62
  br label %76

76:                                               ; preds = %75, %52
  %77 = load i8*, i8** %11, align 8
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0), i8* %77, i32 %80)
  %82 = load i8*, i8** %11, align 8
  %83 = load %struct.readelf*, %struct.readelf** %5, align 8
  %84 = getelementptr inbounds %struct.readelf, %struct.readelf* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = call i8* @note_type(i8* %82, i32 %86, i32 %89)
  %91 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0), i8* %90)
  %92 = load %struct.readelf*, %struct.readelf** %5, align 8
  %93 = load i8*, i8** %11, align 8
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 4
  %97 = load i8*, i8** %6, align 8
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @dump_notes_data(%struct.readelf* %92, i8* %93, i32 %96, i8* %97, i32 %100)
  %102 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @roundup2(i32 %104, i32 4)
  %106 = load i8*, i8** %6, align 8
  %107 = sext i32 %105 to i64
  %108 = getelementptr inbounds i8, i8* %106, i64 %107
  store i8* %108, i8** %6, align 8
  br label %23

109:                                              ; preds = %32, %23
  ret void
}

declare dso_local i32 @printf(i8*, i8*, ...) #1

declare dso_local i32 @warnx(i8*) #1

declare dso_local i32 @roundup2(i32, i32) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @strnlen(i8*, i32) #1

declare dso_local i8* @note_type(i8*, i32, i32) #1

declare dso_local i32 @dump_notes_data(%struct.readelf*, i8*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
