; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-arm.c_do_t_branch.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-arm.c_do_t_branch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@current_it_mask = common dso_local global i32 0, align 4
@COND_ALWAYS = common dso_local global i32 0, align 4
@BAD_BRANCH = common dso_local global i32 0, align 4
@inst = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@T_MNEM_bcond = common dso_local global i32 0, align 4
@unified_syntax = common dso_local global i64 0, align 8
@BFD_RELOC_THUMB_PCREL_BRANCH25 = common dso_local global i32 0, align 4
@BFD_RELOC_THUMB_PCREL_BRANCH20 = common dso_local global i32 0, align 4
@BFD_RELOC_THUMB_PCREL_BRANCH12 = common dso_local global i32 0, align 4
@BFD_RELOC_THUMB_PCREL_BRANCH9 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @do_t_branch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_t_branch() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32, i32* @current_it_mask, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %5, label %12

5:                                                ; preds = %0
  %6 = load i32, i32* @COND_ALWAYS, align 4
  store i32 %6, i32* %2, align 4
  %7 = load i32, i32* @current_it_mask, align 4
  %8 = icmp ne i32 %7, 16
  %9 = zext i1 %8 to i32
  %10 = load i32, i32* @BAD_BRANCH, align 4
  %11 = call i32 @constraint(i32 %9, i32 %10)
  br label %14

12:                                               ; preds = %0
  %13 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 0), align 4
  store i32 %13, i32* %2, align 4
  br label %14

14:                                               ; preds = %12, %5
  %15 = load i32, i32* %2, align 4
  %16 = load i32, i32* @COND_ALWAYS, align 4
  %17 = icmp ne i32 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %14
  %19 = load i32, i32* @T_MNEM_bcond, align 4
  store i32 %19, i32* %1, align 4
  br label %22

20:                                               ; preds = %14
  %21 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 1), align 4
  store i32 %21, i32* %1, align 4
  br label %22

22:                                               ; preds = %20, %18
  %23 = load i64, i64* @unified_syntax, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %47

25:                                               ; preds = %22
  %26 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 2), align 4
  %27 = icmp eq i32 %26, 4
  br i1 %27, label %28, label %47

28:                                               ; preds = %25
  %29 = load i32, i32* %1, align 4
  %30 = call i32 @THUMB_OP32(i32 %29)
  store i32 %30, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 1), align 4
  %31 = load i32, i32* %2, align 4
  %32 = load i32, i32* @COND_ALWAYS, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %28
  %35 = load i32, i32* @BFD_RELOC_THUMB_PCREL_BRANCH25, align 4
  store i32 %35, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 4, i32 1), align 4
  br label %46

36:                                               ; preds = %28
  %37 = load i32, i32* %2, align 4
  %38 = icmp ne i32 %37, 15
  %39 = zext i1 %38 to i32
  %40 = call i32 @assert(i32 %39)
  %41 = load i32, i32* %2, align 4
  %42 = shl i32 %41, 22
  %43 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 1), align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 1), align 4
  %45 = load i32, i32* @BFD_RELOC_THUMB_PCREL_BRANCH20, align 4
  store i32 %45, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 4, i32 1), align 4
  br label %46

46:                                               ; preds = %36, %34
  br label %70

47:                                               ; preds = %25, %22
  %48 = load i32, i32* %1, align 4
  %49 = call i32 @THUMB_OP16(i32 %48)
  store i32 %49, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 1), align 4
  %50 = load i32, i32* %2, align 4
  %51 = load i32, i32* @COND_ALWAYS, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %47
  %54 = load i32, i32* @BFD_RELOC_THUMB_PCREL_BRANCH12, align 4
  store i32 %54, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 4, i32 1), align 4
  br label %61

55:                                               ; preds = %47
  %56 = load i32, i32* %2, align 4
  %57 = shl i32 %56, 8
  %58 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 1), align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 1), align 4
  %60 = load i32, i32* @BFD_RELOC_THUMB_PCREL_BRANCH9, align 4
  store i32 %60, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 4, i32 1), align 4
  br label %61

61:                                               ; preds = %55, %53
  %62 = load i64, i64* @unified_syntax, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %61
  %65 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 2), align 4
  %66 = icmp ne i32 %65, 2
  br i1 %66, label %67, label %69

67:                                               ; preds = %64
  %68 = load i32, i32* %1, align 4
  store i32 %68, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 3), align 4
  br label %69

69:                                               ; preds = %67, %64, %61
  br label %70

70:                                               ; preds = %69, %46
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 4, i32 0), align 4
  ret void
}

declare dso_local i32 @constraint(i32, i32) #1

declare dso_local i32 @THUMB_OP32(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @THUMB_OP16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
