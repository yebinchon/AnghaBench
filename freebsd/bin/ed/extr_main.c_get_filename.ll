; ModuleID = '/home/carl/AnghaBench/freebsd/bin/ed/extr_main.c_get_filename.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/ed/extr_main.c_get_filename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@get_filename.file = internal global i8* null, align 8
@get_filename.filesz = internal global i32 0, align 4
@ibufp = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [17 x i8] c"invalid filename\00", align 1
@errmsg = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@shcmd = common dso_local global i8* null, align 8
@PATH_MAX = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"filename too long\00", align 1
@old_filename = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [20 x i8] c"no current filename\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @get_filename() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i32, align 4
  %3 = load i8*, i8** @ibufp, align 8
  %4 = load i8, i8* %3, align 1
  %5 = sext i8 %4 to i32
  %6 = icmp ne i32 %5, 10
  br i1 %6, label %7, label %48

7:                                                ; preds = %0
  %8 = call i32 (...) @SKIP_BLANKS()
  %9 = load i8*, i8** @ibufp, align 8
  %10 = load i8, i8* %9, align 1
  %11 = sext i8 %10 to i32
  %12 = icmp eq i32 %11, 10
  br i1 %12, label %13, label %14

13:                                               ; preds = %7
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8** @errmsg, align 8
  store i8* null, i8** %1, align 8
  br label %87

14:                                               ; preds = %7
  %15 = call i8* @get_extended_line(i32* %2, i32 1)
  store i8* %15, i8** @ibufp, align 8
  %16 = icmp eq i8* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %14
  store i8* null, i8** %1, align 8
  br label %87

18:                                               ; preds = %14
  %19 = load i8*, i8** @ibufp, align 8
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp eq i32 %21, 33
  br i1 %22, label %23, label %38

23:                                               ; preds = %18
  %24 = load i8*, i8** @ibufp, align 8
  %25 = getelementptr inbounds i8, i8* %24, i32 1
  store i8* %25, i8** @ibufp, align 8
  %26 = call i32 (...) @get_shell_command()
  store i32 %26, i32* %2, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %23
  store i8* null, i8** %1, align 8
  br label %87

29:                                               ; preds = %23
  %30 = load i32, i32* %2, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %29
  %33 = load i8*, i8** @shcmd, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 1
  %35 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %34)
  br label %36

36:                                               ; preds = %32, %29
  %37 = load i8*, i8** @shcmd, align 8
  store i8* %37, i8** %1, align 8
  br label %87

38:                                               ; preds = %18
  %39 = load i32, i32* %2, align 4
  %40 = load i32, i32* @PATH_MAX, align 4
  %41 = sub nsw i32 %40, 1
  %42 = icmp sgt i32 %39, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %38
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i8** @errmsg, align 8
  store i8* null, i8** %1, align 8
  br label %87

44:                                               ; preds = %38
  br label %45

45:                                               ; preds = %44
  br label %46

46:                                               ; preds = %45
  br label %47

47:                                               ; preds = %46
  br label %55

48:                                               ; preds = %0
  %49 = load i8*, i8** @old_filename, align 8
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %48
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i8** @errmsg, align 8
  store i8* null, i8** %1, align 8
  br label %87

54:                                               ; preds = %48
  br label %55

55:                                               ; preds = %54, %47
  %56 = load i8*, i8** @get_filename.file, align 8
  %57 = load i32, i32* @get_filename.filesz, align 4
  %58 = load i32, i32* @PATH_MAX, align 4
  %59 = call i32 @REALLOC(i8* %56, i32 %57, i32 %58, i32* null)
  store i32 0, i32* %2, align 4
  br label %60

60:                                               ; preds = %65, %55
  %61 = load i8*, i8** @ibufp, align 8
  %62 = load i8, i8* %61, align 1
  %63 = sext i8 %62 to i32
  %64 = icmp ne i32 %63, 10
  br i1 %64, label %65, label %74

65:                                               ; preds = %60
  %66 = load i8*, i8** @ibufp, align 8
  %67 = getelementptr inbounds i8, i8* %66, i32 1
  store i8* %67, i8** @ibufp, align 8
  %68 = load i8, i8* %66, align 1
  %69 = load i8*, i8** @get_filename.file, align 8
  %70 = load i32, i32* %2, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %2, align 4
  %72 = sext i32 %70 to i64
  %73 = getelementptr inbounds i8, i8* %69, i64 %72
  store i8 %68, i8* %73, align 1
  br label %60

74:                                               ; preds = %60
  %75 = load i8*, i8** @get_filename.file, align 8
  %76 = load i32, i32* %2, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i8, i8* %75, i64 %77
  store i8 0, i8* %78, align 1
  %79 = load i8*, i8** @get_filename.file, align 8
  %80 = call i64 @is_legal_filename(i8* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %74
  %83 = load i8*, i8** @get_filename.file, align 8
  br label %85

84:                                               ; preds = %74
  br label %85

85:                                               ; preds = %84, %82
  %86 = phi i8* [ %83, %82 ], [ null, %84 ]
  store i8* %86, i8** %1, align 8
  br label %87

87:                                               ; preds = %85, %53, %43, %36, %28, %17, %13
  %88 = load i8*, i8** %1, align 8
  ret i8* %88
}

declare dso_local i32 @SKIP_BLANKS(...) #1

declare dso_local i8* @get_extended_line(i32*, i32) #1

declare dso_local i32 @get_shell_command(...) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i32 @REALLOC(i8*, i32, i32, i32*) #1

declare dso_local i64 @is_legal_filename(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
