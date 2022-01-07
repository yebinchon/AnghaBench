; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_arsup.c_ar_delete.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_arsup.c_ar_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.TYPE_3__*, i32 }
%struct.list = type { i8*, %struct.list* }

@obfd = common dso_local global %struct.TYPE_4__* null, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"%s: no open output archive\0A\00", align 1
@program_name = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [31 x i8] c"%s: can't find module file %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ar_delete(%struct.list* %0) #0 {
  %2 = alloca %struct.list*, align 8
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca %struct.TYPE_3__**, align 8
  %5 = alloca i32, align 4
  store %struct.list* %0, %struct.list** %2, align 8
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** @obfd, align 8
  %7 = icmp ne %struct.TYPE_4__* %6, null
  br i1 %7, label %14, label %8

8:                                                ; preds = %1
  %9 = load i32, i32* @stderr, align 4
  %10 = call i8* @_(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %11 = load i8*, i8** @program_name, align 8
  %12 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %9, i8* %10, i8* %11)
  %13 = call i32 (...) @maybequit()
  br label %65

14:                                               ; preds = %1
  br label %15

15:                                               ; preds = %60, %14
  %16 = load %struct.list*, %struct.list** %2, align 8
  %17 = icmp ne %struct.list* %16, null
  br i1 %17, label %18, label %64

18:                                               ; preds = %15
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** @obfd, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  store %struct.TYPE_3__* %21, %struct.TYPE_3__** %3, align 8
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** @obfd, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  store %struct.TYPE_3__** %23, %struct.TYPE_3__*** %4, align 8
  store i32 0, i32* %5, align 4
  br label %24

24:                                               ; preds = %44, %18
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %26 = icmp ne %struct.TYPE_3__* %25, null
  br i1 %26, label %27, label %48

27:                                               ; preds = %24
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.list*, %struct.list** %2, align 8
  %32 = getelementptr inbounds %struct.list, %struct.list* %31, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  %34 = call i64 @FILENAME_CMP(i32 %30, i8* %33)
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %27
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %38, align 8
  %40 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %4, align 8
  store %struct.TYPE_3__* %39, %struct.TYPE_3__** %40, align 8
  store i32 1, i32* %5, align 4
  br label %44

41:                                               ; preds = %27
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  store %struct.TYPE_3__** %43, %struct.TYPE_3__*** %4, align 8
  br label %44

44:                                               ; preds = %41, %36
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %46, align 8
  store %struct.TYPE_3__* %47, %struct.TYPE_3__** %3, align 8
  br label %24

48:                                               ; preds = %24
  %49 = load i32, i32* %5, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %60, label %51

51:                                               ; preds = %48
  %52 = load i32, i32* @stderr, align 4
  %53 = call i8* @_(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %54 = load i8*, i8** @program_name, align 8
  %55 = load %struct.list*, %struct.list** %2, align 8
  %56 = getelementptr inbounds %struct.list, %struct.list* %55, i32 0, i32 0
  %57 = load i8*, i8** %56, align 8
  %58 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %52, i8* %53, i8* %54, i8* %57)
  %59 = call i32 (...) @maybequit()
  br label %60

60:                                               ; preds = %51, %48
  %61 = load %struct.list*, %struct.list** %2, align 8
  %62 = getelementptr inbounds %struct.list, %struct.list* %61, i32 0, i32 1
  %63 = load %struct.list*, %struct.list** %62, align 8
  store %struct.list* %63, %struct.list** %2, align 8
  br label %15

64:                                               ; preds = %15
  br label %65

65:                                               ; preds = %64, %8
  ret void
}

declare dso_local i32 @fprintf(i32, i8*, i8*, ...) #1

declare dso_local i8* @_(i8*) #1

declare dso_local i32 @maybequit(...) #1

declare dso_local i64 @FILENAME_CMP(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
