; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/i386/extr_i386.c_legitimate_constant_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/i386/extr_i386.c_legitimate_constant_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PLUS = common dso_local global i32 0, align 4
@CONST_INT = common dso_local global i32 0, align 4
@TARGET_MACHO = common dso_local global i32 0, align 4
@UNSPEC = common dso_local global i32 0, align 4
@TARGET_64BIT = common dso_local global i32 0, align 4
@TLS_MODEL_LOCAL_EXEC = common dso_local global i32 0, align 4
@TLS_MODEL_LOCAL_DYNAMIC = common dso_local global i32 0, align 4
@LABEL_REF = common dso_local global i32 0, align 4
@TImode = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @legitimate_constant_p(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = call i32 @GET_CODE(i32 %4)
  switch i32 %5, label %111 [
    i32 135, label %6
    i32 132, label %82
    i32 134, label %88
    i32 133, label %103
  ]

6:                                                ; preds = %1
  %7 = load i32, i32* %3, align 4
  %8 = call i32 @XEXP(i32 %7, i32 0)
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = call i32 @GET_CODE(i32 %9)
  %11 = load i32, i32* @PLUS, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %23

13:                                               ; preds = %6
  %14 = load i32, i32* %3, align 4
  %15 = call i32 @XEXP(i32 %14, i32 1)
  %16 = call i32 @GET_CODE(i32 %15)
  %17 = load i32, i32* @CONST_INT, align 4
  %18 = icmp ne i32 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %13
  store i32 0, i32* %2, align 4
  br label %113

20:                                               ; preds = %13
  %21 = load i32, i32* %3, align 4
  %22 = call i32 @XEXP(i32 %21, i32 0)
  store i32 %22, i32* %3, align 4
  br label %23

23:                                               ; preds = %20, %6
  %24 = load i32, i32* @TARGET_MACHO, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %23
  %27 = load i32, i32* %3, align 4
  %28 = call i32 @darwin_local_data_pic(i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  store i32 1, i32* %2, align 4
  br label %113

31:                                               ; preds = %26, %23
  %32 = load i32, i32* %3, align 4
  %33 = call i32 @GET_CODE(i32 %32)
  %34 = load i32, i32* @UNSPEC, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %70

36:                                               ; preds = %31
  %37 = load i32, i32* %3, align 4
  %38 = call i32 @XINT(i32 %37, i32 1)
  switch i32 %38, label %69 [
    i32 130, label %39
    i32 128, label %41
    i32 129, label %41
    i32 131, label %55
  ]

39:                                               ; preds = %36
  %40 = load i32, i32* @TARGET_64BIT, align 4
  store i32 %40, i32* %2, align 4
  br label %113

41:                                               ; preds = %36, %36
  %42 = load i32, i32* %3, align 4
  %43 = call i32 @XVECEXP(i32 %42, i32 0, i32 0)
  store i32 %43, i32* %3, align 4
  %44 = load i32, i32* %3, align 4
  %45 = call i32 @GET_CODE(i32 %44)
  %46 = icmp eq i32 %45, 132
  br i1 %46, label %47, label %52

47:                                               ; preds = %41
  %48 = load i32, i32* %3, align 4
  %49 = call i32 @SYMBOL_REF_TLS_MODEL(i32 %48)
  %50 = load i32, i32* @TLS_MODEL_LOCAL_EXEC, align 4
  %51 = icmp eq i32 %49, %50
  br label %52

52:                                               ; preds = %47, %41
  %53 = phi i1 [ false, %41 ], [ %51, %47 ]
  %54 = zext i1 %53 to i32
  store i32 %54, i32* %2, align 4
  br label %113

55:                                               ; preds = %36
  %56 = load i32, i32* %3, align 4
  %57 = call i32 @XVECEXP(i32 %56, i32 0, i32 0)
  store i32 %57, i32* %3, align 4
  %58 = load i32, i32* %3, align 4
  %59 = call i32 @GET_CODE(i32 %58)
  %60 = icmp eq i32 %59, 132
  br i1 %60, label %61, label %66

61:                                               ; preds = %55
  %62 = load i32, i32* %3, align 4
  %63 = call i32 @SYMBOL_REF_TLS_MODEL(i32 %62)
  %64 = load i32, i32* @TLS_MODEL_LOCAL_DYNAMIC, align 4
  %65 = icmp eq i32 %63, %64
  br label %66

66:                                               ; preds = %61, %55
  %67 = phi i1 [ false, %55 ], [ %65, %61 ]
  %68 = zext i1 %67 to i32
  store i32 %68, i32* %2, align 4
  br label %113

69:                                               ; preds = %36
  store i32 0, i32* %2, align 4
  br label %113

70:                                               ; preds = %31
  %71 = load i32, i32* %3, align 4
  %72 = call i32 @GET_CODE(i32 %71)
  %73 = load i32, i32* @LABEL_REF, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %70
  store i32 1, i32* %2, align 4
  br label %113

76:                                               ; preds = %70
  %77 = load i32, i32* %3, align 4
  %78 = call i32 @GET_CODE(i32 %77)
  %79 = icmp ne i32 %78, 132
  br i1 %79, label %80, label %81

80:                                               ; preds = %76
  store i32 0, i32* %2, align 4
  br label %113

81:                                               ; preds = %76
  br label %82

82:                                               ; preds = %1, %81
  %83 = load i32, i32* %3, align 4
  %84 = call i32 @SYMBOL_REF_TLS_MODEL(i32 %83)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %82
  store i32 0, i32* %2, align 4
  br label %113

87:                                               ; preds = %82
  br label %112

88:                                               ; preds = %1
  %89 = load i32, i32* %3, align 4
  %90 = call i32 @GET_MODE(i32 %89)
  %91 = load i32, i32* @TImode, align 4
  %92 = icmp eq i32 %90, %91
  br i1 %92, label %93, label %102

93:                                               ; preds = %88
  %94 = load i32, i32* %3, align 4
  %95 = load i32, i32* @TImode, align 4
  %96 = call i32 @CONST0_RTX(i32 %95)
  %97 = icmp ne i32 %94, %96
  br i1 %97, label %98, label %102

98:                                               ; preds = %93
  %99 = load i32, i32* @TARGET_64BIT, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %102, label %101

101:                                              ; preds = %98
  store i32 0, i32* %2, align 4
  br label %113

102:                                              ; preds = %98, %93, %88
  br label %112

103:                                              ; preds = %1
  %104 = load i32, i32* %3, align 4
  %105 = load i32, i32* %3, align 4
  %106 = call i32 @GET_MODE(i32 %105)
  %107 = call i32 @CONST0_RTX(i32 %106)
  %108 = icmp eq i32 %104, %107
  br i1 %108, label %109, label %110

109:                                              ; preds = %103
  store i32 1, i32* %2, align 4
  br label %113

110:                                              ; preds = %103
  store i32 0, i32* %2, align 4
  br label %113

111:                                              ; preds = %1
  br label %112

112:                                              ; preds = %111, %102, %87
  store i32 1, i32* %2, align 4
  br label %113

113:                                              ; preds = %112, %110, %109, %101, %86, %80, %75, %69, %66, %52, %39, %30, %19
  %114 = load i32, i32* %2, align 4
  ret i32 %114
}

declare dso_local i32 @GET_CODE(i32) #1

declare dso_local i32 @XEXP(i32, i32) #1

declare dso_local i32 @darwin_local_data_pic(i32) #1

declare dso_local i32 @XINT(i32, i32) #1

declare dso_local i32 @XVECEXP(i32, i32, i32) #1

declare dso_local i32 @SYMBOL_REF_TLS_MODEL(i32) #1

declare dso_local i32 @GET_MODE(i32) #1

declare dso_local i32 @CONST0_RTX(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
