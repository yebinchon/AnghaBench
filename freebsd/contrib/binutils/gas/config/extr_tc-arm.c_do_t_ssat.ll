; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-arm.c_do_t_ssat.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-arm.c_do_t_ssat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, %struct.TYPE_7__, %struct.TYPE_5__* }
%struct.TYPE_7__ = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i32 }
%struct.TYPE_5__ = type { i32, i32, i64, i64 }

@inst = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@O_constant = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"expression too complex\00", align 1
@SHIFT_ASR = common dso_local global i64 0, align 8
@BFD_RELOC_UNUSED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @do_t_ssat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_t_ssat() #0 {
  %1 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @inst, i32 0, i32 2), align 8
  %2 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1, i64 0
  %3 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 0
  %4 = load i32, i32* %3, align 8
  %5 = shl i32 %4, 8
  %6 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @inst, i32 0, i32 0), align 8
  %7 = or i32 %6, %5
  store i32 %7, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @inst, i32 0, i32 0), align 8
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @inst, i32 0, i32 2), align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i64 1
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = sub nsw i32 %11, 1
  %13 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @inst, i32 0, i32 0), align 8
  %14 = or i32 %13, %12
  store i32 %14, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @inst, i32 0, i32 0), align 8
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @inst, i32 0, i32 2), align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i64 2
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = shl i32 %18, 16
  %20 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @inst, i32 0, i32 0), align 8
  %21 = or i32 %20, %19
  store i32 %21, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @inst, i32 0, i32 0), align 8
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @inst, i32 0, i32 2), align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i64 3
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 3
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %59

27:                                               ; preds = %0
  %28 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @inst, i32 0, i32 1, i32 1, i32 0), align 8
  %29 = load i64, i64* @O_constant, align 8
  %30 = icmp ne i64 %28, %29
  %31 = zext i1 %30 to i32
  %32 = call i32 @_(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %33 = call i32 @constraint(i32 %31, i32 %32)
  %34 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @inst, i32 0, i32 1, i32 1, i32 1), align 8
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %57

36:                                               ; preds = %27
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @inst, i32 0, i32 2), align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i64 3
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @SHIFT_ASR, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %36
  %44 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @inst, i32 0, i32 0), align 8
  %45 = or i32 %44, 2097152
  store i32 %45, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @inst, i32 0, i32 0), align 8
  br label %46

46:                                               ; preds = %43, %36
  %47 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @inst, i32 0, i32 1, i32 1, i32 1), align 8
  %48 = and i32 %47, 28
  %49 = shl i32 %48, 10
  %50 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @inst, i32 0, i32 0), align 8
  %51 = or i32 %50, %49
  store i32 %51, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @inst, i32 0, i32 0), align 8
  %52 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @inst, i32 0, i32 1, i32 1, i32 1), align 8
  %53 = and i32 %52, 3
  %54 = shl i32 %53, 6
  %55 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @inst, i32 0, i32 0), align 8
  %56 = or i32 %55, %54
  store i32 %56, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @inst, i32 0, i32 0), align 8
  br label %57

57:                                               ; preds = %46, %27
  %58 = load i32, i32* @BFD_RELOC_UNUSED, align 4
  store i32 %58, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @inst, i32 0, i32 1, i32 0), align 8
  br label %59

59:                                               ; preds = %57, %0
  ret void
}

declare dso_local i32 @constraint(i32, i32) #1

declare dso_local i32 @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
