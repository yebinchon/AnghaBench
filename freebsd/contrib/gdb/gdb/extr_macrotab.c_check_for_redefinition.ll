; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_macrotab.c_check_for_redefinition.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_macrotab.c_check_for_redefinition.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.macro_key = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.macro_source_file = type { i32 }
%struct.TYPE_5__ = type { i64, i64 }
%struct.macro_definition = type { i32, i32, i32*, i32 }

@macro_function_like = common dso_local global i32 0, align 4
@symfile_complaints = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [60 x i8] c"macro `%s' redefined at %s:%d; original definition at %s:%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.macro_key* (%struct.macro_source_file*, i32, i8*, i32, i32, i8**, i8*)* @check_for_redefinition to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.macro_key* @check_for_redefinition(%struct.macro_source_file* %0, i32 %1, i8* %2, i32 %3, i32 %4, i8** %5, i8* %6) #0 {
  %8 = alloca %struct.macro_key*, align 8
  %9 = alloca %struct.macro_source_file*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8**, align 8
  %15 = alloca i8*, align 8
  %16 = alloca %struct.TYPE_5__*, align 8
  %17 = alloca %struct.macro_key*, align 8
  %18 = alloca %struct.macro_definition*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.macro_source_file* %0, %struct.macro_source_file** %9, align 8
  store i32 %1, i32* %10, align 4
  store i8* %2, i8** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i8** %5, i8*** %14, align 8
  store i8* %6, i8** %15, align 8
  %21 = load i8*, i8** %11, align 8
  %22 = load %struct.macro_source_file*, %struct.macro_source_file** %9, align 8
  %23 = load i32, i32* %10, align 4
  %24 = call %struct.TYPE_5__* @find_definition(i8* %21, %struct.macro_source_file* %22, i32 %23)
  store %struct.TYPE_5__* %24, %struct.TYPE_5__** %16, align 8
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %26 = icmp ne %struct.TYPE_5__* %25, null
  br i1 %26, label %27, label %110

27:                                               ; preds = %7
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = inttoptr i64 %30 to %struct.macro_key*
  store %struct.macro_key* %31, %struct.macro_key** %17, align 8
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = inttoptr i64 %34 to %struct.macro_definition*
  store %struct.macro_definition* %35, %struct.macro_definition** %18, align 8
  store i32 1, i32* %19, align 4
  %36 = load i32, i32* %12, align 4
  %37 = load %struct.macro_definition*, %struct.macro_definition** %18, align 8
  %38 = getelementptr inbounds %struct.macro_definition, %struct.macro_definition* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp ne i32 %36, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %27
  store i32 0, i32* %19, align 4
  br label %90

42:                                               ; preds = %27
  %43 = load i8*, i8** %15, align 8
  %44 = load %struct.macro_definition*, %struct.macro_definition** %18, align 8
  %45 = getelementptr inbounds %struct.macro_definition, %struct.macro_definition* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 8
  %47 = call i64 @strcmp(i8* %43, i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %42
  store i32 0, i32* %19, align 4
  br label %89

50:                                               ; preds = %42
  %51 = load i32, i32* %12, align 4
  %52 = load i32, i32* @macro_function_like, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %88

54:                                               ; preds = %50
  %55 = load i32, i32* %13, align 4
  %56 = load %struct.macro_definition*, %struct.macro_definition** %18, align 8
  %57 = getelementptr inbounds %struct.macro_definition, %struct.macro_definition* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = icmp ne i32 %55, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %54
  store i32 0, i32* %19, align 4
  br label %87

61:                                               ; preds = %54
  store i32 0, i32* %20, align 4
  br label %62

62:                                               ; preds = %83, %61
  %63 = load i32, i32* %20, align 4
  %64 = load i32, i32* %13, align 4
  %65 = icmp slt i32 %63, %64
  br i1 %65, label %66, label %86

66:                                               ; preds = %62
  %67 = load i8**, i8*** %14, align 8
  %68 = load i32, i32* %20, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i8*, i8** %67, i64 %69
  %71 = load i8*, i8** %70, align 8
  %72 = load %struct.macro_definition*, %struct.macro_definition** %18, align 8
  %73 = getelementptr inbounds %struct.macro_definition, %struct.macro_definition* %72, i32 0, i32 2
  %74 = load i32*, i32** %73, align 8
  %75 = load i32, i32* %20, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = call i64 @strcmp(i8* %71, i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %66
  store i32 0, i32* %19, align 4
  br label %82

82:                                               ; preds = %81, %66
  br label %83

83:                                               ; preds = %82
  %84 = load i32, i32* %20, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %20, align 4
  br label %62

86:                                               ; preds = %62
  br label %87

87:                                               ; preds = %86, %60
  br label %88

88:                                               ; preds = %87, %50
  br label %89

89:                                               ; preds = %88, %49
  br label %90

90:                                               ; preds = %89, %41
  %91 = load i32, i32* %19, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %108, label %93

93:                                               ; preds = %90
  %94 = load i8*, i8** %11, align 8
  %95 = load %struct.macro_source_file*, %struct.macro_source_file** %9, align 8
  %96 = getelementptr inbounds %struct.macro_source_file, %struct.macro_source_file* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* %10, align 4
  %99 = load %struct.macro_key*, %struct.macro_key** %17, align 8
  %100 = getelementptr inbounds %struct.macro_key, %struct.macro_key* %99, i32 0, i32 1
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.macro_key*, %struct.macro_key** %17, align 8
  %105 = getelementptr inbounds %struct.macro_key, %struct.macro_key* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = call i32 @complaint(i32* @symfile_complaints, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i8* %94, i32 %97, i32 %98, i32 %103, i32 %106)
  br label %108

108:                                              ; preds = %93, %90
  %109 = load %struct.macro_key*, %struct.macro_key** %17, align 8
  store %struct.macro_key* %109, %struct.macro_key** %8, align 8
  br label %111

110:                                              ; preds = %7
  store %struct.macro_key* null, %struct.macro_key** %8, align 8
  br label %111

111:                                              ; preds = %110, %108
  %112 = load %struct.macro_key*, %struct.macro_key** %8, align 8
  ret %struct.macro_key* %112
}

declare dso_local %struct.TYPE_5__* @find_definition(i8*, %struct.macro_source_file*, i32) #1

declare dso_local i64 @strcmp(i8*, i32) #1

declare dso_local i32 @complaint(i32*, i8*, i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
