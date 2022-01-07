; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-arm.c_do_t_push_pop.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-arm.c_do_t_push_pop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, %struct.TYPE_5__*, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i64 }

@inst = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@.str = private unnamed_addr constant [35 x i8] c"push/pop do not support {reglist}^\00", align 1
@BFD_RELOC_UNUSED = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"expression too complex\00", align 1
@T_MNEM_push = common dso_local global i32 0, align 4
@REG_LR = common dso_local global i32 0, align 4
@T_MNEM_pop = common dso_local global i32 0, align 4
@REG_PC = common dso_local global i32 0, align 4
@THUMB_PP_PC_LR = common dso_local global i32 0, align 4
@unified_syntax = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [46 x i8] c"invalid register list to push/pop instruction\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @do_t_push_pop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_t_push_pop() #0 {
  %1 = alloca i32, align 4
  %2 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 2), align 8
  %3 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i64 0
  %4 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = call i32 @_(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %7 = call i32 @constraint(i32 %5, i32 %6)
  %8 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 3, i32 0), align 8
  %9 = load i64, i64* @BFD_RELOC_UNUSED, align 8
  %10 = icmp ne i64 %8, %9
  %11 = zext i1 %10 to i32
  %12 = call i32 @_(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %13 = call i32 @constraint(i32 %11, i32 %12)
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 2), align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i64 0
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %1, align 4
  %18 = load i32, i32* %1, align 4
  %19 = and i32 %18, -256
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %0
  %22 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 0), align 8
  %23 = call i32 @THUMB_OP16(i32 %22)
  %24 = load i32, i32* %1, align 4
  %25 = or i32 %23, %24
  store i32 %25, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 0), align 8
  br label %69

26:                                               ; preds = %0
  %27 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 0), align 8
  %28 = load i32, i32* @T_MNEM_push, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %36

30:                                               ; preds = %26
  %31 = load i32, i32* %1, align 4
  %32 = and i32 %31, -256
  %33 = load i32, i32* @REG_LR, align 4
  %34 = shl i32 1, %33
  %35 = icmp eq i32 %32, %34
  br i1 %35, label %46, label %36

36:                                               ; preds = %30, %26
  %37 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 0), align 8
  %38 = load i32, i32* @T_MNEM_pop, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %56

40:                                               ; preds = %36
  %41 = load i32, i32* %1, align 4
  %42 = and i32 %41, -256
  %43 = load i32, i32* @REG_PC, align 4
  %44 = shl i32 1, %43
  %45 = icmp eq i32 %42, %44
  br i1 %45, label %46, label %56

46:                                               ; preds = %40, %30
  %47 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 0), align 8
  %48 = call i32 @THUMB_OP16(i32 %47)
  store i32 %48, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 0), align 8
  %49 = load i32, i32* @THUMB_PP_PC_LR, align 4
  %50 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 0), align 8
  %51 = or i32 %50, %49
  store i32 %51, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 0), align 8
  %52 = load i32, i32* %1, align 4
  %53 = and i32 %52, 255
  %54 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 0), align 8
  %55 = or i32 %54, %53
  store i32 %55, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 0), align 8
  br label %68

56:                                               ; preds = %40, %36
  %57 = load i64, i64* @unified_syntax, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %56
  %60 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 0), align 8
  %61 = call i32 @THUMB_OP32(i32 %60)
  store i32 %61, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 0), align 8
  %62 = load i32, i32* %1, align 4
  %63 = load i32, i32* @TRUE, align 4
  %64 = call i32 @encode_thumb2_ldmstm(i32 13, i32 %62, i32 %63)
  br label %67

65:                                               ; preds = %56
  %66 = call i32 @_(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0))
  store i32 %66, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 1), align 4
  br label %69

67:                                               ; preds = %59
  br label %68

68:                                               ; preds = %67, %46
  br label %69

69:                                               ; preds = %65, %68, %21
  ret void
}

declare dso_local i32 @constraint(i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @THUMB_OP16(i32) #1

declare dso_local i32 @THUMB_OP32(i32) #1

declare dso_local i32 @encode_thumb2_ldmstm(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
