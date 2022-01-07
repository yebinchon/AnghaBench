; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/ia64/extr_ia64.c_ia64_invalid_conversion.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/ia64/extr_ia64.c_ia64_invalid_conversion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RFmode = common dso_local global i64 0, align 8
@VOIDmode = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [36 x i8] c"invalid conversion from %<__fpreg%>\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"invalid conversion to %<__fpreg%>\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32, i32)* @ia64_invalid_conversion to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @ia64_invalid_conversion(i32 %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %4, align 4
  %7 = call i64 @TYPE_MODE(i32 %6)
  %8 = load i64, i64* @RFmode, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %22

10:                                               ; preds = %2
  %11 = load i32, i32* %5, align 4
  %12 = call i64 @TYPE_MODE(i32 %11)
  %13 = load i64, i64* @RFmode, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %22

15:                                               ; preds = %10
  %16 = load i32, i32* %5, align 4
  %17 = call i64 @TYPE_MODE(i32 %16)
  %18 = load i64, i64* @VOIDmode, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %15
  %21 = call i8* @N_(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  store i8* %21, i8** %3, align 8
  br label %35

22:                                               ; preds = %15, %10, %2
  %23 = load i32, i32* %5, align 4
  %24 = call i64 @TYPE_MODE(i32 %23)
  %25 = load i64, i64* @RFmode, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %34

27:                                               ; preds = %22
  %28 = load i32, i32* %4, align 4
  %29 = call i64 @TYPE_MODE(i32 %28)
  %30 = load i64, i64* @RFmode, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %27
  %33 = call i8* @N_(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  store i8* %33, i8** %3, align 8
  br label %35

34:                                               ; preds = %27, %22
  store i8* null, i8** %3, align 8
  br label %35

35:                                               ; preds = %34, %32, %20
  %36 = load i8*, i8** %3, align 8
  ret i8* %36
}

declare dso_local i64 @TYPE_MODE(i32) #1

declare dso_local i8* @N_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
