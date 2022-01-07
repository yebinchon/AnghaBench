; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/tools/ctf/cvt/extr_ctf.c_resurrect_objects.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/tools/ctf/cvt/extr_ctf.c_resurrect_objects.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64, i64 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_11__ = type { i64, i8*, i32, i32* }
%struct.TYPE_13__ = type { i32 }

@STT_OBJECT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"Unexpected end of object symbols at %x of %x\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"Skipping null object\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"Reference to invalid type %d\00", align 1
@STB_LOCAL = common dso_local global i64 0, align 8
@II_SVAR = common dso_local global i64 0, align 8
@II_GVAR = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [39 x i8] c"Resurrected %s object %s (%d) from %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"global\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"static\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"(none)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_12__*, %struct.TYPE_10__*, i32**, i32, i64, i32*)* @resurrect_objects to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @resurrect_objects(%struct.TYPE_12__* %0, %struct.TYPE_10__* %1, i32** %2, i32 %3, i64 %4, i32* %5) #0 {
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca i32**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_11__*, align 8
  %19 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %7, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %8, align 8
  store i32** %2, i32*** %9, align 8
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  store i32* %5, i32** %12, align 8
  %20 = load i64, i64* %11, align 8
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = add nsw i64 %20, %23
  store i64 %24, i64* %13, align 8
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = sub i64 %27, %30
  store i64 %31, i64* %14, align 8
  %32 = load i32*, i32** %12, align 8
  %33 = call i32 @symit_reset(i32* %32)
  %34 = load i64, i64* %13, align 8
  store i64 %34, i64* %15, align 8
  br label %35

35:                                               ; preds = %133, %6
  %36 = load i64, i64* %15, align 8
  %37 = load i64, i64* %13, align 8
  %38 = load i64, i64* %14, align 8
  %39 = add i64 %37, %38
  %40 = icmp ult i64 %36, %39
  br i1 %40, label %41, label %136

41:                                               ; preds = %35
  %42 = load i64, i64* %15, align 8
  %43 = inttoptr i64 %42 to i8*
  store i8* %43, i8** %16, align 8
  %44 = load i8*, i8** %16, align 8
  %45 = bitcast i8* %44 to i32*
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %17, align 4
  %47 = load i32*, i32** %12, align 8
  %48 = load i32, i32* @STT_OBJECT, align 4
  %49 = call %struct.TYPE_13__* @symit_next(i32* %47, i32 %48)
  store %struct.TYPE_13__* %49, %struct.TYPE_13__** %19, align 8
  %50 = icmp ne %struct.TYPE_13__* %49, null
  br i1 %50, label %61, label %51

51:                                               ; preds = %41
  %52 = load i32, i32* %17, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %61

54:                                               ; preds = %51
  %55 = load i64, i64* %15, align 8
  %56 = load i64, i64* %13, align 8
  %57 = sub nsw i64 %55, %56
  %58 = trunc i64 %57 to i32
  %59 = load i64, i64* %14, align 8
  %60 = call i32 (i8*, i32, ...) @parseterminate(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %58, i64 %59)
  br label %61

61:                                               ; preds = %54, %51, %41
  %62 = load i32, i32* %17, align 4
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %61
  %65 = call i32 (i32, i8*, ...) @debug(i32 3, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  br label %133

66:                                               ; preds = %61
  %67 = load i32, i32* %17, align 4
  %68 = load i32, i32* %10, align 4
  %69 = icmp sge i32 %67, %68
  br i1 %69, label %70, label %73

70:                                               ; preds = %66
  %71 = load i32, i32* %17, align 4
  %72 = call i32 (i8*, i32, ...) @parseterminate(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %71)
  br label %73

73:                                               ; preds = %70, %66
  br label %74

74:                                               ; preds = %73
  %75 = load i32*, i32** %12, align 8
  %76 = call i32 @symit_name(i32* %75)
  %77 = call %struct.TYPE_11__* @iidesc_new(i32 %76)
  store %struct.TYPE_11__* %77, %struct.TYPE_11__** %18, align 8
  %78 = load i32**, i32*** %9, align 8
  %79 = load i32, i32* %17, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32*, i32** %78, i64 %80
  %82 = load i32*, i32** %81, align 8
  %83 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %84 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %83, i32 0, i32 3
  store i32* %82, i32** %84, align 8
  %85 = load %struct.TYPE_13__*, %struct.TYPE_13__** %19, align 8
  %86 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i64 @GELF_ST_BIND(i32 %87)
  %89 = load i64, i64* @STB_LOCAL, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %91, label %100

91:                                               ; preds = %74
  %92 = load i64, i64* @II_SVAR, align 8
  %93 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %94 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %93, i32 0, i32 0
  store i64 %92, i64* %94, align 8
  %95 = load i32*, i32** %12, align 8
  %96 = call i32 @symit_curfile(i32* %95)
  %97 = call i8* @xstrdup(i32 %96)
  %98 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %99 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %98, i32 0, i32 1
  store i8* %97, i8** %99, align 8
  br label %104

100:                                              ; preds = %74
  %101 = load i64, i64* @II_GVAR, align 8
  %102 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %103 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %102, i32 0, i32 0
  store i64 %101, i64* %103, align 8
  br label %104

104:                                              ; preds = %100, %91
  %105 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %106 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %109 = call i32 @hash_add(i32 %107, %struct.TYPE_11__* %108)
  %110 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %111 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* @II_GVAR, align 8
  %114 = icmp eq i64 %112, %113
  %115 = zext i1 %114 to i64
  %116 = select i1 %114, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0)
  %117 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %118 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 8
  %120 = load i32, i32* %17, align 4
  %121 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %122 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %121, i32 0, i32 1
  %123 = load i8*, i8** %122, align 8
  %124 = icmp ne i8* %123, null
  br i1 %124, label %125, label %129

125:                                              ; preds = %104
  %126 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %127 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %126, i32 0, i32 1
  %128 = load i8*, i8** %127, align 8
  br label %130

129:                                              ; preds = %104
  br label %130

130:                                              ; preds = %129, %125
  %131 = phi i8* [ %128, %125 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), %129 ]
  %132 = call i32 (i32, i8*, ...) @debug(i32 3, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i8* %116, i32 %119, i32 %120, i8* %131)
  br label %133

133:                                              ; preds = %130, %64
  %134 = load i64, i64* %15, align 8
  %135 = add nsw i64 %134, 2
  store i64 %135, i64* %15, align 8
  br label %35

136:                                              ; preds = %35
  ret void
}

declare dso_local i32 @symit_reset(i32*) #1

declare dso_local %struct.TYPE_13__* @symit_next(i32*, i32) #1

declare dso_local i32 @parseterminate(i8*, i32, ...) #1

declare dso_local i32 @debug(i32, i8*, ...) #1

declare dso_local %struct.TYPE_11__* @iidesc_new(i32) #1

declare dso_local i32 @symit_name(i32*) #1

declare dso_local i64 @GELF_ST_BIND(i32) #1

declare dso_local i8* @xstrdup(i32) #1

declare dso_local i32 @symit_curfile(i32*) #1

declare dso_local i32 @hash_add(i32, %struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
