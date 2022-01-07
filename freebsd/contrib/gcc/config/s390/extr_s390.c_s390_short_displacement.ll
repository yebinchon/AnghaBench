; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/s390/extr_s390.c_s390_short_displacement.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/s390/extr_s390.c_s390_short_displacement.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CONST_INT = common dso_local global i64 0, align 8
@CONST = common dso_local global i64 0, align 8
@UNSPEC = common dso_local global i64 0, align 8
@UNSPEC_GOT = common dso_local global i64 0, align 8
@UNSPEC_GOTNTPOFF = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @s390_short_displacement to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s390_short_displacement(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  store i32 1, i32* %2, align 4
  br label %54

7:                                                ; preds = %1
  %8 = load i32, i32* %3, align 4
  %9 = call i64 @GET_CODE(i32 %8)
  %10 = load i64, i64* @CONST_INT, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %23

12:                                               ; preds = %7
  %13 = load i32, i32* %3, align 4
  %14 = call i32 @INTVAL(i32 %13)
  %15 = icmp sge i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %12
  %17 = load i32, i32* %3, align 4
  %18 = call i32 @INTVAL(i32 %17)
  %19 = icmp slt i32 %18, 4096
  br label %20

20:                                               ; preds = %16, %12
  %21 = phi i1 [ false, %12 ], [ %19, %16 ]
  %22 = zext i1 %21 to i32
  store i32 %22, i32* %2, align 4
  br label %54

23:                                               ; preds = %7
  %24 = load i32, i32* %3, align 4
  %25 = call i64 @GET_CODE(i32 %24)
  %26 = load i64, i64* @CONST, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %47

28:                                               ; preds = %23
  %29 = load i32, i32* %3, align 4
  %30 = call i32 @XEXP(i32 %29, i32 0)
  %31 = call i64 @GET_CODE(i32 %30)
  %32 = load i64, i64* @UNSPEC, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %47

34:                                               ; preds = %28
  %35 = load i32, i32* %3, align 4
  %36 = call i32 @XEXP(i32 %35, i32 0)
  %37 = call i64 @XINT(i32 %36, i32 1)
  %38 = load i64, i64* @UNSPEC_GOT, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %46, label %40

40:                                               ; preds = %34
  %41 = load i32, i32* %3, align 4
  %42 = call i32 @XEXP(i32 %41, i32 0)
  %43 = call i64 @XINT(i32 %42, i32 1)
  %44 = load i64, i64* @UNSPEC_GOTNTPOFF, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %40, %34
  store i32 0, i32* %2, align 4
  br label %54

47:                                               ; preds = %40, %28, %23
  %48 = load i32, i32* %3, align 4
  %49 = call i64 @GET_CODE(i32 %48)
  %50 = load i64, i64* @CONST, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %47
  store i32 1, i32* %2, align 4
  br label %54

53:                                               ; preds = %47
  store i32 0, i32* %2, align 4
  br label %54

54:                                               ; preds = %53, %52, %46, %20, %6
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

declare dso_local i64 @GET_CODE(i32) #1

declare dso_local i32 @INTVAL(i32) #1

declare dso_local i32 @XEXP(i32, i32) #1

declare dso_local i64 @XINT(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
