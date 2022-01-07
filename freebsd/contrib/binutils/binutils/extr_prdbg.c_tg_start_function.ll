; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_prdbg.c_tg_start_function.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_prdbg.c_tg_start_function.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pr_handle = type { i8* (i32, i8*, i32)*, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i8*, i8*, i32 }

@.str = private unnamed_addr constant [7 x i8] c"static\00", align 1
@DMGL_ANSI = common dso_local global i32 0, align 4
@DMGL_PARAMS = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"::\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"(\00", align 1
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i32)* @tg_start_function to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tg_start_function(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.pr_handle*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.pr_handle*
  store %struct.pr_handle* %12, %struct.pr_handle** %8, align 8
  %13 = load i32, i32* %7, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %3
  %16 = load %struct.pr_handle*, %struct.pr_handle** %8, align 8
  %17 = getelementptr inbounds %struct.pr_handle, %struct.pr_handle* %16, i32 0, i32 2
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %19, align 8
  br label %25

20:                                               ; preds = %3
  %21 = load %struct.pr_handle*, %struct.pr_handle** %8, align 8
  %22 = getelementptr inbounds %struct.pr_handle, %struct.pr_handle* %21, i32 0, i32 2
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  store i8* null, i8** %24, align 8
  br label %25

25:                                               ; preds = %20, %15
  store i8* null, i8** %9, align 8
  %26 = load %struct.pr_handle*, %struct.pr_handle** %8, align 8
  %27 = getelementptr inbounds %struct.pr_handle, %struct.pr_handle* %26, i32 0, i32 0
  %28 = load i8* (i32, i8*, i32)*, i8* (i32, i8*, i32)** %27, align 8
  %29 = icmp ne i8* (i32, i8*, i32)* %28, null
  br i1 %29, label %30, label %42

30:                                               ; preds = %25
  %31 = load %struct.pr_handle*, %struct.pr_handle** %8, align 8
  %32 = getelementptr inbounds %struct.pr_handle, %struct.pr_handle* %31, i32 0, i32 0
  %33 = load i8* (i32, i8*, i32)*, i8* (i32, i8*, i32)** %32, align 8
  %34 = load %struct.pr_handle*, %struct.pr_handle** %8, align 8
  %35 = getelementptr inbounds %struct.pr_handle, %struct.pr_handle* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 8
  %37 = load i8*, i8** %6, align 8
  %38 = load i32, i32* @DMGL_ANSI, align 4
  %39 = load i32, i32* @DMGL_PARAMS, align 4
  %40 = or i32 %38, %39
  %41 = call i8* %33(i32 %36, i8* %37, i32 %40)
  store i8* %41, i8** %9, align 8
  br label %42

42:                                               ; preds = %30, %25
  %43 = load %struct.pr_handle*, %struct.pr_handle** %8, align 8
  %44 = load i8*, i8** %9, align 8
  %45 = icmp ne i8* %44, null
  br i1 %45, label %46, label %48

46:                                               ; preds = %42
  %47 = load i8*, i8** %9, align 8
  br label %50

48:                                               ; preds = %42
  %49 = load i8*, i8** %6, align 8
  br label %50

50:                                               ; preds = %48, %46
  %51 = phi i8* [ %47, %46 ], [ %49, %48 ]
  %52 = call i32 @substitute_type(%struct.pr_handle* %43, i8* %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %56, label %54

54:                                               ; preds = %50
  %55 = load i32, i32* @FALSE, align 4
  store i32 %55, i32* %4, align 4
  br label %114

56:                                               ; preds = %50
  %57 = load %struct.pr_handle*, %struct.pr_handle** %8, align 8
  %58 = getelementptr inbounds %struct.pr_handle, %struct.pr_handle* %57, i32 0, i32 2
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 1
  store i8* null, i8** %60, align 8
  %61 = load i8*, i8** %9, align 8
  %62 = icmp ne i8* %61, null
  br i1 %62, label %63, label %91

63:                                               ; preds = %56
  %64 = load i8*, i8** %9, align 8
  %65 = call i8* @strstr(i8* %64, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i8* %65, i8** %10, align 8
  %66 = load i8*, i8** %10, align 8
  %67 = icmp ne i8* %66, null
  br i1 %67, label %68, label %77

68:                                               ; preds = %63
  %69 = load i8*, i8** %9, align 8
  %70 = load %struct.pr_handle*, %struct.pr_handle** %8, align 8
  %71 = getelementptr inbounds %struct.pr_handle, %struct.pr_handle* %70, i32 0, i32 2
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 1
  store i8* %69, i8** %73, align 8
  %74 = load i8*, i8** %10, align 8
  store i8 0, i8* %74, align 1
  %75 = load i8*, i8** %10, align 8
  %76 = getelementptr inbounds i8, i8* %75, i64 2
  store i8* %76, i8** %6, align 8
  br label %83

77:                                               ; preds = %63
  %78 = load %struct.pr_handle*, %struct.pr_handle** %8, align 8
  %79 = getelementptr inbounds %struct.pr_handle, %struct.pr_handle* %78, i32 0, i32 2
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 1
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i8** %81, align 8
  %82 = load i8*, i8** %9, align 8
  store i8* %82, i8** %6, align 8
  br label %83

83:                                               ; preds = %77, %68
  %84 = load i8*, i8** %6, align 8
  %85 = call i8* @strchr(i8* %84, i8 signext 40)
  store i8* %85, i8** %10, align 8
  %86 = load i8*, i8** %10, align 8
  %87 = icmp ne i8* %86, null
  br i1 %87, label %88, label %90

88:                                               ; preds = %83
  %89 = load i8*, i8** %10, align 8
  store i8 0, i8* %89, align 1
  br label %90

90:                                               ; preds = %88, %83
  br label %91

91:                                               ; preds = %90, %56
  %92 = load i8*, i8** %6, align 8
  %93 = call i32 @strdup(i8* %92)
  %94 = load %struct.pr_handle*, %struct.pr_handle** %8, align 8
  %95 = getelementptr inbounds %struct.pr_handle, %struct.pr_handle* %94, i32 0, i32 2
  %96 = load %struct.TYPE_2__*, %struct.TYPE_2__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 2
  store i32 %93, i32* %97, align 8
  %98 = load %struct.pr_handle*, %struct.pr_handle** %8, align 8
  %99 = getelementptr inbounds %struct.pr_handle, %struct.pr_handle* %98, i32 0, i32 2
  %100 = load %struct.TYPE_2__*, %struct.TYPE_2__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 1
  %102 = load i8*, i8** %101, align 8
  %103 = icmp ne i8* %102, null
  br i1 %103, label %110, label %104

104:                                              ; preds = %91
  %105 = load %struct.pr_handle*, %struct.pr_handle** %8, align 8
  %106 = call i32 @append_type(%struct.pr_handle* %105, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %110, label %108

108:                                              ; preds = %104
  %109 = load i32, i32* @FALSE, align 4
  store i32 %109, i32* %4, align 4
  br label %114

110:                                              ; preds = %104, %91
  %111 = load %struct.pr_handle*, %struct.pr_handle** %8, align 8
  %112 = getelementptr inbounds %struct.pr_handle, %struct.pr_handle* %111, i32 0, i32 1
  store i32 1, i32* %112, align 8
  %113 = load i32, i32* @TRUE, align 4
  store i32 %113, i32* %4, align 4
  br label %114

114:                                              ; preds = %110, %108, %54
  %115 = load i32, i32* %4, align 4
  ret i32 %115
}

declare dso_local i32 @substitute_type(%struct.pr_handle*, i8*) #1

declare dso_local i8* @strstr(i8*, i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @strdup(i8*) #1

declare dso_local i32 @append_type(%struct.pr_handle*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
