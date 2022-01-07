; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bmake/extr_suff.c_SuffExpandWildcards.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bmake/extr_suff.c_SuffExpandWildcards.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32, i32 }

@FALSE = common dso_local global i32 0, align 4
@SUFF = common dso_local global i32 0, align 4
@debug_file = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%s...\00", align 1
@TARG_CREATE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.TYPE_8__*)* @SuffExpandWildcards to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @SuffExpandWildcards(i32 %0, %struct.TYPE_8__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %4, align 8
  %9 = load i32, i32* %3, align 4
  %10 = call i64 @Lst_Datum(i32 %9)
  %11 = inttoptr i64 %10 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %11, %struct.TYPE_8__** %5, align 8
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @Dir_HasWildcards(i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %2
  br label %91

18:                                               ; preds = %2
  %19 = load i32, i32* @FALSE, align 4
  %20 = call i32 @Lst_Init(i32 %19)
  store i32 %20, i32* %8, align 4
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %25 = call i32 @Suff_FindPath(%struct.TYPE_8__* %24)
  %26 = load i32, i32* %8, align 4
  %27 = call i32 @Dir_Expand(i32 %23, i32 %25, i32 %26)
  br label %28

28:                                               ; preds = %44, %18
  %29 = load i32, i32* %8, align 4
  %30 = call i32 @Lst_IsEmpty(i32 %29)
  %31 = icmp ne i32 %30, 0
  %32 = xor i1 %31, true
  br i1 %32, label %33, label %63

33:                                               ; preds = %28
  %34 = load i32, i32* %8, align 4
  %35 = call i64 @Lst_DeQueue(i32 %34)
  %36 = inttoptr i64 %35 to i8*
  store i8* %36, i8** %7, align 8
  %37 = load i32, i32* @SUFF, align 4
  %38 = call i64 @DEBUG(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %33
  %41 = load i32, i32* @debug_file, align 4
  %42 = load i8*, i8** %7, align 8
  %43 = call i32 (i32, i8*, ...) @fprintf(i32 %41, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %42)
  br label %44

44:                                               ; preds = %40, %33
  %45 = load i8*, i8** %7, align 8
  %46 = load i32, i32* @TARG_CREATE, align 4
  %47 = call %struct.TYPE_8__* @Targ_FindNode(i8* %45, i32 %46)
  store %struct.TYPE_8__* %47, %struct.TYPE_8__** %6, align 8
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %3, align 4
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %53 = call i32 @Lst_InsertBefore(i32 %50, i32 %51, %struct.TYPE_8__* %52)
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %58 = call i32 @Lst_AtEnd(i32 %56, %struct.TYPE_8__* %57)
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %60, align 4
  br label %28

63:                                               ; preds = %28
  %64 = load i32, i32* %8, align 4
  %65 = call i32 @Lst_Destroy(i32 %64, i32* null)
  %66 = load i32, i32* @SUFF, align 4
  %67 = call i64 @DEBUG(i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %63
  %70 = load i32, i32* @debug_file, align 4
  %71 = call i32 (i32, i8*, ...) @fprintf(i32 %70, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %72

72:                                               ; preds = %69, %63
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = add nsw i32 %75, -1
  store i32 %76, i32* %74, align 4
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* %3, align 4
  %81 = call i32 @Lst_Remove(i32 %79, i32 %80)
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %89 = call i32 @Lst_Member(i32 %87, %struct.TYPE_8__* %88)
  %90 = call i32 @Lst_Remove(i32 %84, i32 %89)
  br label %91

91:                                               ; preds = %72, %17
  ret void
}

declare dso_local i64 @Lst_Datum(i32) #1

declare dso_local i32 @Dir_HasWildcards(i32) #1

declare dso_local i32 @Lst_Init(i32) #1

declare dso_local i32 @Dir_Expand(i32, i32, i32) #1

declare dso_local i32 @Suff_FindPath(%struct.TYPE_8__*) #1

declare dso_local i32 @Lst_IsEmpty(i32) #1

declare dso_local i64 @Lst_DeQueue(i32) #1

declare dso_local i64 @DEBUG(i32) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local %struct.TYPE_8__* @Targ_FindNode(i8*, i32) #1

declare dso_local i32 @Lst_InsertBefore(i32, i32, %struct.TYPE_8__*) #1

declare dso_local i32 @Lst_AtEnd(i32, %struct.TYPE_8__*) #1

declare dso_local i32 @Lst_Destroy(i32, i32*) #1

declare dso_local i32 @Lst_Remove(i32, i32) #1

declare dso_local i32 @Lst_Member(i32, %struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
