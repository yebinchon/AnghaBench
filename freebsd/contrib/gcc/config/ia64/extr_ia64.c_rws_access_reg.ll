; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/ia64/extr_ia64.c_rws_access_reg.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/ia64/extr_ia64.c_rws_access_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.reg_flags = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @rws_access_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rws_access_reg(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.reg_flags, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = getelementptr inbounds %struct.reg_flags, %struct.reg_flags* %5, i32 0, i32 0
  store i32 %1, i32* %11, align 4
  store i32 %0, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load i32, i32* %6, align 4
  %13 = call i32 @REGNO(i32 %12)
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %6, align 4
  %15 = call i32 @REGNO(i32 %14)
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @GET_MODE(i32 %16)
  %18 = call i32 @HARD_REGNO_NREGS(i32 %15, i32 %17)
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %9, align 4
  %20 = icmp eq i32 %19, 1
  br i1 %20, label %21, label %27

21:                                               ; preds = %3
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* %7, align 4
  %24 = getelementptr inbounds %struct.reg_flags, %struct.reg_flags* %5, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @rws_access_regno(i32 %22, i32 %25, i32 %23)
  store i32 %26, i32* %4, align 4
  br label %44

27:                                               ; preds = %3
  store i32 0, i32* %10, align 4
  br label %28

28:                                               ; preds = %32, %27
  %29 = load i32, i32* %9, align 4
  %30 = add nsw i32 %29, -1
  store i32 %30, i32* %9, align 4
  %31 = icmp sge i32 %30, 0
  br i1 %31, label %32, label %42

32:                                               ; preds = %28
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* %9, align 4
  %35 = add nsw i32 %33, %34
  %36 = load i32, i32* %7, align 4
  %37 = getelementptr inbounds %struct.reg_flags, %struct.reg_flags* %5, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @rws_access_regno(i32 %35, i32 %38, i32 %36)
  %40 = load i32, i32* %10, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %10, align 4
  br label %28

42:                                               ; preds = %28
  %43 = load i32, i32* %10, align 4
  store i32 %43, i32* %4, align 4
  br label %44

44:                                               ; preds = %42, %21
  %45 = load i32, i32* %4, align 4
  ret i32 %45
}

declare dso_local i32 @REGNO(i32) #1

declare dso_local i32 @HARD_REGNO_NREGS(i32, i32) #1

declare dso_local i32 @GET_MODE(i32) #1

declare dso_local i32 @rws_access_regno(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
