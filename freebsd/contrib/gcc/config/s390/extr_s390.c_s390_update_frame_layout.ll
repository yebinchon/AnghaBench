; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/s390/extr_s390.c_s390_update_frame_layout.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/s390/extr_s390.c_s390_update_frame_layout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }

@BASE_REGNUM = common dso_local global i64 0, align 8
@regs_ever_live = common dso_local global i32* null, align 8
@RETURN_REGNUM = common dso_local global i64 0, align 8
@STACK_POINTER_REGNUM = common dso_local global i64 0, align 8
@cfun = common dso_local global %struct.TYPE_4__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @s390_update_frame_layout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s390_update_frame_layout() #0 {
  %1 = alloca [16 x i32], align 16
  %2 = getelementptr inbounds [16 x i32], [16 x i32]* %1, i64 0, i64 0
  %3 = call i32 @s390_register_info(i32* %2)
  %4 = load i64, i64* @BASE_REGNUM, align 8
  %5 = getelementptr inbounds [16 x i32], [16 x i32]* %1, i64 0, i64 %4
  %6 = load i32, i32* %5, align 4
  %7 = load i32*, i32** @regs_ever_live, align 8
  %8 = load i64, i64* @BASE_REGNUM, align 8
  %9 = getelementptr inbounds i32, i32* %7, i64 %8
  store i32 %6, i32* %9, align 4
  %10 = load i64, i64* @RETURN_REGNUM, align 8
  %11 = getelementptr inbounds [16 x i32], [16 x i32]* %1, i64 0, i64 %10
  %12 = load i32, i32* %11, align 4
  %13 = load i32*, i32** @regs_ever_live, align 8
  %14 = load i64, i64* @RETURN_REGNUM, align 8
  %15 = getelementptr inbounds i32, i32* %13, i64 %14
  store i32 %12, i32* %15, align 4
  %16 = load i64, i64* @STACK_POINTER_REGNUM, align 8
  %17 = getelementptr inbounds [16 x i32], [16 x i32]* %1, i64 0, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = load i32*, i32** @regs_ever_live, align 8
  %20 = load i64, i64* @STACK_POINTER_REGNUM, align 8
  %21 = getelementptr inbounds i32, i32* %19, i64 %20
  store i32 %18, i32* %21, align 4
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cfun, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %37

28:                                               ; preds = %0
  %29 = load i32*, i32** @regs_ever_live, align 8
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cfun, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = call i64 @REGNO(i64 %34)
  %36 = getelementptr inbounds i32, i32* %29, i64 %35
  store i32 1, i32* %36, align 4
  br label %37

37:                                               ; preds = %28, %0
  ret void
}

declare dso_local i32 @s390_register_info(i32*) #1

declare dso_local i64 @REGNO(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
