; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/rs6000/extr_rs6000.c_rs6000_hash_constant.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/rs6000/extr_rs6000.c_rs6000_hash_constant.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VOIDmode = common dso_local global i32 0, align 4
@CHAR_BIT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @rs6000_hash_constant to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rs6000_hash_constant(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  %13 = load i32, i32* %3, align 4
  %14 = call i32 @GET_CODE(i32 %13)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %3, align 4
  %16 = call i32 @GET_MODE(i32 %15)
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %4, align 4
  %18 = shl i32 %17, 3
  %19 = load i32, i32* %5, align 4
  %20 = xor i32 %18, %19
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %4, align 4
  %22 = call i8* @GET_RTX_FORMAT(i32 %21)
  store i8* %22, i8** %7, align 8
  %23 = load i8*, i8** %7, align 8
  %24 = call i8* @strlen(i8* %23)
  %25 = ptrtoint i8* %24 to i32
  store i32 %25, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %26 = load i32, i32* %4, align 4
  switch i32 %26, label %46 [
    i32 128, label %27
    i32 129, label %34
    i32 130, label %45
  ]

27:                                               ; preds = %1
  %28 = load i32, i32* %6, align 4
  %29 = mul i32 %28, 1231
  %30 = load i32, i32* %3, align 4
  %31 = call i32 @XEXP(i32 %30, i32 0)
  %32 = call i32 @INSN_UID(i32 %31)
  %33 = add i32 %29, %32
  store i32 %33, i32* %2, align 4
  br label %120

34:                                               ; preds = %1
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* @VOIDmode, align 4
  %37 = icmp ne i32 %35, %36
  br i1 %37, label %38, label %44

38:                                               ; preds = %34
  %39 = load i32, i32* %3, align 4
  %40 = call i32 @CONST_DOUBLE_REAL_VALUE(i32 %39)
  %41 = call i32 @real_hash(i32 %40)
  %42 = load i32, i32* %6, align 4
  %43 = mul i32 %41, %42
  store i32 %43, i32* %2, align 4
  br label %120

44:                                               ; preds = %34
  store i32 2, i32* %8, align 4
  br label %47

45:                                               ; preds = %1
  store i32 3, i32* %9, align 4
  br label %47

46:                                               ; preds = %1
  br label %47

47:                                               ; preds = %46, %45, %44
  br label %48

48:                                               ; preds = %115, %47
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* %8, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %118

52:                                               ; preds = %48
  %53 = load i8*, i8** %7, align 8
  %54 = load i32, i32* %9, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i8, i8* %53, i64 %55
  %57 = load i8, i8* %56, align 1
  %58 = sext i8 %57 to i32
  switch i32 %58, label %112 [
    i32 115, label %59
    i32 117, label %88
    i32 101, label %88
    i32 105, label %96
    i32 110, label %96
    i32 119, label %103
    i32 48, label %111
  ]

59:                                               ; preds = %52
  %60 = load i32, i32* %3, align 4
  %61 = load i32, i32* %9, align 4
  %62 = call i8* @XSTR(i32 %60, i32 %61)
  store i8* %62, i8** %12, align 8
  %63 = load i8*, i8** %12, align 8
  %64 = call i8* @strlen(i8* %63)
  %65 = ptrtoint i8* %64 to i32
  store i32 %65, i32* %11, align 4
  %66 = load i32, i32* %6, align 4
  %67 = mul i32 %66, 613
  %68 = load i32, i32* %11, align 4
  %69 = add i32 %67, %68
  store i32 %69, i32* %6, align 4
  store i32 0, i32* %10, align 4
  br label %70

70:                                               ; preds = %84, %59
  %71 = load i32, i32* %10, align 4
  %72 = load i32, i32* %11, align 4
  %73 = icmp ult i32 %71, %72
  br i1 %73, label %74, label %87

74:                                               ; preds = %70
  %75 = load i32, i32* %6, align 4
  %76 = mul i32 %75, 613
  %77 = load i8*, i8** %12, align 8
  %78 = load i32, i32* %10, align 4
  %79 = zext i32 %78 to i64
  %80 = getelementptr inbounds i8, i8* %77, i64 %79
  %81 = load i8, i8* %80, align 1
  %82 = sext i8 %81 to i32
  %83 = add i32 %76, %82
  store i32 %83, i32* %6, align 4
  br label %84

84:                                               ; preds = %74
  %85 = load i32, i32* %10, align 4
  %86 = add i32 %85, 1
  store i32 %86, i32* %10, align 4
  br label %70

87:                                               ; preds = %70
  br label %114

88:                                               ; preds = %52, %52
  %89 = load i32, i32* %6, align 4
  %90 = mul i32 %89, 1231
  %91 = load i32, i32* %3, align 4
  %92 = load i32, i32* %9, align 4
  %93 = call i32 @XEXP(i32 %91, i32 %92)
  %94 = call i32 @rs6000_hash_constant(i32 %93)
  %95 = add i32 %90, %94
  store i32 %95, i32* %6, align 4
  br label %114

96:                                               ; preds = %52, %52
  %97 = load i32, i32* %6, align 4
  %98 = mul i32 %97, 613
  %99 = load i32, i32* %3, align 4
  %100 = load i32, i32* %9, align 4
  %101 = call i32 @XINT(i32 %99, i32 %100)
  %102 = add i32 %98, %101
  store i32 %102, i32* %6, align 4
  br label %114

103:                                              ; preds = %52
  %104 = load i32, i32* %6, align 4
  %105 = mul i32 %104, 613
  %106 = load i32, i32* %3, align 4
  %107 = load i32, i32* %9, align 4
  %108 = call i64 @XWINT(i32 %106, i32 %107)
  %109 = trunc i64 %108 to i32
  %110 = add i32 %105, %109
  store i32 %110, i32* %6, align 4
  br label %114

111:                                              ; preds = %52
  br label %114

112:                                              ; preds = %52
  %113 = call i32 (...) @gcc_unreachable()
  br label %114

114:                                              ; preds = %112, %111, %103, %96, %88, %87
  br label %115

115:                                              ; preds = %114
  %116 = load i32, i32* %9, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %9, align 4
  br label %48

118:                                              ; preds = %48
  %119 = load i32, i32* %6, align 4
  store i32 %119, i32* %2, align 4
  br label %120

120:                                              ; preds = %118, %38, %27
  %121 = load i32, i32* %2, align 4
  ret i32 %121
}

declare dso_local i32 @GET_CODE(i32) #1

declare dso_local i32 @GET_MODE(i32) #1

declare dso_local i8* @GET_RTX_FORMAT(i32) #1

declare dso_local i8* @strlen(i8*) #1

declare dso_local i32 @INSN_UID(i32) #1

declare dso_local i32 @XEXP(i32, i32) #1

declare dso_local i32 @real_hash(i32) #1

declare dso_local i32 @CONST_DOUBLE_REAL_VALUE(i32) #1

declare dso_local i8* @XSTR(i32, i32) #1

declare dso_local i32 @XINT(i32, i32) #1

declare dso_local i64 @XWINT(i32, i32) #1

declare dso_local i32 @gcc_unreachable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
