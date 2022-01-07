; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-arm.c_do_neon_rev.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-arm.c_do_neon_rev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.neon_type_el = type { i32 }

@NS_DD = common dso_local global i32 0, align 4
@NS_QQ = common dso_local global i32 0, align 4
@NS_NULL = common dso_local global i32 0, align 4
@N_EQK = common dso_local global i32 0, align 4
@N_8 = common dso_local global i32 0, align 4
@N_16 = common dso_local global i32 0, align 4
@N_32 = common dso_local global i32 0, align 4
@N_KEY = common dso_local global i32 0, align 4
@inst = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@.str = private unnamed_addr constant [46 x i8] c"elements must be smaller than reversal region\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @do_neon_rev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_neon_rev() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.neon_type_el, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = load i32, i32* @NS_DD, align 4
  %6 = load i32, i32* @NS_QQ, align 4
  %7 = load i32, i32* @NS_NULL, align 4
  %8 = call i32 @neon_select_shape(i32 %5, i32 %6, i32 %7)
  store i32 %8, i32* %1, align 4
  %9 = load i32, i32* %1, align 4
  %10 = load i32, i32* @N_EQK, align 4
  %11 = load i32, i32* @N_8, align 4
  %12 = load i32, i32* @N_16, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @N_32, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @N_KEY, align 4
  %17 = or i32 %15, %16
  %18 = call i32 @neon_check_type(i32 2, i32 %9, i32 %10, i32 %17)
  %19 = getelementptr inbounds %struct.neon_type_el, %struct.neon_type_el* %2, i32 0, i32 0
  store i32 %18, i32* %19, align 4
  %20 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @inst, i32 0, i32 0), align 4
  %21 = ashr i32 %20, 7
  %22 = and i32 %21, 3
  store i32 %22, i32* %3, align 4
  %23 = load i32, i32* %3, align 4
  %24 = icmp eq i32 %23, 2
  br i1 %24, label %25, label %26

25:                                               ; preds = %0
  br label %37

26:                                               ; preds = %0
  %27 = load i32, i32* %3, align 4
  %28 = icmp eq i32 %27, 1
  br i1 %28, label %29, label %30

29:                                               ; preds = %26
  br label %35

30:                                               ; preds = %26
  %31 = load i32, i32* %3, align 4
  %32 = icmp eq i32 %31, 0
  %33 = zext i1 %32 to i64
  %34 = select i1 %32, i32 64, i32 0
  br label %35

35:                                               ; preds = %30, %29
  %36 = phi i32 [ 32, %29 ], [ %34, %30 ]
  br label %37

37:                                               ; preds = %35, %25
  %38 = phi i32 [ 16, %25 ], [ %36, %35 ]
  store i32 %38, i32* %4, align 4
  %39 = load i32, i32* %4, align 4
  %40 = icmp ne i32 %39, 0
  %41 = zext i1 %40 to i32
  %42 = call i32 @assert(i32 %41)
  %43 = getelementptr inbounds %struct.neon_type_el, %struct.neon_type_el* %2, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %4, align 4
  %46 = icmp uge i32 %44, %45
  %47 = zext i1 %46 to i32
  %48 = call i32 @_(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  %49 = call i32 @constraint(i32 %47, i32 %48)
  %50 = load i32, i32* %1, align 4
  %51 = call i32 @neon_quad(i32 %50)
  %52 = getelementptr inbounds %struct.neon_type_el, %struct.neon_type_el* %2, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @neon_two_same(i32 %51, i32 1, i32 %53)
  ret void
}

declare dso_local i32 @neon_select_shape(i32, i32, i32) #1

declare dso_local i32 @neon_check_type(i32, i32, i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @constraint(i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @neon_two_same(i32, i32, i32) #1

declare dso_local i32 @neon_quad(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
