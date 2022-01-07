; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_alpha-tdep.c_alpha_register_reggroup_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_alpha-tdep.c_alpha_register_reggroup_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.reggroup = type { i32 }
%struct.gdbarch = type { i32 }

@all_reggroup = common dso_local global %struct.reggroup* null, align 8
@ALPHA_ZERO_REGNUM = common dso_local global i32 0, align 4
@save_reggroup = common dso_local global %struct.reggroup* null, align 8
@restore_reggroup = common dso_local global %struct.reggroup* null, align 8
@ALPHA_UNIQUE_REGNUM = common dso_local global i32 0, align 4
@system_reggroup = common dso_local global %struct.reggroup* null, align 8
@ALPHA_FPCR_REGNUM = common dso_local global i32 0, align 4
@float_reggroup = common dso_local global %struct.reggroup* null, align 8
@ALPHA_FP0_REGNUM = common dso_local global i32 0, align 4
@general_reggroup = common dso_local global %struct.reggroup* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gdbarch*, i32, %struct.reggroup*)* @alpha_register_reggroup_p to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alpha_register_reggroup_p(%struct.gdbarch* %0, i32 %1, %struct.reggroup* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.gdbarch*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.reggroup*, align 8
  store %struct.gdbarch* %0, %struct.gdbarch** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.reggroup* %2, %struct.reggroup** %7, align 8
  %8 = load i32, i32* %6, align 4
  %9 = call i8* @REGISTER_NAME(i32 %8)
  %10 = icmp eq i8* %9, null
  br i1 %10, label %17, label %11

11:                                               ; preds = %3
  %12 = load i32, i32* %6, align 4
  %13 = call i8* @REGISTER_NAME(i32 %12)
  %14 = load i8, i8* %13, align 1
  %15 = sext i8 %14 to i32
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %11, %3
  store i32 0, i32* %4, align 4
  br label %74

18:                                               ; preds = %11
  %19 = load %struct.reggroup*, %struct.reggroup** %7, align 8
  %20 = load %struct.reggroup*, %struct.reggroup** @all_reggroup, align 8
  %21 = icmp eq %struct.reggroup* %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  store i32 1, i32* %4, align 4
  br label %74

23:                                               ; preds = %18
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @ALPHA_ZERO_REGNUM, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  store i32 0, i32* %4, align 4
  br label %74

28:                                               ; preds = %23
  %29 = load %struct.reggroup*, %struct.reggroup** %7, align 8
  %30 = load %struct.reggroup*, %struct.reggroup** @save_reggroup, align 8
  %31 = icmp eq %struct.reggroup* %29, %30
  br i1 %31, label %36, label %32

32:                                               ; preds = %28
  %33 = load %struct.reggroup*, %struct.reggroup** %7, align 8
  %34 = load %struct.reggroup*, %struct.reggroup** @restore_reggroup, align 8
  %35 = icmp eq %struct.reggroup* %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %32, %28
  store i32 1, i32* %4, align 4
  br label %74

37:                                               ; preds = %32
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* @ALPHA_UNIQUE_REGNUM, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %46

41:                                               ; preds = %37
  %42 = load %struct.reggroup*, %struct.reggroup** %7, align 8
  %43 = load %struct.reggroup*, %struct.reggroup** @system_reggroup, align 8
  %44 = icmp eq %struct.reggroup* %42, %43
  %45 = zext i1 %44 to i32
  store i32 %45, i32* %4, align 4
  br label %74

46:                                               ; preds = %37
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* @ALPHA_FPCR_REGNUM, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %55

50:                                               ; preds = %46
  %51 = load %struct.reggroup*, %struct.reggroup** %7, align 8
  %52 = load %struct.reggroup*, %struct.reggroup** @float_reggroup, align 8
  %53 = icmp eq %struct.reggroup* %51, %52
  %54 = zext i1 %53 to i32
  store i32 %54, i32* %4, align 4
  br label %74

55:                                               ; preds = %46
  %56 = load i32, i32* %6, align 4
  %57 = load i32, i32* @ALPHA_FP0_REGNUM, align 4
  %58 = icmp sge i32 %56, %57
  br i1 %58, label %59, label %69

59:                                               ; preds = %55
  %60 = load i32, i32* %6, align 4
  %61 = load i32, i32* @ALPHA_FP0_REGNUM, align 4
  %62 = add nsw i32 %61, 31
  %63 = icmp slt i32 %60, %62
  br i1 %63, label %64, label %69

64:                                               ; preds = %59
  %65 = load %struct.reggroup*, %struct.reggroup** %7, align 8
  %66 = load %struct.reggroup*, %struct.reggroup** @float_reggroup, align 8
  %67 = icmp eq %struct.reggroup* %65, %66
  %68 = zext i1 %67 to i32
  store i32 %68, i32* %4, align 4
  br label %74

69:                                               ; preds = %59, %55
  %70 = load %struct.reggroup*, %struct.reggroup** %7, align 8
  %71 = load %struct.reggroup*, %struct.reggroup** @general_reggroup, align 8
  %72 = icmp eq %struct.reggroup* %70, %71
  %73 = zext i1 %72 to i32
  store i32 %73, i32* %4, align 4
  br label %74

74:                                               ; preds = %69, %64, %50, %41, %36, %27, %22, %17
  %75 = load i32, i32* %4, align 4
  ret i32 %75
}

declare dso_local i8* @REGISTER_NAME(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
