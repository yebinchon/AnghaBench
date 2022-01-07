; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/file/src/extr_apprentice.c_file_apprentice.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/file/src/extr_apprentice.c_file_apprentice.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.magic_set = type { i32** }

@MAGIC_SETS = common dso_local global i64 0, align 8
@PATHSEP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"could not find any valid magic files!\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"Invalid action %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @file_apprentice(%struct.magic_set* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.magic_set*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.magic_set* %0, %struct.magic_set** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 -1, i32* %11, align 4
  %13 = load %struct.magic_set*, %struct.magic_set** %5, align 8
  %14 = call i32 @file_reset(%struct.magic_set* %13, i32 0)
  %15 = load i8*, i8** %6, align 8
  %16 = load i32, i32* %7, align 4
  %17 = call i8* @magic_getpath(i8* %15, i32 %16)
  store i8* %17, i8** %6, align 8
  %18 = icmp eq i8* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %142

20:                                               ; preds = %3
  %21 = call i32 (...) @init_file_tables()
  %22 = load i8*, i8** %6, align 8
  %23 = call i8* @strdup(i8* %22)
  store i8* %23, i8** %9, align 8
  %24 = icmp eq i8* %23, null
  br i1 %24, label %25, label %30

25:                                               ; preds = %20
  %26 = load %struct.magic_set*, %struct.magic_set** %5, align 8
  %27 = load i8*, i8** %6, align 8
  %28 = call i32 @strlen(i8* %27)
  %29 = call i32 @file_oomem(%struct.magic_set* %26, i32 %28)
  store i32 -1, i32* %4, align 4
  br label %142

30:                                               ; preds = %20
  store i64 0, i64* %12, align 8
  br label %31

31:                                               ; preds = %74, %30
  %32 = load i64, i64* %12, align 8
  %33 = load i64, i64* @MAGIC_SETS, align 8
  %34 = icmp ult i64 %32, %33
  br i1 %34, label %35, label %77

35:                                               ; preds = %31
  %36 = load %struct.magic_set*, %struct.magic_set** %5, align 8
  %37 = getelementptr inbounds %struct.magic_set, %struct.magic_set* %36, i32 0, i32 0
  %38 = load i32**, i32*** %37, align 8
  %39 = load i64, i64* %12, align 8
  %40 = getelementptr inbounds i32*, i32** %38, i64 %39
  %41 = load i32*, i32** %40, align 8
  %42 = call i32 @mlist_free(i32* %41)
  %43 = call i32* (...) @mlist_alloc()
  %44 = load %struct.magic_set*, %struct.magic_set** %5, align 8
  %45 = getelementptr inbounds %struct.magic_set, %struct.magic_set* %44, i32 0, i32 0
  %46 = load i32**, i32*** %45, align 8
  %47 = load i64, i64* %12, align 8
  %48 = getelementptr inbounds i32*, i32** %46, i64 %47
  store i32* %43, i32** %48, align 8
  %49 = icmp eq i32* %43, null
  br i1 %49, label %50, label %73

50:                                               ; preds = %35
  %51 = load %struct.magic_set*, %struct.magic_set** %5, align 8
  %52 = call i32 @file_oomem(%struct.magic_set* %51, i32 4)
  br label %53

53:                                               ; preds = %57, %50
  %54 = load i64, i64* %12, align 8
  %55 = add i64 %54, -1
  store i64 %55, i64* %12, align 8
  %56 = icmp ugt i64 %54, 0
  br i1 %56, label %57, label %70

57:                                               ; preds = %53
  %58 = load %struct.magic_set*, %struct.magic_set** %5, align 8
  %59 = getelementptr inbounds %struct.magic_set, %struct.magic_set* %58, i32 0, i32 0
  %60 = load i32**, i32*** %59, align 8
  %61 = load i64, i64* %12, align 8
  %62 = getelementptr inbounds i32*, i32** %60, i64 %61
  %63 = load i32*, i32** %62, align 8
  %64 = call i32 @mlist_free(i32* %63)
  %65 = load %struct.magic_set*, %struct.magic_set** %5, align 8
  %66 = getelementptr inbounds %struct.magic_set, %struct.magic_set* %65, i32 0, i32 0
  %67 = load i32**, i32*** %66, align 8
  %68 = load i64, i64* %12, align 8
  %69 = getelementptr inbounds i32*, i32** %67, i64 %68
  store i32* null, i32** %69, align 8
  br label %53

70:                                               ; preds = %53
  %71 = load i8*, i8** %9, align 8
  %72 = call i32 @free(i8* %71)
  store i32 -1, i32* %4, align 4
  br label %142

73:                                               ; preds = %35
  br label %74

74:                                               ; preds = %73
  %75 = load i64, i64* %12, align 8
  %76 = add i64 %75, 1
  store i64 %76, i64* %12, align 8
  br label %31

77:                                               ; preds = %31
  %78 = load i8*, i8** %9, align 8
  store i8* %78, i8** %6, align 8
  br label %79

79:                                               ; preds = %97, %77
  %80 = load i8*, i8** %6, align 8
  %81 = icmp ne i8* %80, null
  br i1 %81, label %82, label %106

82:                                               ; preds = %79
  %83 = load i8*, i8** %6, align 8
  %84 = load i32, i32* @PATHSEP, align 4
  %85 = call i8* @strchr(i8* %83, i32 %84)
  store i8* %85, i8** %8, align 8
  %86 = load i8*, i8** %8, align 8
  %87 = icmp ne i8* %86, null
  br i1 %87, label %88, label %91

88:                                               ; preds = %82
  %89 = load i8*, i8** %8, align 8
  %90 = getelementptr inbounds i8, i8* %89, i32 1
  store i8* %90, i8** %8, align 8
  store i8 0, i8* %89, align 1
  br label %91

91:                                               ; preds = %88, %82
  %92 = load i8*, i8** %6, align 8
  %93 = load i8, i8* %92, align 1
  %94 = sext i8 %93 to i32
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %91
  br label %106

97:                                               ; preds = %91
  %98 = load %struct.magic_set*, %struct.magic_set** %5, align 8
  %99 = load i8*, i8** %6, align 8
  %100 = load i32, i32* %7, align 4
  %101 = call i32 @apprentice_1(%struct.magic_set* %98, i8* %99, i32 %100)
  store i32 %101, i32* %10, align 4
  %102 = load i32, i32* %11, align 4
  %103 = load i32, i32* %10, align 4
  %104 = call i32 @MAX(i32 %102, i32 %103)
  store i32 %104, i32* %11, align 4
  %105 = load i8*, i8** %8, align 8
  store i8* %105, i8** %6, align 8
  br label %79

106:                                              ; preds = %96, %79
  %107 = load i8*, i8** %9, align 8
  %108 = call i32 @free(i8* %107)
  %109 = load i32, i32* %11, align 4
  %110 = icmp eq i32 %109, -1
  br i1 %110, label %111, label %135

111:                                              ; preds = %106
  store i64 0, i64* %12, align 8
  br label %112

112:                                              ; preds = %129, %111
  %113 = load i64, i64* %12, align 8
  %114 = load i64, i64* @MAGIC_SETS, align 8
  %115 = icmp ult i64 %113, %114
  br i1 %115, label %116, label %132

116:                                              ; preds = %112
  %117 = load %struct.magic_set*, %struct.magic_set** %5, align 8
  %118 = getelementptr inbounds %struct.magic_set, %struct.magic_set* %117, i32 0, i32 0
  %119 = load i32**, i32*** %118, align 8
  %120 = load i64, i64* %12, align 8
  %121 = getelementptr inbounds i32*, i32** %119, i64 %120
  %122 = load i32*, i32** %121, align 8
  %123 = call i32 @mlist_free(i32* %122)
  %124 = load %struct.magic_set*, %struct.magic_set** %5, align 8
  %125 = getelementptr inbounds %struct.magic_set, %struct.magic_set* %124, i32 0, i32 0
  %126 = load i32**, i32*** %125, align 8
  %127 = load i64, i64* %12, align 8
  %128 = getelementptr inbounds i32*, i32** %126, i64 %127
  store i32* null, i32** %128, align 8
  br label %129

129:                                              ; preds = %116
  %130 = load i64, i64* %12, align 8
  %131 = add i64 %130, 1
  store i64 %131, i64* %12, align 8
  br label %112

132:                                              ; preds = %112
  %133 = load %struct.magic_set*, %struct.magic_set** %5, align 8
  %134 = call i32 (%struct.magic_set*, i32, i8*, ...) @file_error(%struct.magic_set* %133, i32 0, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %142

135:                                              ; preds = %106
  %136 = load i32, i32* %7, align 4
  switch i32 %136, label %138 [
    i32 128, label %137
    i32 130, label %137
    i32 131, label %137
    i32 129, label %137
  ]

137:                                              ; preds = %135, %135, %135, %135
  store i32 0, i32* %4, align 4
  br label %142

138:                                              ; preds = %135
  %139 = load %struct.magic_set*, %struct.magic_set** %5, align 8
  %140 = load i32, i32* %7, align 4
  %141 = call i32 (%struct.magic_set*, i32, i8*, ...) @file_error(%struct.magic_set* %139, i32 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %140)
  store i32 -1, i32* %4, align 4
  br label %142

142:                                              ; preds = %138, %137, %132, %70, %25, %19
  %143 = load i32, i32* %4, align 4
  ret i32 %143
}

declare dso_local i32 @file_reset(%struct.magic_set*, i32) #1

declare dso_local i8* @magic_getpath(i8*, i32) #1

declare dso_local i32 @init_file_tables(...) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @file_oomem(%struct.magic_set*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @mlist_free(i32*) #1

declare dso_local i32* @mlist_alloc(...) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i8* @strchr(i8*, i32) #1

declare dso_local i32 @apprentice_1(%struct.magic_set*, i8*, i32) #1

declare dso_local i32 @MAX(i32, i32) #1

declare dso_local i32 @file_error(%struct.magic_set*, i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
