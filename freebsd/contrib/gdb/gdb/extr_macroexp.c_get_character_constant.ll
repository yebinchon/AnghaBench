; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_macroexp.c_get_character_constant.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_macroexp.c_get_character_constant.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.macro_buffer = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"Unmatched single quote.\00", align 1
@.str.1 = private unnamed_addr constant [58 x i8] c"A character constant must contain at least one character.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.macro_buffer*, i8*, i8*)* @get_character_constant to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_character_constant(%struct.macro_buffer* %0, i8* %1, i8* %2) #0 {
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
  %11 = getelementptr inbounds i8, i8* %10, i64 1
  %12 = load i8*, i8** %7, align 8
  %13 = icmp ule i8* %11, %12
  br i1 %13, label %14, label %19

14:                                               ; preds = %3
  %15 = load i8*, i8** %6, align 8
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  %18 = icmp eq i32 %17, 39
  br i1 %18, label %36, label %19

19:                                               ; preds = %14, %3
  %20 = load i8*, i8** %6, align 8
  %21 = getelementptr inbounds i8, i8* %20, i64 2
  %22 = load i8*, i8** %7, align 8
  %23 = icmp ule i8* %21, %22
  br i1 %23, label %24, label %98

24:                                               ; preds = %19
  %25 = load i8*, i8** %6, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 0
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp eq i32 %28, 76
  br i1 %29, label %30, label %98

30:                                               ; preds = %24
  %31 = load i8*, i8** %6, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 1
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp eq i32 %34, 39
  br i1 %35, label %36, label %98

36:                                               ; preds = %30, %14
  %37 = load i8*, i8** %6, align 8
  store i8* %37, i8** %8, align 8
  %38 = load i8*, i8** %6, align 8
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp eq i32 %40, 39
  br i1 %41, label %42, label %45

42:                                               ; preds = %36
  %43 = load i8*, i8** %6, align 8
  %44 = getelementptr inbounds i8, i8* %43, i32 1
  store i8* %44, i8** %6, align 8
  br label %56

45:                                               ; preds = %36
  %46 = load i8*, i8** %6, align 8
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp eq i32 %48, 76
  br i1 %49, label %50, label %53

50:                                               ; preds = %45
  %51 = load i8*, i8** %6, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 2
  store i8* %52, i8** %6, align 8
  br label %55

53:                                               ; preds = %45
  %54 = call i32 @gdb_assert(i32 0)
  br label %55

55:                                               ; preds = %53, %50
  br label %56

56:                                               ; preds = %55, %42
  %57 = load i8*, i8** %6, align 8
  store i8* %57, i8** %9, align 8
  br label %58

58:                                               ; preds = %92, %56
  %59 = load i8*, i8** %6, align 8
  %60 = load i8*, i8** %7, align 8
  %61 = icmp uge i8* %59, %60
  br i1 %61, label %62, label %64

62:                                               ; preds = %58
  %63 = call i32 @error(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %92

64:                                               ; preds = %58
  %65 = load i8*, i8** %6, align 8
  %66 = load i8, i8* %65, align 1
  %67 = sext i8 %66 to i32
  %68 = icmp eq i32 %67, 39
  br i1 %68, label %69, label %78

69:                                               ; preds = %64
  %70 = load i8*, i8** %6, align 8
  %71 = load i8*, i8** %9, align 8
  %72 = icmp eq i8* %70, %71
  br i1 %72, label %73, label %75

73:                                               ; preds = %69
  %74 = call i32 @error(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0))
  br label %75

75:                                               ; preds = %73, %69
  %76 = load i8*, i8** %6, align 8
  %77 = getelementptr inbounds i8, i8* %76, i32 1
  store i8* %77, i8** %6, align 8
  br label %93

78:                                               ; preds = %64
  %79 = load i8*, i8** %6, align 8
  %80 = load i8, i8* %79, align 1
  %81 = sext i8 %80 to i32
  %82 = icmp eq i32 %81, 92
  br i1 %82, label %83, label %87

83:                                               ; preds = %78
  %84 = load i8*, i8** %6, align 8
  %85 = getelementptr inbounds i8, i8* %84, i32 1
  store i8* %85, i8** %6, align 8
  %86 = call i32 @parse_escape(i8** %6)
  br label %90

87:                                               ; preds = %78
  %88 = load i8*, i8** %6, align 8
  %89 = getelementptr inbounds i8, i8* %88, i32 1
  store i8* %89, i8** %6, align 8
  br label %90

90:                                               ; preds = %87, %83
  br label %91

91:                                               ; preds = %90
  br label %92

92:                                               ; preds = %91, %62
  br label %58

93:                                               ; preds = %75
  %94 = load %struct.macro_buffer*, %struct.macro_buffer** %5, align 8
  %95 = load i8*, i8** %8, align 8
  %96 = load i8*, i8** %6, align 8
  %97 = call i32 @set_token(%struct.macro_buffer* %94, i8* %95, i8* %96)
  store i32 1, i32* %4, align 4
  br label %99

98:                                               ; preds = %30, %24, %19
  store i32 0, i32* %4, align 4
  br label %99

99:                                               ; preds = %98, %93
  %100 = load i32, i32* %4, align 4
  ret i32 %100
}

declare dso_local i32 @gdb_assert(i32) #1

declare dso_local i32 @error(i8*) #1

declare dso_local i32 @parse_escape(i8**) #1

declare dso_local i32 @set_token(%struct.macro_buffer*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
