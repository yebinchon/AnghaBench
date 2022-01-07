; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/s390/extr_s390.c_s390_delegitimize_address.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/s390/extr_s390.c_s390_delegitimize_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MEM = common dso_local global i64 0, align 8
@PLUS = common dso_local global i64 0, align 8
@CONST = common dso_local global i64 0, align 8
@REG = common dso_local global i64 0, align 8
@PIC_OFFSET_TABLE_REGNUM = common dso_local global i64 0, align 8
@UNSPEC = common dso_local global i64 0, align 8
@UNSPEC_GOT = common dso_local global i64 0, align 8
@UNSPEC_GOTENT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @s390_delegitimize_address to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s390_delegitimize_address(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = call i64 @GET_CODE(i32 %7)
  %9 = load i64, i64* @MEM, align 8
  %10 = icmp ne i64 %8, %9
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i32, i32* %3, align 4
  store i32 %12, i32* %2, align 4
  br label %80

13:                                               ; preds = %1
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @XEXP(i32 %14, i32 0)
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = call i64 @GET_CODE(i32 %16)
  %18 = load i64, i64* @PLUS, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %56

20:                                               ; preds = %13
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @XEXP(i32 %21, i32 1)
  %23 = call i64 @GET_CODE(i32 %22)
  %24 = load i64, i64* @CONST, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %56

26:                                               ; preds = %20
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @XEXP(i32 %27, i32 0)
  %29 = call i64 @GET_CODE(i32 %28)
  %30 = load i64, i64* @REG, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %56

32:                                               ; preds = %26
  %33 = load i32, i32* %4, align 4
  %34 = call i32 @XEXP(i32 %33, i32 0)
  %35 = call i64 @REGNO(i32 %34)
  %36 = load i64, i64* @PIC_OFFSET_TABLE_REGNUM, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %56

38:                                               ; preds = %32
  %39 = load i32, i32* %4, align 4
  %40 = call i32 @XEXP(i32 %39, i32 1)
  %41 = call i32 @XEXP(i32 %40, i32 0)
  store i32 %41, i32* %5, align 4
  %42 = load i32, i32* %5, align 4
  %43 = call i64 @GET_CODE(i32 %42)
  %44 = load i64, i64* @UNSPEC, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %54

46:                                               ; preds = %38
  %47 = load i32, i32* %5, align 4
  %48 = call i64 @XINT(i32 %47, i32 1)
  %49 = load i64, i64* @UNSPEC_GOT, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %46
  %52 = load i32, i32* %5, align 4
  %53 = call i32 @XVECEXP(i32 %52, i32 0, i32 0)
  store i32 %53, i32* %2, align 4
  br label %80

54:                                               ; preds = %46, %38
  %55 = load i32, i32* %3, align 4
  store i32 %55, i32* %2, align 4
  br label %80

56:                                               ; preds = %32, %26, %20, %13
  %57 = load i32, i32* %4, align 4
  %58 = call i64 @GET_CODE(i32 %57)
  %59 = load i64, i64* @CONST, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %78

61:                                               ; preds = %56
  %62 = load i32, i32* %4, align 4
  %63 = call i32 @XEXP(i32 %62, i32 0)
  store i32 %63, i32* %5, align 4
  %64 = load i32, i32* %5, align 4
  %65 = call i64 @GET_CODE(i32 %64)
  %66 = load i64, i64* @UNSPEC, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %76

68:                                               ; preds = %61
  %69 = load i32, i32* %5, align 4
  %70 = call i64 @XINT(i32 %69, i32 1)
  %71 = load i64, i64* @UNSPEC_GOTENT, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %76

73:                                               ; preds = %68
  %74 = load i32, i32* %5, align 4
  %75 = call i32 @XVECEXP(i32 %74, i32 0, i32 0)
  store i32 %75, i32* %2, align 4
  br label %80

76:                                               ; preds = %68, %61
  %77 = load i32, i32* %3, align 4
  store i32 %77, i32* %2, align 4
  br label %80

78:                                               ; preds = %56
  %79 = load i32, i32* %3, align 4
  store i32 %79, i32* %2, align 4
  br label %80

80:                                               ; preds = %78, %76, %73, %54, %51, %11
  %81 = load i32, i32* %2, align 4
  ret i32 %81
}

declare dso_local i64 @GET_CODE(i32) #1

declare dso_local i32 @XEXP(i32, i32) #1

declare dso_local i64 @REGNO(i32) #1

declare dso_local i64 @XINT(i32, i32) #1

declare dso_local i32 @XVECEXP(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
