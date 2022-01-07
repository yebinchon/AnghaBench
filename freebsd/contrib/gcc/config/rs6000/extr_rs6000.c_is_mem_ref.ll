; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/rs6000/extr_rs6000.c_is_mem_ref.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/rs6000/extr_rs6000.c_is_mem_ref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MEM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @is_mem_ref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_mem_ref(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 0, i32* %7, align 4
  %8 = load i32, i32* %3, align 4
  %9 = call i64 @GET_CODE(i32 %8)
  %10 = load i64, i64* @MEM, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %80

13:                                               ; preds = %1
  %14 = load i32, i32* %3, align 4
  %15 = call i64 @GET_CODE(i32 %14)
  %16 = call i8* @GET_RTX_FORMAT(i64 %15)
  store i8* %16, i8** %4, align 8
  %17 = load i32, i32* %3, align 4
  %18 = call i64 @GET_CODE(i32 %17)
  %19 = call i32 @GET_RTX_LENGTH(i64 %18)
  %20 = sub nsw i32 %19, 1
  store i32 %20, i32* %5, align 4
  br label %21

21:                                               ; preds = %75, %13
  %22 = load i32, i32* %5, align 4
  %23 = icmp sge i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %21
  %25 = load i32, i32* %7, align 4
  %26 = icmp ne i32 %25, 0
  %27 = xor i1 %26, true
  br label %28

28:                                               ; preds = %24, %21
  %29 = phi i1 [ false, %21 ], [ %27, %24 ]
  br i1 %29, label %30, label %78

30:                                               ; preds = %28
  %31 = load i8*, i8** %4, align 8
  %32 = load i32, i32* %5, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i8, i8* %31, i64 %33
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp eq i32 %36, 101
  br i1 %37, label %38, label %45

38:                                               ; preds = %30
  %39 = load i32, i32* %3, align 4
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @XEXP(i32 %39, i32 %40)
  %42 = call i32 @is_mem_ref(i32 %41)
  %43 = load i32, i32* %7, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %7, align 4
  br label %74

45:                                               ; preds = %30
  %46 = load i8*, i8** %4, align 8
  %47 = load i32, i32* %5, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i8, i8* %46, i64 %48
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp eq i32 %51, 69
  br i1 %52, label %53, label %73

53:                                               ; preds = %45
  %54 = load i32, i32* %3, align 4
  %55 = load i32, i32* %5, align 4
  %56 = call i32 @XVECLEN(i32 %54, i32 %55)
  %57 = sub nsw i32 %56, 1
  store i32 %57, i32* %6, align 4
  br label %58

58:                                               ; preds = %69, %53
  %59 = load i32, i32* %6, align 4
  %60 = icmp sge i32 %59, 0
  br i1 %60, label %61, label %72

61:                                               ; preds = %58
  %62 = load i32, i32* %3, align 4
  %63 = load i32, i32* %5, align 4
  %64 = load i32, i32* %6, align 4
  %65 = call i32 @XVECEXP(i32 %62, i32 %63, i32 %64)
  %66 = call i32 @is_mem_ref(i32 %65)
  %67 = load i32, i32* %7, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %7, align 4
  br label %69

69:                                               ; preds = %61
  %70 = load i32, i32* %6, align 4
  %71 = add nsw i32 %70, -1
  store i32 %71, i32* %6, align 4
  br label %58

72:                                               ; preds = %58
  br label %73

73:                                               ; preds = %72, %45
  br label %74

74:                                               ; preds = %73, %38
  br label %75

75:                                               ; preds = %74
  %76 = load i32, i32* %5, align 4
  %77 = add nsw i32 %76, -1
  store i32 %77, i32* %5, align 4
  br label %21

78:                                               ; preds = %28
  %79 = load i32, i32* %7, align 4
  store i32 %79, i32* %2, align 4
  br label %80

80:                                               ; preds = %78, %12
  %81 = load i32, i32* %2, align 4
  ret i32 %81
}

declare dso_local i64 @GET_CODE(i32) #1

declare dso_local i8* @GET_RTX_FORMAT(i64) #1

declare dso_local i32 @GET_RTX_LENGTH(i64) #1

declare dso_local i32 @XEXP(i32, i32) #1

declare dso_local i32 @XVECLEN(i32, i32) #1

declare dso_local i32 @XVECEXP(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
