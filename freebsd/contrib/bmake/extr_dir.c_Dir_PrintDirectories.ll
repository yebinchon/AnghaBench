; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bmake/extr_dir.c_Dir_PrintDirectories.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bmake/extr_dir.c_Dir_PrintDirectories.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i32, i32 }

@debug_file = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"#*** Directory Cache:\0A\00", align 1
@.str.1 = private unnamed_addr constant [60 x i8] c"# Stats: %d hits %d misses %d near misses %d losers (%d%%)\0A\00", align 1
@hits = common dso_local global i32 0, align 4
@misses = common dso_local global i32 0, align 4
@nearmisses = common dso_local global i32 0, align 4
@bigmisses = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"# %-20s referenced\09hits\0A\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"directory\00", align 1
@openDirectories = common dso_local global i32 0, align 4
@SUCCESS = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [18 x i8] c"# %-20s %10d\09%4d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Dir_PrintDirectories() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca %struct.TYPE_2__*, align 8
  %3 = load i32, i32* @debug_file, align 4
  %4 = call i32 (i32, i8*, ...) @fprintf(i32 %3, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %5 = load i32, i32* @debug_file, align 4
  %6 = load i32, i32* @hits, align 4
  %7 = load i32, i32* @misses, align 4
  %8 = load i32, i32* @nearmisses, align 4
  %9 = load i32, i32* @bigmisses, align 4
  %10 = load i32, i32* @hits, align 4
  %11 = load i32, i32* @bigmisses, align 4
  %12 = add nsw i32 %10, %11
  %13 = load i32, i32* @nearmisses, align 4
  %14 = add nsw i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %25

16:                                               ; preds = %0
  %17 = load i32, i32* @hits, align 4
  %18 = mul nsw i32 %17, 100
  %19 = load i32, i32* @hits, align 4
  %20 = load i32, i32* @bigmisses, align 4
  %21 = add nsw i32 %19, %20
  %22 = load i32, i32* @nearmisses, align 4
  %23 = add nsw i32 %21, %22
  %24 = sdiv i32 %18, %23
  br label %26

25:                                               ; preds = %0
  br label %26

26:                                               ; preds = %25, %16
  %27 = phi i32 [ %24, %16 ], [ 0, %25 ]
  %28 = call i32 (i32, i8*, ...) @fprintf(i32 %5, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.1, i64 0, i64 0), i32 %6, i32 %7, i32 %8, i32 %9, i32 %27)
  %29 = load i32, i32* @debug_file, align 4
  %30 = call i32 (i32, i8*, ...) @fprintf(i32 %29, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %31 = load i32, i32* @openDirectories, align 4
  %32 = call i64 @Lst_Open(i32 %31)
  %33 = load i64, i64* @SUCCESS, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %58

35:                                               ; preds = %26
  br label %36

36:                                               ; preds = %40, %35
  %37 = load i32, i32* @openDirectories, align 4
  %38 = call i32* @Lst_Next(i32 %37)
  store i32* %38, i32** %1, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %40, label %55

40:                                               ; preds = %36
  %41 = load i32*, i32** %1, align 8
  %42 = call i64 @Lst_Datum(i32* %41)
  %43 = inttoptr i64 %42 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %43, %struct.TYPE_2__** %2, align 8
  %44 = load i32, i32* @debug_file, align 4
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %2, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i8*, i8** %46, align 8
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %2, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %2, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = call i32 (i32, i8*, ...) @fprintf(i32 %44, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i8* %47, i32 %50, i32 %53)
  br label %36

55:                                               ; preds = %36
  %56 = load i32, i32* @openDirectories, align 4
  %57 = call i32 @Lst_Close(i32 %56)
  br label %58

58:                                               ; preds = %55, %26
  ret void
}

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i64 @Lst_Open(i32) #1

declare dso_local i32* @Lst_Next(i32) #1

declare dso_local i64 @Lst_Datum(i32*) #1

declare dso_local i32 @Lst_Close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
