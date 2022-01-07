; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bearssl/test/extr_test_x509.c_conf_next_line.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bearssl/test/extr_test_x509.c_conf_next_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@line_builder = common dso_local global i32 0, align 4
@conf_linenum = common dso_local global i32 0, align 4
@current_linenum = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @conf_next_line to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @conf_next_line() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  br label %5

5:                                                ; preds = %101, %0
  %6 = load i32, i32* @line_builder, align 4
  %7 = call i32 @SB_reset(i32 %6)
  br label %8

8:                                                ; preds = %32, %17, %5
  %9 = call i32 (...) @conf_next_low()
  store i32 %9, i32* %2, align 4
  %10 = load i32, i32* %2, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %8
  store i32 -1, i32* %1, align 4
  br label %102

13:                                               ; preds = %8
  %14 = load i32, i32* %2, align 4
  %15 = call i64 @is_ws(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  br label %8

18:                                               ; preds = %13
  %19 = load i32, i32* %2, align 4
  %20 = icmp eq i32 %19, 59
  br i1 %20, label %21, label %33

21:                                               ; preds = %18
  br label %22

22:                                               ; preds = %31, %21
  %23 = call i32 (...) @conf_next_low()
  store i32 %23, i32* %2, align 4
  %24 = load i32, i32* %2, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  store i32 -1, i32* %1, align 4
  br label %102

27:                                               ; preds = %22
  %28 = load i32, i32* %2, align 4
  %29 = icmp eq i32 %28, 10
  br i1 %29, label %30, label %31

30:                                               ; preds = %27
  br label %32

31:                                               ; preds = %27
  br label %22

32:                                               ; preds = %30
  br label %8

33:                                               ; preds = %18
  br label %34

34:                                               ; preds = %33
  %35 = load i32, i32* @conf_linenum, align 4
  store i32 %35, i32* @current_linenum, align 4
  %36 = load i32, i32* %2, align 4
  %37 = icmp eq i32 %36, 92
  %38 = zext i1 %37 to i32
  store i32 %38, i32* %3, align 4
  %39 = load i32, i32* @line_builder, align 4
  %40 = load i32, i32* %2, align 4
  %41 = call i32 @SB_append_char(i32 %39, i32 %40)
  br label %42

42:                                               ; preds = %70, %60, %34
  %43 = call i32 (...) @conf_next_low()
  store i32 %43, i32* %2, align 4
  %44 = load i32, i32* %2, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %42
  br label %74

47:                                               ; preds = %42
  %48 = load i32, i32* %3, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %61

50:                                               ; preds = %47
  %51 = load i32, i32* %2, align 4
  %52 = icmp eq i32 %51, 10
  br i1 %52, label %53, label %60

53:                                               ; preds = %50
  %54 = load i32, i32* @line_builder, align 4
  %55 = load i32, i32* @line_builder, align 4
  %56 = call i32 @SB_length(i32 %55)
  %57 = sub nsw i32 %56, 1
  %58 = sext i32 %57 to i64
  %59 = call i32 @SB_set_length(i32 %54, i64 %58)
  br label %60

60:                                               ; preds = %53, %50
  store i32 0, i32* %3, align 4
  br label %42

61:                                               ; preds = %47
  %62 = load i32, i32* %2, align 4
  %63 = icmp eq i32 %62, 10
  br i1 %63, label %64, label %65

64:                                               ; preds = %61
  br label %74

65:                                               ; preds = %61
  %66 = load i32, i32* %2, align 4
  %67 = icmp eq i32 %66, 92
  br i1 %67, label %68, label %69

68:                                               ; preds = %65
  store i32 1, i32* %3, align 4
  br label %69

69:                                               ; preds = %68, %65
  br label %70

70:                                               ; preds = %69
  %71 = load i32, i32* @line_builder, align 4
  %72 = load i32, i32* %2, align 4
  %73 = call i32 @SB_append_char(i32 %71, i32 %72)
  br label %42

74:                                               ; preds = %64, %46
  br label %75

75:                                               ; preds = %91, %74
  %76 = load i32, i32* @line_builder, align 4
  %77 = call i32 @SB_length(i32 %76)
  %78 = sext i32 %77 to i64
  store i64 %78, i64* %4, align 8
  %79 = load i64, i64* %4, align 8
  %80 = icmp eq i64 %79, 0
  br i1 %80, label %90, label %81

81:                                               ; preds = %75
  %82 = load i32, i32* @line_builder, align 4
  %83 = call i32* @SB_contents(i32 %82)
  %84 = load i64, i64* %4, align 8
  %85 = sub i64 %84, 1
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = call i64 @is_ws(i32 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %91, label %90

90:                                               ; preds = %81, %75
  br label %96

91:                                               ; preds = %81
  %92 = load i32, i32* @line_builder, align 4
  %93 = load i64, i64* %4, align 8
  %94 = sub i64 %93, 1
  %95 = call i32 @SB_set_length(i32 %92, i64 %94)
  br label %75

96:                                               ; preds = %90
  %97 = load i32, i32* @line_builder, align 4
  %98 = call i32 @SB_length(i32 %97)
  %99 = icmp sgt i32 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %96
  store i32 0, i32* %1, align 4
  br label %102

101:                                              ; preds = %96
  br label %5

102:                                              ; preds = %100, %26, %12
  %103 = load i32, i32* %1, align 4
  ret i32 %103
}

declare dso_local i32 @SB_reset(i32) #1

declare dso_local i32 @conf_next_low(...) #1

declare dso_local i64 @is_ws(i32) #1

declare dso_local i32 @SB_append_char(i32, i32) #1

declare dso_local i32 @SB_set_length(i32, i64) #1

declare dso_local i32 @SB_length(i32) #1

declare dso_local i32* @SB_contents(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
