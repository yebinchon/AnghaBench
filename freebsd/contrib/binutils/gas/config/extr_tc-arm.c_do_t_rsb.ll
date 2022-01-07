; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-arm.c_do_t_rsb.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-arm.c_do_t_rsb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, %struct.TYPE_7__, %struct.TYPE_5__* }
%struct.TYPE_7__ = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i64 }
%struct.TYPE_5__ = type { i32, i32, i64 }

@inst = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@current_it_mask = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@unified_syntax = common dso_local global i32 0, align 4
@O_constant = common dso_local global i64 0, align 8
@BFD_RELOC_UNUSED = common dso_local global i32 0, align 4
@T_MNEM_negs = common dso_local global i32 0, align 4
@BFD_RELOC_ARM_T32_IMMEDIATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @do_t_rsb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_t_rsb() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @inst, i32 0, i32 3), align 8
  %5 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i64 0
  %6 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  store i32 %7, i32* %1, align 4
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @inst, i32 0, i32 3), align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i64 1
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 2
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %0
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @inst, i32 0, i32 3), align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i64 1
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  br label %23

18:                                               ; preds = %0
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @inst, i32 0, i32 3), align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i64 0
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  br label %23

23:                                               ; preds = %18, %13
  %24 = phi i32 [ %17, %13 ], [ %22, %18 ]
  store i32 %24, i32* %2, align 4
  %25 = load i32, i32* %1, align 4
  %26 = shl i32 %25, 8
  %27 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @inst, i32 0, i32 0), align 8
  %28 = or i32 %27, %26
  store i32 %28, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @inst, i32 0, i32 0), align 8
  %29 = load i32, i32* %2, align 4
  %30 = shl i32 %29, 16
  %31 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @inst, i32 0, i32 0), align 8
  %32 = or i32 %31, %30
  store i32 %32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @inst, i32 0, i32 0), align 8
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @inst, i32 0, i32 3), align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i64 2
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %95, label %38

38:                                               ; preds = %23
  %39 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @inst, i32 0, i32 0), align 8
  %40 = and i32 %39, 1048576
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %38
  %43 = load i64, i64* @current_it_mask, align 8
  %44 = icmp eq i64 %43, 0
  %45 = zext i1 %44 to i32
  store i32 %45, i32* %3, align 4
  br label %50

46:                                               ; preds = %38
  %47 = load i64, i64* @current_it_mask, align 8
  %48 = icmp ne i64 %47, 0
  %49 = zext i1 %48 to i32
  store i32 %49, i32* %3, align 4
  br label %50

50:                                               ; preds = %46, %42
  %51 = load i32, i32* %1, align 4
  %52 = icmp sgt i32 %51, 7
  br i1 %52, label %56, label %53

53:                                               ; preds = %50
  %54 = load i32, i32* %2, align 4
  %55 = icmp sgt i32 %54, 7
  br i1 %55, label %56, label %58

56:                                               ; preds = %53, %50
  %57 = load i32, i32* @FALSE, align 4
  store i32 %57, i32* %3, align 4
  br label %58

58:                                               ; preds = %56, %53
  %59 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @inst, i32 0, i32 1), align 4
  %60 = icmp eq i32 %59, 4
  br i1 %60, label %64, label %61

61:                                               ; preds = %58
  %62 = load i32, i32* @unified_syntax, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %66, label %64

64:                                               ; preds = %61, %58
  %65 = load i32, i32* @FALSE, align 4
  store i32 %65, i32* %3, align 4
  br label %66

66:                                               ; preds = %64, %61
  %67 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @inst, i32 0, i32 2, i32 1, i32 0), align 8
  %68 = load i64, i64* @O_constant, align 8
  %69 = icmp ne i64 %67, %68
  br i1 %69, label %73, label %70

70:                                               ; preds = %66
  %71 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @inst, i32 0, i32 2, i32 1, i32 1), align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %70, %66
  %74 = load i32, i32* @FALSE, align 4
  store i32 %74, i32* %3, align 4
  br label %75

75:                                               ; preds = %73, %70
  %76 = load i32, i32* %3, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %89

78:                                               ; preds = %75
  %79 = load i32, i32* @BFD_RELOC_UNUSED, align 4
  store i32 %79, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @inst, i32 0, i32 2, i32 0), align 8
  %80 = load i32, i32* @T_MNEM_negs, align 4
  %81 = call i32 @THUMB_OP16(i32 %80)
  store i32 %81, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @inst, i32 0, i32 0), align 8
  %82 = load i32, i32* %2, align 4
  %83 = shl i32 %82, 3
  %84 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @inst, i32 0, i32 0), align 8
  %85 = or i32 %84, %83
  store i32 %85, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @inst, i32 0, i32 0), align 8
  %86 = load i32, i32* %1, align 4
  %87 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @inst, i32 0, i32 0), align 8
  %88 = or i32 %87, %86
  store i32 %88, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @inst, i32 0, i32 0), align 8
  br label %94

89:                                               ; preds = %75
  %90 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @inst, i32 0, i32 0), align 8
  %91 = and i32 %90, -503316481
  %92 = or i32 %91, 268435456
  store i32 %92, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @inst, i32 0, i32 0), align 8
  %93 = load i32, i32* @BFD_RELOC_ARM_T32_IMMEDIATE, align 4
  store i32 %93, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @inst, i32 0, i32 2, i32 0), align 8
  br label %94

94:                                               ; preds = %89, %78
  br label %97

95:                                               ; preds = %23
  %96 = call i32 @encode_thumb32_shifted_operand(i32 2)
  br label %97

97:                                               ; preds = %95, %94
  ret void
}

declare dso_local i32 @THUMB_OP16(i32) #1

declare dso_local i32 @encode_thumb32_shifted_operand(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
