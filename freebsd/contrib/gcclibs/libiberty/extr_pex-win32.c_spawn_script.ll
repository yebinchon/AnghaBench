; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcclibs/libiberty/extr_pex-win32.c_spawn_script.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcclibs/libiberty/extr_pex-win32.c_spawn_script.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@errno = common dso_local global i32 0, align 4
@_O_RDONLY = common dso_local global i32 0, align 4
@MAX_PATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"#!\00", align 1
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i8**, i8**, i32, i32, i32)* @spawn_script to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @spawn_script(i8* %0, i8** %1, i8** %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8**, align 8
  store i8* %0, i8** %7, align 8
  store i8** %1, i8*** %8, align 8
  store i8** %2, i8*** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  store i32 -1, i32* %13, align 4
  %22 = load i32, i32* @errno, align 4
  store i32 %22, i32* %14, align 4
  %23 = load i8*, i8** %7, align 8
  %24 = load i32, i32* @_O_RDONLY, align 4
  %25 = call i32 @_open(i8* %23, i32 %24)
  store i32 %25, i32* %15, align 4
  %26 = load i32, i32* %15, align 4
  %27 = icmp sge i32 %26, 0
  br i1 %27, label %28, label %117

28:                                               ; preds = %6
  %29 = load i32, i32* @MAX_PATH, align 4
  %30 = add nsw i32 %29, 5
  %31 = zext i32 %30 to i64
  %32 = call i8* @llvm.stacksave()
  store i8* %32, i8** %16, align 8
  %33 = alloca i8, i64 %31, align 16
  store i64 %31, i64* %17, align 8
  %34 = load i32, i32* %15, align 4
  %35 = sub i64 %31, 1
  %36 = trunc i64 %35 to i32
  %37 = call i32 @_read(i32 %34, i8* %33, i32 %36)
  store i32 %37, i32* %18, align 4
  %38 = load i32, i32* %15, align 4
  %39 = call i32 @_close(i32 %38)
  %40 = load i32, i32* %18, align 4
  %41 = icmp sgt i32 %40, 3
  br i1 %41, label %42, label %115

42:                                               ; preds = %28
  %43 = load i32, i32* %18, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8, i8* %33, i64 %44
  store i8 0, i8* %45, align 1
  %46 = call i8* @strchr(i8* %33, i8 signext 10)
  store i8* %46, i8** %19, align 8
  %47 = load i8*, i8** %19, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %49, label %114

49:                                               ; preds = %42
  %50 = call i64 @strncmp(i8* %33, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 2)
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %114

52:                                               ; preds = %49
  %53 = load i8**, i8*** %8, align 8
  %54 = getelementptr inbounds i8*, i8** %53, i32 -1
  store i8** %54, i8*** %8, align 8
  store i8** %54, i8*** %21, align 8
  br label %55

55:                                               ; preds = %73, %52
  %56 = load i8*, i8** %19, align 8
  store i8 0, i8* %56, align 1
  br label %57

57:                                               ; preds = %55
  %58 = load i8*, i8** %19, align 8
  %59 = getelementptr inbounds i8, i8* %58, i32 -1
  store i8* %59, i8** %19, align 8
  %60 = load i8, i8* %59, align 1
  %61 = sext i8 %60 to i32
  %62 = icmp eq i32 %61, 13
  br i1 %62, label %73, label %63

63:                                               ; preds = %57
  %64 = load i8*, i8** %19, align 8
  %65 = load i8, i8* %64, align 1
  %66 = sext i8 %65 to i32
  %67 = icmp eq i32 %66, 32
  br i1 %67, label %73, label %68

68:                                               ; preds = %63
  %69 = load i8*, i8** %19, align 8
  %70 = load i8, i8* %69, align 1
  %71 = sext i8 %70 to i32
  %72 = icmp eq i32 %71, 9
  br label %73

73:                                               ; preds = %68, %63, %57
  %74 = phi i1 [ true, %63 ], [ true, %57 ], [ %72, %68 ]
  br i1 %74, label %55, label %75

75:                                               ; preds = %73
  %76 = getelementptr inbounds i8, i8* %33, i64 2
  store i8* %76, i8** %20, align 8
  br label %77

77:                                               ; preds = %90, %75
  %78 = load i8*, i8** %20, align 8
  %79 = load i8, i8* %78, align 1
  %80 = sext i8 %79 to i32
  %81 = icmp eq i32 %80, 32
  br i1 %81, label %87, label %82

82:                                               ; preds = %77
  %83 = load i8*, i8** %20, align 8
  %84 = load i8, i8* %83, align 1
  %85 = sext i8 %84 to i32
  %86 = icmp eq i32 %85, 9
  br label %87

87:                                               ; preds = %82, %77
  %88 = phi i1 [ true, %77 ], [ %86, %82 ]
  br i1 %88, label %89, label %93

89:                                               ; preds = %87
  br label %90

90:                                               ; preds = %89
  %91 = load i8*, i8** %20, align 8
  %92 = getelementptr inbounds i8, i8* %91, i32 1
  store i8* %92, i8** %20, align 8
  br label %77

93:                                               ; preds = %87
  %94 = load i8*, i8** %20, align 8
  %95 = call i32 @backslashify(i8* %94)
  %96 = load i8*, i8** %20, align 8
  %97 = load i8**, i8*** %21, align 8
  store i8* %96, i8** %97, align 8
  %98 = load i8*, i8** %20, align 8
  %99 = call i8* @strrchr(i8* %98, i8 signext 92)
  %100 = getelementptr inbounds i8, i8* %99, i64 1
  store i8* %100, i8** %7, align 8
  %101 = load i8*, i8** %7, align 8
  %102 = icmp ne i8* %101, null
  br i1 %102, label %105, label %103

103:                                              ; preds = %93
  %104 = load i8*, i8** %20, align 8
  store i8* %104, i8** %7, align 8
  br label %105

105:                                              ; preds = %103, %93
  %106 = load i8*, i8** %7, align 8
  %107 = load i32, i32* @TRUE, align 4
  %108 = load i8**, i8*** %8, align 8
  %109 = load i8**, i8*** %9, align 8
  %110 = load i32, i32* %10, align 4
  %111 = load i32, i32* %11, align 4
  %112 = load i32, i32* %12, align 4
  %113 = call i32 @win32_spawn(i8* %106, i32 %107, i8** %108, i8** %109, i32 %110, i32 %111, i32 %112)
  store i32 %113, i32* %13, align 4
  br label %114

114:                                              ; preds = %105, %49, %42
  br label %115

115:                                              ; preds = %114, %28
  %116 = load i8*, i8** %16, align 8
  call void @llvm.stackrestore(i8* %116)
  br label %117

117:                                              ; preds = %115, %6
  %118 = load i32, i32* %13, align 4
  %119 = icmp slt i32 %118, 0
  br i1 %119, label %120, label %122

120:                                              ; preds = %117
  %121 = load i32, i32* %14, align 4
  store i32 %121, i32* @errno, align 4
  br label %122

122:                                              ; preds = %120, %117
  %123 = load i32, i32* %13, align 4
  %124 = sext i32 %123 to i64
  ret i64 %124
}

declare dso_local i32 @_open(i8*, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @_read(i32, i8*, i32) #1

declare dso_local i32 @_close(i32) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @backslashify(i8*) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i32 @win32_spawn(i8*, i32, i8**, i8**, i32, i32, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
