; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_i386-tdep.c_i386_reg_struct_return_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_i386-tdep.c_i386_reg_struct_return_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gdbarch = type { i32 }
%struct.type = type { i32 }
%struct.gdbarch_tdep = type { i64 }

@TYPE_CODE_STRUCT = common dso_local global i32 0, align 4
@TYPE_CODE_UNION = common dso_local global i32 0, align 4
@struct_convention = common dso_local global i64 0, align 8
@pcc_struct_convention = common dso_local global i64 0, align 8
@default_struct_convention = common dso_local global i64 0, align 8
@pcc_struct_return = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gdbarch*, %struct.type*)* @i386_reg_struct_return_p to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i386_reg_struct_return_p(%struct.gdbarch* %0, %struct.type* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gdbarch*, align 8
  %5 = alloca %struct.type*, align 8
  %6 = alloca %struct.gdbarch_tdep*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.gdbarch* %0, %struct.gdbarch** %4, align 8
  store %struct.type* %1, %struct.type** %5, align 8
  %9 = load %struct.gdbarch*, %struct.gdbarch** %4, align 8
  %10 = call %struct.gdbarch_tdep* @gdbarch_tdep(%struct.gdbarch* %9)
  store %struct.gdbarch_tdep* %10, %struct.gdbarch_tdep** %6, align 8
  %11 = load %struct.type*, %struct.type** %5, align 8
  %12 = call i32 @TYPE_CODE(%struct.type* %11)
  store i32 %12, i32* %7, align 4
  %13 = load %struct.type*, %struct.type** %5, align 8
  %14 = call i32 @TYPE_LENGTH(%struct.type* %13)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* @TYPE_CODE_STRUCT, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %22, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* @TYPE_CODE_UNION, align 4
  %21 = icmp eq i32 %19, %20
  br label %22

22:                                               ; preds = %18, %2
  %23 = phi i1 [ true, %2 ], [ %21, %18 ]
  %24 = zext i1 %23 to i32
  %25 = call i32 @gdb_assert(i32 %24)
  %26 = load i64, i64* @struct_convention, align 8
  %27 = load i64, i64* @pcc_struct_convention, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %39, label %29

29:                                               ; preds = %22
  %30 = load i64, i64* @struct_convention, align 8
  %31 = load i64, i64* @default_struct_convention, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %40

33:                                               ; preds = %29
  %34 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %6, align 8
  %35 = getelementptr inbounds %struct.gdbarch_tdep, %struct.gdbarch_tdep* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @pcc_struct_return, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %33, %22
  store i32 0, i32* %3, align 4
  br label %55

40:                                               ; preds = %33, %29
  %41 = load i32, i32* %8, align 4
  %42 = icmp eq i32 %41, 1
  br i1 %42, label %52, label %43

43:                                               ; preds = %40
  %44 = load i32, i32* %8, align 4
  %45 = icmp eq i32 %44, 2
  br i1 %45, label %52, label %46

46:                                               ; preds = %43
  %47 = load i32, i32* %8, align 4
  %48 = icmp eq i32 %47, 4
  br i1 %48, label %52, label %49

49:                                               ; preds = %46
  %50 = load i32, i32* %8, align 4
  %51 = icmp eq i32 %50, 8
  br label %52

52:                                               ; preds = %49, %46, %43, %40
  %53 = phi i1 [ true, %46 ], [ true, %43 ], [ true, %40 ], [ %51, %49 ]
  %54 = zext i1 %53 to i32
  store i32 %54, i32* %3, align 4
  br label %55

55:                                               ; preds = %52, %39
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local %struct.gdbarch_tdep* @gdbarch_tdep(%struct.gdbarch*) #1

declare dso_local i32 @TYPE_CODE(%struct.type*) #1

declare dso_local i32 @TYPE_LENGTH(%struct.type*) #1

declare dso_local i32 @gdb_assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
