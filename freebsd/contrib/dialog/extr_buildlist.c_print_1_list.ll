; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/dialog/extr_buildlist.c_print_1_list.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/dialog/extr_buildlist.c_print_1_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32*, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i32* }

@.str = private unnamed_addr constant [30 x i8] c"! print_1_list %d %s, top %d\0A\00", align 1
@ERR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*, i32, i32)* @print_1_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_1_list(%struct.TYPE_9__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 1
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %19 = load i32, i32* %6, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i64 %20
  store %struct.TYPE_8__* %21, %struct.TYPE_8__** %7, align 8
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %23 = load i32, i32* %5, align 4
  %24 = call i64 @okIndex(%struct.TYPE_9__* %22, i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %3
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = load i32, i32* %5, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  br label %34

33:                                               ; preds = %3
  br label %34

34:                                               ; preds = %33, %26
  %35 = phi i32* [ %32, %26 ], [ null, %33 ]
  store i32* %35, i32** %8, align 8
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  store i32* %38, i32** %9, align 8
  store i32 0, i32* %12, align 4
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* %6, align 4
  %44 = call i32 @index2row(%struct.TYPE_9__* %39, i32 %42, i32 %43)
  store i32 %44, i32* %13, align 4
  %45 = load i32*, i32** %9, align 8
  %46 = call i32 @getmaxy(i32* %45)
  store i32 %46, i32* %14, align 4
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @mySide(i32 %48)
  %50 = load i32, i32* %13, align 4
  %51 = sext i32 %50 to i64
  %52 = inttoptr i64 %51 to i8*
  %53 = call i32 @TRACE(i8* %52)
  store i32 0, i32* %11, align 4
  store i32 0, i32* %10, align 4
  br label %54

54:                                               ; preds = %89, %34
  %55 = load i32, i32* %11, align 4
  %56 = load i32, i32* %14, align 4
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %58, label %92

58:                                               ; preds = %54
  %59 = load i32, i32* %10, align 4
  %60 = load i32, i32* %13, align 4
  %61 = add nsw i32 %59, %60
  store i32 %61, i32* %15, align 4
  %62 = load i32, i32* %15, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %58
  br label %89

65:                                               ; preds = %58
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %67 = load i32, i32* %15, align 4
  %68 = call i32* @myItem(%struct.TYPE_8__* %66, i32 %67)
  %69 = icmp ne i32* %68, null
  br i1 %69, label %70, label %86

70:                                               ; preds = %65
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %72 = load i32*, i32** %9, align 8
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %74 = load i32, i32* %15, align 4
  %75 = call i32* @myItem(%struct.TYPE_8__* %73, i32 %74)
  %76 = load i32, i32* %11, align 4
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %78 = load i32, i32* %15, align 4
  %79 = call i32* @myItem(%struct.TYPE_8__* %77, i32 %78)
  %80 = load i32*, i32** %8, align 8
  %81 = icmp eq i32* %79, %80
  %82 = zext i1 %81 to i32
  %83 = call i32 @print_item(%struct.TYPE_9__* %71, i32* %72, i32* %75, i32 %76, i32 %82)
  %84 = load i32, i32* %11, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %11, align 4
  store i32 %85, i32* %12, align 4
  br label %87

86:                                               ; preds = %65
  br label %92

87:                                               ; preds = %70
  br label %88

88:                                               ; preds = %87
  br label %89

89:                                               ; preds = %88, %64
  %90 = load i32, i32* %10, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %10, align 4
  br label %54

92:                                               ; preds = %86, %54
  %93 = load i32*, i32** %9, align 8
  %94 = load i32, i32* %12, align 4
  %95 = call i64 @wmove(i32* %93, i32 %94, i32 0)
  %96 = load i64, i64* @ERR, align 8
  %97 = icmp ne i64 %95, %96
  br i1 %97, label %98, label %106

98:                                               ; preds = %92
  br label %99

99:                                               ; preds = %104, %98
  %100 = load i32*, i32** %9, align 8
  %101 = call i64 @waddch(i32* %100, i8 signext 32)
  %102 = load i64, i64* @ERR, align 8
  %103 = icmp ne i64 %101, %102
  br i1 %103, label %104, label %105

104:                                              ; preds = %99
  br label %99

105:                                              ; preds = %99
  br label %106

106:                                              ; preds = %105, %92
  %107 = load i32*, i32** %9, align 8
  %108 = call i32 @wnoutrefresh(i32* %107)
  ret void
}

declare dso_local i64 @okIndex(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @index2row(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @getmaxy(i32*) #1

declare dso_local i32 @TRACE(i8*) #1

declare dso_local i32 @mySide(i32) #1

declare dso_local i32* @myItem(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @print_item(%struct.TYPE_9__*, i32*, i32*, i32, i32) #1

declare dso_local i64 @wmove(i32*, i32, i32) #1

declare dso_local i64 @waddch(i32*, i8 signext) #1

declare dso_local i32 @wnoutrefresh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
