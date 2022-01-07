; ModuleID = '/home/carl/AnghaBench/freebsd/bin/sh/extr_mknodes.c_parsenode.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/sh/extr_mknodes.c_parsenode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.str = type { i64, i32, i8* }

@BUFLEN = common dso_local global i32 0, align 4
@curstr = common dso_local global %struct.str* null, align 8
@.str = private unnamed_addr constant [13 x i8] c"Tag expected\00", align 1
@linep = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"Garbage at end of line\00", align 1
@nodename = common dso_local global i8** null, align 8
@ntypes = common dso_local global i64 0, align 8
@str = common dso_local global %struct.str* null, align 8
@nstr = common dso_local global i32 0, align 4
@nodestr = common dso_local global %struct.str** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @parsenode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parsenode() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.str*, align 8
  %5 = load i32, i32* @BUFLEN, align 4
  %6 = zext i32 %5 to i64
  %7 = call i8* @llvm.stacksave()
  store i8* %7, i8** %1, align 8
  %8 = alloca i8, i64 %6, align 16
  store i64 %6, i64* %2, align 8
  %9 = load i32, i32* @BUFLEN, align 4
  %10 = zext i32 %9 to i64
  %11 = alloca i8, i64 %10, align 16
  store i64 %10, i64* %3, align 8
  %12 = load %struct.str*, %struct.str** @curstr, align 8
  %13 = icmp ne %struct.str* %12, null
  br i1 %13, label %14, label %22

14:                                               ; preds = %0
  %15 = load %struct.str*, %struct.str** @curstr, align 8
  %16 = getelementptr inbounds %struct.str, %struct.str* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp sgt i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %14
  %20 = load %struct.str*, %struct.str** @curstr, align 8
  %21 = getelementptr inbounds %struct.str, %struct.str* %20, i32 0, i32 1
  store i32 1, i32* %21, align 8
  br label %22

22:                                               ; preds = %19, %14, %0
  %23 = call i32 @nextfield(i8* %8)
  %24 = call i32 @nextfield(i8* %11)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %22
  %27 = call i32 @error(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  br label %28

28:                                               ; preds = %26, %22
  %29 = load i8*, i8** @linep, align 8
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  %34 = call i32 @error(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  br label %35

35:                                               ; preds = %33, %28
  %36 = call i8* @savestr(i8* %8)
  %37 = load i8**, i8*** @nodename, align 8
  %38 = load i64, i64* @ntypes, align 8
  %39 = getelementptr inbounds i8*, i8** %37, i64 %38
  store i8* %36, i8** %39, align 8
  %40 = load %struct.str*, %struct.str** @str, align 8
  store %struct.str* %40, %struct.str** %4, align 8
  br label %41

41:                                               ; preds = %56, %35
  %42 = load %struct.str*, %struct.str** %4, align 8
  %43 = load %struct.str*, %struct.str** @str, align 8
  %44 = load i32, i32* @nstr, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.str, %struct.str* %43, i64 %45
  %47 = icmp ult %struct.str* %42, %46
  br i1 %47, label %48, label %59

48:                                               ; preds = %41
  %49 = load %struct.str*, %struct.str** %4, align 8
  %50 = getelementptr inbounds %struct.str, %struct.str* %49, i32 0, i32 2
  %51 = load i8*, i8** %50, align 8
  %52 = call i64 @strcmp(i8* %51, i8* %11)
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %48
  br label %59

55:                                               ; preds = %48
  br label %56

56:                                               ; preds = %55
  %57 = load %struct.str*, %struct.str** %4, align 8
  %58 = getelementptr inbounds %struct.str, %struct.str* %57, i32 1
  store %struct.str* %58, %struct.str** %4, align 8
  br label %41

59:                                               ; preds = %54, %41
  %60 = load %struct.str*, %struct.str** %4, align 8
  %61 = load %struct.str*, %struct.str** @str, align 8
  %62 = load i32, i32* @nstr, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.str, %struct.str* %61, i64 %63
  %65 = icmp uge %struct.str* %60, %64
  br i1 %65, label %66, label %75

66:                                               ; preds = %59
  %67 = call i8* @savestr(i8* %11)
  %68 = load %struct.str*, %struct.str** %4, align 8
  %69 = getelementptr inbounds %struct.str, %struct.str* %68, i32 0, i32 2
  store i8* %67, i8** %69, align 8
  %70 = load %struct.str*, %struct.str** %4, align 8
  %71 = getelementptr inbounds %struct.str, %struct.str* %70, i32 0, i32 0
  store i64 0, i64* %71, align 8
  %72 = load %struct.str*, %struct.str** %4, align 8
  store %struct.str* %72, %struct.str** @curstr, align 8
  %73 = load i32, i32* @nstr, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* @nstr, align 4
  br label %75

75:                                               ; preds = %66, %59
  %76 = load %struct.str*, %struct.str** %4, align 8
  %77 = load %struct.str**, %struct.str*** @nodestr, align 8
  %78 = load i64, i64* @ntypes, align 8
  %79 = getelementptr inbounds %struct.str*, %struct.str** %77, i64 %78
  store %struct.str* %76, %struct.str** %79, align 8
  %80 = load i64, i64* @ntypes, align 8
  %81 = add i64 %80, 1
  store i64 %81, i64* @ntypes, align 8
  %82 = load i8*, i8** %1, align 8
  call void @llvm.stackrestore(i8* %82)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @nextfield(i8*) #2

declare dso_local i32 @error(i8*) #2

declare dso_local i8* @savestr(i8*) #2

declare dso_local i64 @strcmp(i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
