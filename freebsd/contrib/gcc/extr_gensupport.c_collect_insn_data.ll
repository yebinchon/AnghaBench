; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_gensupport.c_collect_insn_data.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_gensupport.c_collect_insn_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32*, i32*)* @collect_insn_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @collect_insn_data(i32 %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @GET_CODE(i32 %12)
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %8, align 4
  switch i32 %14, label %42 [
    i32 131, label %15
    i32 130, label %31
    i32 128, label %31
    i32 129, label %31
  ]

15:                                               ; preds = %3
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @XSTR(i32 %16, i32 2)
  %18 = call i32 @n_alternatives(i32 %17)
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %9, align 4
  %20 = load i32*, i32** %5, align 8
  %21 = load i32, i32* %20, align 4
  %22 = icmp sgt i32 %19, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %15
  %24 = load i32, i32* %9, align 4
  br label %28

25:                                               ; preds = %15
  %26 = load i32*, i32** %5, align 8
  %27 = load i32, i32* %26, align 4
  br label %28

28:                                               ; preds = %25, %23
  %29 = phi i32 [ %24, %23 ], [ %27, %25 ]
  %30 = load i32*, i32** %5, align 8
  store i32 %29, i32* %30, align 4
  br label %31

31:                                               ; preds = %3, %3, %3, %28
  %32 = load i32, i32* %4, align 4
  %33 = call i32 @XINT(i32 %32, i32 0)
  store i32 %33, i32* %9, align 4
  %34 = load i32, i32* %9, align 4
  %35 = load i32*, i32** %6, align 8
  %36 = load i32, i32* %35, align 4
  %37 = icmp sgt i32 %34, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %31
  %39 = load i32, i32* %9, align 4
  %40 = load i32*, i32** %6, align 8
  store i32 %39, i32* %40, align 4
  br label %41

41:                                               ; preds = %38, %31
  br label %43

42:                                               ; preds = %3
  br label %43

43:                                               ; preds = %42, %41
  %44 = load i32, i32* %8, align 4
  %45 = call i8* @GET_RTX_FORMAT(i32 %44)
  store i8* %45, i8** %7, align 8
  %46 = load i32, i32* %8, align 4
  %47 = call i32 @GET_RTX_LENGTH(i32 %46)
  store i32 %47, i32* %11, align 4
  store i32 0, i32* %9, align 4
  br label %48

48:                                               ; preds = %95, %43
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* %11, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %98

52:                                               ; preds = %48
  %53 = load i8*, i8** %7, align 8
  %54 = load i32, i32* %9, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i8, i8* %53, i64 %55
  %57 = load i8, i8* %56, align 1
  %58 = sext i8 %57 to i32
  switch i32 %58, label %92 [
    i32 101, label %59
    i32 117, label %59
    i32 86, label %65
    i32 69, label %72
    i32 105, label %91
    i32 119, label %91
    i32 48, label %91
    i32 115, label %91
    i32 83, label %91
    i32 84, label %91
  ]

59:                                               ; preds = %52, %52
  %60 = load i32, i32* %4, align 4
  %61 = load i32, i32* %9, align 4
  %62 = call i32 @XEXP(i32 %60, i32 %61)
  %63 = load i32*, i32** %5, align 8
  %64 = load i32*, i32** %6, align 8
  call void @collect_insn_data(i32 %62, i32* %63, i32* %64)
  br label %94

65:                                               ; preds = %52
  %66 = load i32, i32* %4, align 4
  %67 = load i32, i32* %9, align 4
  %68 = call i32* @XVEC(i32 %66, i32 %67)
  %69 = icmp eq i32* %68, null
  br i1 %69, label %70, label %71

70:                                               ; preds = %65
  br label %94

71:                                               ; preds = %65
  br label %72

72:                                               ; preds = %52, %71
  %73 = load i32, i32* %4, align 4
  %74 = load i32, i32* %9, align 4
  %75 = call i32 @XVECLEN(i32 %73, i32 %74)
  %76 = sub nsw i32 %75, 1
  store i32 %76, i32* %10, align 4
  br label %77

77:                                               ; preds = %87, %72
  %78 = load i32, i32* %10, align 4
  %79 = icmp sge i32 %78, 0
  br i1 %79, label %80, label %90

80:                                               ; preds = %77
  %81 = load i32, i32* %4, align 4
  %82 = load i32, i32* %9, align 4
  %83 = load i32, i32* %10, align 4
  %84 = call i32 @XVECEXP(i32 %81, i32 %82, i32 %83)
  %85 = load i32*, i32** %5, align 8
  %86 = load i32*, i32** %6, align 8
  call void @collect_insn_data(i32 %84, i32* %85, i32* %86)
  br label %87

87:                                               ; preds = %80
  %88 = load i32, i32* %10, align 4
  %89 = add nsw i32 %88, -1
  store i32 %89, i32* %10, align 4
  br label %77

90:                                               ; preds = %77
  br label %94

91:                                               ; preds = %52, %52, %52, %52, %52, %52
  br label %94

92:                                               ; preds = %52
  %93 = call i32 (...) @gcc_unreachable()
  br label %94

94:                                               ; preds = %92, %91, %90, %70, %59
  br label %95

95:                                               ; preds = %94
  %96 = load i32, i32* %9, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %9, align 4
  br label %48

98:                                               ; preds = %48
  ret void
}

declare dso_local i32 @GET_CODE(i32) #1

declare dso_local i32 @n_alternatives(i32) #1

declare dso_local i32 @XSTR(i32, i32) #1

declare dso_local i32 @XINT(i32, i32) #1

declare dso_local i8* @GET_RTX_FORMAT(i32) #1

declare dso_local i32 @GET_RTX_LENGTH(i32) #1

declare dso_local i32 @XEXP(i32, i32) #1

declare dso_local i32* @XVEC(i32, i32) #1

declare dso_local i32 @XVECLEN(i32, i32) #1

declare dso_local i32 @XVECEXP(i32, i32, i32) #1

declare dso_local i32 @gcc_unreachable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
