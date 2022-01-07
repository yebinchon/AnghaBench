; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_function.c_assign_parm_adjust_stack_rtl.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_function.c_assign_parm_adjust_stack_rtl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.assign_parm_data_one = type { i64, i64, i32*, i64, i64, i32* }

@STRICT_ALIGNMENT = common dso_local global i64 0, align 8
@PREFERRED_STACK_BOUNDARY = common dso_local global i64 0, align 8
@BLKmode = common dso_local global i64 0, align 8
@cfun = common dso_local global %struct.TYPE_2__* null, align 8
@flag_stack_protect = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.assign_parm_data_one*)* @assign_parm_adjust_stack_rtl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @assign_parm_adjust_stack_rtl(%struct.assign_parm_data_one* %0) #0 {
  %2 = alloca %struct.assign_parm_data_one*, align 8
  %3 = alloca i32*, align 8
  store %struct.assign_parm_data_one* %0, %struct.assign_parm_data_one** %2, align 8
  %4 = load %struct.assign_parm_data_one*, %struct.assign_parm_data_one** %2, align 8
  %5 = getelementptr inbounds %struct.assign_parm_data_one, %struct.assign_parm_data_one* %4, i32 0, i32 2
  %6 = load i32*, i32** %5, align 8
  store i32* %6, i32** %3, align 8
  %7 = load i32*, i32** %3, align 8
  %8 = icmp ne i32* %7, null
  br i1 %8, label %9, label %39

9:                                                ; preds = %1
  %10 = load i64, i64* @STRICT_ALIGNMENT, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %20

12:                                               ; preds = %9
  %13 = load %struct.assign_parm_data_one*, %struct.assign_parm_data_one** %2, align 8
  %14 = getelementptr inbounds %struct.assign_parm_data_one, %struct.assign_parm_data_one* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = call i64 @GET_MODE_ALIGNMENT(i64 %15)
  %17 = load i32*, i32** %3, align 8
  %18 = call i64 @MEM_ALIGN(i32* %17)
  %19 = icmp sgt i64 %16, %18
  br i1 %19, label %38, label %20

20:                                               ; preds = %12, %9
  %21 = load %struct.assign_parm_data_one*, %struct.assign_parm_data_one** %2, align 8
  %22 = getelementptr inbounds %struct.assign_parm_data_one, %struct.assign_parm_data_one* %21, i32 0, i32 3
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %39

25:                                               ; preds = %20
  %26 = load %struct.assign_parm_data_one*, %struct.assign_parm_data_one** %2, align 8
  %27 = getelementptr inbounds %struct.assign_parm_data_one, %struct.assign_parm_data_one* %26, i32 0, i32 3
  %28 = load i64, i64* %27, align 8
  %29 = call i64 @TYPE_ALIGN(i64 %28)
  %30 = load i32*, i32** %3, align 8
  %31 = call i64 @MEM_ALIGN(i32* %30)
  %32 = icmp sgt i64 %29, %31
  br i1 %32, label %33, label %39

33:                                               ; preds = %25
  %34 = load i32*, i32** %3, align 8
  %35 = call i64 @MEM_ALIGN(i32* %34)
  %36 = load i64, i64* @PREFERRED_STACK_BOUNDARY, align 8
  %37 = icmp slt i64 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %33, %12
  store i32* null, i32** %3, align 8
  br label %82

39:                                               ; preds = %33, %25, %20, %1
  %40 = load %struct.assign_parm_data_one*, %struct.assign_parm_data_one** %2, align 8
  %41 = getelementptr inbounds %struct.assign_parm_data_one, %struct.assign_parm_data_one* %40, i32 0, i32 5
  %42 = load i32*, i32** %41, align 8
  %43 = load i32*, i32** %3, align 8
  %44 = icmp eq i32* %42, %43
  br i1 %44, label %45, label %60

45:                                               ; preds = %39
  %46 = load %struct.assign_parm_data_one*, %struct.assign_parm_data_one** %2, align 8
  %47 = getelementptr inbounds %struct.assign_parm_data_one, %struct.assign_parm_data_one* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @BLKmode, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %60

51:                                               ; preds = %45
  %52 = load %struct.assign_parm_data_one*, %struct.assign_parm_data_one** %2, align 8
  %53 = getelementptr inbounds %struct.assign_parm_data_one, %struct.assign_parm_data_one* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.assign_parm_data_one*, %struct.assign_parm_data_one** %2, align 8
  %56 = getelementptr inbounds %struct.assign_parm_data_one, %struct.assign_parm_data_one* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %54, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %51
  store i32* null, i32** %3, align 8
  br label %81

60:                                               ; preds = %51, %45, %39
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cfun, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %80

65:                                               ; preds = %60
  %66 = load i32, i32* @flag_stack_protect, align 4
  %67 = icmp eq i32 %66, 2
  br i1 %67, label %79, label %68

68:                                               ; preds = %65
  %69 = load %struct.assign_parm_data_one*, %struct.assign_parm_data_one** %2, align 8
  %70 = getelementptr inbounds %struct.assign_parm_data_one, %struct.assign_parm_data_one* %69, i32 0, i32 4
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %79, label %73

73:                                               ; preds = %68
  %74 = load %struct.assign_parm_data_one*, %struct.assign_parm_data_one** %2, align 8
  %75 = getelementptr inbounds %struct.assign_parm_data_one, %struct.assign_parm_data_one* %74, i32 0, i32 3
  %76 = load i64, i64* %75, align 8
  %77 = call i64 @POINTER_TYPE_P(i64 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %73, %68, %65
  store i32* null, i32** %3, align 8
  br label %80

80:                                               ; preds = %79, %73, %60
  br label %81

81:                                               ; preds = %80, %59
  br label %82

82:                                               ; preds = %81, %38
  %83 = load i32*, i32** %3, align 8
  %84 = load %struct.assign_parm_data_one*, %struct.assign_parm_data_one** %2, align 8
  %85 = getelementptr inbounds %struct.assign_parm_data_one, %struct.assign_parm_data_one* %84, i32 0, i32 2
  store i32* %83, i32** %85, align 8
  ret void
}

declare dso_local i64 @GET_MODE_ALIGNMENT(i64) #1

declare dso_local i64 @MEM_ALIGN(i32*) #1

declare dso_local i64 @TYPE_ALIGN(i64) #1

declare dso_local i64 @POINTER_TYPE_P(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
