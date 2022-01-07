; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-arm.c_do_vfp_nsyn_opcode.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-arm.c_do_vfp_nsyn_opcode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.asm_opcode = type { i32, i32, i32 (...)*, i32 (...)*, i32*, i32* }

@arm_ops_hsh = common dso_local global i32 0, align 4
@cpu_variant = common dso_local global i32 0, align 4
@thumb_mode = common dso_local global i64 0, align 8
@BAD_FPU = common dso_local global i32 0, align 4
@inst = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @do_vfp_nsyn_opcode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_vfp_nsyn_opcode(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.asm_opcode*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i32, i32* @arm_ops_hsh, align 4
  %5 = load i8*, i8** %2, align 8
  %6 = call %struct.asm_opcode* @hash_find(i32 %4, i8* %5)
  store %struct.asm_opcode* %6, %struct.asm_opcode** %3, align 8
  %7 = load %struct.asm_opcode*, %struct.asm_opcode** %3, align 8
  %8 = icmp ne %struct.asm_opcode* %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %1
  %10 = call i32 (...) @abort() #3
  unreachable

11:                                               ; preds = %1
  %12 = load i32, i32* @cpu_variant, align 4
  %13 = load i64, i64* @thumb_mode, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %11
  %16 = load %struct.asm_opcode*, %struct.asm_opcode** %3, align 8
  %17 = getelementptr inbounds %struct.asm_opcode, %struct.asm_opcode* %16, i32 0, i32 5
  %18 = load i32*, i32** %17, align 8
  %19 = load i32, i32* %18, align 4
  br label %25

20:                                               ; preds = %11
  %21 = load %struct.asm_opcode*, %struct.asm_opcode** %3, align 8
  %22 = getelementptr inbounds %struct.asm_opcode, %struct.asm_opcode* %21, i32 0, i32 4
  %23 = load i32*, i32** %22, align 8
  %24 = load i32, i32* %23, align 4
  br label %25

25:                                               ; preds = %20, %15
  %26 = phi i32 [ %19, %15 ], [ %24, %20 ]
  %27 = call i32 @ARM_CPU_HAS_FEATURE(i32 %12, i32 %26)
  %28 = icmp ne i32 %27, 0
  %29 = xor i1 %28, true
  %30 = zext i1 %29 to i32
  %31 = load i32, i32* @BAD_FPU, align 4
  %32 = call i32 @_(i32 %31)
  %33 = call i32 @constraint(i32 %30, i32 %32)
  %34 = load i64, i64* @thumb_mode, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %44

36:                                               ; preds = %25
  %37 = load %struct.asm_opcode*, %struct.asm_opcode** %3, align 8
  %38 = getelementptr inbounds %struct.asm_opcode, %struct.asm_opcode* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  store i32 %39, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @inst, i32 0, i32 0), align 4
  %40 = load %struct.asm_opcode*, %struct.asm_opcode** %3, align 8
  %41 = getelementptr inbounds %struct.asm_opcode, %struct.asm_opcode* %40, i32 0, i32 3
  %42 = load i32 (...)*, i32 (...)** %41, align 8
  %43 = call i32 (...) %42()
  br label %55

44:                                               ; preds = %25
  %45 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @inst, i32 0, i32 1), align 4
  %46 = shl i32 %45, 28
  %47 = load %struct.asm_opcode*, %struct.asm_opcode** %3, align 8
  %48 = getelementptr inbounds %struct.asm_opcode, %struct.asm_opcode* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = or i32 %46, %49
  store i32 %50, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @inst, i32 0, i32 0), align 4
  %51 = load %struct.asm_opcode*, %struct.asm_opcode** %3, align 8
  %52 = getelementptr inbounds %struct.asm_opcode, %struct.asm_opcode* %51, i32 0, i32 2
  %53 = load i32 (...)*, i32 (...)** %52, align 8
  %54 = call i32 (...) %53()
  br label %55

55:                                               ; preds = %44, %36
  ret void
}

declare dso_local %struct.asm_opcode* @hash_find(i32, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

declare dso_local i32 @constraint(i32, i32) #1

declare dso_local i32 @ARM_CPU_HAS_FEATURE(i32, i32) #1

declare dso_local i32 @_(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
