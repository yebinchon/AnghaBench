; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_function.c_assign_parm_find_stack_rtl.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_function.c_assign_parm_find_stack_rtl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.assign_parm_data_one = type { i64, i64, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i64, i32, i32 }

@current_function_internal_arg_pointer = common dso_local global i64 0, align 8
@const0_rtx = common dso_local global i64 0, align 8
@Pmode = common dso_local global i32 0, align 4
@BITS_PER_UNIT = common dso_local global i32 0, align 4
@downward = common dso_local global i64 0, align 8
@CONST_INT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.assign_parm_data_one*)* @assign_parm_find_stack_rtl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @assign_parm_find_stack_rtl(i32 %0, %struct.assign_parm_data_one* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.assign_parm_data_one*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.assign_parm_data_one* %1, %struct.assign_parm_data_one** %4, align 8
  %9 = load %struct.assign_parm_data_one*, %struct.assign_parm_data_one** %4, align 8
  %10 = getelementptr inbounds %struct.assign_parm_data_one, %struct.assign_parm_data_one* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %2
  %14 = load %struct.assign_parm_data_one*, %struct.assign_parm_data_one** %4, align 8
  %15 = getelementptr inbounds %struct.assign_parm_data_one, %struct.assign_parm_data_one* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @ARGS_SIZE_RTX(i32 %17)
  store i64 %18, i64* %5, align 8
  br label %25

19:                                               ; preds = %2
  %20 = load %struct.assign_parm_data_one*, %struct.assign_parm_data_one** %4, align 8
  %21 = getelementptr inbounds %struct.assign_parm_data_one, %struct.assign_parm_data_one* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = call i64 @ARGS_SIZE_RTX(i32 %23)
  store i64 %24, i64* %5, align 8
  br label %25

25:                                               ; preds = %19, %13
  %26 = load i64, i64* @current_function_internal_arg_pointer, align 8
  store i64 %26, i64* %6, align 8
  %27 = load i64, i64* %5, align 8
  %28 = load i64, i64* @const0_rtx, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %35

30:                                               ; preds = %25
  %31 = load i32, i32* @Pmode, align 4
  %32 = load i64, i64* %6, align 8
  %33 = load i64, i64* %5, align 8
  %34 = call i64 @gen_rtx_PLUS(i32 %31, i64 %32, i64 %33)
  store i64 %34, i64* %6, align 8
  br label %35

35:                                               ; preds = %30, %25
  %36 = load %struct.assign_parm_data_one*, %struct.assign_parm_data_one** %4, align 8
  %37 = getelementptr inbounds %struct.assign_parm_data_one, %struct.assign_parm_data_one* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 8
  %39 = load i64, i64* %6, align 8
  %40 = call i64 @gen_rtx_MEM(i32 %38, i64 %39)
  store i64 %40, i64* %6, align 8
  %41 = load i64, i64* %6, align 8
  %42 = load i32, i32* %3, align 4
  %43 = call i32 @set_mem_attributes(i64 %41, i32 %42, i32 1)
  %44 = load %struct.assign_parm_data_one*, %struct.assign_parm_data_one** %4, align 8
  %45 = getelementptr inbounds %struct.assign_parm_data_one, %struct.assign_parm_data_one* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  store i32 %47, i32* %8, align 4
  %48 = load i32, i32* @BITS_PER_UNIT, align 4
  store i32 %48, i32* %7, align 4
  %49 = load %struct.assign_parm_data_one*, %struct.assign_parm_data_one** %4, align 8
  %50 = getelementptr inbounds %struct.assign_parm_data_one, %struct.assign_parm_data_one* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @downward, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %60, label %55

55:                                               ; preds = %35
  %56 = load %struct.assign_parm_data_one*, %struct.assign_parm_data_one** %4, align 8
  %57 = getelementptr inbounds %struct.assign_parm_data_one, %struct.assign_parm_data_one* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %55, %35
  %61 = load i32, i32* %8, align 4
  store i32 %61, i32* %7, align 4
  br label %79

62:                                               ; preds = %55
  %63 = load i64, i64* %5, align 8
  %64 = call i64 @GET_CODE(i64 %63)
  %65 = load i64, i64* @CONST_INT, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %78

67:                                               ; preds = %62
  %68 = load i64, i64* %5, align 8
  %69 = call i32 @INTVAL(i64 %68)
  %70 = load i32, i32* @BITS_PER_UNIT, align 4
  %71 = mul i32 %69, %70
  %72 = load i32, i32* %8, align 4
  %73 = or i32 %71, %72
  store i32 %73, i32* %7, align 4
  %74 = load i32, i32* %7, align 4
  %75 = load i32, i32* %7, align 4
  %76 = sub i32 0, %75
  %77 = and i32 %74, %76
  store i32 %77, i32* %7, align 4
  br label %78

78:                                               ; preds = %67, %62
  br label %79

79:                                               ; preds = %78, %60
  %80 = load i64, i64* %6, align 8
  %81 = load i32, i32* %7, align 4
  %82 = call i32 @set_mem_align(i64 %80, i32 %81)
  %83 = load %struct.assign_parm_data_one*, %struct.assign_parm_data_one** %4, align 8
  %84 = getelementptr inbounds %struct.assign_parm_data_one, %struct.assign_parm_data_one* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %93

87:                                               ; preds = %79
  %88 = load %struct.assign_parm_data_one*, %struct.assign_parm_data_one** %4, align 8
  %89 = getelementptr inbounds %struct.assign_parm_data_one, %struct.assign_parm_data_one* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* %6, align 8
  %92 = call i32 @set_reg_attrs_for_parm(i64 %90, i64 %91)
  br label %93

93:                                               ; preds = %87, %79
  %94 = load i64, i64* %6, align 8
  %95 = load %struct.assign_parm_data_one*, %struct.assign_parm_data_one** %4, align 8
  %96 = getelementptr inbounds %struct.assign_parm_data_one, %struct.assign_parm_data_one* %95, i32 0, i32 0
  store i64 %94, i64* %96, align 8
  ret void
}

declare dso_local i64 @ARGS_SIZE_RTX(i32) #1

declare dso_local i64 @gen_rtx_PLUS(i32, i64, i64) #1

declare dso_local i64 @gen_rtx_MEM(i32, i64) #1

declare dso_local i32 @set_mem_attributes(i64, i32, i32) #1

declare dso_local i64 @GET_CODE(i64) #1

declare dso_local i32 @INTVAL(i64) #1

declare dso_local i32 @set_mem_align(i64, i32) #1

declare dso_local i32 @set_reg_attrs_for_parm(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
