; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_reload1.c_init_elim_table.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_reload1.c_init_elim_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elim_table = type { i64, i64, i32, i32, i8*, i8* }
%struct.elim_table_1 = type { i64, i64 }

@reg_eliminate = common dso_local global %struct.elim_table* null, align 8
@NUM_ELIMINABLE_REGS = common dso_local global i64 0, align 8
@flag_omit_frame_pointer = common dso_local global i32 0, align 4
@current_function_calls_alloca = common dso_local global i64 0, align 8
@EXIT_IGNORE_STACK = common dso_local global i64 0, align 8
@current_function_accesses_prior_frames = common dso_local global i64 0, align 8
@FRAME_POINTER_REQUIRED = common dso_local global i64 0, align 8
@frame_pointer_needed = common dso_local global i32 0, align 4
@num_eliminable = common dso_local global i64 0, align 8
@reg_eliminate_1 = common dso_local global %struct.elim_table_1* null, align 8
@Pmode = common dso_local global i32 0, align 4
@STACK_POINTER_REGNUM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @init_elim_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_elim_table() #0 {
  %1 = alloca %struct.elim_table*, align 8
  %2 = load %struct.elim_table*, %struct.elim_table** @reg_eliminate, align 8
  %3 = icmp ne %struct.elim_table* %2, null
  br i1 %3, label %7, label %4

4:                                                ; preds = %0
  %5 = load i64, i64* @NUM_ELIMINABLE_REGS, align 8
  %6 = call %struct.elim_table* @xcalloc(i32 40, i64 %5)
  store %struct.elim_table* %6, %struct.elim_table** @reg_eliminate, align 8
  br label %7

7:                                                ; preds = %4, %0
  %8 = load i32, i32* @flag_omit_frame_pointer, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %22

10:                                               ; preds = %7
  %11 = load i64, i64* @current_function_calls_alloca, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %10
  %14 = load i64, i64* @EXIT_IGNORE_STACK, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %22, label %16

16:                                               ; preds = %13, %10
  %17 = load i64, i64* @current_function_accesses_prior_frames, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %16
  %20 = load i64, i64* @FRAME_POINTER_REQUIRED, align 8
  %21 = icmp ne i64 %20, 0
  br label %22

22:                                               ; preds = %19, %16, %13, %7
  %23 = phi i1 [ true, %16 ], [ true, %13 ], [ true, %7 ], [ %21, %19 ]
  %24 = zext i1 %23 to i32
  store i32 %24, i32* @frame_pointer_needed, align 4
  store i64 0, i64* @num_eliminable, align 8
  %25 = load %struct.elim_table_1*, %struct.elim_table_1** @reg_eliminate_1, align 8
  %26 = getelementptr inbounds %struct.elim_table_1, %struct.elim_table_1* %25, i64 0
  %27 = getelementptr inbounds %struct.elim_table_1, %struct.elim_table_1* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.elim_table*, %struct.elim_table** @reg_eliminate, align 8
  %30 = getelementptr inbounds %struct.elim_table, %struct.elim_table* %29, i64 0
  %31 = getelementptr inbounds %struct.elim_table, %struct.elim_table* %30, i32 0, i32 0
  store i64 %28, i64* %31, align 8
  %32 = load %struct.elim_table_1*, %struct.elim_table_1** @reg_eliminate_1, align 8
  %33 = getelementptr inbounds %struct.elim_table_1, %struct.elim_table_1* %32, i64 0
  %34 = getelementptr inbounds %struct.elim_table_1, %struct.elim_table_1* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.elim_table*, %struct.elim_table** @reg_eliminate, align 8
  %37 = getelementptr inbounds %struct.elim_table, %struct.elim_table* %36, i64 0
  %38 = getelementptr inbounds %struct.elim_table, %struct.elim_table* %37, i32 0, i32 1
  store i64 %35, i64* %38, align 8
  %39 = load i32, i32* @frame_pointer_needed, align 4
  %40 = icmp ne i32 %39, 0
  %41 = xor i1 %40, true
  %42 = zext i1 %41 to i32
  %43 = load %struct.elim_table*, %struct.elim_table** @reg_eliminate, align 8
  %44 = getelementptr inbounds %struct.elim_table, %struct.elim_table* %43, i64 0
  %45 = getelementptr inbounds %struct.elim_table, %struct.elim_table* %44, i32 0, i32 3
  store i32 %42, i32* %45, align 4
  %46 = load %struct.elim_table*, %struct.elim_table** @reg_eliminate, align 8
  %47 = getelementptr inbounds %struct.elim_table, %struct.elim_table* %46, i64 0
  %48 = getelementptr inbounds %struct.elim_table, %struct.elim_table* %47, i32 0, i32 2
  store i32 %42, i32* %48, align 8
  %49 = load %struct.elim_table*, %struct.elim_table** @reg_eliminate, align 8
  store %struct.elim_table* %49, %struct.elim_table** %1, align 8
  br label %50

50:                                               ; preds = %77, %22
  %51 = load %struct.elim_table*, %struct.elim_table** %1, align 8
  %52 = load %struct.elim_table*, %struct.elim_table** @reg_eliminate, align 8
  %53 = load i64, i64* @NUM_ELIMINABLE_REGS, align 8
  %54 = getelementptr inbounds %struct.elim_table, %struct.elim_table* %52, i64 %53
  %55 = icmp ult %struct.elim_table* %51, %54
  br i1 %55, label %56, label %80

56:                                               ; preds = %50
  %57 = load %struct.elim_table*, %struct.elim_table** %1, align 8
  %58 = getelementptr inbounds %struct.elim_table, %struct.elim_table* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = sext i32 %59 to i64
  %61 = load i64, i64* @num_eliminable, align 8
  %62 = add nsw i64 %61, %60
  store i64 %62, i64* @num_eliminable, align 8
  %63 = load i32, i32* @Pmode, align 4
  %64 = load %struct.elim_table*, %struct.elim_table** %1, align 8
  %65 = getelementptr inbounds %struct.elim_table, %struct.elim_table* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = call i8* @gen_rtx_REG(i32 %63, i64 %66)
  %68 = load %struct.elim_table*, %struct.elim_table** %1, align 8
  %69 = getelementptr inbounds %struct.elim_table, %struct.elim_table* %68, i32 0, i32 5
  store i8* %67, i8** %69, align 8
  %70 = load i32, i32* @Pmode, align 4
  %71 = load %struct.elim_table*, %struct.elim_table** %1, align 8
  %72 = getelementptr inbounds %struct.elim_table, %struct.elim_table* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = call i8* @gen_rtx_REG(i32 %70, i64 %73)
  %75 = load %struct.elim_table*, %struct.elim_table** %1, align 8
  %76 = getelementptr inbounds %struct.elim_table, %struct.elim_table* %75, i32 0, i32 4
  store i8* %74, i8** %76, align 8
  br label %77

77:                                               ; preds = %56
  %78 = load %struct.elim_table*, %struct.elim_table** %1, align 8
  %79 = getelementptr inbounds %struct.elim_table, %struct.elim_table* %78, i32 1
  store %struct.elim_table* %79, %struct.elim_table** %1, align 8
  br label %50

80:                                               ; preds = %50
  ret void
}

declare dso_local %struct.elim_table* @xcalloc(i32, i64) #1

declare dso_local i8* @gen_rtx_REG(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
