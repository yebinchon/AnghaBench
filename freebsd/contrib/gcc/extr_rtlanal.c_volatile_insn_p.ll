; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_rtlanal.c_volatile_insn_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_rtlanal.c_volatile_insn_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @volatile_insn_p(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = call i32 @GET_CODE(i32 %8)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  switch i32 %10, label %19 [
    i32 134, label %11
    i32 129, label %11
    i32 136, label %11
    i32 138, label %11
    i32 137, label %11
    i32 135, label %11
    i32 140, label %11
    i32 132, label %11
    i32 131, label %11
    i32 130, label %11
    i32 139, label %11
    i32 144, label %11
    i32 145, label %11
    i32 141, label %11
    i32 133, label %11
    i32 128, label %12
    i32 143, label %13
    i32 142, label %13
  ]

11:                                               ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1
  store i32 0, i32* %2, align 4
  br label %79

12:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %79

13:                                               ; preds = %1, %1
  %14 = load i32, i32* %3, align 4
  %15 = call i32 @MEM_VOLATILE_P(i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  store i32 1, i32* %2, align 4
  br label %79

18:                                               ; preds = %13
  br label %19

19:                                               ; preds = %1, %18
  br label %20

20:                                               ; preds = %19
  %21 = load i32, i32* %4, align 4
  %22 = call i8* @GET_RTX_FORMAT(i32 %21)
  store i8* %22, i8** %5, align 8
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @GET_RTX_LENGTH(i32 %23)
  %25 = sub nsw i32 %24, 1
  store i32 %25, i32* %6, align 4
  br label %26

26:                                               ; preds = %75, %20
  %27 = load i32, i32* %6, align 4
  %28 = icmp sge i32 %27, 0
  br i1 %28, label %29, label %78

29:                                               ; preds = %26
  %30 = load i8*, i8** %5, align 8
  %31 = load i32, i32* %6, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i8, i8* %30, i64 %32
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp eq i32 %35, 101
  br i1 %36, label %37, label %45

37:                                               ; preds = %29
  %38 = load i32, i32* %3, align 4
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @XEXP(i32 %38, i32 %39)
  %41 = call i32 @volatile_insn_p(i32 %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %37
  store i32 1, i32* %2, align 4
  br label %79

44:                                               ; preds = %37
  br label %74

45:                                               ; preds = %29
  %46 = load i8*, i8** %5, align 8
  %47 = load i32, i32* %6, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i8, i8* %46, i64 %48
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp eq i32 %51, 69
  br i1 %52, label %53, label %73

53:                                               ; preds = %45
  store i32 0, i32* %7, align 4
  br label %54

54:                                               ; preds = %69, %53
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* %3, align 4
  %57 = load i32, i32* %6, align 4
  %58 = call i32 @XVECLEN(i32 %56, i32 %57)
  %59 = icmp slt i32 %55, %58
  br i1 %59, label %60, label %72

60:                                               ; preds = %54
  %61 = load i32, i32* %3, align 4
  %62 = load i32, i32* %6, align 4
  %63 = load i32, i32* %7, align 4
  %64 = call i32 @XVECEXP(i32 %61, i32 %62, i32 %63)
  %65 = call i32 @volatile_insn_p(i32 %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %60
  store i32 1, i32* %2, align 4
  br label %79

68:                                               ; preds = %60
  br label %69

69:                                               ; preds = %68
  %70 = load i32, i32* %7, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %7, align 4
  br label %54

72:                                               ; preds = %54
  br label %73

73:                                               ; preds = %72, %45
  br label %74

74:                                               ; preds = %73, %44
  br label %75

75:                                               ; preds = %74
  %76 = load i32, i32* %6, align 4
  %77 = add nsw i32 %76, -1
  store i32 %77, i32* %6, align 4
  br label %26

78:                                               ; preds = %26
  store i32 0, i32* %2, align 4
  br label %79

79:                                               ; preds = %78, %67, %43, %17, %12, %11
  %80 = load i32, i32* %2, align 4
  ret i32 %80
}

declare dso_local i32 @GET_CODE(i32) #1

declare dso_local i32 @MEM_VOLATILE_P(i32) #1

declare dso_local i8* @GET_RTX_FORMAT(i32) #1

declare dso_local i32 @GET_RTX_LENGTH(i32) #1

declare dso_local i32 @XEXP(i32, i32) #1

declare dso_local i32 @XVECLEN(i32, i32) #1

declare dso_local i32 @XVECEXP(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
