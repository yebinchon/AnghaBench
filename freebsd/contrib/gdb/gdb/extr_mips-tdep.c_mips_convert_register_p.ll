; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_mips-tdep.c_mips_convert_register_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_mips-tdep.c_mips_convert_register_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.type = type { i32 }
%struct.TYPE_2__ = type { i32 }

@TARGET_BYTE_ORDER = common dso_local global i64 0, align 8
@BFD_ENDIAN_BIG = common dso_local global i64 0, align 8
@current_gdbarch = common dso_local global i32 0, align 4
@NUM_REGS = common dso_local global i32 0, align 4
@TYPE_CODE_FLT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.type*)* @mips_convert_register_p to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mips_convert_register_p(i32 %0, %struct.type* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.type*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.type* %1, %struct.type** %4, align 8
  %5 = load i64, i64* @TARGET_BYTE_ORDER, align 8
  %6 = load i64, i64* @BFD_ENDIAN_BIG, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %8, label %41

8:                                                ; preds = %2
  %9 = load i32, i32* @current_gdbarch, align 4
  %10 = load i32, i32* %3, align 4
  %11 = call i32 @register_size(i32 %9, i32 %10)
  %12 = icmp eq i32 %11, 4
  br i1 %12, label %13, label %41

13:                                               ; preds = %8
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* @NUM_REGS, align 4
  %16 = srem i32 %14, %15
  %17 = load i32, i32* @current_gdbarch, align 4
  %18 = call %struct.TYPE_2__* @mips_regnum(i32 %17)
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp sge i32 %16, %20
  br i1 %21, label %22, label %41

22:                                               ; preds = %13
  %23 = load i32, i32* %3, align 4
  %24 = load i32, i32* @NUM_REGS, align 4
  %25 = srem i32 %23, %24
  %26 = load i32, i32* @current_gdbarch, align 4
  %27 = call %struct.TYPE_2__* @mips_regnum(i32 %26)
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = add nsw i32 %29, 32
  %31 = icmp slt i32 %25, %30
  br i1 %31, label %32, label %41

32:                                               ; preds = %22
  %33 = load %struct.type*, %struct.type** %4, align 8
  %34 = call i64 @TYPE_CODE(%struct.type* %33)
  %35 = load i64, i64* @TYPE_CODE_FLT, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %32
  %38 = load %struct.type*, %struct.type** %4, align 8
  %39 = call i32 @TYPE_LENGTH(%struct.type* %38)
  %40 = icmp eq i32 %39, 8
  br label %41

41:                                               ; preds = %37, %32, %22, %13, %8, %2
  %42 = phi i1 [ false, %32 ], [ false, %22 ], [ false, %13 ], [ false, %8 ], [ false, %2 ], [ %40, %37 ]
  %43 = zext i1 %42 to i32
  ret i32 %43
}

declare dso_local i32 @register_size(i32, i32) #1

declare dso_local %struct.TYPE_2__* @mips_regnum(i32) #1

declare dso_local i64 @TYPE_CODE(%struct.type*) #1

declare dso_local i32 @TYPE_LENGTH(%struct.type*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
