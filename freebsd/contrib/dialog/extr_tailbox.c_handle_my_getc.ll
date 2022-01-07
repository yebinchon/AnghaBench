; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/dialog/extr_tailbox.c_handle_my_getc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/dialog/extr_tailbox.c_handle_my_getc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32, i64, i32 }

@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@DLG_EXIT_OK = common dso_local global i32 0, align 4
@MAX_LEN = common dso_local global i32 0, align 4
@EOF = common dso_local global i32 0, align 4
@DLG_EXIT_ESC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i32, i32, i32*)* @handle_my_getc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_my_getc(%struct.TYPE_8__* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_7__*, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %13 = bitcast %struct.TYPE_8__* %12 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %13, %struct.TYPE_7__** %10, align 8
  %14 = load i32, i32* @FALSE, align 4
  store i32 %14, i32* %11, align 4
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %16 = call i32 @valid_callback(%struct.TYPE_8__* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %4
  %19 = load i32, i32* @FALSE, align 4
  store i32 %19, i32* %5, align 4
  br label %117

20:                                               ; preds = %4
  %21 = load i32, i32* %8, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %32, label %23

23:                                               ; preds = %20
  %24 = load i32, i32* %7, align 4
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = call i64 @dlg_char_to_button(i32 %24, i32 %27)
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %23
  store i32 132, i32* %7, align 4
  %31 = load i32, i32* @TRUE, align 4
  store i32 %31, i32* %8, align 4
  br label %32

32:                                               ; preds = %30, %23, %20
  %33 = load i32, i32* %8, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %82

35:                                               ; preds = %32
  %36 = load i32, i32* %7, align 4
  switch i32 %36, label %67 [
    i32 132, label %37
    i32 133, label %41
    i32 131, label %44
    i32 130, label %55
  ]

37:                                               ; preds = %35
  %38 = load i32, i32* @DLG_EXIT_OK, align 4
  %39 = load i32*, i32** %9, align 8
  store i32 %38, i32* %39, align 4
  %40 = load i32, i32* @TRUE, align 4
  store i32 %40, i32* %11, align 4
  br label %69

41:                                               ; preds = %35
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  store i32 0, i32* %43, align 8
  br label %69

44:                                               ; preds = %35
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp sgt i32 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %44
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = sub nsw i32 %52, 1
  store i32 %53, i32* %51, align 8
  br label %54

54:                                               ; preds = %49, %44
  br label %69

55:                                               ; preds = %35
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @MAX_LEN, align 4
  %60 = icmp slt i32 %58, %59
  br i1 %60, label %61, label %66

61:                                               ; preds = %55
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %63, align 8
  br label %66

66:                                               ; preds = %61, %55
  br label %69

67:                                               ; preds = %35
  %68 = call i32 (...) @beep()
  br label %69

69:                                               ; preds = %67, %66, %54, %41, %37
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = sext i32 %72 to i64
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %73, %76
  br i1 %77, label %78, label %81

78:                                               ; preds = %69
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %80 = call i32 @repaint_text(%struct.TYPE_7__* %79)
  br label %81

81:                                               ; preds = %78, %69
  br label %112

82:                                               ; preds = %32
  %83 = load i32, i32* %7, align 4
  switch i32 %83, label %109 [
    i32 129, label %84
    i32 128, label %105
  ]

84:                                               ; preds = %82
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @clearerr(i32 %87)
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @getc(i32 %91)
  store i32 %92, i32* %7, align 4
  %93 = load i32, i32* %7, align 4
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @ungetc(i32 %93, i32 %96)
  %98 = load i32, i32* %7, align 4
  %99 = load i32, i32* @EOF, align 4
  %100 = icmp ne i32 %98, %99
  br i1 %100, label %101, label %104

101:                                              ; preds = %84
  %102 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %103 = call i32 @handle_input(%struct.TYPE_8__* %102)
  br label %104

104:                                              ; preds = %101, %84
  br label %111

105:                                              ; preds = %82
  %106 = load i32, i32* @TRUE, align 4
  store i32 %106, i32* %11, align 4
  %107 = load i32, i32* @DLG_EXIT_ESC, align 4
  %108 = load i32*, i32** %9, align 8
  store i32 %107, i32* %108, align 4
  br label %111

109:                                              ; preds = %82
  %110 = call i32 (...) @beep()
  br label %111

111:                                              ; preds = %109, %105, %104
  br label %112

112:                                              ; preds = %111, %81
  %113 = load i32, i32* %11, align 4
  %114 = icmp ne i32 %113, 0
  %115 = xor i1 %114, true
  %116 = zext i1 %115 to i32
  store i32 %116, i32* %5, align 4
  br label %117

117:                                              ; preds = %112, %18
  %118 = load i32, i32* %5, align 4
  ret i32 %118
}

declare dso_local i32 @valid_callback(%struct.TYPE_8__*) #1

declare dso_local i64 @dlg_char_to_button(i32, i32) #1

declare dso_local i32 @beep(...) #1

declare dso_local i32 @repaint_text(%struct.TYPE_7__*) #1

declare dso_local i32 @clearerr(i32) #1

declare dso_local i32 @getc(i32) #1

declare dso_local i32 @ungetc(i32, i32) #1

declare dso_local i32 @handle_input(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
