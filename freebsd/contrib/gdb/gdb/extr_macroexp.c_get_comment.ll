; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_macroexp.c_get_comment.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_macroexp.c_get_comment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.macro_buffer = type { i32 }

@.str = private unnamed_addr constant [41 x i8] c"Unterminated comment in macro expansion.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.macro_buffer*, i8*, i8*)* @get_comment to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_comment(%struct.macro_buffer* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.macro_buffer*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store %struct.macro_buffer* %0, %struct.macro_buffer** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = getelementptr inbounds i8, i8* %10, i64 2
  %12 = load i8*, i8** %7, align 8
  %13 = icmp ugt i8* %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %102

15:                                               ; preds = %3
  %16 = load i8*, i8** %6, align 8
  %17 = getelementptr inbounds i8, i8* %16, i64 0
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp eq i32 %19, 47
  br i1 %20, label %21, label %65

21:                                               ; preds = %15
  %22 = load i8*, i8** %6, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 1
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp eq i32 %25, 42
  br i1 %26, label %27, label %65

27:                                               ; preds = %21
  %28 = load i8*, i8** %6, align 8
  store i8* %28, i8** %8, align 8
  %29 = load i8*, i8** %6, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 2
  store i8* %30, i8** %6, align 8
  br label %31

31:                                               ; preds = %60, %27
  %32 = load i8*, i8** %6, align 8
  %33 = load i8*, i8** %7, align 8
  %34 = icmp ult i8* %32, %33
  br i1 %34, label %35, label %63

35:                                               ; preds = %31
  %36 = load i8*, i8** %6, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 2
  %38 = load i8*, i8** %7, align 8
  %39 = icmp ule i8* %37, %38
  br i1 %39, label %40, label %59

40:                                               ; preds = %35
  %41 = load i8*, i8** %6, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 0
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp eq i32 %44, 42
  br i1 %45, label %46, label %59

46:                                               ; preds = %40
  %47 = load i8*, i8** %6, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 1
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp eq i32 %50, 47
  br i1 %51, label %52, label %59

52:                                               ; preds = %46
  %53 = load i8*, i8** %6, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 2
  store i8* %54, i8** %6, align 8
  %55 = load %struct.macro_buffer*, %struct.macro_buffer** %5, align 8
  %56 = load i8*, i8** %8, align 8
  %57 = load i8*, i8** %6, align 8
  %58 = call i32 @set_token(%struct.macro_buffer* %55, i8* %56, i8* %57)
  store i32 1, i32* %4, align 4
  br label %102

59:                                               ; preds = %46, %40, %35
  br label %60

60:                                               ; preds = %59
  %61 = load i8*, i8** %6, align 8
  %62 = getelementptr inbounds i8, i8* %61, i32 1
  store i8* %62, i8** %6, align 8
  br label %31

63:                                               ; preds = %31
  %64 = call i32 @error(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  br label %101

65:                                               ; preds = %21, %15
  %66 = load i8*, i8** %6, align 8
  %67 = getelementptr inbounds i8, i8* %66, i64 0
  %68 = load i8, i8* %67, align 1
  %69 = sext i8 %68 to i32
  %70 = icmp eq i32 %69, 47
  br i1 %70, label %71, label %100

71:                                               ; preds = %65
  %72 = load i8*, i8** %6, align 8
  %73 = getelementptr inbounds i8, i8* %72, i64 1
  %74 = load i8, i8* %73, align 1
  %75 = sext i8 %74 to i32
  %76 = icmp eq i32 %75, 47
  br i1 %76, label %77, label %100

77:                                               ; preds = %71
  %78 = load i8*, i8** %6, align 8
  store i8* %78, i8** %9, align 8
  %79 = load i8*, i8** %6, align 8
  %80 = getelementptr inbounds i8, i8* %79, i64 2
  store i8* %80, i8** %6, align 8
  br label %81

81:                                               ; preds = %92, %77
  %82 = load i8*, i8** %6, align 8
  %83 = load i8*, i8** %7, align 8
  %84 = icmp ult i8* %82, %83
  br i1 %84, label %85, label %95

85:                                               ; preds = %81
  %86 = load i8*, i8** %6, align 8
  %87 = load i8, i8* %86, align 1
  %88 = sext i8 %87 to i32
  %89 = icmp eq i32 %88, 10
  br i1 %89, label %90, label %91

90:                                               ; preds = %85
  br label %95

91:                                               ; preds = %85
  br label %92

92:                                               ; preds = %91
  %93 = load i8*, i8** %6, align 8
  %94 = getelementptr inbounds i8, i8* %93, i32 1
  store i8* %94, i8** %6, align 8
  br label %81

95:                                               ; preds = %90, %81
  %96 = load %struct.macro_buffer*, %struct.macro_buffer** %5, align 8
  %97 = load i8*, i8** %9, align 8
  %98 = load i8*, i8** %6, align 8
  %99 = call i32 @set_token(%struct.macro_buffer* %96, i8* %97, i8* %98)
  store i32 1, i32* %4, align 4
  br label %102

100:                                              ; preds = %71, %65
  store i32 0, i32* %4, align 4
  br label %102

101:                                              ; preds = %63
  br label %102

102:                                              ; preds = %14, %52, %95, %100, %101
  %103 = load i32, i32* %4, align 4
  ret i32 %103
}

declare dso_local i32 @set_token(%struct.macro_buffer*, i8*, i8*) #1

declare dso_local i32 @error(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
