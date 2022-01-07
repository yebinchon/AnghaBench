; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_arsup.c_ar_replace.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_arsup.c_ar_replace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_4__*, i32 }
%struct.list = type { i8*, %struct.list* }

@obfd = common dso_local global %struct.TYPE_5__* null, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"%s: no open output archive\0A\00", align 1
@program_name = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [24 x i8] c"%s: can't open file %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"%s: can't find module file %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ar_replace(%struct.list* %0) #0 {
  %2 = alloca %struct.list*, align 8
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca %struct.TYPE_4__**, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca %struct.TYPE_4__*, align 8
  store %struct.list* %0, %struct.list** %2, align 8
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** @obfd, align 8
  %9 = icmp ne %struct.TYPE_5__* %8, null
  br i1 %9, label %16, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @stderr, align 4
  %12 = call i8* @_(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %13 = load i8*, i8** @program_name, align 8
  %14 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %11, i8* %12, i8* %13)
  %15 = call i32 (...) @maybequit()
  br label %105

16:                                               ; preds = %1
  br label %17

17:                                               ; preds = %100, %16
  %18 = load %struct.list*, %struct.list** %2, align 8
  %19 = icmp ne %struct.list* %18, null
  br i1 %19, label %20, label %104

20:                                               ; preds = %17
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** @obfd, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  store %struct.TYPE_4__* %23, %struct.TYPE_4__** %3, align 8
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** @obfd, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  store %struct.TYPE_4__** %25, %struct.TYPE_4__*** %4, align 8
  store i32 0, i32* %5, align 4
  br label %26

26:                                               ; preds = %66, %20
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %28 = icmp ne %struct.TYPE_4__* %27, null
  br i1 %28, label %29, label %70

29:                                               ; preds = %26
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.list*, %struct.list** %2, align 8
  %34 = getelementptr inbounds %struct.list, %struct.list* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  %36 = call i64 @FILENAME_CMP(i32 %32, i8* %35)
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %63

38:                                               ; preds = %29
  %39 = load %struct.list*, %struct.list** %2, align 8
  %40 = getelementptr inbounds %struct.list, %struct.list* %39, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8
  %42 = call %struct.TYPE_4__* @bfd_openr(i8* %41, i32 0)
  store %struct.TYPE_4__* %42, %struct.TYPE_4__** %6, align 8
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %44 = icmp ne %struct.TYPE_4__* %43, null
  br i1 %44, label %54, label %45

45:                                               ; preds = %38
  %46 = load i32, i32* @stderr, align 4
  %47 = call i8* @_(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %48 = load i8*, i8** @program_name, align 8
  %49 = load %struct.list*, %struct.list** %2, align 8
  %50 = getelementptr inbounds %struct.list, %struct.list* %49, i32 0, i32 0
  %51 = load i8*, i8** %50, align 8
  %52 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %46, i8* %47, i8* %48, i8* %51)
  %53 = call i32 (...) @maybequit()
  br label %62

54:                                               ; preds = %38
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %56 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %4, align 8
  store %struct.TYPE_4__* %55, %struct.TYPE_4__** %56, align 8
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  store %struct.TYPE_4__* %59, %struct.TYPE_4__** %61, align 8
  store i32 1, i32* %5, align 4
  br label %62

62:                                               ; preds = %54, %45
  br label %66

63:                                               ; preds = %29
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  store %struct.TYPE_4__** %65, %struct.TYPE_4__*** %4, align 8
  br label %66

66:                                               ; preds = %63, %62
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %68, align 8
  store %struct.TYPE_4__* %69, %struct.TYPE_4__** %3, align 8
  br label %26

70:                                               ; preds = %26
  %71 = load i32, i32* %5, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %100, label %73

73:                                               ; preds = %70
  %74 = load %struct.list*, %struct.list** %2, align 8
  %75 = getelementptr inbounds %struct.list, %struct.list* %74, i32 0, i32 0
  %76 = load i8*, i8** %75, align 8
  %77 = call %struct.TYPE_4__* @bfd_openr(i8* %76, i32 0)
  store %struct.TYPE_4__* %77, %struct.TYPE_4__** %7, align 8
  %78 = load i32, i32* @stderr, align 4
  %79 = call i8* @_(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %80 = load i8*, i8** @program_name, align 8
  %81 = load %struct.list*, %struct.list** %2, align 8
  %82 = getelementptr inbounds %struct.list, %struct.list* %81, i32 0, i32 0
  %83 = load i8*, i8** %82, align 8
  %84 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %78, i8* %79, i8* %80, i8* %83)
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %86 = icmp ne %struct.TYPE_4__* %85, null
  br i1 %86, label %96, label %87

87:                                               ; preds = %73
  %88 = load i32, i32* @stderr, align 4
  %89 = call i8* @_(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %90 = load i8*, i8** @program_name, align 8
  %91 = load %struct.list*, %struct.list** %2, align 8
  %92 = getelementptr inbounds %struct.list, %struct.list* %91, i32 0, i32 0
  %93 = load i8*, i8** %92, align 8
  %94 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %88, i8* %89, i8* %90, i8* %93)
  %95 = call i32 (...) @maybequit()
  br label %99

96:                                               ; preds = %73
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %98 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %4, align 8
  store %struct.TYPE_4__* %97, %struct.TYPE_4__** %98, align 8
  br label %99

99:                                               ; preds = %96, %87
  br label %100

100:                                              ; preds = %99, %70
  %101 = load %struct.list*, %struct.list** %2, align 8
  %102 = getelementptr inbounds %struct.list, %struct.list* %101, i32 0, i32 1
  %103 = load %struct.list*, %struct.list** %102, align 8
  store %struct.list* %103, %struct.list** %2, align 8
  br label %17

104:                                              ; preds = %17
  br label %105

105:                                              ; preds = %104, %10
  ret void
}

declare dso_local i32 @fprintf(i32, i8*, i8*, ...) #1

declare dso_local i8* @_(i8*) #1

declare dso_local i32 @maybequit(...) #1

declare dso_local i64 @FILENAME_CMP(i32, i8*) #1

declare dso_local %struct.TYPE_4__* @bfd_openr(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
