; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_gengtype.c_close_output_files.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_gengtype.c_close_output_files.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64*, i32, %struct.TYPE_3__* }

@output_files = common dso_local global %struct.TYPE_3__* null, align 8
@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@EOF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"opening output file\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"writing output file\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"closing output file\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @close_output_files to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @close_output_files() #0 {
  %1 = alloca %struct.TYPE_3__*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** @output_files, align 8
  store %struct.TYPE_3__* %6, %struct.TYPE_3__** %1, align 8
  br label %7

7:                                                ; preds = %100, %0
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %9 = icmp ne %struct.TYPE_3__* %8, null
  br i1 %9, label %10, label %104

10:                                               ; preds = %7
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 8
  %14 = call i32* @fopen(i32 %13, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %14, i32** %2, align 8
  %15 = load i32*, i32** %2, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %66

17:                                               ; preds = %10
  store i64 0, i64* %4, align 8
  br label %18

18:                                               ; preds = %43, %17
  %19 = load i64, i64* %4, align 8
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ult i64 %19, %22
  br i1 %23, label %24, label %46

24:                                               ; preds = %18
  %25 = load i32*, i32** %2, align 8
  %26 = call i32 @fgetc(i32* %25)
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* @EOF, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %41, label %30

30:                                               ; preds = %24
  %31 = load i32, i32* %5, align 4
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 1
  %34 = load i64*, i64** %33, align 8
  %35 = load i64, i64* %4, align 8
  %36 = getelementptr inbounds i64, i64* %34, i64 %35
  %37 = load i64, i64* %36, align 8
  %38 = trunc i64 %37 to i8
  %39 = zext i8 %38 to i32
  %40 = icmp ne i32 %31, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %30, %24
  br label %46

42:                                               ; preds = %30
  br label %43

43:                                               ; preds = %42
  %44 = load i64, i64* %4, align 8
  %45 = add i64 %44, 1
  store i64 %45, i64* %4, align 8
  br label %18

46:                                               ; preds = %41, %18
  %47 = load i64, i64* %4, align 8
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp eq i64 %47, %50
  br i1 %51, label %52, label %57

52:                                               ; preds = %46
  %53 = load i32*, i32** %2, align 8
  %54 = call i32 @fgetc(i32* %53)
  %55 = load i32, i32* @EOF, align 4
  %56 = icmp eq i32 %54, %55
  br label %57

57:                                               ; preds = %52, %46
  %58 = phi i1 [ false, %46 ], [ %56, %52 ]
  %59 = zext i1 %58 to i32
  store i32 %59, i32* %3, align 4
  %60 = load i32*, i32** %2, align 8
  %61 = call i64 @fclose(i32* %60)
  %62 = load i32, i32* %3, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %57
  br label %100

65:                                               ; preds = %57
  br label %66

66:                                               ; preds = %65, %10
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = call i32* @fopen(i32 %69, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %70, i32** %2, align 8
  %71 = load i32*, i32** %2, align 8
  %72 = icmp eq i32* %71, null
  br i1 %72, label %73, label %76

73:                                               ; preds = %66
  %74 = call i32 @perror(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %75 = call i32 @exit(i32 1) #3
  unreachable

76:                                               ; preds = %66
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 1
  %79 = load i64*, i64** %78, align 8
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i32*, i32** %2, align 8
  %84 = call i64 @fwrite(i64* %79, i32 1, i64 %82, i32* %83)
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %84, %87
  br i1 %88, label %89, label %92

89:                                               ; preds = %76
  %90 = call i32 @perror(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  %91 = call i32 @exit(i32 1) #3
  unreachable

92:                                               ; preds = %76
  %93 = load i32*, i32** %2, align 8
  %94 = call i64 @fclose(i32* %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %92
  %97 = call i32 @perror(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  %98 = call i32 @exit(i32 1) #3
  unreachable

99:                                               ; preds = %92
  br label %100

100:                                              ; preds = %99, %64
  %101 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 3
  %103 = load %struct.TYPE_3__*, %struct.TYPE_3__** %102, align 8
  store %struct.TYPE_3__* %103, %struct.TYPE_3__** %1, align 8
  br label %7

104:                                              ; preds = %7
  ret void
}

declare dso_local i32* @fopen(i32, i8*) #1

declare dso_local i32 @fgetc(i32*) #1

declare dso_local i64 @fclose(i32*) #1

declare dso_local i32 @perror(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i64 @fwrite(i64*, i32, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
