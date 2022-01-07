; ModuleID = '/home/carl/AnghaBench/freebsd/bin/ed/extr_sub.c_search_and_replace.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/ed/extr_sub.c_search_and_replace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8* }

@current_addr = common dso_local global i64 0, align 8
@first_addr = common dso_local global i32 0, align 4
@second_addr = common dso_local global i32 0, align 4
@ERR = common dso_local global i32 0, align 4
@rbuf = common dso_local global i8* null, align 8
@UADD = common dso_local global i32 0, align 4
@GLB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"no match\00", align 1
@errmsg = common dso_local global i8* null, align 8
@GPR = common dso_local global i32 0, align 4
@GLS = common dso_local global i32 0, align 4
@GNP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @search_and_replace(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %16 = load i64, i64* @current_addr, align 8
  store i64 %16, i64* %12, align 8
  store i32 0, i32* %13, align 4
  %17 = load i32, i32* @first_addr, align 4
  %18 = sub nsw i32 %17, 1
  %19 = sext i32 %18 to i64
  store i64 %19, i64* @current_addr, align 8
  store i64 0, i64* %11, align 8
  br label %20

20:                                               ; preds = %95, %3
  %21 = load i64, i64* %11, align 8
  %22 = load i32, i32* @second_addr, align 4
  %23 = load i32, i32* @first_addr, align 4
  %24 = sub nsw i32 %22, %23
  %25 = sext i32 %24 to i64
  %26 = icmp sle i64 %21, %25
  br i1 %26, label %27, label %98

27:                                               ; preds = %20
  %28 = load i64, i64* @current_addr, align 8
  %29 = add nsw i64 %28, 1
  store i64 %29, i64* @current_addr, align 8
  %30 = call i8* @get_addressed_line_node(i64 %29)
  %31 = bitcast i8* %30 to i32*
  store i32* %31, i32** %14, align 8
  %32 = load i32*, i32** %5, align 8
  %33 = load i32*, i32** %14, align 8
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* %7, align 4
  %36 = call i32 @substitute_matching_text(i32* %32, i32* %33, i32 %34, i32 %35)
  store i32 %36, i32* %15, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %27
  %39 = load i32, i32* @ERR, align 4
  store i32 %39, i32* %4, align 4
  br label %128

40:                                               ; preds = %27
  %41 = load i32, i32* %15, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %93

43:                                               ; preds = %40
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %8, align 8
  %44 = load i64, i64* @current_addr, align 8
  %45 = load i64, i64* @current_addr, align 8
  %46 = call i64 @delete_lines(i64 %44, i64 %45)
  %47 = icmp slt i64 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %43
  %49 = load i32, i32* @ERR, align 4
  store i32 %49, i32* %4, align 4
  br label %128

50:                                               ; preds = %43
  %51 = load i8*, i8** @rbuf, align 8
  store i8* %51, i8** %9, align 8
  %52 = load i8*, i8** @rbuf, align 8
  %53 = load i32, i32* %15, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i8, i8* %52, i64 %54
  store i8* %55, i8** %10, align 8
  %56 = call i32 (...) @SPL1()
  br label %57

57:                                               ; preds = %84, %50
  %58 = load i8*, i8** %9, align 8
  %59 = call i8* @put_sbuf_line(i8* %58)
  store i8* %59, i8** %9, align 8
  %60 = icmp eq i8* %59, null
  br i1 %60, label %61, label %64

61:                                               ; preds = %57
  %62 = call i32 (...) @SPL0()
  %63 = load i32, i32* @ERR, align 4
  store i32 %63, i32* %4, align 4
  br label %128

64:                                               ; preds = %57
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %66 = icmp ne %struct.TYPE_3__* %65, null
  br i1 %66, label %67, label %72

67:                                               ; preds = %64
  %68 = load i64, i64* @current_addr, align 8
  %69 = call i8* @get_addressed_line_node(i64 %68)
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  store i8* %69, i8** %71, align 8
  br label %82

72:                                               ; preds = %64
  %73 = load i32, i32* @UADD, align 4
  %74 = load i64, i64* @current_addr, align 8
  %75 = load i64, i64* @current_addr, align 8
  %76 = call %struct.TYPE_3__* @push_undo_stack(i32 %73, i64 %74, i64 %75)
  store %struct.TYPE_3__* %76, %struct.TYPE_3__** %8, align 8
  %77 = icmp eq %struct.TYPE_3__* %76, null
  br i1 %77, label %78, label %81

78:                                               ; preds = %72
  %79 = call i32 (...) @SPL0()
  %80 = load i32, i32* @ERR, align 4
  store i32 %80, i32* %4, align 4
  br label %128

81:                                               ; preds = %72
  br label %82

82:                                               ; preds = %81, %67
  br label %83

83:                                               ; preds = %82
  br label %84

84:                                               ; preds = %83
  %85 = load i8*, i8** %9, align 8
  %86 = load i8*, i8** %10, align 8
  %87 = icmp ne i8* %85, %86
  br i1 %87, label %57, label %88

88:                                               ; preds = %84
  %89 = call i32 (...) @SPL0()
  %90 = load i32, i32* %13, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %13, align 4
  %92 = load i64, i64* @current_addr, align 8
  store i64 %92, i64* %12, align 8
  br label %93

93:                                               ; preds = %88, %40
  br label %94

94:                                               ; preds = %93
  br label %95

95:                                               ; preds = %94
  %96 = load i64, i64* %11, align 8
  %97 = add nsw i64 %96, 1
  store i64 %97, i64* %11, align 8
  br label %20

98:                                               ; preds = %20
  %99 = load i64, i64* %12, align 8
  store i64 %99, i64* @current_addr, align 8
  %100 = load i32, i32* %13, align 4
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %109

102:                                              ; preds = %98
  %103 = load i32, i32* %6, align 4
  %104 = load i32, i32* @GLB, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %109, label %107

107:                                              ; preds = %102
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8** @errmsg, align 8
  %108 = load i32, i32* @ERR, align 4
  store i32 %108, i32* %4, align 4
  br label %128

109:                                              ; preds = %102, %98
  %110 = load i32, i32* %6, align 4
  %111 = load i32, i32* @GPR, align 4
  %112 = load i32, i32* @GLS, align 4
  %113 = or i32 %111, %112
  %114 = load i32, i32* @GNP, align 4
  %115 = or i32 %113, %114
  %116 = and i32 %110, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %126

118:                                              ; preds = %109
  %119 = load i64, i64* @current_addr, align 8
  %120 = load i64, i64* @current_addr, align 8
  %121 = load i32, i32* %6, align 4
  %122 = call i64 @display_lines(i64 %119, i64 %120, i32 %121)
  %123 = icmp slt i64 %122, 0
  br i1 %123, label %124, label %126

124:                                              ; preds = %118
  %125 = load i32, i32* @ERR, align 4
  store i32 %125, i32* %4, align 4
  br label %128

126:                                              ; preds = %118, %109
  br label %127

127:                                              ; preds = %126
  store i32 0, i32* %4, align 4
  br label %128

128:                                              ; preds = %127, %124, %107, %78, %61, %48, %38
  %129 = load i32, i32* %4, align 4
  ret i32 %129
}

declare dso_local i8* @get_addressed_line_node(i64) #1

declare dso_local i32 @substitute_matching_text(i32*, i32*, i32, i32) #1

declare dso_local i64 @delete_lines(i64, i64) #1

declare dso_local i32 @SPL1(...) #1

declare dso_local i8* @put_sbuf_line(i8*) #1

declare dso_local i32 @SPL0(...) #1

declare dso_local %struct.TYPE_3__* @push_undo_stack(i32, i64, i64) #1

declare dso_local i64 @display_lines(i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
