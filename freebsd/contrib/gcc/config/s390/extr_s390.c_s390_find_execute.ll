; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/s390/extr_s390.c_s390_find_execute.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/s390/extr_s390.c_s390_find_execute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.constant_pool = type { i32, %struct.constant* }
%struct.constant = type { i32, i32, %struct.constant* }

@Pmode = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.constant_pool*, i32)* @s390_find_execute to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s390_find_execute(%struct.constant_pool* %0, i32 %1) #0 {
  %3 = alloca %struct.constant_pool*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.constant*, align 8
  %6 = alloca i32, align 4
  store %struct.constant_pool* %0, %struct.constant_pool** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.constant_pool*, %struct.constant_pool** %3, align 8
  %8 = getelementptr inbounds %struct.constant_pool, %struct.constant_pool* %7, i32 0, i32 1
  %9 = load %struct.constant*, %struct.constant** %8, align 8
  store %struct.constant* %9, %struct.constant** %5, align 8
  br label %10

10:                                               ; preds = %23, %2
  %11 = load %struct.constant*, %struct.constant** %5, align 8
  %12 = icmp ne %struct.constant* %11, null
  br i1 %12, label %13, label %27

13:                                               ; preds = %10
  %14 = load i32, i32* %4, align 4
  %15 = call i64 @INSN_UID(i32 %14)
  %16 = load %struct.constant*, %struct.constant** %5, align 8
  %17 = getelementptr inbounds %struct.constant, %struct.constant* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i64 @INSN_UID(i32 %18)
  %20 = icmp eq i64 %15, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %13
  br label %27

22:                                               ; preds = %13
  br label %23

23:                                               ; preds = %22
  %24 = load %struct.constant*, %struct.constant** %5, align 8
  %25 = getelementptr inbounds %struct.constant, %struct.constant* %24, i32 0, i32 2
  %26 = load %struct.constant*, %struct.constant** %25, align 8
  store %struct.constant* %26, %struct.constant** %5, align 8
  br label %10

27:                                               ; preds = %21, %10
  %28 = load %struct.constant*, %struct.constant** %5, align 8
  %29 = call i32 @gcc_assert(%struct.constant* %28)
  %30 = load i32, i32* @Pmode, align 4
  %31 = load i32, i32* @Pmode, align 4
  %32 = load %struct.constant*, %struct.constant** %5, align 8
  %33 = getelementptr inbounds %struct.constant, %struct.constant* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @gen_rtx_LABEL_REF(i32 %31, i32 %34)
  %36 = load i32, i32* @Pmode, align 4
  %37 = load %struct.constant_pool*, %struct.constant_pool** %3, align 8
  %38 = getelementptr inbounds %struct.constant_pool, %struct.constant_pool* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @gen_rtx_LABEL_REF(i32 %36, i32 %39)
  %41 = call i32 @gen_rtx_MINUS(i32 %30, i32 %35, i32 %40)
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* @Pmode, align 4
  %43 = load i32, i32* %6, align 4
  %44 = call i32 @gen_rtx_CONST(i32 %42, i32 %43)
  store i32 %44, i32* %6, align 4
  %45 = load i32, i32* %6, align 4
  ret i32 %45
}

declare dso_local i64 @INSN_UID(i32) #1

declare dso_local i32 @gcc_assert(%struct.constant*) #1

declare dso_local i32 @gen_rtx_MINUS(i32, i32, i32) #1

declare dso_local i32 @gen_rtx_LABEL_REF(i32, i32) #1

declare dso_local i32 @gen_rtx_CONST(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
