; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ia64-tdep.c_ia64_register_reggroup_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ia64-tdep.c_ia64_register_reggroup_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.reggroup = type { i32 }
%struct.gdbarch = type { i32 }

@all_reggroup = common dso_local global %struct.reggroup* null, align 8
@TYPE_CODE_FLT = common dso_local global i64 0, align 8
@NUM_IA64_RAW_REGS = common dso_local global i32 0, align 4
@float_reggroup = common dso_local global %struct.reggroup* null, align 8
@vector_reggroup = common dso_local global %struct.reggroup* null, align 8
@general_reggroup = common dso_local global %struct.reggroup* null, align 8
@save_reggroup = common dso_local global %struct.reggroup* null, align 8
@restore_reggroup = common dso_local global %struct.reggroup* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ia64_register_reggroup_p(%struct.gdbarch* %0, i32 %1, %struct.reggroup* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.gdbarch*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.reggroup*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.gdbarch* %0, %struct.gdbarch** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.reggroup* %2, %struct.reggroup** %7, align 8
  %11 = load %struct.reggroup*, %struct.reggroup** %7, align 8
  %12 = load %struct.reggroup*, %struct.reggroup** @all_reggroup, align 8
  %13 = icmp eq %struct.reggroup* %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %67

15:                                               ; preds = %3
  %16 = load %struct.gdbarch*, %struct.gdbarch** %5, align 8
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @register_type(%struct.gdbarch* %16, i32 %17)
  %19 = call i32 @TYPE_VECTOR(i32 %18)
  store i32 %19, i32* %8, align 4
  %20 = load %struct.gdbarch*, %struct.gdbarch** %5, align 8
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @register_type(%struct.gdbarch* %20, i32 %21)
  %23 = call i64 @TYPE_CODE(i32 %22)
  %24 = load i64, i64* @TYPE_CODE_FLT, align 8
  %25 = icmp eq i64 %23, %24
  %26 = zext i1 %25 to i32
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @NUM_IA64_RAW_REGS, align 4
  %29 = icmp slt i32 %27, %28
  %30 = zext i1 %29 to i32
  store i32 %30, i32* %10, align 4
  %31 = load %struct.reggroup*, %struct.reggroup** %7, align 8
  %32 = load %struct.reggroup*, %struct.reggroup** @float_reggroup, align 8
  %33 = icmp eq %struct.reggroup* %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %15
  %35 = load i32, i32* %9, align 4
  store i32 %35, i32* %4, align 4
  br label %67

36:                                               ; preds = %15
  %37 = load %struct.reggroup*, %struct.reggroup** %7, align 8
  %38 = load %struct.reggroup*, %struct.reggroup** @vector_reggroup, align 8
  %39 = icmp eq %struct.reggroup* %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %36
  %41 = load i32, i32* %8, align 4
  store i32 %41, i32* %4, align 4
  br label %67

42:                                               ; preds = %36
  %43 = load %struct.reggroup*, %struct.reggroup** %7, align 8
  %44 = load %struct.reggroup*, %struct.reggroup** @general_reggroup, align 8
  %45 = icmp eq %struct.reggroup* %43, %44
  br i1 %45, label %46, label %56

46:                                               ; preds = %42
  %47 = load i32, i32* %8, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %53, label %49

49:                                               ; preds = %46
  %50 = load i32, i32* %9, align 4
  %51 = icmp ne i32 %50, 0
  %52 = xor i1 %51, true
  br label %53

53:                                               ; preds = %49, %46
  %54 = phi i1 [ false, %46 ], [ %52, %49 ]
  %55 = zext i1 %54 to i32
  store i32 %55, i32* %4, align 4
  br label %67

56:                                               ; preds = %42
  %57 = load %struct.reggroup*, %struct.reggroup** %7, align 8
  %58 = load %struct.reggroup*, %struct.reggroup** @save_reggroup, align 8
  %59 = icmp eq %struct.reggroup* %57, %58
  br i1 %59, label %64, label %60

60:                                               ; preds = %56
  %61 = load %struct.reggroup*, %struct.reggroup** %7, align 8
  %62 = load %struct.reggroup*, %struct.reggroup** @restore_reggroup, align 8
  %63 = icmp eq %struct.reggroup* %61, %62
  br i1 %63, label %64, label %66

64:                                               ; preds = %60, %56
  %65 = load i32, i32* %10, align 4
  store i32 %65, i32* %4, align 4
  br label %67

66:                                               ; preds = %60
  store i32 0, i32* %4, align 4
  br label %67

67:                                               ; preds = %66, %64, %53, %40, %34, %14
  %68 = load i32, i32* %4, align 4
  ret i32 %68
}

declare dso_local i32 @TYPE_VECTOR(i32) #1

declare dso_local i32 @register_type(%struct.gdbarch*, i32) #1

declare dso_local i64 @TYPE_CODE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
