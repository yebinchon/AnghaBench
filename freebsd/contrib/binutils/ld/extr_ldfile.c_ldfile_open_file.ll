; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/ld/extr_ldfile.c_ldfile_open_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/ld/extr_ldfile.c_ldfile_open_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, %struct.TYPE_8__* }
%struct.TYPE_9__ = type { i32, i64, i8*, i32, i32* }

@.str = private unnamed_addr constant [33 x i8] c"%F%P: %s (%s): No such file: %E\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"%F%P: %s: No such file: %E\0A\00", align 1
@FALSE = common dso_local global i8* null, align 8
@search_arch_head = common dso_local global %struct.TYPE_8__* null, align 8
@.str.2 = private unnamed_addr constant [4 x i8] c"lib\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c".a\00", align 1
@ld_sysroot = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [32 x i8] c"%F%P: cannot find %s inside %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"%F%P: cannot find %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ldfile_open_file(%struct.TYPE_9__* %0) #0 {
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i8*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %2, align 8
  %5 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 4
  %7 = load i32*, i32** %6, align 8
  %8 = icmp ne i32* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %113

10:                                               ; preds = %1
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 2
  %13 = load i8*, i8** %12, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %48, label %15

15:                                               ; preds = %10
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %20 = call i64 @ldfile_try_open_bfd(i32 %18, %struct.TYPE_9__* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %15
  br label %113

23:                                               ; preds = %15
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i64 @strcmp(i32 %26, i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %41

32:                                               ; preds = %23
  %33 = call i32 @_(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i32 (i32, i32, ...) @einfo(i32 %33, i32 %36, i32 %39)
  br label %47

41:                                               ; preds = %23
  %42 = call i32 @_(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i32 (i32, i32, ...) @einfo(i32 %42, i32 %45)
  br label %47

47:                                               ; preds = %41, %32
  br label %113

48:                                               ; preds = %10
  %49 = load i8*, i8** @FALSE, align 8
  store i8* %49, i8** %4, align 8
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** @search_arch_head, align 8
  store %struct.TYPE_8__* %50, %struct.TYPE_8__** %3, align 8
  br label %51

51:                                               ; preds = %73, %48
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %53 = icmp ne %struct.TYPE_8__* %52, null
  br i1 %53, label %54, label %77

54:                                               ; preds = %51
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %59 = call i8* @ldfile_open_file_search(i32 %57, %struct.TYPE_9__* %58, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  store i8* %59, i8** %4, align 8
  %60 = load i8*, i8** %4, align 8
  %61 = icmp ne i8* %60, null
  br i1 %61, label %62, label %63

62:                                               ; preds = %54
  br label %77

63:                                               ; preds = %54
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %68 = call i8* @ldemul_find_potential_libraries(i32 %66, %struct.TYPE_9__* %67)
  store i8* %68, i8** %4, align 8
  %69 = load i8*, i8** %4, align 8
  %70 = icmp ne i8* %69, null
  br i1 %70, label %71, label %72

71:                                               ; preds = %63
  br label %77

72:                                               ; preds = %63
  br label %73

73:                                               ; preds = %72
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 1
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %75, align 8
  store %struct.TYPE_8__* %76, %struct.TYPE_8__** %3, align 8
  br label %51

77:                                               ; preds = %71, %62, %51
  %78 = load i8*, i8** %4, align 8
  %79 = icmp ne i8* %78, null
  br i1 %79, label %80, label %84

80:                                               ; preds = %77
  %81 = load i8*, i8** @FALSE, align 8
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 2
  store i8* %81, i8** %83, align 8
  br label %112

84:                                               ; preds = %77
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %105

89:                                               ; preds = %84
  %90 = load i64, i64* @ld_sysroot, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %105

92:                                               ; preds = %89
  %93 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = call i64 @IS_ABSOLUTE_PATH(i32 %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %105

98:                                               ; preds = %92
  %99 = call i32 @_(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0))
  %100 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load i64, i64* @ld_sysroot, align 8
  %104 = call i32 (i32, i32, ...) @einfo(i32 %99, i32 %102, i64 %103)
  br label %111

105:                                              ; preds = %92, %89, %84
  %106 = call i32 @_(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0))
  %107 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %108 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = call i32 (i32, i32, ...) @einfo(i32 %106, i32 %109)
  br label %111

111:                                              ; preds = %105, %98
  br label %112

112:                                              ; preds = %111, %80
  br label %113

113:                                              ; preds = %9, %22, %112, %47
  ret void
}

declare dso_local i64 @ldfile_try_open_bfd(i32, %struct.TYPE_9__*) #1

declare dso_local i64 @strcmp(i32, i32) #1

declare dso_local i32 @einfo(i32, i32, ...) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i8* @ldfile_open_file_search(i32, %struct.TYPE_9__*, i8*, i8*) #1

declare dso_local i8* @ldemul_find_potential_libraries(i32, %struct.TYPE_9__*) #1

declare dso_local i64 @IS_ABSOLUTE_PATH(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
