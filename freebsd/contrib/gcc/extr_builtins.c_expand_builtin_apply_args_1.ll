; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_builtins.c_expand_builtin_apply_args_1.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_builtins.c_expand_builtin_apply_args_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 (i32, i32)* }
%struct.TYPE_6__ = type { i32 }

@targetm = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@cfun = common dso_local global %struct.TYPE_6__* null, align 8
@BLKmode = common dso_local global i32 0, align 4
@Pmode = common dso_local global i32 0, align 4
@FIRST_PSEUDO_REGISTER = common dso_local global i32 0, align 4
@apply_args_mode = common dso_local global i32* null, align 8
@VOIDmode = common dso_local global i32 0, align 4
@BITS_PER_UNIT = common dso_local global i32 0, align 4
@virtual_incoming_args_rtx = common dso_local global i64 0, align 8
@NULL_RTX = common dso_local global i32 0, align 4
@current_function_pretend_args_size = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 ()* @expand_builtin_apply_args_1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @expand_builtin_apply_args_1() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = load i64 (i32, i32)*, i64 (i32, i32)** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @targetm, i32 0, i32 0, i32 0), align 8
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** @cfun, align 8
  %10 = icmp ne %struct.TYPE_6__* %9, null
  br i1 %10, label %11, label %16

11:                                               ; preds = %0
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** @cfun, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @TREE_TYPE(i32 %14)
  br label %17

16:                                               ; preds = %0
  br label %17

17:                                               ; preds = %16, %11
  %18 = phi i32 [ %15, %11 ], [ 0, %16 ]
  %19 = call i64 %8(i32 %18, i32 1)
  store i64 %19, i64* %7, align 8
  %20 = load i32, i32* @BLKmode, align 4
  %21 = call i32 (...) @apply_args_size()
  %22 = call i64 @assign_stack_local(i32 %20, i32 %21, i32 -1)
  store i64 %22, i64* %1, align 8
  %23 = load i32, i32* @Pmode, align 4
  %24 = call i32 @GET_MODE_SIZE(i32 %23)
  store i32 %24, i32* %3, align 4
  %25 = load i64 (i32, i32)*, i64 (i32, i32)** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @targetm, i32 0, i32 0, i32 0), align 8
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** @cfun, align 8
  %27 = icmp ne %struct.TYPE_6__* %26, null
  br i1 %27, label %28, label %33

28:                                               ; preds = %17
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** @cfun, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @TREE_TYPE(i32 %31)
  br label %34

33:                                               ; preds = %17
  br label %34

34:                                               ; preds = %33, %28
  %35 = phi i32 [ %32, %28 ], [ 0, %33 ]
  %36 = call i64 %25(i32 %35, i32 0)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %34
  %39 = load i32, i32* @Pmode, align 4
  %40 = call i32 @GET_MODE_SIZE(i32 %39)
  %41 = load i32, i32* %3, align 4
  %42 = add nsw i32 %41, %40
  store i32 %42, i32* %3, align 4
  br label %43

43:                                               ; preds = %38, %34
  store i32 0, i32* %5, align 4
  br label %44

44:                                               ; preds = %87, %43
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* @FIRST_PSEUDO_REGISTER, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %90

48:                                               ; preds = %44
  %49 = load i32*, i32** @apply_args_mode, align 8
  %50 = load i32, i32* %5, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load i32, i32* %52, align 4
  store i32 %53, i32* %6, align 4
  %54 = load i32, i32* @VOIDmode, align 4
  %55 = icmp ne i32 %53, %54
  br i1 %55, label %56, label %86

56:                                               ; preds = %48
  %57 = load i32, i32* %6, align 4
  %58 = call i32 @GET_MODE_ALIGNMENT(i32 %57)
  %59 = load i32, i32* @BITS_PER_UNIT, align 4
  %60 = sdiv i32 %58, %59
  store i32 %60, i32* %4, align 4
  %61 = load i32, i32* %3, align 4
  %62 = load i32, i32* %4, align 4
  %63 = srem i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %56
  %66 = load i32, i32* %3, align 4
  %67 = load i32, i32* %4, align 4
  %68 = call i32 @CEIL(i32 %66, i32 %67)
  %69 = load i32, i32* %4, align 4
  %70 = mul nsw i32 %68, %69
  store i32 %70, i32* %3, align 4
  br label %71

71:                                               ; preds = %65, %56
  %72 = load i32, i32* %6, align 4
  %73 = load i32, i32* %5, align 4
  %74 = call i32 @INCOMING_REGNO(i32 %73)
  %75 = call i64 @gen_rtx_REG(i32 %72, i32 %74)
  store i64 %75, i64* %2, align 8
  %76 = load i64, i64* %1, align 8
  %77 = load i32, i32* %6, align 4
  %78 = load i32, i32* %3, align 4
  %79 = call i32 @adjust_address(i64 %76, i32 %77, i32 %78)
  %80 = load i64, i64* %2, align 8
  %81 = call i32 @emit_move_insn(i32 %79, i64 %80)
  %82 = load i32, i32* %6, align 4
  %83 = call i32 @GET_MODE_SIZE(i32 %82)
  %84 = load i32, i32* %3, align 4
  %85 = add nsw i32 %84, %83
  store i32 %85, i32* %3, align 4
  br label %86

86:                                               ; preds = %71, %48
  br label %87

87:                                               ; preds = %86
  %88 = load i32, i32* %5, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %5, align 4
  br label %44

90:                                               ; preds = %44
  %91 = load i64, i64* @virtual_incoming_args_rtx, align 8
  %92 = call i64 @copy_to_reg(i64 %91)
  store i64 %92, i64* %2, align 8
  %93 = load i64, i64* %1, align 8
  %94 = load i32, i32* @Pmode, align 4
  %95 = call i32 @adjust_address(i64 %93, i32 %94, i32 0)
  %96 = load i64, i64* %2, align 8
  %97 = call i32 @emit_move_insn(i32 %95, i64 %96)
  %98 = load i32, i32* @Pmode, align 4
  %99 = call i32 @GET_MODE_SIZE(i32 %98)
  store i32 %99, i32* %3, align 4
  %100 = load i64, i64* %7, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %114

102:                                              ; preds = %90
  %103 = load i64, i64* %1, align 8
  %104 = load i32, i32* @Pmode, align 4
  %105 = load i32, i32* %3, align 4
  %106 = call i32 @adjust_address(i64 %103, i32 %104, i32 %105)
  %107 = load i64, i64* %7, align 8
  %108 = call i64 @copy_to_reg(i64 %107)
  %109 = call i32 @emit_move_insn(i32 %106, i64 %108)
  %110 = load i32, i32* @Pmode, align 4
  %111 = call i32 @GET_MODE_SIZE(i32 %110)
  %112 = load i32, i32* %3, align 4
  %113 = add nsw i32 %112, %111
  store i32 %113, i32* %3, align 4
  br label %114

114:                                              ; preds = %102, %90
  %115 = load i64, i64* %1, align 8
  %116 = call i32 @XEXP(i64 %115, i32 0)
  %117 = call i64 @copy_addr_to_reg(i32 %116)
  ret i64 %117
}

declare dso_local i32 @TREE_TYPE(i32) #1

declare dso_local i64 @assign_stack_local(i32, i32, i32) #1

declare dso_local i32 @apply_args_size(...) #1

declare dso_local i32 @GET_MODE_SIZE(i32) #1

declare dso_local i32 @GET_MODE_ALIGNMENT(i32) #1

declare dso_local i32 @CEIL(i32, i32) #1

declare dso_local i64 @gen_rtx_REG(i32, i32) #1

declare dso_local i32 @INCOMING_REGNO(i32) #1

declare dso_local i32 @emit_move_insn(i32, i64) #1

declare dso_local i32 @adjust_address(i64, i32, i32) #1

declare dso_local i64 @copy_to_reg(i64) #1

declare dso_local i64 @copy_addr_to_reg(i32) #1

declare dso_local i32 @XEXP(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
