; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/sparc/extr_sparc.c_set_extends.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/sparc/extr_sparc.c_set_extends.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SImode = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @set_extends to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_extends(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = call i32 @PATTERN(i32 %9)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @SET_SRC(i32 %11)
  %13 = call i32 @GET_CODE(i32 %12)
  switch i32 %13, label %126 [
    i32 133, label %14
    i32 128, label %14
    i32 141, label %14
    i32 137, label %14
    i32 135, label %14
    i32 134, label %14
    i32 143, label %14
    i32 142, label %14
    i32 139, label %14
    i32 138, label %14
    i32 145, label %14
    i32 144, label %14
    i32 146, label %14
    i32 132, label %14
    i32 150, label %15
    i32 140, label %53
    i32 129, label %53
    i32 136, label %90
    i32 148, label %97
    i32 147, label %105
    i32 149, label %113
    i32 130, label %113
    i32 131, label %121
  ]

14:                                               ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1
  store i32 1, i32* %2, align 4
  br label %127

15:                                               ; preds = %1
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @SET_SRC(i32 %16)
  %18 = call i32 @XEXP(i32 %17, i32 0)
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @SET_SRC(i32 %19)
  %21 = call i32 @XEXP(i32 %20, i32 1)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @GET_CODE(i32 %22)
  %24 = icmp eq i32 %23, 147
  br i1 %24, label %25, label %30

25:                                               ; preds = %15
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @INTVAL(i32 %26)
  %28 = icmp sge i32 %27, 0
  %29 = zext i1 %28 to i32
  store i32 %29, i32* %2, align 4
  br label %127

30:                                               ; preds = %15
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @GET_CODE(i32 %31)
  %33 = icmp ne i32 %32, 131
  br i1 %33, label %34, label %35

34:                                               ; preds = %30
  store i32 0, i32* %2, align 4
  br label %127

35:                                               ; preds = %30
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* %3, align 4
  %38 = call i32 @sparc_check_64(i32 %36, i32 %37)
  %39 = icmp eq i32 %38, 1
  br i1 %39, label %40, label %41

40:                                               ; preds = %35
  store i32 1, i32* %2, align 4
  br label %127

41:                                               ; preds = %35
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @GET_CODE(i32 %42)
  %44 = icmp eq i32 %43, 131
  br i1 %44, label %45, label %50

45:                                               ; preds = %41
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* %3, align 4
  %48 = call i32 @sparc_check_64(i32 %46, i32 %47)
  %49 = icmp eq i32 %48, 1
  br label %50

50:                                               ; preds = %45, %41
  %51 = phi i1 [ false, %41 ], [ %49, %45 ]
  %52 = zext i1 %51 to i32
  store i32 %52, i32* %2, align 4
  br label %127

53:                                               ; preds = %1, %1
  %54 = load i32, i32* %4, align 4
  %55 = call i32 @SET_SRC(i32 %54)
  %56 = call i32 @XEXP(i32 %55, i32 0)
  store i32 %56, i32* %7, align 4
  %57 = load i32, i32* %4, align 4
  %58 = call i32 @SET_SRC(i32 %57)
  %59 = call i32 @XEXP(i32 %58, i32 1)
  store i32 %59, i32* %8, align 4
  %60 = load i32, i32* %7, align 4
  %61 = call i32 @GET_CODE(i32 %60)
  %62 = icmp ne i32 %61, 131
  br i1 %62, label %68, label %63

63:                                               ; preds = %53
  %64 = load i32, i32* %7, align 4
  %65 = load i32, i32* %3, align 4
  %66 = call i32 @sparc_check_64(i32 %64, i32 %65)
  %67 = icmp sle i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %63, %53
  store i32 0, i32* %2, align 4
  br label %127

69:                                               ; preds = %63
  %70 = load i32, i32* %8, align 4
  %71 = call i32 @GET_CODE(i32 %70)
  %72 = icmp eq i32 %71, 147
  br i1 %72, label %73, label %78

73:                                               ; preds = %69
  %74 = load i32, i32* %8, align 4
  %75 = call i32 @INTVAL(i32 %74)
  %76 = icmp sge i32 %75, 0
  %77 = zext i1 %76 to i32
  store i32 %77, i32* %2, align 4
  br label %127

78:                                               ; preds = %69
  %79 = load i32, i32* %8, align 4
  %80 = call i32 @GET_CODE(i32 %79)
  %81 = icmp eq i32 %80, 131
  br i1 %81, label %82, label %87

82:                                               ; preds = %78
  %83 = load i32, i32* %8, align 4
  %84 = load i32, i32* %3, align 4
  %85 = call i32 @sparc_check_64(i32 %83, i32 %84)
  %86 = icmp eq i32 %85, 1
  br label %87

87:                                               ; preds = %82, %78
  %88 = phi i1 [ false, %78 ], [ %86, %82 ]
  %89 = zext i1 %88 to i32
  store i32 %89, i32* %2, align 4
  br label %127

90:                                               ; preds = %1
  %91 = load i32, i32* %4, align 4
  %92 = call i32 @SET_SRC(i32 %91)
  %93 = call i32 @GET_MODE(i32 %92)
  %94 = load i32, i32* @SImode, align 4
  %95 = icmp eq i32 %93, %94
  %96 = zext i1 %95 to i32
  store i32 %96, i32* %2, align 4
  br label %127

97:                                               ; preds = %1
  %98 = load i32, i32* %4, align 4
  %99 = call i32 @SET_SRC(i32 %98)
  %100 = call i32 @CONST_DOUBLE_LOW(i32 %99)
  %101 = and i32 %100, -2147483648
  %102 = icmp ne i32 %101, 0
  %103 = xor i1 %102, true
  %104 = zext i1 %103 to i32
  store i32 %104, i32* %2, align 4
  br label %127

105:                                              ; preds = %1
  %106 = load i32, i32* %4, align 4
  %107 = call i32 @SET_SRC(i32 %106)
  %108 = call i32 @INTVAL(i32 %107)
  %109 = and i32 %108, -2147483648
  %110 = icmp ne i32 %109, 0
  %111 = xor i1 %110, true
  %112 = zext i1 %111 to i32
  store i32 %112, i32* %2, align 4
  br label %127

113:                                              ; preds = %1, %1
  %114 = load i32, i32* %4, align 4
  %115 = call i32 @SET_SRC(i32 %114)
  %116 = call i32 @GET_MODE(i32 %115)
  %117 = load i32, i32* @SImode, align 4
  %118 = icmp eq i32 %116, %117
  %119 = zext i1 %118 to i32
  %120 = sub nsw i32 0, %119
  store i32 %120, i32* %2, align 4
  br label %127

121:                                              ; preds = %1
  %122 = load i32, i32* %4, align 4
  %123 = call i32 @SET_SRC(i32 %122)
  %124 = load i32, i32* %3, align 4
  %125 = call i32 @sparc_check_64(i32 %123, i32 %124)
  store i32 %125, i32* %2, align 4
  br label %127

126:                                              ; preds = %1
  store i32 0, i32* %2, align 4
  br label %127

127:                                              ; preds = %126, %121, %113, %105, %97, %90, %87, %73, %68, %50, %40, %34, %25, %14
  %128 = load i32, i32* %2, align 4
  ret i32 %128
}

declare dso_local i32 @PATTERN(i32) #1

declare dso_local i32 @GET_CODE(i32) #1

declare dso_local i32 @SET_SRC(i32) #1

declare dso_local i32 @XEXP(i32, i32) #1

declare dso_local i32 @INTVAL(i32) #1

declare dso_local i32 @sparc_check_64(i32, i32) #1

declare dso_local i32 @GET_MODE(i32) #1

declare dso_local i32 @CONST_DOUBLE_LOW(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
