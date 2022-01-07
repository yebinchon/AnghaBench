; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_i386-tdep.c_i386_register_reggroup_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_i386-tdep.c_i386_register_reggroup_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.reggroup = type { i32 }
%struct.gdbarch = type { i32 }

@i386_mmx_reggroup = common dso_local global %struct.reggroup* null, align 8
@i386_sse_reggroup = common dso_local global %struct.reggroup* null, align 8
@vector_reggroup = common dso_local global %struct.reggroup* null, align 8
@float_reggroup = common dso_local global %struct.reggroup* null, align 8
@general_reggroup = common dso_local global %struct.reggroup* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i386_register_reggroup_p(%struct.gdbarch* %0, i32 %1, %struct.reggroup* %2) #0 {
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
  %11 = load %struct.gdbarch*, %struct.gdbarch** %5, align 8
  %12 = load i32, i32* %6, align 4
  %13 = call i64 @i386_sse_regnum_p(%struct.gdbarch* %11, i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %3
  %16 = load %struct.gdbarch*, %struct.gdbarch** %5, align 8
  %17 = load i32, i32* %6, align 4
  %18 = call i64 @i386_mxcsr_regnum_p(%struct.gdbarch* %16, i32 %17)
  %19 = icmp ne i64 %18, 0
  br label %20

20:                                               ; preds = %15, %3
  %21 = phi i1 [ true, %3 ], [ %19, %15 ]
  %22 = zext i1 %21 to i32
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %6, align 4
  %24 = call i64 @i386_fp_regnum_p(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %20
  %27 = load i32, i32* %6, align 4
  %28 = call i64 @i386_fpc_regnum_p(i32 %27)
  %29 = icmp ne i64 %28, 0
  br label %30

30:                                               ; preds = %26, %20
  %31 = phi i1 [ true, %20 ], [ %29, %26 ]
  %32 = zext i1 %31 to i32
  store i32 %32, i32* %9, align 4
  %33 = load %struct.gdbarch*, %struct.gdbarch** %5, align 8
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @i386_mmx_regnum_p(%struct.gdbarch* %33, i32 %34)
  store i32 %35, i32* %10, align 4
  %36 = load %struct.reggroup*, %struct.reggroup** %7, align 8
  %37 = load %struct.reggroup*, %struct.reggroup** @i386_mmx_reggroup, align 8
  %38 = icmp eq %struct.reggroup* %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %30
  %40 = load i32, i32* %10, align 4
  store i32 %40, i32* %4, align 4
  br label %88

41:                                               ; preds = %30
  %42 = load %struct.reggroup*, %struct.reggroup** %7, align 8
  %43 = load %struct.reggroup*, %struct.reggroup** @i386_sse_reggroup, align 8
  %44 = icmp eq %struct.reggroup* %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %41
  %46 = load i32, i32* %8, align 4
  store i32 %46, i32* %4, align 4
  br label %88

47:                                               ; preds = %41
  %48 = load %struct.reggroup*, %struct.reggroup** %7, align 8
  %49 = load %struct.reggroup*, %struct.reggroup** @vector_reggroup, align 8
  %50 = icmp eq %struct.reggroup* %48, %49
  br i1 %50, label %51, label %60

51:                                               ; preds = %47
  %52 = load i32, i32* %10, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %57, label %54

54:                                               ; preds = %51
  %55 = load i32, i32* %8, align 4
  %56 = icmp ne i32 %55, 0
  br label %57

57:                                               ; preds = %54, %51
  %58 = phi i1 [ true, %51 ], [ %56, %54 ]
  %59 = zext i1 %58 to i32
  store i32 %59, i32* %4, align 4
  br label %88

60:                                               ; preds = %47
  %61 = load %struct.reggroup*, %struct.reggroup** %7, align 8
  %62 = load %struct.reggroup*, %struct.reggroup** @float_reggroup, align 8
  %63 = icmp eq %struct.reggroup* %61, %62
  br i1 %63, label %64, label %66

64:                                               ; preds = %60
  %65 = load i32, i32* %9, align 4
  store i32 %65, i32* %4, align 4
  br label %88

66:                                               ; preds = %60
  %67 = load %struct.reggroup*, %struct.reggroup** %7, align 8
  %68 = load %struct.reggroup*, %struct.reggroup** @general_reggroup, align 8
  %69 = icmp eq %struct.reggroup* %67, %68
  br i1 %69, label %70, label %83

70:                                               ; preds = %66
  %71 = load i32, i32* %9, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %80, label %73

73:                                               ; preds = %70
  %74 = load i32, i32* %10, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %80, label %76

76:                                               ; preds = %73
  %77 = load i32, i32* %8, align 4
  %78 = icmp ne i32 %77, 0
  %79 = xor i1 %78, true
  br label %80

80:                                               ; preds = %76, %73, %70
  %81 = phi i1 [ false, %73 ], [ false, %70 ], [ %79, %76 ]
  %82 = zext i1 %81 to i32
  store i32 %82, i32* %4, align 4
  br label %88

83:                                               ; preds = %66
  %84 = load %struct.gdbarch*, %struct.gdbarch** %5, align 8
  %85 = load i32, i32* %6, align 4
  %86 = load %struct.reggroup*, %struct.reggroup** %7, align 8
  %87 = call i32 @default_register_reggroup_p(%struct.gdbarch* %84, i32 %85, %struct.reggroup* %86)
  store i32 %87, i32* %4, align 4
  br label %88

88:                                               ; preds = %83, %80, %64, %57, %45, %39
  %89 = load i32, i32* %4, align 4
  ret i32 %89
}

declare dso_local i64 @i386_sse_regnum_p(%struct.gdbarch*, i32) #1

declare dso_local i64 @i386_mxcsr_regnum_p(%struct.gdbarch*, i32) #1

declare dso_local i64 @i386_fp_regnum_p(i32) #1

declare dso_local i64 @i386_fpc_regnum_p(i32) #1

declare dso_local i32 @i386_mmx_regnum_p(%struct.gdbarch*, i32) #1

declare dso_local i32 @default_register_reggroup_p(%struct.gdbarch*, i32, %struct.reggroup*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
