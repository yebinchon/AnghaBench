; ModuleID = '/home/carl/AnghaBench/freebsd/bin/sh/extr_main.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/sh/extr_main.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.stackmark = type { i32 }

@LC_ALL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@main_handler = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@iflag = common dso_local global i64 0, align 8
@rootshell = common dso_local global i32 0, align 4
@exception = common dso_local global i64 0, align 8
@EXEXIT = common dso_local global i64 0, align 8
@exitstatus = common dso_local global i32 0, align 4
@EXINT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@FORCEINTON = common dso_local global i32 0, align 4
@handler = common dso_local global %struct.TYPE_3__* null, align 8
@rootpid = common dso_local global i32 0, align 4
@INTOFF = common dso_local global i32 0, align 4
@INTON = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"/etc/profile\00", align 1
@privileged = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [18 x i8] c"${HOME-}/.profile\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"/etc/suid_profile\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"ENV\00", align 1
@minusc = common dso_local global i32* null, align 8
@sflag = common dso_local global i64 0, align 8
@EV_EXIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.stackmark, align 4
  %7 = alloca %struct.stackmark, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %10 = load i32, i32* @LC_ALL, align 4
  %11 = call i32 @setlocale(i32 %10, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %12 = call i32 (...) @initcharset()
  store volatile i32 0, i32* %8, align 4
  %13 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @main_handler, i32 0, i32 0), align 4
  %14 = call i64 @setjmp(i32 %13) #3
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %54

16:                                               ; preds = %2
  %17 = load volatile i32, i32* %8, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %29, label %19

19:                                               ; preds = %16
  %20 = load i64, i64* @iflag, align 8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %29, label %22

22:                                               ; preds = %19
  %23 = load i32, i32* @rootshell, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %22
  %26 = load i64, i64* @exception, align 8
  %27 = load i64, i64* @EXEXIT, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %25, %22, %19, %16
  %30 = load i32, i32* @exitstatus, align 4
  %31 = call i32 @exitshell(i32 %30)
  br label %32

32:                                               ; preds = %29, %25
  %33 = call i32 (...) @reset()
  %34 = load i64, i64* @exception, align 8
  %35 = load i64, i64* @EXINT, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %32
  %38 = call i32 @out2fmt_flush(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %39

39:                                               ; preds = %37, %32
  %40 = call i32 @popstackmark(%struct.stackmark* %6)
  %41 = load i32, i32* @FORCEINTON, align 4
  %42 = load volatile i32, i32* %8, align 4
  %43 = icmp eq i32 %42, 1
  br i1 %43, label %44, label %45

44:                                               ; preds = %39
  br label %85

45:                                               ; preds = %39
  %46 = load volatile i32, i32* %8, align 4
  %47 = icmp eq i32 %46, 2
  br i1 %47, label %48, label %49

48:                                               ; preds = %45
  br label %94

49:                                               ; preds = %45
  %50 = load volatile i32, i32* %8, align 4
  %51 = icmp eq i32 %50, 3
  br i1 %51, label %52, label %53

52:                                               ; preds = %49
  br label %113

53:                                               ; preds = %49
  br label %128

54:                                               ; preds = %2
  store %struct.TYPE_3__* @main_handler, %struct.TYPE_3__** @handler, align 8
  %55 = call i32 (...) @getpid()
  store i32 %55, i32* @rootpid, align 4
  store i32 1, i32* @rootshell, align 4
  %56 = load i32, i32* @INTOFF, align 4
  %57 = call i32 (...) @initvar()
  %58 = call i32 @setstackmark(%struct.stackmark* %6)
  %59 = call i32 @setstackmark(%struct.stackmark* %7)
  %60 = load i32, i32* %4, align 4
  %61 = load i8**, i8*** %5, align 8
  %62 = call i32 @procargs(i32 %60, i8** %61)
  %63 = load i64, i64* @iflag, align 8
  %64 = call i32 @pwd_init(i64 %63)
  %65 = load i32, i32* @INTON, align 4
  %66 = load i64, i64* @iflag, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %54
  %69 = call i32 @chkmail(i32 1)
  br label %70

70:                                               ; preds = %68, %54
  %71 = load i8**, i8*** %5, align 8
  %72 = getelementptr inbounds i8*, i8** %71, i64 0
  %73 = load i8*, i8** %72, align 8
  %74 = icmp ne i8* %73, null
  br i1 %74, label %75, label %93

75:                                               ; preds = %70
  %76 = load i8**, i8*** %5, align 8
  %77 = getelementptr inbounds i8*, i8** %76, i64 0
  %78 = load i8*, i8** %77, align 8
  %79 = getelementptr inbounds i8, i8* %78, i64 0
  %80 = load i8, i8* %79, align 1
  %81 = sext i8 %80 to i32
  %82 = icmp eq i32 %81, 45
  br i1 %82, label %83, label %93

83:                                               ; preds = %75
  store volatile i32 1, i32* %8, align 4
  %84 = call i32 @read_profile(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  br label %85

85:                                               ; preds = %83, %44
  store volatile i32 2, i32* %8, align 4
  %86 = load i64, i64* @privileged, align 8
  %87 = icmp eq i64 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %85
  %89 = call i32 @read_profile(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  br label %92

90:                                               ; preds = %85
  %91 = call i32 @read_profile(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  br label %92

92:                                               ; preds = %90, %88
  br label %93

93:                                               ; preds = %92, %75, %70
  br label %94

94:                                               ; preds = %93, %48
  store volatile i32 3, i32* %8, align 4
  %95 = load i64, i64* @privileged, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %112, label %97

97:                                               ; preds = %94
  %98 = load i64, i64* @iflag, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %112

100:                                              ; preds = %97
  %101 = call i8* @lookupvar(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  store i8* %101, i8** %9, align 8
  %102 = icmp ne i8* %101, null
  br i1 %102, label %103, label %111

103:                                              ; preds = %100
  %104 = load i8*, i8** %9, align 8
  %105 = load i8, i8* %104, align 1
  %106 = sext i8 %105 to i32
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %103
  store volatile i32 3, i32* %8, align 4
  %109 = load i8*, i8** %9, align 8
  %110 = call i32 @read_profile(i8* %109)
  br label %111

111:                                              ; preds = %108, %103, %100
  br label %112

112:                                              ; preds = %111, %97, %94
  br label %113

113:                                              ; preds = %112, %52
  store volatile i32 4, i32* %8, align 4
  %114 = call i32 @popstackmark(%struct.stackmark* %7)
  %115 = load i32*, i32** @minusc, align 8
  %116 = icmp ne i32* %115, null
  br i1 %116, label %117, label %127

117:                                              ; preds = %113
  %118 = load i32*, i32** @minusc, align 8
  %119 = load i64, i64* @sflag, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %117
  br label %124

122:                                              ; preds = %117
  %123 = load i32, i32* @EV_EXIT, align 4
  br label %124

124:                                              ; preds = %122, %121
  %125 = phi i32 [ 0, %121 ], [ %123, %122 ]
  %126 = call i32 @evalstring(i32* %118, i32 %125)
  br label %127

127:                                              ; preds = %124, %113
  br label %128

128:                                              ; preds = %127, %53
  %129 = load i64, i64* @sflag, align 8
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %134, label %131

131:                                              ; preds = %128
  %132 = load i32*, i32** @minusc, align 8
  %133 = icmp eq i32* %132, null
  br i1 %133, label %134, label %136

134:                                              ; preds = %131, %128
  %135 = call i32 @cmdloop(i32 1)
  br label %136

136:                                              ; preds = %134, %131
  %137 = load i32, i32* @exitstatus, align 4
  %138 = call i32 @exitshell(i32 %137)
  ret i32 0
}

declare dso_local i32 @setlocale(i32, i8*) #1

declare dso_local i32 @initcharset(...) #1

; Function Attrs: returns_twice
declare dso_local i64 @setjmp(i32) #2

declare dso_local i32 @exitshell(i32) #1

declare dso_local i32 @reset(...) #1

declare dso_local i32 @out2fmt_flush(i8*) #1

declare dso_local i32 @popstackmark(%struct.stackmark*) #1

declare dso_local i32 @getpid(...) #1

declare dso_local i32 @initvar(...) #1

declare dso_local i32 @setstackmark(%struct.stackmark*) #1

declare dso_local i32 @procargs(i32, i8**) #1

declare dso_local i32 @pwd_init(i64) #1

declare dso_local i32 @chkmail(i32) #1

declare dso_local i32 @read_profile(i8*) #1

declare dso_local i8* @lookupvar(i8*) #1

declare dso_local i32 @evalstring(i32*, i32) #1

declare dso_local i32 @cmdloop(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { returns_twice "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { returns_twice }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
