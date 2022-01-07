; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_rtlanal.c_rtx_addr_can_trap_p_1.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_rtlanal.c_rtx_addr_can_trap_p_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@frame_pointer_rtx = common dso_local global i32 0, align 4
@hard_frame_pointer_rtx = common dso_local global i32 0, align 4
@stack_pointer_rtx = common dso_local global i32 0, align 4
@arg_pointer_rtx = common dso_local global i32 0, align 4
@fixed_regs = common dso_local global i32* null, align 8
@ARG_POINTER_REGNUM = common dso_local global i64 0, align 8
@FIRST_VIRTUAL_REGISTER = common dso_local global i32 0, align 4
@LAST_VIRTUAL_REGISTER = common dso_local global i32 0, align 4
@CONST_INT = common dso_local global i32 0, align 4
@STRICT_ALIGNMENT = common dso_local global i32 0, align 4
@pic_offset_table_rtx = common dso_local global i32 0, align 4
@SPARC_STACK_BOUNDARY_HACK = common dso_local global i32 0, align 4
@STACK_POINTER_OFFSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @rtx_addr_can_trap_p_1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtx_addr_can_trap_p_1(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %5, align 4
  %11 = call i32 @GET_CODE(i32 %10)
  store i32 %11, i32* %8, align 4
  %12 = load i32, i32* %8, align 4
  switch i32 %12, label %116 [
    i32 128, label %13
    i32 138, label %16
    i32 129, label %17
    i32 139, label %52
    i32 136, label %58
    i32 137, label %104
    i32 130, label %104
    i32 132, label %110
    i32 131, label %110
    i32 135, label %110
    i32 134, label %110
    i32 133, label %110
  ]

13:                                               ; preds = %3
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @SYMBOL_REF_WEAK(i32 %14)
  store i32 %15, i32* %4, align 4
  br label %118

16:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %118

17:                                               ; preds = %3
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @frame_pointer_rtx, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %39, label %21

21:                                               ; preds = %17
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @hard_frame_pointer_rtx, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %39, label %25

25:                                               ; preds = %21
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @stack_pointer_rtx, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %39, label %29

29:                                               ; preds = %25
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* @arg_pointer_rtx, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %40

33:                                               ; preds = %29
  %34 = load i32*, i32** @fixed_regs, align 8
  %35 = load i64, i64* @ARG_POINTER_REGNUM, align 8
  %36 = getelementptr inbounds i32, i32* %34, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %33, %25, %21, %17
  store i32 0, i32* %4, align 4
  br label %118

40:                                               ; preds = %33, %29
  %41 = load i32, i32* %5, align 4
  %42 = call i32 @REGNO(i32 %41)
  %43 = load i32, i32* @FIRST_VIRTUAL_REGISTER, align 4
  %44 = icmp sge i32 %42, %43
  br i1 %44, label %45, label %51

45:                                               ; preds = %40
  %46 = load i32, i32* %5, align 4
  %47 = call i32 @REGNO(i32 %46)
  %48 = load i32, i32* @LAST_VIRTUAL_REGISTER, align 4
  %49 = icmp sle i32 %47, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %45
  store i32 0, i32* %4, align 4
  br label %118

51:                                               ; preds = %45, %40
  store i32 1, i32* %4, align 4
  br label %118

52:                                               ; preds = %3
  %53 = load i32, i32* %5, align 4
  %54 = call i32 @XEXP(i32 %53, i32 0)
  %55 = load i32, i32* %6, align 4
  %56 = load i32, i32* %7, align 4
  %57 = call i32 @rtx_addr_can_trap_p_1(i32 %54, i32 %55, i32 %56)
  store i32 %57, i32* %4, align 4
  br label %118

58:                                               ; preds = %3
  %59 = load i32, i32* %5, align 4
  %60 = call i32 @XEXP(i32 %59, i32 0)
  %61 = load i32, i32* %6, align 4
  %62 = load i32, i32* %7, align 4
  %63 = call i32 @rtx_addr_can_trap_p_1(i32 %60, i32 %61, i32 %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %92, label %65

65:                                               ; preds = %58
  %66 = load i32, i32* %5, align 4
  %67 = call i32 @XEXP(i32 %66, i32 1)
  %68 = call i32 @GET_CODE(i32 %67)
  %69 = load i32, i32* @CONST_INT, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %71, label %92

71:                                               ; preds = %65
  %72 = load i32, i32* @STRICT_ALIGNMENT, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %81

74:                                               ; preds = %71
  %75 = load i32, i32* %7, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %74
  %78 = load i32, i32* %6, align 4
  %79 = call i32 @GET_MODE_SIZE(i32 %78)
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %77, %74, %71
  store i32 0, i32* %4, align 4
  br label %118

82:                                               ; preds = %77
  %83 = load i32, i32* %5, align 4
  %84 = call i32 @XEXP(i32 %83, i32 1)
  %85 = call i32 @INTVAL(i32 %84)
  store i32 %85, i32* %9, align 4
  %86 = load i32, i32* %9, align 4
  %87 = load i32, i32* %6, align 4
  %88 = call i32 @GET_MODE_SIZE(i32 %87)
  %89 = srem i32 %86, %88
  %90 = icmp ne i32 %89, 0
  %91 = zext i1 %90 to i32
  store i32 %91, i32* %4, align 4
  br label %118

92:                                               ; preds = %65, %58
  %93 = load i32, i32* %5, align 4
  %94 = call i32 @XEXP(i32 %93, i32 0)
  %95 = load i32, i32* @pic_offset_table_rtx, align 4
  %96 = icmp eq i32 %94, %95
  br i1 %96, label %97, label %103

97:                                               ; preds = %92
  %98 = load i32, i32* %5, align 4
  %99 = call i32 @XEXP(i32 %98, i32 1)
  %100 = call i32 @CONSTANT_P(i32 %99)
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %97
  store i32 0, i32* %4, align 4
  br label %118

103:                                              ; preds = %97, %92
  store i32 1, i32* %4, align 4
  br label %118

104:                                              ; preds = %3, %3
  %105 = load i32, i32* %5, align 4
  %106 = call i32 @XEXP(i32 %105, i32 1)
  %107 = load i32, i32* %6, align 4
  %108 = load i32, i32* %7, align 4
  %109 = call i32 @rtx_addr_can_trap_p_1(i32 %106, i32 %107, i32 %108)
  store i32 %109, i32* %4, align 4
  br label %118

110:                                              ; preds = %3, %3, %3, %3, %3
  %111 = load i32, i32* %5, align 4
  %112 = call i32 @XEXP(i32 %111, i32 0)
  %113 = load i32, i32* %6, align 4
  %114 = load i32, i32* %7, align 4
  %115 = call i32 @rtx_addr_can_trap_p_1(i32 %112, i32 %113, i32 %114)
  store i32 %115, i32* %4, align 4
  br label %118

116:                                              ; preds = %3
  br label %117

117:                                              ; preds = %116
  store i32 1, i32* %4, align 4
  br label %118

118:                                              ; preds = %117, %110, %104, %103, %102, %82, %81, %52, %51, %50, %39, %16, %13
  %119 = load i32, i32* %4, align 4
  ret i32 %119
}

declare dso_local i32 @GET_CODE(i32) #1

declare dso_local i32 @SYMBOL_REF_WEAK(i32) #1

declare dso_local i32 @REGNO(i32) #1

declare dso_local i32 @XEXP(i32, i32) #1

declare dso_local i32 @GET_MODE_SIZE(i32) #1

declare dso_local i32 @INTVAL(i32) #1

declare dso_local i32 @CONSTANT_P(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
