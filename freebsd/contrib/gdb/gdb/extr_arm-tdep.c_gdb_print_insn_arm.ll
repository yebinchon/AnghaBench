; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_arm-tdep.c_gdb_print_insn_arm.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_arm-tdep.c_gdb_print_insn_arm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.coff_symbol_struct = type { %struct.TYPE_12__, %struct.TYPE_14__* }
%struct.TYPE_12__ = type { i8*, %struct.bfd* }
%struct.bfd = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_13__ = type { i32** }

@gdb_print_insn_arm.asym = internal global i32* null, align 8
@gdb_print_insn_arm.ce = internal global %struct.TYPE_14__ zeroinitializer, align 4
@gdb_print_insn_arm.csym = internal global %struct.coff_symbol_struct zeroinitializer, align 8
@gdb_print_insn_arm.fake_bfd = internal global %struct.bfd zeroinitializer, align 8
@gdb_print_insn_arm.fake_target = internal global %struct.TYPE_15__ zeroinitializer, align 4
@bfd_target_coff_flavour = common dso_local global i32 0, align 4
@C_THUMBEXTFUNC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"fake\00", align 1
@TARGET_BYTE_ORDER = common dso_local global i64 0, align 8
@BFD_ENDIAN_BIG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_13__*)* @gdb_print_insn_arm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gdb_print_insn_arm(i32 %0, %struct.TYPE_13__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_13__*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %5, align 8
  %6 = load i32, i32* %4, align 4
  %7 = call i64 @arm_pc_is_thumb(i32 %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %20

9:                                                ; preds = %2
  %10 = load %struct.TYPE_14__*, %struct.TYPE_14__** getelementptr inbounds (%struct.coff_symbol_struct, %struct.coff_symbol_struct* @gdb_print_insn_arm.csym, i32 0, i32 1), align 8
  %11 = icmp eq %struct.TYPE_14__* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %9
  %13 = load i32, i32* @bfd_target_coff_flavour, align 4
  store i32 %13, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @gdb_print_insn_arm.fake_target, i32 0, i32 0), align 4
  store %struct.TYPE_15__* @gdb_print_insn_arm.fake_target, %struct.TYPE_15__** getelementptr inbounds (%struct.bfd, %struct.bfd* @gdb_print_insn_arm.fake_bfd, i32 0, i32 0), align 8
  %14 = load i32, i32* @C_THUMBEXTFUNC, align 4
  store i32 %14, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @gdb_print_insn_arm.ce, i32 0, i32 0, i32 0, i32 0), align 4
  store %struct.TYPE_14__* @gdb_print_insn_arm.ce, %struct.TYPE_14__** getelementptr inbounds (%struct.coff_symbol_struct, %struct.coff_symbol_struct* @gdb_print_insn_arm.csym, i32 0, i32 1), align 8
  store %struct.bfd* @gdb_print_insn_arm.fake_bfd, %struct.bfd** getelementptr inbounds (%struct.coff_symbol_struct, %struct.coff_symbol_struct* @gdb_print_insn_arm.csym, i32 0, i32 0, i32 1), align 8
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** getelementptr inbounds (%struct.coff_symbol_struct, %struct.coff_symbol_struct* @gdb_print_insn_arm.csym, i32 0, i32 0, i32 0), align 8
  store i32* bitcast (%struct.coff_symbol_struct* @gdb_print_insn_arm.csym to i32*), i32** @gdb_print_insn_arm.asym, align 8
  br label %15

15:                                               ; preds = %12, %9
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @UNMAKE_THUMB_ADDR(i32 %16)
  store i32 %17, i32* %4, align 4
  %18 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %18, i32 0, i32 0
  store i32** @gdb_print_insn_arm.asym, i32*** %19, align 8
  br label %23

20:                                               ; preds = %2
  %21 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %21, i32 0, i32 0
  store i32** null, i32*** %22, align 8
  br label %23

23:                                               ; preds = %20, %15
  %24 = load i64, i64* @TARGET_BYTE_ORDER, align 8
  %25 = load i64, i64* @BFD_ENDIAN_BIG, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %23
  %28 = load i32, i32* %4, align 4
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %30 = call i32 @print_insn_big_arm(i32 %28, %struct.TYPE_13__* %29)
  store i32 %30, i32* %3, align 4
  br label %35

31:                                               ; preds = %23
  %32 = load i32, i32* %4, align 4
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %34 = call i32 @print_insn_little_arm(i32 %32, %struct.TYPE_13__* %33)
  store i32 %34, i32* %3, align 4
  br label %35

35:                                               ; preds = %31, %27
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local i64 @arm_pc_is_thumb(i32) #1

declare dso_local i32 @UNMAKE_THUMB_ADDR(i32) #1

declare dso_local i32 @print_insn_big_arm(i32, %struct.TYPE_13__*) #1

declare dso_local i32 @print_insn_little_arm(i32, %struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
