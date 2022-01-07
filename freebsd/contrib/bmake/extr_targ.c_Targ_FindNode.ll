; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bmake/extr_targ.c_Targ_FindNode.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bmake/extr_targ.c_Targ_FindNode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }

@TARG_CREATE = common dso_local global i32 0, align 4
@TARG_NOHASH = common dso_local global i32 0, align 4
@targets = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c".ALLTARGETS\00", align 1
@VAR_GLOBAL = common dso_local global i32 0, align 4
@allTargets = common dso_local global i32 0, align 4
@doing_depend = common dso_local global i64 0, align 8
@FROM_DEPEND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_6__* @Targ_FindNode(i8* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* null, i32** %7, align 8
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @TARG_CREATE, align 4
  %11 = load i32, i32* @TARG_NOHASH, align 4
  %12 = or i32 %10, %11
  %13 = and i32 %9, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %25, label %15

15:                                               ; preds = %2
  %16 = load i8*, i8** %4, align 8
  %17 = call i32* @Hash_FindEntry(i32* @targets, i8* %16)
  store i32* %17, i32** %7, align 8
  %18 = load i32*, i32** %7, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %3, align 8
  br label %68

21:                                               ; preds = %15
  %22 = load i32*, i32** %7, align 8
  %23 = call i64 @Hash_GetValue(i32* %22)
  %24 = inttoptr i64 %23 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %24, %struct.TYPE_6__** %3, align 8
  br label %68

25:                                               ; preds = %2
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @TARG_NOHASH, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %40, label %30

30:                                               ; preds = %25
  %31 = load i8*, i8** %4, align 8
  %32 = call i32* @Hash_CreateEntry(i32* @targets, i8* %31, i32* %8)
  store i32* %32, i32** %7, align 8
  %33 = load i32, i32* %8, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %39, label %35

35:                                               ; preds = %30
  %36 = load i32*, i32** %7, align 8
  %37 = call i64 @Hash_GetValue(i32* %36)
  %38 = inttoptr i64 %37 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %38, %struct.TYPE_6__** %3, align 8
  br label %68

39:                                               ; preds = %30
  br label %40

40:                                               ; preds = %39, %25
  %41 = load i8*, i8** %4, align 8
  %42 = call %struct.TYPE_6__* @Targ_NewGN(i8* %41)
  store %struct.TYPE_6__* %42, %struct.TYPE_6__** %6, align 8
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* @TARG_NOHASH, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %51, label %47

47:                                               ; preds = %40
  %48 = load i32*, i32** %7, align 8
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %50 = call i32 @Hash_SetValue(i32* %48, %struct.TYPE_6__* %49)
  br label %51

51:                                               ; preds = %47, %40
  %52 = load i8*, i8** %4, align 8
  %53 = load i32, i32* @VAR_GLOBAL, align 4
  %54 = call i32 @Var_Append(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* %52, i32 %53)
  %55 = load i32, i32* @allTargets, align 4
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %57 = call i32 @Lst_AtEnd(i32 %55, %struct.TYPE_6__* %56)
  %58 = load i64, i64* @doing_depend, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %51
  %61 = load i32, i32* @FROM_DEPEND, align 4
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = or i32 %64, %61
  store i32 %65, i32* %63, align 4
  br label %66

66:                                               ; preds = %60, %51
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  store %struct.TYPE_6__* %67, %struct.TYPE_6__** %3, align 8
  br label %68

68:                                               ; preds = %66, %35, %21, %20
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  ret %struct.TYPE_6__* %69
}

declare dso_local i32* @Hash_FindEntry(i32*, i8*) #1

declare dso_local i64 @Hash_GetValue(i32*) #1

declare dso_local i32* @Hash_CreateEntry(i32*, i8*, i32*) #1

declare dso_local %struct.TYPE_6__* @Targ_NewGN(i8*) #1

declare dso_local i32 @Hash_SetValue(i32*, %struct.TYPE_6__*) #1

declare dso_local i32 @Var_Append(i8*, i8*, i32) #1

declare dso_local i32 @Lst_AtEnd(i32, %struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
