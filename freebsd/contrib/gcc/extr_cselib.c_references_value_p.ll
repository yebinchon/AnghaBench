; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_cselib.c_references_value_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_cselib.c_references_value_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@VALUE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @references_value_p(i32 %0, i32 %1) #0 {
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
  %11 = call i64 @GET_CODE(i32 %10)
  %12 = trunc i64 %11 to i32
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = call i8* @GET_RTX_FORMAT(i32 %13)
  store i8* %14, i8** %7, align 8
  %15 = load i32, i32* %4, align 4
  %16 = call i64 @GET_CODE(i32 %15)
  %17 = load i64, i64* @VALUE, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %29

19:                                               ; preds = %2
  %20 = load i32, i32* %5, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %19
  %23 = load i32, i32* %4, align 4
  %24 = call %struct.TYPE_2__* @CSELIB_VAL_PTR(i32 %23)
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %22, %19
  store i32 1, i32* %3, align 4
  br label %87

29:                                               ; preds = %22, %2
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @GET_RTX_LENGTH(i32 %30)
  %32 = sub nsw i32 %31, 1
  store i32 %32, i32* %8, align 4
  br label %33

33:                                               ; preds = %83, %29
  %34 = load i32, i32* %8, align 4
  %35 = icmp sge i32 %34, 0
  br i1 %35, label %36, label %86

36:                                               ; preds = %33
  %37 = load i8*, i8** %7, align 8
  %38 = load i32, i32* %8, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8, i8* %37, i64 %39
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp eq i32 %42, 101
  br i1 %43, label %44, label %52

44:                                               ; preds = %36
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* %8, align 4
  %47 = call i32 @XEXP(i32 %45, i32 %46)
  %48 = load i32, i32* %5, align 4
  %49 = call i32 @references_value_p(i32 %47, i32 %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %44
  store i32 1, i32* %3, align 4
  br label %87

52:                                               ; preds = %44, %36
  %53 = load i8*, i8** %7, align 8
  %54 = load i32, i32* %8, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i8, i8* %53, i64 %55
  %57 = load i8, i8* %56, align 1
  %58 = sext i8 %57 to i32
  %59 = icmp eq i32 %58, 69
  br i1 %59, label %60, label %81

60:                                               ; preds = %52
  store i32 0, i32* %9, align 4
  br label %61

61:                                               ; preds = %77, %60
  %62 = load i32, i32* %9, align 4
  %63 = load i32, i32* %4, align 4
  %64 = load i32, i32* %8, align 4
  %65 = call i32 @XVECLEN(i32 %63, i32 %64)
  %66 = icmp slt i32 %62, %65
  br i1 %66, label %67, label %80

67:                                               ; preds = %61
  %68 = load i32, i32* %4, align 4
  %69 = load i32, i32* %8, align 4
  %70 = load i32, i32* %9, align 4
  %71 = call i32 @XVECEXP(i32 %68, i32 %69, i32 %70)
  %72 = load i32, i32* %5, align 4
  %73 = call i32 @references_value_p(i32 %71, i32 %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %67
  store i32 1, i32* %3, align 4
  br label %87

76:                                               ; preds = %67
  br label %77

77:                                               ; preds = %76
  %78 = load i32, i32* %9, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %9, align 4
  br label %61

80:                                               ; preds = %61
  br label %81

81:                                               ; preds = %80, %52
  br label %82

82:                                               ; preds = %81
  br label %83

83:                                               ; preds = %82
  %84 = load i32, i32* %8, align 4
  %85 = add nsw i32 %84, -1
  store i32 %85, i32* %8, align 4
  br label %33

86:                                               ; preds = %33
  store i32 0, i32* %3, align 4
  br label %87

87:                                               ; preds = %86, %75, %51, %28
  %88 = load i32, i32* %3, align 4
  ret i32 %88
}

declare dso_local i64 @GET_CODE(i32) #1

declare dso_local i8* @GET_RTX_FORMAT(i32) #1

declare dso_local %struct.TYPE_2__* @CSELIB_VAL_PTR(i32) #1

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
