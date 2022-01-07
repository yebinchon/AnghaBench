; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/arm/extr_arm.c_thumb_far_jump_used_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/arm/extr_arm.c_thumb_far_jump_used_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32 }

@cfun = common dso_local global %struct.TYPE_4__* null, align 8
@ARM_DOUBLEWORD_ALIGN = common dso_local global i64 0, align 8
@reload_completed = common dso_local global i64 0, align 8
@regs_ever_live = common dso_local global i64* null, align 8
@ARG_POINTER_REGNUM = common dso_local global i64 0, align 8
@JUMP_INSN = common dso_local global i64 0, align 8
@ADDR_VEC = common dso_local global i64 0, align 8
@ADDR_DIFF_VEC = common dso_local global i64 0, align 8
@FAR_JUMP_YES = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @thumb_far_jump_used_p to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @thumb_far_jump_used_p() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cfun, align 8
  %4 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 0
  %5 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %0
  store i32 1, i32* %1, align 4
  br label %74

10:                                               ; preds = %0
  %11 = load i64, i64* @ARM_DOUBLEWORD_ALIGN, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %37, label %13

13:                                               ; preds = %10
  %14 = load i64, i64* @reload_completed, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %37, label %16

16:                                               ; preds = %13
  %17 = load i64*, i64** @regs_ever_live, align 8
  %18 = load i64, i64* @ARG_POINTER_REGNUM, align 8
  %19 = getelementptr inbounds i64, i64* %17, i64 %18
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %16
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cfun, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 1
  store i32 1, i32* %26, align 4
  br label %36

27:                                               ; preds = %16
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cfun, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %27
  store i32 0, i32* %1, align 4
  br label %74

35:                                               ; preds = %27
  br label %36

36:                                               ; preds = %35, %22
  br label %37

37:                                               ; preds = %36, %13, %10
  %38 = call i64 (...) @get_insns()
  store i64 %38, i64* %2, align 8
  br label %39

39:                                               ; preds = %70, %37
  %40 = load i64, i64* %2, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %73

42:                                               ; preds = %39
  %43 = load i64, i64* %2, align 8
  %44 = call i64 @GET_CODE(i64 %43)
  %45 = load i64, i64* @JUMP_INSN, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %69

47:                                               ; preds = %42
  %48 = load i64, i64* %2, align 8
  %49 = call i64 @PATTERN(i64 %48)
  %50 = call i64 @GET_CODE(i64 %49)
  %51 = load i64, i64* @ADDR_VEC, align 8
  %52 = icmp ne i64 %50, %51
  br i1 %52, label %53, label %69

53:                                               ; preds = %47
  %54 = load i64, i64* %2, align 8
  %55 = call i64 @PATTERN(i64 %54)
  %56 = call i64 @GET_CODE(i64 %55)
  %57 = load i64, i64* @ADDR_DIFF_VEC, align 8
  %58 = icmp ne i64 %56, %57
  br i1 %58, label %59, label %69

59:                                               ; preds = %53
  %60 = load i64, i64* %2, align 8
  %61 = call i64 @get_attr_far_jump(i64 %60)
  %62 = load i64, i64* @FAR_JUMP_YES, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %69

64:                                               ; preds = %59
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cfun, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 0
  store i32 1, i32* %68, align 4
  store i32 1, i32* %1, align 4
  br label %74

69:                                               ; preds = %59, %53, %47, %42
  br label %70

70:                                               ; preds = %69
  %71 = load i64, i64* %2, align 8
  %72 = call i64 @NEXT_INSN(i64 %71)
  store i64 %72, i64* %2, align 8
  br label %39

73:                                               ; preds = %39
  store i32 0, i32* %1, align 4
  br label %74

74:                                               ; preds = %73, %64, %34, %9
  %75 = load i32, i32* %1, align 4
  ret i32 %75
}

declare dso_local i64 @get_insns(...) #1

declare dso_local i64 @GET_CODE(i64) #1

declare dso_local i64 @PATTERN(i64) #1

declare dso_local i64 @get_attr_far_jump(i64) #1

declare dso_local i64 @NEXT_INSN(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
