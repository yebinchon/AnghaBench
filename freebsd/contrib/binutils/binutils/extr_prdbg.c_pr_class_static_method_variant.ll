; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_prdbg.c_pr_class_static_method_variant.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_prdbg.c_pr_class_static_method_variant.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pr_handle = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32* }

@.str = private unnamed_addr constant [10 x i8] c" volatile\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c" const\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"static \00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c" /* \00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c" */;\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i32, i32, i32)* @pr_class_static_method_variant to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pr_class_static_method_variant(i8* %0, i8* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.pr_handle*, align 8
  %13 = alloca i8*, align 8
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %14 = load i8*, i8** %7, align 8
  %15 = bitcast i8* %14 to %struct.pr_handle*
  store %struct.pr_handle* %15, %struct.pr_handle** %12, align 8
  %16 = load %struct.pr_handle*, %struct.pr_handle** %12, align 8
  %17 = getelementptr inbounds %struct.pr_handle, %struct.pr_handle* %16, i32 0, i32 0
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = icmp ne %struct.TYPE_4__* %18, null
  %20 = zext i1 %19 to i32
  %21 = call i32 @assert(i32 %20)
  %22 = load %struct.pr_handle*, %struct.pr_handle** %12, align 8
  %23 = getelementptr inbounds %struct.pr_handle, %struct.pr_handle* %22, i32 0, i32 0
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = icmp ne %struct.TYPE_3__* %26, null
  %28 = zext i1 %27 to i32
  %29 = call i32 @assert(i32 %28)
  %30 = load %struct.pr_handle*, %struct.pr_handle** %12, align 8
  %31 = getelementptr inbounds %struct.pr_handle, %struct.pr_handle* %30, i32 0, i32 0
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = icmp ne i32* %36, null
  %38 = zext i1 %37 to i32
  %39 = call i32 @assert(i32 %38)
  %40 = load i32, i32* %11, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %5
  %43 = load %struct.pr_handle*, %struct.pr_handle** %12, align 8
  %44 = call i64 @append_type(%struct.pr_handle* %43, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %42
  %47 = load i32, i32* @FALSE, align 4
  store i32 %47, i32* %6, align 4
  br label %117

48:                                               ; preds = %42
  br label %49

49:                                               ; preds = %48, %5
  %50 = load i32, i32* %10, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %59

52:                                               ; preds = %49
  %53 = load %struct.pr_handle*, %struct.pr_handle** %12, align 8
  %54 = call i64 @append_type(%struct.pr_handle* %53, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %58, label %56

56:                                               ; preds = %52
  %57 = load i32, i32* @FALSE, align 4
  store i32 %57, i32* %6, align 4
  br label %117

58:                                               ; preds = %52
  br label %59

59:                                               ; preds = %58, %49
  %60 = load %struct.pr_handle*, %struct.pr_handle** %12, align 8
  %61 = call i32 @prepend_type(%struct.pr_handle* %60, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %65, label %63

63:                                               ; preds = %59
  %64 = load i32, i32* @FALSE, align 4
  store i32 %64, i32* %6, align 4
  br label %117

65:                                               ; preds = %59
  %66 = load %struct.pr_handle*, %struct.pr_handle** %12, align 8
  %67 = load %struct.pr_handle*, %struct.pr_handle** %12, align 8
  %68 = getelementptr inbounds %struct.pr_handle, %struct.pr_handle* %67, i32 0, i32 0
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = call i32 @substitute_type(%struct.pr_handle* %66, i32* %73)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %78, label %76

76:                                               ; preds = %65
  %77 = load i32, i32* @FALSE, align 4
  store i32 %77, i32* %6, align 4
  br label %117

78:                                               ; preds = %65
  %79 = load %struct.pr_handle*, %struct.pr_handle** %12, align 8
  %80 = call i8* @pop_type(%struct.pr_handle* %79)
  store i8* %80, i8** %13, align 8
  %81 = load i8*, i8** %13, align 8
  %82 = icmp eq i8* %81, null
  br i1 %82, label %83, label %85

83:                                               ; preds = %78
  %84 = load i32, i32* @FALSE, align 4
  store i32 %84, i32* %6, align 4
  br label %117

85:                                               ; preds = %78
  %86 = load %struct.pr_handle*, %struct.pr_handle** %12, align 8
  %87 = load i32, i32* %9, align 4
  %88 = call i32 @pr_fix_visibility(%struct.pr_handle* %86, i32 %87)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %92, label %90

90:                                               ; preds = %85
  %91 = load i32, i32* @FALSE, align 4
  store i32 %91, i32* %6, align 4
  br label %117

92:                                               ; preds = %85
  %93 = load %struct.pr_handle*, %struct.pr_handle** %12, align 8
  %94 = load i8*, i8** %13, align 8
  %95 = call i64 @append_type(%struct.pr_handle* %93, i8* %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %114

97:                                               ; preds = %92
  %98 = load %struct.pr_handle*, %struct.pr_handle** %12, align 8
  %99 = call i64 @append_type(%struct.pr_handle* %98, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %114

101:                                              ; preds = %97
  %102 = load %struct.pr_handle*, %struct.pr_handle** %12, align 8
  %103 = load i8*, i8** %8, align 8
  %104 = call i64 @append_type(%struct.pr_handle* %102, i8* %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %114

106:                                              ; preds = %101
  %107 = load %struct.pr_handle*, %struct.pr_handle** %12, align 8
  %108 = call i64 @append_type(%struct.pr_handle* %107, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %114

110:                                              ; preds = %106
  %111 = load %struct.pr_handle*, %struct.pr_handle** %12, align 8
  %112 = call i64 @indent_type(%struct.pr_handle* %111)
  %113 = icmp ne i64 %112, 0
  br label %114

114:                                              ; preds = %110, %106, %101, %97, %92
  %115 = phi i1 [ false, %106 ], [ false, %101 ], [ false, %97 ], [ false, %92 ], [ %113, %110 ]
  %116 = zext i1 %115 to i32
  store i32 %116, i32* %6, align 4
  br label %117

117:                                              ; preds = %114, %90, %83, %76, %63, %56, %46
  %118 = load i32, i32* %6, align 4
  ret i32 %118
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @append_type(%struct.pr_handle*, i8*) #1

declare dso_local i32 @prepend_type(%struct.pr_handle*, i8*) #1

declare dso_local i32 @substitute_type(%struct.pr_handle*, i32*) #1

declare dso_local i8* @pop_type(%struct.pr_handle*) #1

declare dso_local i32 @pr_fix_visibility(%struct.pr_handle*, i32) #1

declare dso_local i64 @indent_type(%struct.pr_handle*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
