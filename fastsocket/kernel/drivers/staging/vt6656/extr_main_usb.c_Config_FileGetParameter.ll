; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/vt6656/extr_main_usb.c_Config_FileGetParameter.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/vt6656/extr_main_usb.c_Config_FileGetParameter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"=\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"#\00", align 1
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*)* @Config_FileGetParameter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Config_FileGetParameter(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca [100 x i32], align 16
  %9 = alloca [100 x i32], align 16
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* null, i32** %10, align 8
  store i32* null, i32** %11, align 8
  store i32* null, i32** %12, align 8
  %14 = getelementptr inbounds [100 x i32], [100 x i32]* %8, i64 0, i64 0
  %15 = call i32 @memset(i32* %14, i32 0, i32 100)
  %16 = getelementptr inbounds [100 x i32], [100 x i32]* %8, i64 0, i64 0
  %17 = load i32*, i32** %5, align 8
  %18 = call i32 (i32*, ...) @strcat(i32* %16, i32* %17)
  %19 = getelementptr inbounds [100 x i32], [100 x i32]* %8, i64 0, i64 0
  %20 = call i32 (i32*, ...) @strcat(i32* %19, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %21 = getelementptr inbounds [100 x i32], [100 x i32]* %8, i64 0, i64 0
  %22 = call i32 @strlen(i32* %21)
  %23 = load i32*, i32** %7, align 8
  %24 = sext i32 %22 to i64
  %25 = getelementptr inbounds i32, i32* %23, i64 %24
  store i32* %25, i32** %7, align 8
  %26 = load i32*, i32** %7, align 8
  %27 = getelementptr inbounds [100 x i32], [100 x i32]* %8, i64 0, i64 0
  %28 = call i32* (i32*, ...) @kstrstr(i32* %26, i32* %27)
  store i32* %28, i32** %10, align 8
  %29 = icmp eq i32* %28, null
  br i1 %29, label %30, label %32

30:                                               ; preds = %3
  %31 = load i32, i32* @FALSE, align 4
  store i32 %31, i32* %4, align 4
  br label %119

32:                                               ; preds = %3
  store i32 1, i32* %13, align 4
  br label %33

33:                                               ; preds = %53, %32
  %34 = load i32*, i32** %10, align 8
  %35 = load i32, i32* %13, align 4
  %36 = sext i32 %35 to i64
  %37 = sub i64 0, %36
  %38 = getelementptr inbounds i32, i32* %34, i64 %37
  %39 = call i64 @memcmp(i32* %38, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 1)
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %33
  br label %56

42:                                               ; preds = %33
  %43 = load i32*, i32** %10, align 8
  %44 = load i32, i32* %13, align 4
  %45 = sext i32 %44 to i64
  %46 = sub i64 0, %45
  %47 = getelementptr inbounds i32, i32* %43, i64 %46
  %48 = call i64 @memcmp(i32* %47, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 1)
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %42
  %51 = load i32, i32* @FALSE, align 4
  store i32 %51, i32* %4, align 4
  br label %119

52:                                               ; preds = %42
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %13, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %13, align 4
  br label %33

56:                                               ; preds = %41
  %57 = load i32*, i32** %10, align 8
  %58 = call i32* (i32*, ...) @kstrstr(i32* %57, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %58, i32** %11, align 8
  %59 = icmp eq i32* %58, null
  br i1 %59, label %60, label %66

60:                                               ; preds = %56
  %61 = load i32*, i32** %10, align 8
  %62 = load i32*, i32** %10, align 8
  %63 = call i32 @strlen(i32* %62)
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %61, i64 %64
  store i32* %65, i32** %11, align 8
  br label %66

66:                                               ; preds = %60, %56
  %67 = getelementptr inbounds [100 x i32], [100 x i32]* %9, i64 0, i64 0
  %68 = call i32 @memset(i32* %67, i32 0, i32 100)
  %69 = getelementptr inbounds [100 x i32], [100 x i32]* %9, i64 0, i64 0
  %70 = load i32*, i32** %10, align 8
  %71 = load i32*, i32** %11, align 8
  %72 = load i32*, i32** %10, align 8
  %73 = ptrtoint i32* %71 to i64
  %74 = ptrtoint i32* %72 to i64
  %75 = sub i64 %73, %74
  %76 = sdiv exact i64 %75, 4
  %77 = trunc i64 %76 to i32
  %78 = call i32 @memcpy(i32* %69, i32* %70, i32 %77)
  %79 = load i32*, i32** %11, align 8
  %80 = load i32*, i32** %10, align 8
  %81 = ptrtoint i32* %79 to i64
  %82 = ptrtoint i32* %80 to i64
  %83 = sub i64 %81, %82
  %84 = sdiv exact i64 %83, 4
  %85 = getelementptr inbounds [100 x i32], [100 x i32]* %9, i64 0, i64 %84
  store i32 0, i32* %85, align 4
  %86 = getelementptr inbounds [100 x i32], [100 x i32]* %9, i64 0, i64 0
  %87 = call i32* (i32*, ...) @kstrstr(i32* %86, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %87, i32** %10, align 8
  %88 = icmp eq i32* %87, null
  br i1 %88, label %89, label %91

89:                                               ; preds = %66
  %90 = load i32, i32* @FALSE, align 4
  store i32 %90, i32* %4, align 4
  br label %119

91:                                               ; preds = %66
  %92 = getelementptr inbounds [100 x i32], [100 x i32]* %8, i64 0, i64 0
  %93 = call i32 @memset(i32* %92, i32 0, i32 100)
  %94 = getelementptr inbounds [100 x i32], [100 x i32]* %8, i64 0, i64 0
  %95 = load i32*, i32** %10, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 1
  %97 = call i32 @strcpy(i32* %94, i32* %96)
  %98 = getelementptr inbounds [100 x i32], [100 x i32]* %8, i64 0, i64 0
  store i32* %98, i32** %12, align 8
  br label %99

99:                                               ; preds = %111, %91
  %100 = load i32*, i32** %12, align 8
  %101 = load i32, i32* %100, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %112

103:                                              ; preds = %99
  %104 = load i32*, i32** %12, align 8
  %105 = load i32, i32* %104, align 4
  %106 = icmp eq i32 %105, 32
  br i1 %106, label %107, label %110

107:                                              ; preds = %103
  %108 = load i32*, i32** %12, align 8
  %109 = getelementptr inbounds i32, i32* %108, i32 1
  store i32* %109, i32** %12, align 8
  br label %111

110:                                              ; preds = %103
  br label %112

111:                                              ; preds = %107
  br label %99

112:                                              ; preds = %110, %99
  %113 = load i32*, i32** %6, align 8
  %114 = load i32*, i32** %12, align 8
  %115 = load i32*, i32** %12, align 8
  %116 = call i32 @strlen(i32* %115)
  %117 = call i32 @memcpy(i32* %113, i32* %114, i32 %116)
  %118 = load i32, i32* @TRUE, align 4
  store i32 %118, i32* %4, align 4
  br label %119

119:                                              ; preds = %112, %89, %50, %30
  %120 = load i32, i32* %4, align 4
  ret i32 %120
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @strcat(i32*, ...) #1

declare dso_local i32 @strlen(i32*) #1

declare dso_local i32* @kstrstr(i32*, ...) #1

declare dso_local i64 @memcmp(i32*, i8*, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @strcpy(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
