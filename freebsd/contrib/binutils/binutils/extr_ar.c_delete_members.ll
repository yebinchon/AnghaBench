; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_ar.c_delete_members.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_ar.c_delete_members.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_5__*, i32, i8* }

@FALSE = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [10 x i8] c"__.SYMDEF\00", align 1
@write_armap = common dso_local global i32 0, align 4
@counted_name_mode = common dso_local global i64 0, align 8
@counted_name_counter = common dso_local global i32 0, align 4
@TRUE = common dso_local global i8* null, align 8
@verbose = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"d - %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"No member named `%s'\0A\00", align 1
@output_filename = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, i8**)* @delete_members to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @delete_members(%struct.TYPE_5__* %0, i8** %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i8**, align 8
  %5 = alloca %struct.TYPE_5__**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store i8** %1, i8*** %4, align 8
  %9 = load i8*, i8** @FALSE, align 8
  store i8* %9, i8** %7, align 8
  br label %10

10:                                               ; preds = %85, %2
  %11 = load i8**, i8*** %4, align 8
  %12 = load i8*, i8** %11, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %14, label %88

14:                                               ; preds = %10
  %15 = load i8**, i8*** %4, align 8
  %16 = load i8*, i8** %15, align 8
  %17 = call i32 @strcmp(i8* %16, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %14
  %20 = load i8*, i8** @FALSE, align 8
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 2
  store i8* %20, i8** %22, align 8
  store i32 -1, i32* @write_armap, align 4
  br label %85

23:                                               ; preds = %14
  %24 = load i8*, i8** @FALSE, align 8
  store i8* %24, i8** %6, align 8
  store i32 0, i32* %8, align 4
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  store %struct.TYPE_5__** %26, %struct.TYPE_5__*** %5, align 8
  br label %27

27:                                               ; preds = %68, %23
  %28 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %5, align 8
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %28, align 8
  %30 = icmp ne %struct.TYPE_5__* %29, null
  br i1 %30, label %31, label %72

31:                                               ; preds = %27
  %32 = load i8**, i8*** %4, align 8
  %33 = load i8*, i8** %32, align 8
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %35 = call i32 @normalize(i8* %33, %struct.TYPE_5__* %34)
  %36 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %5, align 8
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = call i64 @FILENAME_CMP(i32 %35, i32 %39)
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %68

42:                                               ; preds = %31
  %43 = load i32, i32* %8, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %8, align 4
  %45 = load i64, i64* @counted_name_mode, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %42
  %48 = load i32, i32* %8, align 4
  %49 = load i32, i32* @counted_name_counter, align 4
  %50 = icmp ne i32 %48, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %47
  br label %67

52:                                               ; preds = %47, %42
  %53 = load i8*, i8** @TRUE, align 8
  store i8* %53, i8** %6, align 8
  %54 = load i8*, i8** @TRUE, align 8
  store i8* %54, i8** %7, align 8
  %55 = load i64, i64* @verbose, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %52
  %58 = load i8**, i8*** %4, align 8
  %59 = load i8*, i8** %58, align 8
  %60 = call i32 @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* %59)
  br label %61

61:                                               ; preds = %57, %52
  %62 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %5, align 8
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %64, align 8
  %66 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %5, align 8
  store %struct.TYPE_5__* %65, %struct.TYPE_5__** %66, align 8
  br label %84

67:                                               ; preds = %51
  br label %68

68:                                               ; preds = %67, %31
  %69 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %5, align 8
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 0
  store %struct.TYPE_5__** %71, %struct.TYPE_5__*** %5, align 8
  br label %27

72:                                               ; preds = %27
  %73 = load i64, i64* @verbose, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %83

75:                                               ; preds = %72
  %76 = load i8*, i8** %6, align 8
  %77 = icmp ne i8* %76, null
  br i1 %77, label %83, label %78

78:                                               ; preds = %75
  %79 = call i8* @_(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %80 = load i8**, i8*** %4, align 8
  %81 = load i8*, i8** %80, align 8
  %82 = call i32 @printf(i8* %79, i8* %81)
  br label %83

83:                                               ; preds = %78, %75, %72
  br label %84

84:                                               ; preds = %83, %61
  br label %85

85:                                               ; preds = %84, %19
  %86 = load i8**, i8*** %4, align 8
  %87 = getelementptr inbounds i8*, i8** %86, i32 1
  store i8** %87, i8*** %4, align 8
  br label %10

88:                                               ; preds = %10
  %89 = load i8*, i8** %7, align 8
  %90 = icmp ne i8* %89, null
  br i1 %90, label %91, label %94

91:                                               ; preds = %88
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %93 = call i32 @write_archive(%struct.TYPE_5__* %92)
  br label %95

94:                                               ; preds = %88
  store i32* null, i32** @output_filename, align 8
  br label %95

95:                                               ; preds = %94, %91
  ret void
}

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i64 @FILENAME_CMP(i32, i32) #1

declare dso_local i32 @normalize(i8*, %struct.TYPE_5__*) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i8* @_(i8*) #1

declare dso_local i32 @write_archive(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
