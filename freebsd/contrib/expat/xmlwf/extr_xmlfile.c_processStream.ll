; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/expat/xmlwf/extr_xmlfile.c_processStream.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/expat/xmlwf/extr_xmlfile.c_processStream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@O_BINARY = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@READ_SIZE = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"%s: out of memory\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"xmlwf\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"STDIN\00", align 1
@XML_STATUS_ERROR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @processStream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @processStream(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %9 = load i32*, i32** %4, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %11, label %23

11:                                               ; preds = %2
  %12 = load i32*, i32** %4, align 8
  %13 = load i32, i32* @O_BINARY, align 4
  %14 = load i32, i32* @O_RDONLY, align 4
  %15 = or i32 %13, %14
  %16 = call i32 @topen(i32* %12, i32 %15)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %11
  %20 = load i32*, i32** %4, align 8
  %21 = call i32 @tperror(i32* %20)
  store i32 0, i32* %3, align 4
  br label %110

22:                                               ; preds = %11
  br label %23

23:                                               ; preds = %22, %2
  br label %24

24:                                               ; preds = %108, %23
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @READ_SIZE, align 4
  %27 = call i64 @XML_GetBuffer(i32 %25, i32 %26)
  %28 = inttoptr i64 %27 to i8*
  store i8* %28, i8** %8, align 8
  %29 = load i8*, i8** %8, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %49, label %31

31:                                               ; preds = %24
  %32 = load i32*, i32** %4, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %34, label %37

34:                                               ; preds = %31
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @close(i32 %35)
  br label %37

37:                                               ; preds = %34, %31
  %38 = load i32, i32* @stderr, align 4
  %39 = call i32* @T(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %40 = load i32*, i32** %4, align 8
  %41 = icmp ne i32* %40, null
  br i1 %41, label %42, label %44

42:                                               ; preds = %37
  %43 = load i32*, i32** %4, align 8
  br label %46

44:                                               ; preds = %37
  %45 = call i32* @T(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  br label %46

46:                                               ; preds = %44, %42
  %47 = phi i32* [ %43, %42 ], [ %45, %44 ]
  %48 = call i32 @ftprintf(i32 %38, i32* %39, i32* %47)
  store i32 0, i32* %3, align 4
  br label %110

49:                                               ; preds = %24
  %50 = load i32, i32* %6, align 4
  %51 = load i8*, i8** %8, align 8
  %52 = load i32, i32* @READ_SIZE, align 4
  %53 = call i32 @read(i32 %50, i8* %51, i32 %52)
  store i32 %53, i32* %7, align 4
  %54 = load i32, i32* %7, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %72

56:                                               ; preds = %49
  %57 = load i32*, i32** %4, align 8
  %58 = icmp ne i32* %57, null
  br i1 %58, label %59, label %61

59:                                               ; preds = %56
  %60 = load i32*, i32** %4, align 8
  br label %63

61:                                               ; preds = %56
  %62 = call i32* @T(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  br label %63

63:                                               ; preds = %61, %59
  %64 = phi i32* [ %60, %59 ], [ %62, %61 ]
  %65 = call i32 @tperror(i32* %64)
  %66 = load i32*, i32** %4, align 8
  %67 = icmp ne i32* %66, null
  br i1 %67, label %68, label %71

68:                                               ; preds = %63
  %69 = load i32, i32* %6, align 4
  %70 = call i32 @close(i32 %69)
  br label %71

71:                                               ; preds = %68, %63
  store i32 0, i32* %3, align 4
  br label %110

72:                                               ; preds = %49
  %73 = load i32, i32* %5, align 4
  %74 = load i32, i32* %7, align 4
  %75 = load i32, i32* %7, align 4
  %76 = icmp eq i32 %75, 0
  %77 = zext i1 %76 to i32
  %78 = call i64 @XML_ParseBuffer(i32 %73, i32 %74, i32 %77)
  %79 = load i64, i64* @XML_STATUS_ERROR, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %98

81:                                               ; preds = %72
  %82 = load i32, i32* %5, align 4
  %83 = load i32*, i32** %4, align 8
  %84 = icmp ne i32* %83, null
  br i1 %84, label %85, label %87

85:                                               ; preds = %81
  %86 = load i32*, i32** %4, align 8
  br label %89

87:                                               ; preds = %81
  %88 = call i32* @T(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  br label %89

89:                                               ; preds = %87, %85
  %90 = phi i32* [ %86, %85 ], [ %88, %87 ]
  %91 = call i32 @reportError(i32 %82, i32* %90)
  %92 = load i32*, i32** %4, align 8
  %93 = icmp ne i32* %92, null
  br i1 %93, label %94, label %97

94:                                               ; preds = %89
  %95 = load i32, i32* %6, align 4
  %96 = call i32 @close(i32 %95)
  br label %97

97:                                               ; preds = %94, %89
  store i32 0, i32* %3, align 4
  br label %110

98:                                               ; preds = %72
  %99 = load i32, i32* %7, align 4
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %108

101:                                              ; preds = %98
  %102 = load i32*, i32** %4, align 8
  %103 = icmp ne i32* %102, null
  br i1 %103, label %104, label %107

104:                                              ; preds = %101
  %105 = load i32, i32* %6, align 4
  %106 = call i32 @close(i32 %105)
  br label %107

107:                                              ; preds = %104, %101
  br label %109

108:                                              ; preds = %98
  br label %24

109:                                              ; preds = %107
  store i32 1, i32* %3, align 4
  br label %110

110:                                              ; preds = %109, %97, %71, %46, %19
  %111 = load i32, i32* %3, align 4
  ret i32 %111
}

declare dso_local i32 @topen(i32*, i32) #1

declare dso_local i32 @tperror(i32*) #1

declare dso_local i64 @XML_GetBuffer(i32, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @ftprintf(i32, i32*, i32*) #1

declare dso_local i32* @T(i8*) #1

declare dso_local i32 @read(i32, i8*, i32) #1

declare dso_local i64 @XML_ParseBuffer(i32, i32, i32) #1

declare dso_local i32 @reportError(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
