; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/dialog/extr_tailbox.c_last_lines.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/dialog/extr_tailbox.c_last_lines.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32* }

@BUFSIZ = common dso_local global i32 0, align 4
@SEEK_END = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Error moving file pointer in last_lines().\00", align 1
@SEEK_SET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"Error reading file in last_lines().\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, i32)* @last_lines to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @last_lines(%struct.TYPE_5__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store i32 %1, i32* %4, align 4
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  store i32* %17, i32** %5, align 8
  store i32 0, i32* %7, align 4
  %18 = load i32, i32* @BUFSIZ, align 4
  %19 = add nsw i32 %18, 1
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %8, align 8
  %22 = alloca i8, i64 %20, align 16
  store i64 %20, i64* %9, align 8
  store i64 0, i64* %12, align 8
  store i64 0, i64* %13, align 8
  %23 = load i32*, i32** %5, align 8
  %24 = load i32, i32* @SEEK_END, align 4
  %25 = call i32 @fseek(i32* %23, i64 0, i32 %24)
  %26 = icmp eq i32 %25, -1
  br i1 %26, label %31, label %27

27:                                               ; preds = %2
  %28 = load i32*, i32** %5, align 8
  %29 = call i64 @ftell(i32* %28)
  store i64 %29, i64* %13, align 8
  %30 = icmp slt i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %27, %2
  %32 = call i32 @dlg_exiterr(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  br label %33

33:                                               ; preds = %31, %27
  %34 = load i64, i64* %13, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %123

36:                                               ; preds = %33
  %37 = load i32, i32* %4, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %4, align 4
  br label %39

39:                                               ; preds = %111, %36
  %40 = load i64, i64* %13, align 8
  %41 = load i32, i32* @BUFSIZ, align 4
  %42 = sext i32 %41 to i64
  %43 = icmp sge i64 %40, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %39
  %45 = load i32, i32* @BUFSIZ, align 4
  %46 = sext i32 %45 to i64
  store i64 %46, i64* %10, align 8
  br label %49

47:                                               ; preds = %39
  %48 = load i64, i64* %13, align 8
  store i64 %48, i64* %10, align 8
  br label %49

49:                                               ; preds = %47, %44
  %50 = load i64, i64* %13, align 8
  %51 = load i64, i64* %10, align 8
  %52 = sub nsw i64 %50, %51
  store i64 %52, i64* %13, align 8
  %53 = load i32*, i32** %5, align 8
  %54 = load i64, i64* %13, align 8
  %55 = load i32, i32* @SEEK_SET, align 4
  %56 = call i32 @fseek(i32* %53, i64 %54, i32 %55)
  %57 = icmp eq i32 %56, -1
  br i1 %57, label %58, label %60

58:                                               ; preds = %49
  %59 = call i32 @dlg_exiterr(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  br label %60

60:                                               ; preds = %58, %49
  %61 = load i64, i64* %10, align 8
  %62 = load i32*, i32** %5, align 8
  %63 = call i64 @fread(i8* %22, i32 1, i64 %61, i32* %62)
  store i64 %63, i64* %11, align 8
  %64 = load i32*, i32** %5, align 8
  %65 = call i64 @ferror(i32* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %60
  %68 = call i32 @dlg_exiterr(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  br label %69

69:                                               ; preds = %67, %60
  %70 = load i64, i64* %11, align 8
  %71 = icmp eq i64 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %69
  store i64 0, i64* %13, align 8
  store i64 0, i64* %12, align 8
  br label %112

73:                                               ; preds = %69
  %74 = load i64, i64* %11, align 8
  %75 = load i64, i64* %12, align 8
  %76 = add nsw i64 %75, %74
  store i64 %76, i64* %12, align 8
  %77 = load i64, i64* %11, align 8
  %78 = sub i64 %77, 1
  store i64 %78, i64* %6, align 8
  br label %79

79:                                               ; preds = %98, %73
  %80 = load i64, i64* %6, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %101

82:                                               ; preds = %79
  %83 = load i64, i64* %6, align 8
  %84 = getelementptr inbounds i8, i8* %22, i64 %83
  %85 = load i8, i8* %84, align 1
  %86 = sext i8 %85 to i32
  %87 = icmp eq i32 %86, 10
  br i1 %87, label %88, label %97

88:                                               ; preds = %82
  %89 = load i32, i32* %7, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %7, align 4
  %91 = load i32, i32* %4, align 4
  %92 = icmp sgt i32 %90, %91
  br i1 %92, label %93, label %94

93:                                               ; preds = %88
  br label %101

94:                                               ; preds = %88
  %95 = load i64, i64* %6, align 8
  %96 = add i64 %95, 1
  store i64 %96, i64* %12, align 8
  br label %97

97:                                               ; preds = %94, %82
  br label %98

98:                                               ; preds = %97
  %99 = load i64, i64* %6, align 8
  %100 = add i64 %99, -1
  store i64 %100, i64* %6, align 8
  br label %79

101:                                              ; preds = %93, %79
  %102 = load i32, i32* %7, align 4
  %103 = load i32, i32* %4, align 4
  %104 = icmp sgt i32 %102, %103
  br i1 %104, label %105, label %106

105:                                              ; preds = %101
  br label %112

106:                                              ; preds = %101
  %107 = load i64, i64* %13, align 8
  %108 = icmp eq i64 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %106
  store i64 0, i64* %12, align 8
  br label %112

110:                                              ; preds = %106
  br label %111

111:                                              ; preds = %110
  br label %39

112:                                              ; preds = %109, %105, %72
  %113 = load i32*, i32** %5, align 8
  %114 = load i64, i64* %13, align 8
  %115 = load i64, i64* %12, align 8
  %116 = add nsw i64 %114, %115
  %117 = load i32, i32* @SEEK_SET, align 4
  %118 = call i32 @fseek(i32* %113, i64 %116, i32 %117)
  %119 = icmp eq i32 %118, -1
  br i1 %119, label %120, label %122

120:                                              ; preds = %112
  %121 = call i32 @dlg_exiterr(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  br label %122

122:                                              ; preds = %120, %112
  br label %123

123:                                              ; preds = %122, %33
  %124 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %124)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @fseek(i32*, i64, i32) #2

declare dso_local i64 @ftell(i32*) #2

declare dso_local i32 @dlg_exiterr(i8*) #2

declare dso_local i64 @fread(i8*, i32, i64, i32*) #2

declare dso_local i64 @ferror(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
