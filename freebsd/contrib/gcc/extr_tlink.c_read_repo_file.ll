; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tlink.c_read_repo_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tlink.c_read_repo_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i32*, i8*, i32 }

@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@tlink_verbose = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"collect: reading %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%c \00", align 1
@temporary_obstack = common dso_local global i32 0, align 4
@temporary_firstobj = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [20 x i8] c"COLLECT_GCC_OPTIONS\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c".\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*)* @read_repo_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @read_repo_file(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca i8, align 1
  %4 = alloca i32*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  %5 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 3
  %7 = load i32, i32* %6, align 8
  %8 = call i32* @fopen(i32 %7, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %8, i32** %4, align 8
  %9 = load i32, i32* @tlink_verbose, align 4
  %10 = icmp sge i32 %9, 2
  br i1 %10, label %11, label %18

11:                                               ; preds = %1
  %12 = load i32, i32* @stderr, align 4
  %13 = call i8* @_(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @fprintf(i32 %12, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %13, i32 %16)
  br label %18

18:                                               ; preds = %11, %1
  br label %19

19:                                               ; preds = %54, %18
  %20 = load i32*, i32** %4, align 8
  %21 = call i32 @fscanf(i32* %20, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* %3)
  %22 = icmp eq i32 %21, 1
  br i1 %22, label %23, label %57

23:                                               ; preds = %19
  %24 = load i8, i8* %3, align 1
  %25 = sext i8 %24 to i32
  switch i32 %25, label %54 [
    i32 65, label %26
    i32 68, label %32
    i32 77, label %37
    i32 80, label %42
    i32 67, label %46
    i32 79, label %50
  ]

26:                                               ; preds = %23
  %27 = load i32*, i32** %4, align 8
  %28 = call i8* @pfgets(i32* %27)
  %29 = bitcast i8* %28 to i32*
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  store i32* %29, i32** %31, align 8
  br label %54

32:                                               ; preds = %23
  %33 = load i32*, i32** %4, align 8
  %34 = call i8* @pfgets(i32* %33)
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  store i8* %34, i8** %36, align 8
  br label %54

37:                                               ; preds = %23
  %38 = load i32*, i32** %4, align 8
  %39 = call i8* @pfgets(i32* %38)
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 2
  store i8* %39, i8** %41, align 8
  br label %54

42:                                               ; preds = %23
  %43 = load i32*, i32** %4, align 8
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %45 = call i32 @freadsym(i32* %43, %struct.TYPE_4__* %44, i32 2)
  br label %54

46:                                               ; preds = %23
  %47 = load i32*, i32** %4, align 8
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %49 = call i32 @freadsym(i32* %47, %struct.TYPE_4__* %48, i32 1)
  br label %54

50:                                               ; preds = %23
  %51 = load i32*, i32** %4, align 8
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %53 = call i32 @freadsym(i32* %51, %struct.TYPE_4__* %52, i32 0)
  br label %54

54:                                               ; preds = %23, %50, %46, %42, %37, %32, %26
  %55 = load i32, i32* @temporary_firstobj, align 4
  %56 = call i32 @obstack_free(i32* @temporary_obstack, i32 %55)
  br label %19

57:                                               ; preds = %19
  %58 = load i32*, i32** %4, align 8
  %59 = call i32 @fclose(i32* %58)
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 1
  %62 = load i32*, i32** %61, align 8
  %63 = icmp eq i32* %62, null
  br i1 %63, label %64, label %68

64:                                               ; preds = %57
  %65 = call i32* @getenv(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 1
  store i32* %65, i32** %67, align 8
  br label %68

68:                                               ; preds = %64, %57
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = load i8*, i8** %70, align 8
  %72 = icmp eq i8* %71, null
  br i1 %72, label %73, label %76

73:                                               ; preds = %68
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i8** %75, align 8
  br label %76

76:                                               ; preds = %73, %68
  ret void
}

declare dso_local i32* @fopen(i32, i8*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, i32) #1

declare dso_local i8* @_(i8*) #1

declare dso_local i32 @fscanf(i32*, i8*, i8*) #1

declare dso_local i8* @pfgets(i32*) #1

declare dso_local i32 @freadsym(i32*, %struct.TYPE_4__*, i32) #1

declare dso_local i32 @obstack_free(i32*, i32) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32* @getenv(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
