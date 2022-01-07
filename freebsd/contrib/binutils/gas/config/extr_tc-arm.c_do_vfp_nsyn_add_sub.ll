; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-arm.c_do_vfp_nsyn_add_sub.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-arm.c_do_vfp_nsyn_add_sub.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@inst = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@N_MNEM_vadd = common dso_local global i32 0, align 4
@NS_FFF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"fadds\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"fsubs\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"faddd\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"fsubd\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @do_vfp_nsyn_add_sub to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_vfp_nsyn_add_sub(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @inst, i32 0, i32 0), align 4
  %5 = and i32 %4, 268435455
  %6 = load i32, i32* @N_MNEM_vadd, align 4
  %7 = icmp eq i32 %5, %6
  %8 = zext i1 %7 to i32
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* %2, align 4
  %10 = load i32, i32* @NS_FFF, align 4
  %11 = icmp eq i32 %9, %10
  br i1 %11, label %12, label %20

12:                                               ; preds = %1
  %13 = load i32, i32* %3, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %12
  %16 = call i32 @do_vfp_nsyn_opcode(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  br label %19

17:                                               ; preds = %12
  %18 = call i32 @do_vfp_nsyn_opcode(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  br label %19

19:                                               ; preds = %17, %15
  br label %28

20:                                               ; preds = %1
  %21 = load i32, i32* %3, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %20
  %24 = call i32 @do_vfp_nsyn_opcode(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  br label %27

25:                                               ; preds = %20
  %26 = call i32 @do_vfp_nsyn_opcode(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  br label %27

27:                                               ; preds = %25, %23
  br label %28

28:                                               ; preds = %27, %19
  ret void
}

declare dso_local i32 @do_vfp_nsyn_opcode(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
