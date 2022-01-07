; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bmake/extr_make.c_Make_ProcessWait.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bmake/extr_make.c_Make_ProcessWait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, i8*, i32, i32 }

@.str = private unnamed_addr constant [6 x i8] c".MAIN\00", align 1
@REMAKE = common dso_local global i32 0, align 4
@OP_PHONY = common dso_local global i32 0, align 4
@OP_DEPENDS = common dso_local global i32 0, align 4
@link_parent = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@DONE_WAIT = common dso_local global i32 0, align 4
@MAKE = common dso_local global i32 0, align 4
@debug_file = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Make_ProcessWait: examine %s\0A\00", align 1
@OP_DOUBLEDEP = common dso_local global i32 0, align 4
@LST_CONCLINK = common dso_local global i32 0, align 4
@OP_WAIT = common dso_local global i32 0, align 4
@add_wait_dep = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @Make_ProcessWait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @Make_ProcessWait(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %9 = call %struct.TYPE_10__* @Targ_NewGN(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_10__* %9, %struct.TYPE_10__** %3, align 8
  %10 = load i32, i32* @REMAKE, align 4
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 0
  store i32 %10, i32* %12, align 8
  %13 = load i32, i32* @OP_PHONY, align 4
  %14 = load i32, i32* @OP_DEPENDS, align 4
  %15 = or i32 %13, %14
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 1
  store i32 %15, i32* %17, align 4
  %18 = call i32 (...) @Targ_List()
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %20 = call i32 @Lst_AtFront(i32 %18, %struct.TYPE_10__* %19)
  %21 = load i32, i32* %2, align 4
  %22 = load i32, i32* @link_parent, align 4
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %24 = call i32 @Lst_ForEach(i32 %21, i32 %22, %struct.TYPE_10__* %23)
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %26 = call i32 @MakeBuildChild(%struct.TYPE_10__* %25, i32* null)
  %27 = load i32, i32* @FALSE, align 4
  %28 = call i32 @Lst_Init(i32 %27)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %31 = call i32 @Lst_AtEnd(i32 %29, %struct.TYPE_10__* %30)
  br label %32

32:                                               ; preds = %123, %46, %1
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @Lst_IsEmpty(i32 %33)
  %35 = icmp ne i32 %34, 0
  %36 = xor i1 %35, true
  br i1 %36, label %37, label %128

37:                                               ; preds = %32
  %38 = load i32, i32* %6, align 4
  %39 = call %struct.TYPE_10__* @Lst_DeQueue(i32 %38)
  store %struct.TYPE_10__* %39, %struct.TYPE_10__** %3, align 8
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @DONE_WAIT, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %37
  br label %32

47:                                               ; preds = %37
  %48 = load i32, i32* @DONE_WAIT, align 4
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = or i32 %51, %48
  store i32 %52, i32* %50, align 8
  %53 = load i32, i32* @MAKE, align 4
  %54 = call i64 @DEBUG(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %47
  %57 = load i32, i32* @debug_file, align 4
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 2
  %60 = load i8*, i8** %59, align 8
  %61 = call i32 @fprintf(i32 %57, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i8* %60)
  br label %62

62:                                               ; preds = %56, %47
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @OP_DOUBLEDEP, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %85

69:                                               ; preds = %62
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 4
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @Lst_IsEmpty(i32 %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %85, label %75

75:                                               ; preds = %69
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 4
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @Lst_Duplicate(i32 %78, i32* null)
  store i32 %79, i32* %8, align 4
  %80 = load i32, i32* %8, align 4
  %81 = load i32, i32* %6, align 4
  %82 = load i32, i32* @LST_CONCLINK, align 4
  %83 = call i32 @Lst_Concat(i32 %80, i32 %81, i32 %82)
  %84 = load i32, i32* %8, align 4
  store i32 %84, i32* %6, align 4
  br label %85

85:                                               ; preds = %75, %69, %62
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 8
  %89 = call i32* @Lst_First(i32 %88)
  store i32* %89, i32** %5, align 8
  %90 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @Lst_Open(i32 %92)
  br label %94

94:                                               ; preds = %122, %85
  %95 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 8
  %98 = call i32* @Lst_Next(i32 %97)
  store i32* %98, i32** %7, align 8
  %99 = icmp ne i32* %98, null
  br i1 %99, label %100, label %123

100:                                              ; preds = %94
  %101 = load i32*, i32** %7, align 8
  %102 = call %struct.TYPE_10__* @Lst_Datum(i32* %101)
  store %struct.TYPE_10__* %102, %struct.TYPE_10__** %4, align 8
  %103 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* @OP_WAIT, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %118

109:                                              ; preds = %100
  %110 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i32 0, i32 3
  %112 = load i32, i32* %111, align 8
  %113 = load i32*, i32** %5, align 8
  %114 = load i32, i32* @add_wait_dep, align 4
  %115 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %116 = call i32 @Lst_ForEachFrom(i32 %112, i32* %113, i32 %114, %struct.TYPE_10__* %115)
  %117 = load i32*, i32** %7, align 8
  store i32* %117, i32** %5, align 8
  br label %122

118:                                              ; preds = %100
  %119 = load i32, i32* %6, align 4
  %120 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %121 = call i32 @Lst_AtEnd(i32 %119, %struct.TYPE_10__* %120)
  br label %122

122:                                              ; preds = %118, %109
  br label %94

123:                                              ; preds = %94
  %124 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %125 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %124, i32 0, i32 3
  %126 = load i32, i32* %125, align 8
  %127 = call i32 @Lst_Close(i32 %126)
  br label %32

128:                                              ; preds = %32
  %129 = load i32, i32* %6, align 4
  %130 = call i32 @Lst_Destroy(i32 %129, i32* null)
  ret void
}

declare dso_local %struct.TYPE_10__* @Targ_NewGN(i8*) #1

declare dso_local i32 @Lst_AtFront(i32, %struct.TYPE_10__*) #1

declare dso_local i32 @Targ_List(...) #1

declare dso_local i32 @Lst_ForEach(i32, i32, %struct.TYPE_10__*) #1

declare dso_local i32 @MakeBuildChild(%struct.TYPE_10__*, i32*) #1

declare dso_local i32 @Lst_Init(i32) #1

declare dso_local i32 @Lst_AtEnd(i32, %struct.TYPE_10__*) #1

declare dso_local i32 @Lst_IsEmpty(i32) #1

declare dso_local %struct.TYPE_10__* @Lst_DeQueue(i32) #1

declare dso_local i64 @DEBUG(i32) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i32 @Lst_Duplicate(i32, i32*) #1

declare dso_local i32 @Lst_Concat(i32, i32, i32) #1

declare dso_local i32* @Lst_First(i32) #1

declare dso_local i32 @Lst_Open(i32) #1

declare dso_local i32* @Lst_Next(i32) #1

declare dso_local %struct.TYPE_10__* @Lst_Datum(i32*) #1

declare dso_local i32 @Lst_ForEachFrom(i32, i32*, i32, %struct.TYPE_10__*) #1

declare dso_local i32 @Lst_Close(i32) #1

declare dso_local i32 @Lst_Destroy(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
