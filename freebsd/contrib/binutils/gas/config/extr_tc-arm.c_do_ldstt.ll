; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-arm.c_do_ldstt.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-arm.c_do_ldstt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, %struct.TYPE_5__*, %struct.TYPE_7__ }
%struct.TYPE_5__ = type { i32, i32, i32, i64 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i64 }

@inst = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@O_constant = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [49 x i8] c"this instruction requires a post-indexed address\00", align 1
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @do_ldstt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_ldstt() #0 {
  %1 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @inst, i32 0, i32 1), align 8
  %2 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1, i64 1
  %3 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 3
  %4 = load i64, i64* %3, align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %27

6:                                                ; preds = %0
  %7 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @inst, i32 0, i32 2, i32 0, i32 0), align 8
  %8 = load i64, i64* @O_constant, align 8
  %9 = icmp ne i64 %7, %8
  br i1 %9, label %13, label %10

10:                                               ; preds = %6
  %11 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @inst, i32 0, i32 2, i32 0, i32 1), align 8
  %12 = icmp ne i64 %11, 0
  br label %13

13:                                               ; preds = %10, %6
  %14 = phi i1 [ true, %6 ], [ %12, %10 ]
  %15 = zext i1 %14 to i32
  %16 = call i32 @_(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  %17 = call i32 @constraint(i32 %15, i32 %16)
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @inst, i32 0, i32 1), align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i64 1
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 3
  store i64 0, i64* %20, align 8
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @inst, i32 0, i32 1), align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i64 1
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  store i32 1, i32* %23, align 8
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @inst, i32 0, i32 1), align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i64 1
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 1
  store i32 1, i32* %26, align 4
  br label %27

27:                                               ; preds = %13, %0
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @inst, i32 0, i32 1), align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i64 0
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = shl i32 %31, 12
  %33 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @inst, i32 0, i32 0), align 8
  %34 = or i32 %33, %32
  store i32 %34, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @inst, i32 0, i32 0), align 8
  %35 = load i32, i32* @TRUE, align 4
  %36 = call i32 @encode_arm_addr_mode_2(i32 1, i32 %35)
  ret void
}

declare dso_local i32 @constraint(i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @encode_arm_addr_mode_2(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
