; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_debug.c_debug_record_variable.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_debug.c_debug_record_variable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.debug_handle = type { %struct.TYPE_5__*, %struct.TYPE_4__*, i32* }
%struct.TYPE_5__ = type { %struct.debug_namespace* }
%struct.debug_namespace = type { i32 }
%struct.TYPE_4__ = type { %struct.debug_namespace* }
%struct.debug_name = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.debug_variable* }
%struct.debug_variable = type { i32, i32, i32* }

@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"debug_record_variable: no current file\00", align 1
@DEBUG_GLOBAL = common dso_local global i32 0, align 4
@DEBUG_STATIC = common dso_local global i32 0, align 4
@DEBUG_LINKAGE_GLOBAL = common dso_local global i32 0, align 4
@DEBUG_LINKAGE_STATIC = common dso_local global i32 0, align 4
@DEBUG_LINKAGE_AUTOMATIC = common dso_local global i32 0, align 4
@DEBUG_OBJECT_VARIABLE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @debug_record_variable(i8* %0, i8* %1, i32* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.debug_handle*, align 8
  %13 = alloca %struct.debug_namespace**, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.debug_name*, align 8
  %16 = alloca %struct.debug_variable*, align 8
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %17 = load i8*, i8** %7, align 8
  %18 = bitcast i8* %17 to %struct.debug_handle*
  store %struct.debug_handle* %18, %struct.debug_handle** %12, align 8
  %19 = load i8*, i8** %8, align 8
  %20 = icmp eq i8* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %5
  %22 = load i32*, i32** %9, align 8
  %23 = icmp eq i32* %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %21, %5
  %25 = load i32, i32* @FALSE, align 4
  store i32 %25, i32* %6, align 4
  br label %108

26:                                               ; preds = %21
  %27 = load %struct.debug_handle*, %struct.debug_handle** %12, align 8
  %28 = getelementptr inbounds %struct.debug_handle, %struct.debug_handle* %27, i32 0, i32 2
  %29 = load i32*, i32** %28, align 8
  %30 = icmp eq i32* %29, null
  br i1 %30, label %36, label %31

31:                                               ; preds = %26
  %32 = load %struct.debug_handle*, %struct.debug_handle** %12, align 8
  %33 = getelementptr inbounds %struct.debug_handle, %struct.debug_handle* %32, i32 0, i32 1
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = icmp eq %struct.TYPE_4__* %34, null
  br i1 %35, label %36, label %40

36:                                               ; preds = %31, %26
  %37 = call i32 @_(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %38 = call i32 @debug_error(i32 %37)
  %39 = load i32, i32* @FALSE, align 4
  store i32 %39, i32* %6, align 4
  br label %108

40:                                               ; preds = %31
  %41 = load i32, i32* %10, align 4
  %42 = load i32, i32* @DEBUG_GLOBAL, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %48, label %44

44:                                               ; preds = %40
  %45 = load i32, i32* %10, align 4
  %46 = load i32, i32* @DEBUG_STATIC, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %61

48:                                               ; preds = %44, %40
  %49 = load %struct.debug_handle*, %struct.debug_handle** %12, align 8
  %50 = getelementptr inbounds %struct.debug_handle, %struct.debug_handle* %49, i32 0, i32 1
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  store %struct.debug_namespace** %52, %struct.debug_namespace*** %13, align 8
  %53 = load i32, i32* %10, align 4
  %54 = load i32, i32* @DEBUG_GLOBAL, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %58

56:                                               ; preds = %48
  %57 = load i32, i32* @DEBUG_LINKAGE_GLOBAL, align 4
  store i32 %57, i32* %14, align 4
  br label %60

58:                                               ; preds = %48
  %59 = load i32, i32* @DEBUG_LINKAGE_STATIC, align 4
  store i32 %59, i32* %14, align 4
  br label %60

60:                                               ; preds = %58, %56
  br label %78

61:                                               ; preds = %44
  %62 = load %struct.debug_handle*, %struct.debug_handle** %12, align 8
  %63 = getelementptr inbounds %struct.debug_handle, %struct.debug_handle* %62, i32 0, i32 0
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %63, align 8
  %65 = icmp eq %struct.TYPE_5__* %64, null
  br i1 %65, label %66, label %71

66:                                               ; preds = %61
  %67 = load %struct.debug_handle*, %struct.debug_handle** %12, align 8
  %68 = getelementptr inbounds %struct.debug_handle, %struct.debug_handle* %67, i32 0, i32 1
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  store %struct.debug_namespace** %70, %struct.debug_namespace*** %13, align 8
  br label %76

71:                                               ; preds = %61
  %72 = load %struct.debug_handle*, %struct.debug_handle** %12, align 8
  %73 = getelementptr inbounds %struct.debug_handle, %struct.debug_handle* %72, i32 0, i32 0
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 0
  store %struct.debug_namespace** %75, %struct.debug_namespace*** %13, align 8
  br label %76

76:                                               ; preds = %71, %66
  %77 = load i32, i32* @DEBUG_LINKAGE_AUTOMATIC, align 4
  store i32 %77, i32* %14, align 4
  br label %78

78:                                               ; preds = %76, %60
  %79 = load %struct.debug_handle*, %struct.debug_handle** %12, align 8
  %80 = load %struct.debug_namespace**, %struct.debug_namespace*** %13, align 8
  %81 = load i8*, i8** %8, align 8
  %82 = load i32, i32* @DEBUG_OBJECT_VARIABLE, align 4
  %83 = load i32, i32* %14, align 4
  %84 = call %struct.debug_name* @debug_add_to_namespace(%struct.debug_handle* %79, %struct.debug_namespace** %80, i8* %81, i32 %82, i32 %83)
  store %struct.debug_name* %84, %struct.debug_name** %15, align 8
  %85 = load %struct.debug_name*, %struct.debug_name** %15, align 8
  %86 = icmp eq %struct.debug_name* %85, null
  br i1 %86, label %87, label %89

87:                                               ; preds = %78
  %88 = load i32, i32* @FALSE, align 4
  store i32 %88, i32* %6, align 4
  br label %108

89:                                               ; preds = %78
  %90 = call i64 @xmalloc(i32 16)
  %91 = inttoptr i64 %90 to %struct.debug_variable*
  store %struct.debug_variable* %91, %struct.debug_variable** %16, align 8
  %92 = load %struct.debug_variable*, %struct.debug_variable** %16, align 8
  %93 = call i32 @memset(%struct.debug_variable* %92, i32 0, i32 16)
  %94 = load i32, i32* %10, align 4
  %95 = load %struct.debug_variable*, %struct.debug_variable** %16, align 8
  %96 = getelementptr inbounds %struct.debug_variable, %struct.debug_variable* %95, i32 0, i32 0
  store i32 %94, i32* %96, align 8
  %97 = load i32*, i32** %9, align 8
  %98 = load %struct.debug_variable*, %struct.debug_variable** %16, align 8
  %99 = getelementptr inbounds %struct.debug_variable, %struct.debug_variable* %98, i32 0, i32 2
  store i32* %97, i32** %99, align 8
  %100 = load i32, i32* %11, align 4
  %101 = load %struct.debug_variable*, %struct.debug_variable** %16, align 8
  %102 = getelementptr inbounds %struct.debug_variable, %struct.debug_variable* %101, i32 0, i32 1
  store i32 %100, i32* %102, align 4
  %103 = load %struct.debug_variable*, %struct.debug_variable** %16, align 8
  %104 = load %struct.debug_name*, %struct.debug_name** %15, align 8
  %105 = getelementptr inbounds %struct.debug_name, %struct.debug_name* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 0
  store %struct.debug_variable* %103, %struct.debug_variable** %106, align 8
  %107 = load i32, i32* @TRUE, align 4
  store i32 %107, i32* %6, align 4
  br label %108

108:                                              ; preds = %89, %87, %36, %24
  %109 = load i32, i32* %6, align 4
  ret i32 %109
}

declare dso_local i32 @debug_error(i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local %struct.debug_name* @debug_add_to_namespace(%struct.debug_handle*, %struct.debug_namespace**, i8*, i32, i32) #1

declare dso_local i64 @xmalloc(i32) #1

declare dso_local i32 @memset(%struct.debug_variable*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
