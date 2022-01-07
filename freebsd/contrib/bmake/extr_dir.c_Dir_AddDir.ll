; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bmake/extr_dir.c_Dir_AddDir.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bmake/extr_dir.c_Dir_AddDir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32, i32, i64, i32 }
%struct.dirent = type { i64, i32 }

@DIR = common dso_local global i32 0, align 4
@d = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c".DOTLAST\00", align 1
@DirFindName = common dso_local global i32 0, align 4
@dotLast = common dso_local global %struct.TYPE_9__* null, align 8
@openDirectories = common dso_local global i32* null, align 8
@debug_file = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"Caching %s ...\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"done\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_8__* @Dir_AddDir(i32* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca %struct.dirent*, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32* null, i32** %6, align 8
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %7, align 8
  %9 = load i32, i32* @DIR, align 4
  %10 = load i32, i32* @d, align 4
  %11 = mul nsw i32 %9, %10
  %12 = load i8*, i8** %5, align 8
  %13 = call i64 @strcmp(i8* %12, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %35

15:                                               ; preds = %2
  %16 = load i32*, i32** %4, align 8
  %17 = load i8*, i8** %5, align 8
  %18 = load i32, i32* @DirFindName, align 4
  %19 = call i32* @Lst_Find(i32* %16, i8* %17, i32 %18)
  store i32* %19, i32** %6, align 8
  %20 = load i32*, i32** %6, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %26

22:                                               ; preds = %15
  %23 = load i32*, i32** %6, align 8
  %24 = call i64 @Lst_Datum(i32* %23)
  %25 = inttoptr i64 %24 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %25, %struct.TYPE_8__** %3, align 8
  br label %127

26:                                               ; preds = %15
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** @dotLast, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %28, align 4
  %31 = load i32*, i32** %4, align 8
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** @dotLast, align 8
  %33 = call i32 @Lst_AtFront(i32* %31, %struct.TYPE_9__* %32)
  br label %34

34:                                               ; preds = %26
  br label %35

35:                                               ; preds = %34, %2
  %36 = load i32*, i32** %4, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %38, label %43

38:                                               ; preds = %35
  %39 = load i32*, i32** @openDirectories, align 8
  %40 = load i8*, i8** %5, align 8
  %41 = load i32, i32* @DirFindName, align 4
  %42 = call i32* @Lst_Find(i32* %39, i8* %40, i32 %41)
  store i32* %42, i32** %6, align 8
  br label %43

43:                                               ; preds = %38, %35
  %44 = load i32*, i32** %6, align 8
  %45 = icmp ne i32* %44, null
  br i1 %45, label %46, label %66

46:                                               ; preds = %43
  %47 = load i32*, i32** %6, align 8
  %48 = call i64 @Lst_Datum(i32* %47)
  %49 = inttoptr i64 %48 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %49, %struct.TYPE_8__** %7, align 8
  %50 = load i32*, i32** %4, align 8
  %51 = icmp ne i32* %50, null
  br i1 %51, label %52, label %65

52:                                               ; preds = %46
  %53 = load i32*, i32** %4, align 8
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %55 = call i32* @Lst_Member(i32* %53, %struct.TYPE_8__* %54)
  %56 = icmp eq i32* %55, null
  br i1 %56, label %57, label %65

57:                                               ; preds = %52
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %59, align 8
  %62 = load i32*, i32** %4, align 8
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %64 = call i32 @Lst_AtEnd(i32* %62, %struct.TYPE_8__* %63)
  br label %65

65:                                               ; preds = %57, %52, %46
  br label %125

66:                                               ; preds = %43
  %67 = load i32, i32* @DIR, align 4
  %68 = call i64 @DEBUG(i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %66
  %71 = load i32, i32* @debug_file, align 4
  %72 = load i8*, i8** %5, align 8
  %73 = call i32 (i32, i8*, ...) @fprintf(i32 %71, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8* %72)
  br label %74

74:                                               ; preds = %70, %66
  %75 = load i8*, i8** %5, align 8
  %76 = call i32 @opendir(i8* %75)
  store i32 %76, i32* @d, align 4
  %77 = sext i32 %76 to i64
  %78 = inttoptr i64 %77 to i8*
  %79 = icmp ne i8* %78, null
  br i1 %79, label %80, label %117

80:                                               ; preds = %74
  %81 = call %struct.TYPE_8__* @bmake_malloc(i32 24)
  store %struct.TYPE_8__* %81, %struct.TYPE_8__** %7, align 8
  %82 = load i8*, i8** %5, align 8
  %83 = call i32 @bmake_strdup(i8* %82)
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 3
  store i32 %83, i32* %85, align 8
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 2
  store i64 0, i64* %87, align 8
  %88 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 0
  store i32 1, i32* %89, align 8
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 1
  %92 = call i32 @Hash_InitTable(i32* %91, i32 -1)
  br label %93

93:                                               ; preds = %97, %80
  %94 = load i32, i32* @d, align 4
  %95 = call %struct.dirent* @readdir(i32 %94)
  store %struct.dirent* %95, %struct.dirent** %8, align 8
  %96 = icmp ne %struct.dirent* %95, null
  br i1 %96, label %97, label %104

97:                                               ; preds = %93
  %98 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 1
  %100 = load %struct.dirent*, %struct.dirent** %8, align 8
  %101 = getelementptr inbounds %struct.dirent, %struct.dirent* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 8
  %103 = call i32 @Hash_CreateEntry(i32* %99, i32 %102, i32* null)
  br label %93

104:                                              ; preds = %93
  %105 = load i32, i32* @d, align 4
  %106 = call i32 @closedir(i32 %105)
  %107 = load i32*, i32** @openDirectories, align 8
  %108 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %109 = call i32 @Lst_AtEnd(i32* %107, %struct.TYPE_8__* %108)
  %110 = load i32*, i32** %4, align 8
  %111 = icmp ne i32* %110, null
  br i1 %111, label %112, label %116

112:                                              ; preds = %104
  %113 = load i32*, i32** %4, align 8
  %114 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %115 = call i32 @Lst_AtEnd(i32* %113, %struct.TYPE_8__* %114)
  br label %116

116:                                              ; preds = %112, %104
  br label %117

117:                                              ; preds = %116, %74
  %118 = load i32, i32* @DIR, align 4
  %119 = call i64 @DEBUG(i32 %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %124

121:                                              ; preds = %117
  %122 = load i32, i32* @debug_file, align 4
  %123 = call i32 (i32, i8*, ...) @fprintf(i32 %122, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  br label %124

124:                                              ; preds = %121, %117
  br label %125

125:                                              ; preds = %124, %65
  %126 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  store %struct.TYPE_8__* %126, %struct.TYPE_8__** %3, align 8
  br label %127

127:                                              ; preds = %125, %22
  %128 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  ret %struct.TYPE_8__* %128
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32* @Lst_Find(i32*, i8*, i32) #1

declare dso_local i64 @Lst_Datum(i32*) #1

declare dso_local i32 @Lst_AtFront(i32*, %struct.TYPE_9__*) #1

declare dso_local i32* @Lst_Member(i32*, %struct.TYPE_8__*) #1

declare dso_local i32 @Lst_AtEnd(i32*, %struct.TYPE_8__*) #1

declare dso_local i64 @DEBUG(i32) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @opendir(i8*) #1

declare dso_local %struct.TYPE_8__* @bmake_malloc(i32) #1

declare dso_local i32 @bmake_strdup(i8*) #1

declare dso_local i32 @Hash_InitTable(i32*, i32) #1

declare dso_local %struct.dirent* @readdir(i32) #1

declare dso_local i32 @Hash_CreateEntry(i32*, i32, i32*) #1

declare dso_local i32 @closedir(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
