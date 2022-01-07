; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bmake/extr_make.c_Make_DoAllVar.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bmake/extr_make.c_Make_DoAllVar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32 }

@DONE_ALLSRC = common dso_local global i32 0, align 4
@MakeUnmark = common dso_local global i32 0, align 4
@MakeAddAllSrc = common dso_local global i32 0, align 4
@OODATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@ALLSRC = common dso_local global i32 0, align 4
@OP_JOIN = common dso_local global i32 0, align 4
@TARGET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Make_DoAllVar(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca i8*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  %4 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @DONE_ALLSRC, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %63

11:                                               ; preds = %1
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @MakeUnmark, align 4
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %17 = call i32 @Lst_ForEach(i32 %14, i32 %15, %struct.TYPE_7__* %16)
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @MakeAddAllSrc, align 4
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %23 = call i32 @Lst_ForEach(i32 %20, i32 %21, %struct.TYPE_7__* %22)
  %24 = load i32, i32* @OODATE, align 4
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %26 = call i32 @Var_Exists(i32 %24, %struct.TYPE_7__* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %11
  %29 = load i32, i32* @OODATE, align 4
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %31 = call i32 @Var_Set(i32 %29, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), %struct.TYPE_7__* %30, i32 0)
  br label %32

32:                                               ; preds = %28, %11
  %33 = load i32, i32* @ALLSRC, align 4
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %35 = call i32 @Var_Exists(i32 %33, %struct.TYPE_7__* %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %32
  %38 = load i32, i32* @ALLSRC, align 4
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %40 = call i32 @Var_Set(i32 %38, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), %struct.TYPE_7__* %39, i32 0)
  br label %41

41:                                               ; preds = %37, %32
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @OP_JOIN, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %57

48:                                               ; preds = %41
  %49 = load i32, i32* @TARGET, align 4
  %50 = load i32, i32* @ALLSRC, align 4
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %52 = call i8* @Var_Value(i32 %50, %struct.TYPE_7__* %51, i8** %3)
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %54 = call i32 @Var_Set(i32 %49, i8* %52, %struct.TYPE_7__* %53, i32 0)
  %55 = load i8*, i8** %3, align 8
  %56 = call i32 @free(i8* %55)
  br label %57

57:                                               ; preds = %48, %41
  %58 = load i32, i32* @DONE_ALLSRC, align 4
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = or i32 %61, %58
  store i32 %62, i32* %60, align 4
  br label %63

63:                                               ; preds = %57, %10
  ret void
}

declare dso_local i32 @Lst_ForEach(i32, i32, %struct.TYPE_7__*) #1

declare dso_local i32 @Var_Exists(i32, %struct.TYPE_7__*) #1

declare dso_local i32 @Var_Set(i32, i8*, %struct.TYPE_7__*, i32) #1

declare dso_local i8* @Var_Value(i32, %struct.TYPE_7__*, i8**) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
