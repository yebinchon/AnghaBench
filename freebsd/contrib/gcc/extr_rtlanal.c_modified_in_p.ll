; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_rtlanal.c_modified_in_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_rtlanal.c_modified_in_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @modified_in_p(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @GET_CODE(i32 %10)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  switch i32 %12, label %38 [
    i32 134, label %13
    i32 135, label %13
    i32 133, label %13
    i32 136, label %13
    i32 128, label %13
    i32 132, label %13
    i32 130, label %14
    i32 137, label %14
    i32 131, label %15
    i32 129, label %34
  ]

13:                                               ; preds = %2, %2, %2, %2, %2, %2
  store i32 0, i32* %3, align 4
  br label %100

14:                                               ; preds = %2, %2
  store i32 1, i32* %3, align 4
  br label %100

15:                                               ; preds = %2
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @XEXP(i32 %16, i32 0)
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @modified_in_p(i32 %17, i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %15
  store i32 1, i32* %3, align 4
  br label %100

22:                                               ; preds = %15
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @MEM_READONLY_P(i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  store i32 0, i32* %3, align 4
  br label %100

27:                                               ; preds = %22
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @memory_modified_in_insn_p(i32 %28, i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  store i32 1, i32* %3, align 4
  br label %100

33:                                               ; preds = %27
  store i32 0, i32* %3, align 4
  br label %100

34:                                               ; preds = %2
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @reg_set_p(i32 %35, i32 %36)
  store i32 %37, i32* %3, align 4
  br label %100

38:                                               ; preds = %2
  br label %39

39:                                               ; preds = %38
  %40 = load i32, i32* %6, align 4
  %41 = call i8* @GET_RTX_FORMAT(i32 %40)
  store i8* %41, i8** %7, align 8
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @GET_RTX_LENGTH(i32 %42)
  %44 = sub nsw i32 %43, 1
  store i32 %44, i32* %8, align 4
  br label %45

45:                                               ; preds = %96, %39
  %46 = load i32, i32* %8, align 4
  %47 = icmp sge i32 %46, 0
  br i1 %47, label %48, label %99

48:                                               ; preds = %45
  %49 = load i8*, i8** %7, align 8
  %50 = load i32, i32* %8, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i8, i8* %49, i64 %51
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp eq i32 %54, 101
  br i1 %55, label %56, label %64

56:                                               ; preds = %48
  %57 = load i32, i32* %4, align 4
  %58 = load i32, i32* %8, align 4
  %59 = call i32 @XEXP(i32 %57, i32 %58)
  %60 = load i32, i32* %5, align 4
  %61 = call i32 @modified_in_p(i32 %59, i32 %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %56
  store i32 1, i32* %3, align 4
  br label %100

64:                                               ; preds = %56, %48
  %65 = load i8*, i8** %7, align 8
  %66 = load i32, i32* %8, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i8, i8* %65, i64 %67
  %69 = load i8, i8* %68, align 1
  %70 = sext i8 %69 to i32
  %71 = icmp eq i32 %70, 69
  br i1 %71, label %72, label %94

72:                                               ; preds = %64
  %73 = load i32, i32* %4, align 4
  %74 = load i32, i32* %8, align 4
  %75 = call i32 @XVECLEN(i32 %73, i32 %74)
  %76 = sub nsw i32 %75, 1
  store i32 %76, i32* %9, align 4
  br label %77

77:                                               ; preds = %90, %72
  %78 = load i32, i32* %9, align 4
  %79 = icmp sge i32 %78, 0
  br i1 %79, label %80, label %93

80:                                               ; preds = %77
  %81 = load i32, i32* %4, align 4
  %82 = load i32, i32* %8, align 4
  %83 = load i32, i32* %9, align 4
  %84 = call i32 @XVECEXP(i32 %81, i32 %82, i32 %83)
  %85 = load i32, i32* %5, align 4
  %86 = call i32 @modified_in_p(i32 %84, i32 %85)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %80
  store i32 1, i32* %3, align 4
  br label %100

89:                                               ; preds = %80
  br label %90

90:                                               ; preds = %89
  %91 = load i32, i32* %9, align 4
  %92 = add nsw i32 %91, -1
  store i32 %92, i32* %9, align 4
  br label %77

93:                                               ; preds = %77
  br label %94

94:                                               ; preds = %93, %64
  br label %95

95:                                               ; preds = %94
  br label %96

96:                                               ; preds = %95
  %97 = load i32, i32* %8, align 4
  %98 = add nsw i32 %97, -1
  store i32 %98, i32* %8, align 4
  br label %45

99:                                               ; preds = %45
  store i32 0, i32* %3, align 4
  br label %100

100:                                              ; preds = %99, %88, %63, %34, %33, %32, %26, %21, %14, %13
  %101 = load i32, i32* %3, align 4
  ret i32 %101
}

declare dso_local i32 @GET_CODE(i32) #1

declare dso_local i32 @XEXP(i32, i32) #1

declare dso_local i32 @MEM_READONLY_P(i32) #1

declare dso_local i32 @memory_modified_in_insn_p(i32, i32) #1

declare dso_local i32 @reg_set_p(i32, i32) #1

declare dso_local i8* @GET_RTX_FORMAT(i32) #1

declare dso_local i32 @GET_RTX_LENGTH(i32) #1

declare dso_local i32 @XVECLEN(i32, i32) #1

declare dso_local i32 @XVECEXP(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
