; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/rs6000/extr_rs6000.c_rs6000_return_addr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/rs6000/extr_rs6000.c_rs6000_return_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32 }

@DEFAULT_ABI = common dso_local global i64 0, align 8
@ABI_AIX = common dso_local global i64 0, align 8
@flag_pic = common dso_local global i64 0, align 8
@cfun = common dso_local global %struct.TYPE_4__* null, align 8
@Pmode = common dso_local global i32 0, align 4
@RETURN_ADDRESS_OFFSET = common dso_local global i32 0, align 4
@LINK_REGISTER_REGNUM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rs6000_return_addr(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %4, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %15, label %8

8:                                                ; preds = %2
  %9 = load i64, i64* @DEFAULT_ABI, align 8
  %10 = load i64, i64* @ABI_AIX, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %32

12:                                               ; preds = %8
  %13 = load i64, i64* @flag_pic, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %32

15:                                               ; preds = %12, %2
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cfun, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  store i32 1, i32* %19, align 4
  %20 = load i32, i32* @Pmode, align 4
  %21 = load i32, i32* @Pmode, align 4
  %22 = load i32, i32* @Pmode, align 4
  %23 = load i32, i32* @Pmode, align 4
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @memory_address(i32 %23, i32 %24)
  %26 = call i32 @gen_rtx_MEM(i32 %22, i32 %25)
  %27 = call i32 @copy_to_reg(i32 %26)
  %28 = load i32, i32* @RETURN_ADDRESS_OFFSET, align 4
  %29 = call i32 @plus_constant(i32 %27, i32 %28)
  %30 = call i32 @memory_address(i32 %21, i32 %29)
  %31 = call i32 @gen_rtx_MEM(i32 %20, i32 %30)
  store i32 %31, i32* %3, align 4
  br label %40

32:                                               ; preds = %12, %8
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cfun, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 1
  store i32 1, i32* %36, align 4
  %37 = load i32, i32* @Pmode, align 4
  %38 = load i32, i32* @LINK_REGISTER_REGNUM, align 4
  %39 = call i32 @get_hard_reg_initial_val(i32 %37, i32 %38)
  store i32 %39, i32* %3, align 4
  br label %40

40:                                               ; preds = %32, %15
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local i32 @gen_rtx_MEM(i32, i32) #1

declare dso_local i32 @memory_address(i32, i32) #1

declare dso_local i32 @plus_constant(i32, i32) #1

declare dso_local i32 @copy_to_reg(i32) #1

declare dso_local i32 @get_hard_reg_initial_val(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
