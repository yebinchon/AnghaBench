; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/ld/extr_ldlang.c_lang_leave_overlay.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/ld/extr_ldlang.c_lang_leave_overlay.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.overlay_list = type { %struct.overlay_list*, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32*, i32, i32*, i32*, i32*, i32*, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_6__*, i32 }

@FALSE = common dso_local global i32 0, align 4
@overlay_list = common dso_local global %struct.overlay_list* null, align 8
@.str = private unnamed_addr constant [2 x i8] c".\00", align 1
@overlay_vma = common dso_local global i32* null, align 8
@overlay_max = common dso_local global i32* null, align 8
@normal_section = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lang_leave_overlay(i32* %0, i32 %1, i32* %2, i8* %3, i32* %4, i8* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.overlay_list*, align 8
  %16 = alloca %struct.TYPE_6__*, align 8
  %17 = alloca %struct.overlay_list*, align 8
  %18 = alloca %struct.TYPE_6__*, align 8
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32* %4, i32** %11, align 8
  store i8* %5, i8** %12, align 8
  %19 = load i8*, i8** %10, align 8
  %20 = load i8*, i8** %12, align 8
  %21 = load i32*, i32** %7, align 8
  %22 = icmp ne i32* %21, null
  %23 = zext i1 %22 to i32
  %24 = load i32, i32* @FALSE, align 4
  %25 = call i32 @lang_get_regions(i32** %13, i32** %14, i8* %19, i8* %20, i32 %23, i32 %24)
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %16, align 8
  %26 = load %struct.overlay_list*, %struct.overlay_list** @overlay_list, align 8
  %27 = icmp ne %struct.overlay_list* %26, null
  br i1 %27, label %28, label %37

28:                                               ; preds = %6
  %29 = load i32*, i32** @overlay_vma, align 8
  %30 = load i32*, i32** @overlay_max, align 8
  %31 = call i32 @exp_binop(i8 signext 43, i32* %29, i32* %30)
  %32 = call i32 @exp_assop(i8 signext 61, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 %31)
  %33 = load %struct.overlay_list*, %struct.overlay_list** @overlay_list, align 8
  %34 = getelementptr inbounds %struct.overlay_list, %struct.overlay_list* %33, i32 0, i32 1
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 7
  store i32 %32, i32* %36, align 8
  br label %37

37:                                               ; preds = %28, %6
  %38 = load %struct.overlay_list*, %struct.overlay_list** @overlay_list, align 8
  store %struct.overlay_list* %38, %struct.overlay_list** %15, align 8
  br label %39

39:                                               ; preds = %116, %37
  %40 = load %struct.overlay_list*, %struct.overlay_list** %15, align 8
  %41 = icmp ne %struct.overlay_list* %40, null
  br i1 %41, label %42, label %123

42:                                               ; preds = %39
  %43 = load i32*, i32** %9, align 8
  %44 = icmp ne i32* %43, null
  br i1 %44, label %45, label %58

45:                                               ; preds = %42
  %46 = load %struct.overlay_list*, %struct.overlay_list** %15, align 8
  %47 = getelementptr inbounds %struct.overlay_list, %struct.overlay_list* %46, i32 0, i32 1
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 6
  %50 = load i32*, i32** %49, align 8
  %51 = icmp eq i32* %50, null
  br i1 %51, label %52, label %58

52:                                               ; preds = %45
  %53 = load i32*, i32** %9, align 8
  %54 = load %struct.overlay_list*, %struct.overlay_list** %15, align 8
  %55 = getelementptr inbounds %struct.overlay_list, %struct.overlay_list* %54, i32 0, i32 1
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 6
  store i32* %53, i32** %57, align 8
  br label %58

58:                                               ; preds = %52, %45, %42
  %59 = load i32*, i32** %13, align 8
  %60 = load %struct.overlay_list*, %struct.overlay_list** %15, align 8
  %61 = getelementptr inbounds %struct.overlay_list, %struct.overlay_list* %60, i32 0, i32 1
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 5
  store i32* %59, i32** %63, align 8
  %64 = load i32*, i32** %14, align 8
  %65 = load %struct.overlay_list*, %struct.overlay_list** %15, align 8
  %66 = getelementptr inbounds %struct.overlay_list, %struct.overlay_list* %65, i32 0, i32 1
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 4
  store i32* %64, i32** %68, align 8
  %69 = load %struct.overlay_list*, %struct.overlay_list** %15, align 8
  %70 = getelementptr inbounds %struct.overlay_list, %struct.overlay_list* %69, i32 0, i32 0
  %71 = load %struct.overlay_list*, %struct.overlay_list** %70, align 8
  %72 = icmp eq %struct.overlay_list* %71, null
  br i1 %72, label %73, label %84

73:                                               ; preds = %58
  %74 = load i32*, i32** %7, align 8
  %75 = load %struct.overlay_list*, %struct.overlay_list** %15, align 8
  %76 = getelementptr inbounds %struct.overlay_list, %struct.overlay_list* %75, i32 0, i32 1
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 3
  store i32* %74, i32** %78, align 8
  %79 = load i32, i32* @normal_section, align 4
  %80 = load %struct.overlay_list*, %struct.overlay_list** %15, align 8
  %81 = getelementptr inbounds %struct.overlay_list, %struct.overlay_list* %80, i32 0, i32 1
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 2
  store i32 %79, i32* %83, align 8
  br label %84

84:                                               ; preds = %73, %58
  %85 = load i32*, i32** %11, align 8
  %86 = icmp ne i32* %85, null
  br i1 %86, label %87, label %100

87:                                               ; preds = %84
  %88 = load %struct.overlay_list*, %struct.overlay_list** %15, align 8
  %89 = getelementptr inbounds %struct.overlay_list, %struct.overlay_list* %88, i32 0, i32 1
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 1
  %92 = load i32*, i32** %91, align 8
  %93 = icmp eq i32* %92, null
  br i1 %93, label %94, label %100

94:                                               ; preds = %87
  %95 = load i32*, i32** %11, align 8
  %96 = load %struct.overlay_list*, %struct.overlay_list** %15, align 8
  %97 = getelementptr inbounds %struct.overlay_list, %struct.overlay_list* %96, i32 0, i32 1
  %98 = load %struct.TYPE_5__*, %struct.TYPE_5__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 1
  store i32* %95, i32** %99, align 8
  br label %100

100:                                              ; preds = %94, %87, %84
  %101 = load i32, i32* %8, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %116

103:                                              ; preds = %100
  %104 = call %struct.TYPE_6__* @xmalloc(i32 16)
  store %struct.TYPE_6__* %104, %struct.TYPE_6__** %18, align 8
  %105 = load %struct.overlay_list*, %struct.overlay_list** %15, align 8
  %106 = getelementptr inbounds %struct.overlay_list, %struct.overlay_list* %105, i32 0, i32 1
  %107 = load %struct.TYPE_5__*, %struct.TYPE_5__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 1
  store i32 %109, i32* %111, align 8
  %112 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %113 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 0
  store %struct.TYPE_6__* %112, %struct.TYPE_6__** %114, align 8
  %115 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  store %struct.TYPE_6__* %115, %struct.TYPE_6__** %16, align 8
  br label %116

116:                                              ; preds = %103, %100
  %117 = load %struct.overlay_list*, %struct.overlay_list** %15, align 8
  %118 = getelementptr inbounds %struct.overlay_list, %struct.overlay_list* %117, i32 0, i32 0
  %119 = load %struct.overlay_list*, %struct.overlay_list** %118, align 8
  store %struct.overlay_list* %119, %struct.overlay_list** %17, align 8
  %120 = load %struct.overlay_list*, %struct.overlay_list** %15, align 8
  %121 = call i32 @free(%struct.overlay_list* %120)
  %122 = load %struct.overlay_list*, %struct.overlay_list** %17, align 8
  store %struct.overlay_list* %122, %struct.overlay_list** %15, align 8
  br label %39

123:                                              ; preds = %39
  %124 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %125 = icmp ne %struct.TYPE_6__* %124, null
  br i1 %125, label %126, label %129

126:                                              ; preds = %123
  %127 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %128 = call i32 @lang_add_nocrossref(%struct.TYPE_6__* %127)
  br label %129

129:                                              ; preds = %126, %123
  store i32* null, i32** @overlay_vma, align 8
  store %struct.overlay_list* null, %struct.overlay_list** @overlay_list, align 8
  store i32* null, i32** @overlay_max, align 8
  ret void
}

declare dso_local i32 @lang_get_regions(i32**, i32**, i8*, i8*, i32, i32) #1

declare dso_local i32 @exp_assop(i8 signext, i8*, i32) #1

declare dso_local i32 @exp_binop(i8 signext, i32*, i32*) #1

declare dso_local %struct.TYPE_6__* @xmalloc(i32) #1

declare dso_local i32 @free(%struct.overlay_list*) #1

declare dso_local i32 @lang_add_nocrossref(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
