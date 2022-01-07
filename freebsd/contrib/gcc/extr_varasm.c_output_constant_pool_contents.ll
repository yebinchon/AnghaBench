; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_varasm.c_output_constant_pool_contents.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_varasm.c_output_constant_pool_contents.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 (i32, i32, i32)* }
%struct.rtx_constant_pool = type { %struct.constant_descriptor_rtx* }
%struct.constant_descriptor_rtx = type { i32, i32, i32, i32, i64, %struct.constant_descriptor_rtx* }

@targetm = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtx_constant_pool*)* @output_constant_pool_contents to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @output_constant_pool_contents(%struct.rtx_constant_pool* %0) #0 {
  %2 = alloca %struct.rtx_constant_pool*, align 8
  %3 = alloca %struct.constant_descriptor_rtx*, align 8
  store %struct.rtx_constant_pool* %0, %struct.rtx_constant_pool** %2, align 8
  %4 = load %struct.rtx_constant_pool*, %struct.rtx_constant_pool** %2, align 8
  %5 = getelementptr inbounds %struct.rtx_constant_pool, %struct.rtx_constant_pool* %4, i32 0, i32 0
  %6 = load %struct.constant_descriptor_rtx*, %struct.constant_descriptor_rtx** %5, align 8
  store %struct.constant_descriptor_rtx* %6, %struct.constant_descriptor_rtx** %3, align 8
  br label %7

7:                                                ; preds = %52, %1
  %8 = load %struct.constant_descriptor_rtx*, %struct.constant_descriptor_rtx** %3, align 8
  %9 = icmp ne %struct.constant_descriptor_rtx* %8, null
  br i1 %9, label %10, label %56

10:                                               ; preds = %7
  %11 = load %struct.constant_descriptor_rtx*, %struct.constant_descriptor_rtx** %3, align 8
  %12 = getelementptr inbounds %struct.constant_descriptor_rtx, %struct.constant_descriptor_rtx* %11, i32 0, i32 4
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %51

15:                                               ; preds = %10
  %16 = load %struct.constant_descriptor_rtx*, %struct.constant_descriptor_rtx** %3, align 8
  %17 = getelementptr inbounds %struct.constant_descriptor_rtx, %struct.constant_descriptor_rtx* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  %19 = call i64 @SYMBOL_REF_HAS_BLOCK_INFO_P(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %32

21:                                               ; preds = %15
  %22 = load %struct.constant_descriptor_rtx*, %struct.constant_descriptor_rtx** %3, align 8
  %23 = getelementptr inbounds %struct.constant_descriptor_rtx, %struct.constant_descriptor_rtx* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @SYMBOL_REF_BLOCK(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %21
  %28 = load %struct.constant_descriptor_rtx*, %struct.constant_descriptor_rtx** %3, align 8
  %29 = getelementptr inbounds %struct.constant_descriptor_rtx, %struct.constant_descriptor_rtx* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @place_block_symbol(i32 %30)
  br label %50

32:                                               ; preds = %21, %15
  %33 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @targetm, i32 0, i32 0, i32 0), align 8
  %34 = load %struct.constant_descriptor_rtx*, %struct.constant_descriptor_rtx** %3, align 8
  %35 = getelementptr inbounds %struct.constant_descriptor_rtx, %struct.constant_descriptor_rtx* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.constant_descriptor_rtx*, %struct.constant_descriptor_rtx** %3, align 8
  %38 = getelementptr inbounds %struct.constant_descriptor_rtx, %struct.constant_descriptor_rtx* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.constant_descriptor_rtx*, %struct.constant_descriptor_rtx** %3, align 8
  %41 = getelementptr inbounds %struct.constant_descriptor_rtx, %struct.constant_descriptor_rtx* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 %33(i32 %36, i32 %39, i32 %42)
  %44 = call i32 @switch_to_section(i32 %43)
  %45 = load %struct.constant_descriptor_rtx*, %struct.constant_descriptor_rtx** %3, align 8
  %46 = load %struct.constant_descriptor_rtx*, %struct.constant_descriptor_rtx** %3, align 8
  %47 = getelementptr inbounds %struct.constant_descriptor_rtx, %struct.constant_descriptor_rtx* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @output_constant_pool_1(%struct.constant_descriptor_rtx* %45, i32 %48)
  br label %50

50:                                               ; preds = %32, %27
  br label %51

51:                                               ; preds = %50, %10
  br label %52

52:                                               ; preds = %51
  %53 = load %struct.constant_descriptor_rtx*, %struct.constant_descriptor_rtx** %3, align 8
  %54 = getelementptr inbounds %struct.constant_descriptor_rtx, %struct.constant_descriptor_rtx* %53, i32 0, i32 5
  %55 = load %struct.constant_descriptor_rtx*, %struct.constant_descriptor_rtx** %54, align 8
  store %struct.constant_descriptor_rtx* %55, %struct.constant_descriptor_rtx** %3, align 8
  br label %7

56:                                               ; preds = %7
  ret void
}

declare dso_local i64 @SYMBOL_REF_HAS_BLOCK_INFO_P(i32) #1

declare dso_local i64 @SYMBOL_REF_BLOCK(i32) #1

declare dso_local i32 @place_block_symbol(i32) #1

declare dso_local i32 @switch_to_section(i32) #1

declare dso_local i32 @output_constant_pool_1(%struct.constant_descriptor_rtx*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
