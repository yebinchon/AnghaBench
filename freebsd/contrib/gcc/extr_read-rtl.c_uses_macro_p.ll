; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_read-rtl.c_uses_macro_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_read-rtl.c_uses_macro_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mapping = type { i64, %struct.macro_group* }
%struct.macro_group = type { i64, i64 (i32, i64)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.mapping*)* @uses_macro_p to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uses_macro_p(i32 %0, %struct.mapping* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.mapping*, align 8
  %6 = alloca %struct.macro_group*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.mapping* %1, %struct.mapping** %5, align 8
  %10 = load i32, i32* %4, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %93

13:                                               ; preds = %2
  %14 = load %struct.mapping*, %struct.mapping** %5, align 8
  %15 = getelementptr inbounds %struct.mapping, %struct.mapping* %14, i32 0, i32 1
  %16 = load %struct.macro_group*, %struct.macro_group** %15, align 8
  store %struct.macro_group* %16, %struct.macro_group** %6, align 8
  %17 = load %struct.macro_group*, %struct.macro_group** %6, align 8
  %18 = getelementptr inbounds %struct.macro_group, %struct.macro_group* %17, i32 0, i32 1
  %19 = load i64 (i32, i64)*, i64 (i32, i64)** %18, align 8
  %20 = load i32, i32* %4, align 4
  %21 = load %struct.mapping*, %struct.mapping** %5, align 8
  %22 = getelementptr inbounds %struct.mapping, %struct.mapping* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.macro_group*, %struct.macro_group** %6, align 8
  %25 = getelementptr inbounds %struct.macro_group, %struct.macro_group* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = add nsw i64 %23, %26
  %28 = call i64 %19(i32 %20, i64 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %13
  store i32 1, i32* %3, align 4
  br label %93

31:                                               ; preds = %13
  %32 = load i32, i32* %4, align 4
  %33 = call i32 @GET_CODE(i32 %32)
  %34 = call i32 @BELLWETHER_CODE(i32 %33)
  %35 = call i8* @GET_RTX_FORMAT(i32 %34)
  store i8* %35, i8** %7, align 8
  store i32 0, i32* %8, align 4
  br label %36

36:                                               ; preds = %89, %31
  %37 = load i8*, i8** %7, align 8
  %38 = load i32, i32* %8, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8, i8* %37, i64 %39
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %92

44:                                               ; preds = %36
  %45 = load i8*, i8** %7, align 8
  %46 = load i32, i32* %8, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i8, i8* %45, i64 %47
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  switch i32 %50, label %87 [
    i32 101, label %51
    i32 86, label %60
    i32 69, label %60
  ]

51:                                               ; preds = %44
  %52 = load i32, i32* %4, align 4
  %53 = load i32, i32* %8, align 4
  %54 = call i32 @XEXP(i32 %52, i32 %53)
  %55 = load %struct.mapping*, %struct.mapping** %5, align 8
  %56 = call i32 @uses_macro_p(i32 %54, %struct.mapping* %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %51
  store i32 1, i32* %3, align 4
  br label %93

59:                                               ; preds = %51
  br label %88

60:                                               ; preds = %44, %44
  %61 = load i32, i32* %4, align 4
  %62 = load i32, i32* %8, align 4
  %63 = call i32 @XVEC(i32 %61, i32 %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %86

65:                                               ; preds = %60
  store i32 0, i32* %9, align 4
  br label %66

66:                                               ; preds = %82, %65
  %67 = load i32, i32* %9, align 4
  %68 = load i32, i32* %4, align 4
  %69 = load i32, i32* %8, align 4
  %70 = call i32 @XVECLEN(i32 %68, i32 %69)
  %71 = icmp slt i32 %67, %70
  br i1 %71, label %72, label %85

72:                                               ; preds = %66
  %73 = load i32, i32* %4, align 4
  %74 = load i32, i32* %8, align 4
  %75 = load i32, i32* %9, align 4
  %76 = call i32 @XVECEXP(i32 %73, i32 %74, i32 %75)
  %77 = load %struct.mapping*, %struct.mapping** %5, align 8
  %78 = call i32 @uses_macro_p(i32 %76, %struct.mapping* %77)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %72
  store i32 1, i32* %3, align 4
  br label %93

81:                                               ; preds = %72
  br label %82

82:                                               ; preds = %81
  %83 = load i32, i32* %9, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %9, align 4
  br label %66

85:                                               ; preds = %66
  br label %86

86:                                               ; preds = %85, %60
  br label %88

87:                                               ; preds = %44
  br label %88

88:                                               ; preds = %87, %86, %59
  br label %89

89:                                               ; preds = %88
  %90 = load i32, i32* %8, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %8, align 4
  br label %36

92:                                               ; preds = %36
  store i32 0, i32* %3, align 4
  br label %93

93:                                               ; preds = %92, %80, %58, %30, %12
  %94 = load i32, i32* %3, align 4
  ret i32 %94
}

declare dso_local i8* @GET_RTX_FORMAT(i32) #1

declare dso_local i32 @BELLWETHER_CODE(i32) #1

declare dso_local i32 @GET_CODE(i32) #1

declare dso_local i32 @XEXP(i32, i32) #1

declare dso_local i32 @XVEC(i32, i32) #1

declare dso_local i32 @XVECLEN(i32, i32) #1

declare dso_local i32 @XVECEXP(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
