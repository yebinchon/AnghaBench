; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_corelow.c_get_core_registers.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_corelow.c_get_core_registers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32* }

@core_gdbarch = common dso_local global i64 0, align 8
@core_vec = common dso_local global %struct.TYPE_2__* null, align 8
@gdb_stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"Can't fetch registers from this type of core file\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c".reg\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"general-purpose\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c".reg2\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"floating-point\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c".reg-xfp\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"extended floating-point\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @get_core_registers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_core_registers(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i64, i64* @core_gdbarch, align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %10

6:                                                ; preds = %1
  %7 = load i64, i64* @core_gdbarch, align 8
  %8 = call i64 @gdbarch_regset_from_core_section_p(i64 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %21, label %10

10:                                               ; preds = %6, %1
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** @core_vec, align 8
  %12 = icmp eq %struct.TYPE_2__* %11, null
  br i1 %12, label %18, label %13

13:                                               ; preds = %10
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** @core_vec, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %13, %10
  %19 = load i32, i32* @gdb_stderr, align 4
  %20 = call i32 @fprintf_filtered(i32 %19, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  br label %26

21:                                               ; preds = %13, %6
  %22 = call i32 @get_core_register_section(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 1)
  %23 = call i32 @get_core_register_section(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 2, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i32 0)
  %24 = call i32 @get_core_register_section(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i32 3, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0), i32 0)
  %25 = call i32 (...) @deprecated_registers_fetched()
  br label %26

26:                                               ; preds = %21, %18
  ret void
}

declare dso_local i64 @gdbarch_regset_from_core_section_p(i64) #1

declare dso_local i32 @fprintf_filtered(i32, i8*) #1

declare dso_local i32 @get_core_register_section(i8*, i32, i8*, i32) #1

declare dso_local i32 @deprecated_registers_fetched(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
