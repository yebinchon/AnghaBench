; ModuleID = '/home/carl/AnghaBench/freebsd/bin/rm/extr_rm.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/rm/extr_rm.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LC_ALL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"unlink\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"--\00", align 1
@eval = common dso_local global i32 0, align 4
@xflag = common dso_local global i32 0, align 4
@rflag = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [11 x i8] c"dfiIPRrvWx\00", align 1
@dflag = common dso_local global i32 0, align 4
@fflag = common dso_local global i32 0, align 4
@iflag = common dso_local global i32 0, align 4
@Iflag = common dso_local global i32 0, align 4
@vflag = common dso_local global i32 0, align 4
@Wflag = common dso_local global i32 0, align 4
@optind = common dso_local global i64 0, align 8
@uid = common dso_local global i32 0, align 4
@SIGINFO = common dso_local global i32 0, align 4
@siginfo = common dso_local global i32 0, align 4
@STDIN_FILENO = common dso_local global i32 0, align 4
@stdin_ok = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %8 = load i32, i32* @LC_ALL, align 4
  %9 = call i32 @setlocale(i32 %8, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %10 = load i8**, i8*** %5, align 8
  %11 = getelementptr inbounds i8*, i8** %10, i64 0
  %12 = load i8*, i8** %11, align 8
  %13 = call i8* @strrchr(i8* %12, i8 signext 47)
  store i8* %13, i8** %7, align 8
  %14 = icmp eq i8* %13, null
  br i1 %14, label %15, label %19

15:                                               ; preds = %2
  %16 = load i8**, i8*** %5, align 8
  %17 = getelementptr inbounds i8*, i8** %16, i64 0
  %18 = load i8*, i8** %17, align 8
  store i8* %18, i8** %7, align 8
  br label %22

19:                                               ; preds = %2
  %20 = load i8*, i8** %7, align 8
  %21 = getelementptr inbounds i8, i8* %20, i32 1
  store i8* %21, i8** %7, align 8
  br label %22

22:                                               ; preds = %19, %15
  %23 = load i8*, i8** %7, align 8
  %24 = call i64 @strcmp(i8* %23, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %52

26:                                               ; preds = %22
  %27 = load i32, i32* %4, align 4
  %28 = icmp eq i32 %27, 2
  br i1 %28, label %29, label %33

29:                                               ; preds = %26
  %30 = load i8**, i8*** %5, align 8
  %31 = getelementptr inbounds i8*, i8** %30, i64 1
  %32 = call i32 @rm_file(i8** %31)
  br label %49

33:                                               ; preds = %26
  %34 = load i32, i32* %4, align 4
  %35 = icmp eq i32 %34, 3
  br i1 %35, label %36, label %46

36:                                               ; preds = %33
  %37 = load i8**, i8*** %5, align 8
  %38 = getelementptr inbounds i8*, i8** %37, i64 1
  %39 = load i8*, i8** %38, align 8
  %40 = call i64 @strcmp(i8* %39, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %36
  %43 = load i8**, i8*** %5, align 8
  %44 = getelementptr inbounds i8*, i8** %43, i64 2
  %45 = call i32 @rm_file(i8** %44)
  br label %48

46:                                               ; preds = %36, %33
  %47 = call i32 (...) @usage()
  br label %48

48:                                               ; preds = %46, %42
  br label %49

49:                                               ; preds = %48, %29
  %50 = load i32, i32* @eval, align 4
  %51 = call i32 @exit(i32 %50) #3
  unreachable

52:                                               ; preds = %22
  store i32 0, i32* @xflag, align 4
  store i32 0, i32* @rflag, align 4
  br label %53

53:                                               ; preds = %71, %52
  %54 = load i32, i32* %4, align 4
  %55 = load i8**, i8*** %5, align 8
  %56 = call i32 @getopt(i32 %54, i8** %55, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  store i32 %56, i32* %6, align 4
  %57 = icmp ne i32 %56, -1
  br i1 %57, label %58, label %72

58:                                               ; preds = %53
  %59 = load i32, i32* %6, align 4
  switch i32 %59, label %69 [
    i32 100, label %60
    i32 102, label %61
    i32 105, label %62
    i32 73, label %63
    i32 80, label %64
    i32 82, label %65
    i32 114, label %65
    i32 118, label %66
    i32 87, label %67
    i32 120, label %68
  ]

60:                                               ; preds = %58
  store i32 1, i32* @dflag, align 4
  br label %71

61:                                               ; preds = %58
  store i32 1, i32* @fflag, align 4
  store i32 0, i32* @iflag, align 4
  br label %71

62:                                               ; preds = %58
  store i32 0, i32* @fflag, align 4
  store i32 1, i32* @iflag, align 4
  br label %71

63:                                               ; preds = %58
  store i32 1, i32* @Iflag, align 4
  br label %71

64:                                               ; preds = %58
  br label %71

65:                                               ; preds = %58, %58
  store i32 1, i32* @rflag, align 4
  br label %71

66:                                               ; preds = %58
  store i32 1, i32* @vflag, align 4
  br label %71

67:                                               ; preds = %58
  store i32 1, i32* @Wflag, align 4
  br label %71

68:                                               ; preds = %58
  store i32 1, i32* @xflag, align 4
  br label %71

69:                                               ; preds = %58
  %70 = call i32 (...) @usage()
  br label %71

71:                                               ; preds = %69, %68, %67, %66, %65, %64, %63, %62, %61, %60
  br label %53

72:                                               ; preds = %53
  %73 = load i64, i64* @optind, align 8
  %74 = load i32, i32* %4, align 4
  %75 = sext i32 %74 to i64
  %76 = sub nsw i64 %75, %73
  %77 = trunc i64 %76 to i32
  store i32 %77, i32* %4, align 4
  %78 = load i64, i64* @optind, align 8
  %79 = load i8**, i8*** %5, align 8
  %80 = getelementptr inbounds i8*, i8** %79, i64 %78
  store i8** %80, i8*** %5, align 8
  %81 = load i32, i32* %4, align 4
  %82 = icmp slt i32 %81, 1
  br i1 %82, label %83, label %89

83:                                               ; preds = %72
  %84 = load i32, i32* @fflag, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %83
  ret i32 0

87:                                               ; preds = %83
  %88 = call i32 (...) @usage()
  br label %89

89:                                               ; preds = %87, %72
  %90 = load i8**, i8*** %5, align 8
  %91 = call i32 @checkdot(i8** %90)
  %92 = load i8**, i8*** %5, align 8
  %93 = call i32 @checkslash(i8** %92)
  %94 = call i32 (...) @geteuid()
  store i32 %94, i32* @uid, align 4
  %95 = load i32, i32* @SIGINFO, align 4
  %96 = load i32, i32* @siginfo, align 4
  %97 = call i32 @signal(i32 %95, i32 %96)
  %98 = load i8**, i8*** %5, align 8
  %99 = load i8*, i8** %98, align 8
  %100 = icmp ne i8* %99, null
  br i1 %100, label %101, label %123

101:                                              ; preds = %89
  %102 = load i32, i32* @STDIN_FILENO, align 4
  %103 = call i32 @isatty(i32 %102)
  store i32 %103, i32* @stdin_ok, align 4
  %104 = load i32, i32* @Iflag, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %113

106:                                              ; preds = %101
  %107 = load i8**, i8*** %5, align 8
  %108 = call i64 @check2(i8** %107)
  %109 = icmp eq i64 %108, 0
  br i1 %109, label %110, label %112

110:                                              ; preds = %106
  %111 = call i32 @exit(i32 1) #3
  unreachable

112:                                              ; preds = %106
  br label %113

113:                                              ; preds = %112, %101
  %114 = load i32, i32* @rflag, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %119

116:                                              ; preds = %113
  %117 = load i8**, i8*** %5, align 8
  %118 = call i32 @rm_tree(i8** %117)
  br label %122

119:                                              ; preds = %113
  %120 = load i8**, i8*** %5, align 8
  %121 = call i32 @rm_file(i8** %120)
  br label %122

122:                                              ; preds = %119, %116
  br label %123

123:                                              ; preds = %122, %89
  %124 = load i32, i32* @eval, align 4
  %125 = call i32 @exit(i32 %124) #3
  unreachable
}

declare dso_local i32 @setlocale(i32, i8*) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @rm_file(i8**) #1

declare dso_local i32 @usage(...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @checkdot(i8**) #1

declare dso_local i32 @checkslash(i8**) #1

declare dso_local i32 @geteuid(...) #1

declare dso_local i32 @signal(i32, i32) #1

declare dso_local i32 @isatty(i32) #1

declare dso_local i64 @check2(i8**) #1

declare dso_local i32 @rm_tree(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
