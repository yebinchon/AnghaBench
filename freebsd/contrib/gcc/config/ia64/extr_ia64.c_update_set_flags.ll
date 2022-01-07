; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/ia64/extr_ia64.c_update_set_flags.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/ia64/extr_ia64.c_update_set_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.reg_flags = type { i32, i32, i32 }

@AND = common dso_local global i32 0, align 4
@IOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.reg_flags*)* @update_set_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_set_flags(i32 %0, %struct.reg_flags* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.reg_flags*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.reg_flags* %1, %struct.reg_flags** %4, align 8
  %6 = load i32, i32* %3, align 4
  %7 = call i32 @SET_SRC(i32 %6)
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = call i32 @GET_CODE(i32 %8)
  switch i32 %9, label %12 [
    i32 129, label %10
    i32 128, label %11
  ]

10:                                               ; preds = %2
  br label %44

11:                                               ; preds = %2
  br label %44

12:                                               ; preds = %2
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @COMPARISON_P(i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %25

16:                                               ; preds = %12
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @XEXP(i32 %17, i32 0)
  %19 = call i32 @GET_MODE(i32 %18)
  %20 = call i32 @SCALAR_FLOAT_MODE_P(i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %16
  %23 = load %struct.reg_flags*, %struct.reg_flags** %4, align 8
  %24 = getelementptr inbounds %struct.reg_flags, %struct.reg_flags* %23, i32 0, i32 0
  store i32 1, i32* %24, align 4
  br label %43

25:                                               ; preds = %16, %12
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @GET_CODE(i32 %26)
  %28 = load i32, i32* @AND, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %25
  %31 = load %struct.reg_flags*, %struct.reg_flags** %4, align 8
  %32 = getelementptr inbounds %struct.reg_flags, %struct.reg_flags* %31, i32 0, i32 1
  store i32 1, i32* %32, align 4
  br label %42

33:                                               ; preds = %25
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @GET_CODE(i32 %34)
  %36 = load i32, i32* @IOR, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %33
  %39 = load %struct.reg_flags*, %struct.reg_flags** %4, align 8
  %40 = getelementptr inbounds %struct.reg_flags, %struct.reg_flags* %39, i32 0, i32 2
  store i32 1, i32* %40, align 4
  br label %41

41:                                               ; preds = %38, %33
  br label %42

42:                                               ; preds = %41, %30
  br label %43

43:                                               ; preds = %42, %22
  br label %44

44:                                               ; preds = %10, %11, %43
  ret void
}

declare dso_local i32 @SET_SRC(i32) #1

declare dso_local i32 @GET_CODE(i32) #1

declare dso_local i32 @COMPARISON_P(i32) #1

declare dso_local i32 @SCALAR_FLOAT_MODE_P(i32) #1

declare dso_local i32 @GET_MODE(i32) #1

declare dso_local i32 @XEXP(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
