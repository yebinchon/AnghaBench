; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcclibs/libcpp/extr_files.c_find_file_in_dir.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcclibs/libcpp/extr_files.c_find_file_in_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_16__ = type { i8*, i64, i8*, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i8* (i8*, %struct.TYPE_17__*)* }

@remap = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i64 0, align 8
@INSERT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_15__*, %struct.TYPE_16__*, i32*)* @find_file_in_dir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_file_in_dir(%struct.TYPE_15__* %0, %struct.TYPE_16__* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8**, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %5, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %6, align 8
  store i32* %2, i32** %7, align 8
  %12 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %13 = load i32, i32* @remap, align 4
  %14 = call i64 @CPP_OPTION(%struct.TYPE_15__* %12, i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %3
  %17 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %18 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %19 = call i8* @remap_filename(%struct.TYPE_15__* %17, %struct.TYPE_16__* %18)
  store i8* %19, i8** %8, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  br label %51

22:                                               ; preds = %16, %3
  %23 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %23, i32 0, i32 3
  %25 = load %struct.TYPE_17__*, %struct.TYPE_17__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %25, i32 0, i32 0
  %27 = load i8* (i8*, %struct.TYPE_17__*)*, i8* (i8*, %struct.TYPE_17__*)** %26, align 8
  %28 = icmp ne i8* (i8*, %struct.TYPE_17__*)* %27, null
  br i1 %28, label %29, label %42

29:                                               ; preds = %22
  %30 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %30, i32 0, i32 3
  %32 = load %struct.TYPE_17__*, %struct.TYPE_17__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %32, i32 0, i32 0
  %34 = load i8* (i8*, %struct.TYPE_17__*)*, i8* (i8*, %struct.TYPE_17__*)** %33, align 8
  %35 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %35, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  %38 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %38, i32 0, i32 3
  %40 = load %struct.TYPE_17__*, %struct.TYPE_17__** %39, align 8
  %41 = call i8* %34(i8* %37, %struct.TYPE_17__* %40)
  store i8* %41, i8** %8, align 8
  br label %50

42:                                               ; preds = %22
  %43 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %43, i32 0, i32 0
  %45 = load i8*, i8** %44, align 8
  %46 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %46, i32 0, i32 3
  %48 = load %struct.TYPE_17__*, %struct.TYPE_17__** %47, align 8
  %49 = call i8* @append_file_to_dir(i8* %45, %struct.TYPE_17__* %48)
  store i8* %49, i8** %8, align 8
  br label %50

50:                                               ; preds = %42, %29
  br label %51

51:                                               ; preds = %50, %21
  %52 = load i8*, i8** %8, align 8
  %53 = icmp ne i8* %52, null
  br i1 %53, label %54, label %116

54:                                               ; preds = %51
  %55 = load i8*, i8** %8, align 8
  %56 = call i32 @htab_hash_string(i8* %55)
  store i32 %56, i32* %9, align 4
  %57 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i8*, i8** %8, align 8
  %61 = load i32, i32* %9, align 4
  %62 = call i32* @htab_find_with_hash(i32 %59, i8* %60, i32 %61)
  %63 = icmp ne i32* %62, null
  br i1 %63, label %64, label %68

64:                                               ; preds = %54
  %65 = load i64, i64* @ENOENT, align 8
  %66 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %66, i32 0, i32 1
  store i64 %65, i64* %67, align 8
  store i32 0, i32* %4, align 4
  br label %123

68:                                               ; preds = %54
  %69 = load i8*, i8** %8, align 8
  %70 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %70, i32 0, i32 2
  store i8* %69, i8** %71, align 8
  %72 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %73 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %74 = load i32*, i32** %7, align 8
  %75 = call i64 @pch_open_file(%struct.TYPE_15__* %72, %struct.TYPE_16__* %73, i32* %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %68
  store i32 1, i32* %4, align 4
  br label %123

78:                                               ; preds = %68
  %79 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %80 = call i64 @open_file(%struct.TYPE_16__* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %78
  store i32 1, i32* %4, align 4
  br label %123

83:                                               ; preds = %78
  %84 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @ENOENT, align 8
  %88 = icmp ne i64 %86, %87
  br i1 %88, label %89, label %93

89:                                               ; preds = %83
  %90 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %91 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %92 = call i32 @open_file_failed(%struct.TYPE_15__* %90, %struct.TYPE_16__* %91, i32 0)
  store i32 1, i32* %4, align 4
  br label %123

93:                                               ; preds = %83
  %94 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %94, i32 0, i32 1
  %96 = load i8*, i8** %8, align 8
  %97 = load i8*, i8** %8, align 8
  %98 = call i32 @strlen(i8* %97)
  %99 = call i8* @obstack_copy0(i32* %95, i8* %96, i32 %98)
  store i8* %99, i8** %10, align 8
  %100 = load i8*, i8** %8, align 8
  %101 = call i32 @free(i8* %100)
  %102 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load i8*, i8** %10, align 8
  %106 = load i32, i32* %9, align 4
  %107 = load i32, i32* @INSERT, align 4
  %108 = call i8** @htab_find_slot_with_hash(i32 %104, i8* %105, i32 %106, i32 %107)
  store i8** %108, i8*** %11, align 8
  %109 = load i8*, i8** %10, align 8
  %110 = load i8**, i8*** %11, align 8
  store i8* %109, i8** %110, align 8
  %111 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %112 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %111, i32 0, i32 0
  %113 = load i8*, i8** %112, align 8
  %114 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %115 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %114, i32 0, i32 2
  store i8* %113, i8** %115, align 8
  br label %122

116:                                              ; preds = %51
  %117 = load i64, i64* @ENOENT, align 8
  %118 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %119 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %118, i32 0, i32 1
  store i64 %117, i64* %119, align 8
  %120 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %121 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %120, i32 0, i32 2
  store i8* null, i8** %121, align 8
  br label %122

122:                                              ; preds = %116, %93
  store i32 0, i32* %4, align 4
  br label %123

123:                                              ; preds = %122, %89, %82, %77, %64
  %124 = load i32, i32* %4, align 4
  ret i32 %124
}

declare dso_local i64 @CPP_OPTION(%struct.TYPE_15__*, i32) #1

declare dso_local i8* @remap_filename(%struct.TYPE_15__*, %struct.TYPE_16__*) #1

declare dso_local i8* @append_file_to_dir(i8*, %struct.TYPE_17__*) #1

declare dso_local i32 @htab_hash_string(i8*) #1

declare dso_local i32* @htab_find_with_hash(i32, i8*, i32) #1

declare dso_local i64 @pch_open_file(%struct.TYPE_15__*, %struct.TYPE_16__*, i32*) #1

declare dso_local i64 @open_file(%struct.TYPE_16__*) #1

declare dso_local i32 @open_file_failed(%struct.TYPE_15__*, %struct.TYPE_16__*, i32) #1

declare dso_local i8* @obstack_copy0(i32*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i8** @htab_find_slot_with_hash(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
