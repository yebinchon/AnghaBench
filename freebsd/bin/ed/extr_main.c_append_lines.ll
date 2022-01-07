; ModuleID = '/home/carl/AnghaBench/freebsd/bin/ed/extr_main.c_append_lines.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/ed/extr_main.c_append_lines.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@ibuf = common dso_local global i8* null, align 8
@current_addr = common dso_local global i64 0, align 8
@isglobal = common dso_local global i32 0, align 4
@ERR = common dso_local global i32 0, align 4
@stdin = common dso_local global i32 0, align 4
@EOF = common dso_local global i32 0, align 4
@ibufp = common dso_local global i8* null, align 8
@UADD = common dso_local global i32 0, align 4
@modified = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @append_lines(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_3__*, align 8
  store i64 %0, i64* %3, align 8
  %8 = load i8*, i8** @ibuf, align 8
  store i8* %8, i8** %5, align 8
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %7, align 8
  %9 = load i64, i64* %3, align 8
  store i64 %9, i64* @current_addr, align 8
  br label %10

10:                                               ; preds = %118, %1
  %11 = load i32, i32* @isglobal, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %43, label %13

13:                                               ; preds = %10
  %14 = call i32 (...) @get_tty_line()
  store i32 %14, i32* %4, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %13
  %17 = load i32, i32* @ERR, align 4
  store i32 %17, i32* %2, align 4
  br label %120

18:                                               ; preds = %13
  %19 = load i32, i32* %4, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %30, label %21

21:                                               ; preds = %18
  %22 = load i8*, i8** @ibuf, align 8
  %23 = load i32, i32* %4, align 4
  %24 = sub nsw i32 %23, 1
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i8, i8* %22, i64 %25
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp ne i32 %28, 10
  br i1 %29, label %30, label %40

30:                                               ; preds = %21, %18
  %31 = load i32, i32* @stdin, align 4
  %32 = call i32 @clearerr(i32 %31)
  %33 = load i32, i32* %4, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %30
  %36 = load i32, i32* @EOF, align 4
  br label %38

37:                                               ; preds = %30
  br label %38

38:                                               ; preds = %37, %35
  %39 = phi i32 [ %36, %35 ], [ 0, %37 ]
  store i32 %39, i32* %2, align 4
  br label %120

40:                                               ; preds = %21
  br label %41

41:                                               ; preds = %40
  %42 = load i8*, i8** @ibuf, align 8
  store i8* %42, i8** %5, align 8
  br label %65

43:                                               ; preds = %10
  %44 = load i8*, i8** @ibufp, align 8
  store i8* %44, i8** %5, align 8
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %43
  store i32 0, i32* %2, align 4
  br label %120

49:                                               ; preds = %43
  br label %50

50:                                               ; preds = %56, %49
  %51 = load i8*, i8** @ibufp, align 8
  %52 = getelementptr inbounds i8, i8* %51, i32 1
  store i8* %52, i8** @ibufp, align 8
  %53 = load i8, i8* %51, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp ne i32 %54, 10
  br i1 %55, label %56, label %57

56:                                               ; preds = %50
  br label %50

57:                                               ; preds = %50
  %58 = load i8*, i8** @ibufp, align 8
  %59 = load i8*, i8** %5, align 8
  %60 = ptrtoint i8* %58 to i64
  %61 = ptrtoint i8* %59 to i64
  %62 = sub i64 %60, %61
  %63 = trunc i64 %62 to i32
  store i32 %63, i32* %4, align 4
  br label %64

64:                                               ; preds = %57
  br label %65

65:                                               ; preds = %64, %41
  %66 = load i32, i32* %4, align 4
  %67 = icmp eq i32 %66, 2
  br i1 %67, label %68, label %81

68:                                               ; preds = %65
  %69 = load i8*, i8** %5, align 8
  %70 = getelementptr inbounds i8, i8* %69, i64 0
  %71 = load i8, i8* %70, align 1
  %72 = sext i8 %71 to i32
  %73 = icmp eq i32 %72, 46
  br i1 %73, label %74, label %81

74:                                               ; preds = %68
  %75 = load i8*, i8** %5, align 8
  %76 = getelementptr inbounds i8, i8* %75, i64 1
  %77 = load i8, i8* %76, align 1
  %78 = sext i8 %77 to i32
  %79 = icmp eq i32 %78, 10
  br i1 %79, label %80, label %81

80:                                               ; preds = %74
  store i32 0, i32* %2, align 4
  br label %120

81:                                               ; preds = %74, %68, %65
  %82 = load i8*, i8** %5, align 8
  %83 = load i32, i32* %4, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i8, i8* %82, i64 %84
  store i8* %85, i8** %6, align 8
  %86 = call i32 (...) @SPL1()
  br label %87

87:                                               ; preds = %114, %81
  %88 = load i8*, i8** %5, align 8
  %89 = call i8* @put_sbuf_line(i8* %88)
  store i8* %89, i8** %5, align 8
  %90 = icmp eq i8* %89, null
  br i1 %90, label %91, label %94

91:                                               ; preds = %87
  %92 = call i32 (...) @SPL0()
  %93 = load i32, i32* @ERR, align 4
  store i32 %93, i32* %2, align 4
  br label %120

94:                                               ; preds = %87
  %95 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %96 = icmp ne %struct.TYPE_3__* %95, null
  br i1 %96, label %97, label %102

97:                                               ; preds = %94
  %98 = load i64, i64* @current_addr, align 8
  %99 = call i32 @get_addressed_line_node(i64 %98)
  %100 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 0
  store i32 %99, i32* %101, align 4
  br label %112

102:                                              ; preds = %94
  %103 = load i32, i32* @UADD, align 4
  %104 = load i64, i64* @current_addr, align 8
  %105 = load i64, i64* @current_addr, align 8
  %106 = call %struct.TYPE_3__* @push_undo_stack(i32 %103, i64 %104, i64 %105)
  store %struct.TYPE_3__* %106, %struct.TYPE_3__** %7, align 8
  %107 = icmp eq %struct.TYPE_3__* %106, null
  br i1 %107, label %108, label %111

108:                                              ; preds = %102
  %109 = call i32 (...) @SPL0()
  %110 = load i32, i32* @ERR, align 4
  store i32 %110, i32* %2, align 4
  br label %120

111:                                              ; preds = %102
  br label %112

112:                                              ; preds = %111, %97
  br label %113

113:                                              ; preds = %112
  br label %114

114:                                              ; preds = %113
  %115 = load i8*, i8** %5, align 8
  %116 = load i8*, i8** %6, align 8
  %117 = icmp ne i8* %115, %116
  br i1 %117, label %87, label %118

118:                                              ; preds = %114
  store i32 1, i32* @modified, align 4
  %119 = call i32 (...) @SPL0()
  br label %10

120:                                              ; preds = %108, %91, %80, %48, %38, %16
  %121 = load i32, i32* %2, align 4
  ret i32 %121
}

declare dso_local i32 @get_tty_line(...) #1

declare dso_local i32 @clearerr(i32) #1

declare dso_local i32 @SPL1(...) #1

declare dso_local i8* @put_sbuf_line(i8*) #1

declare dso_local i32 @SPL0(...) #1

declare dso_local i32 @get_addressed_line_node(i64) #1

declare dso_local %struct.TYPE_3__* @push_undo_stack(i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
