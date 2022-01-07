; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ppcfbsd-tdep.c_ppcfbsd_regset_from_core_section.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ppcfbsd-tdep.c_ppcfbsd_regset_from_core_section.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regset = type { i32 }
%struct.gdbarch = type { i32 }
%struct.gdbarch_tdep = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c".reg\00", align 1
@SIZEOF_STRUCT_REG = common dso_local global i64 0, align 8
@ppcfbsd_gregset = common dso_local global %struct.regset zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c".reg2\00", align 1
@SIZEOF_STRUCT_FPREG = common dso_local global i64 0, align 8
@ppcfbsd_fpregset = common dso_local global %struct.regset zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.regset* @ppcfbsd_regset_from_core_section(%struct.gdbarch* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.regset*, align 8
  %5 = alloca %struct.gdbarch*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.gdbarch_tdep*, align 8
  store %struct.gdbarch* %0, %struct.gdbarch** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load %struct.gdbarch*, %struct.gdbarch** %5, align 8
  %10 = call %struct.gdbarch_tdep* @gdbarch_tdep(%struct.gdbarch* %9)
  store %struct.gdbarch_tdep* %10, %struct.gdbarch_tdep** %8, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = call i64 @strcmp(i8* %11, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %3
  %15 = load i64, i64* %7, align 8
  %16 = load i64, i64* @SIZEOF_STRUCT_REG, align 8
  %17 = icmp uge i64 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  store %struct.regset* @ppcfbsd_gregset, %struct.regset** %4, align 8
  br label %29

19:                                               ; preds = %14, %3
  %20 = load i8*, i8** %6, align 8
  %21 = call i64 @strcmp(i8* %20, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %19
  %24 = load i64, i64* %7, align 8
  %25 = load i64, i64* @SIZEOF_STRUCT_FPREG, align 8
  %26 = icmp uge i64 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  store %struct.regset* @ppcfbsd_fpregset, %struct.regset** %4, align 8
  br label %29

28:                                               ; preds = %23, %19
  store %struct.regset* null, %struct.regset** %4, align 8
  br label %29

29:                                               ; preds = %28, %27, %18
  %30 = load %struct.regset*, %struct.regset** %4, align 8
  ret %struct.regset* %30
}

declare dso_local %struct.gdbarch_tdep* @gdbarch_tdep(%struct.gdbarch*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
