; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/udf/extr_misc.c_udf_tgetblk.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/udf/extr_misc.c_udf_tgetblk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buffer_head = type { i32 }
%struct.super_block = type { i32 }

@UDF_FLAG_VARCONV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.buffer_head* @udf_tgetblk(%struct.super_block* %0, i32 %1) #0 {
  %3 = alloca %struct.buffer_head*, align 8
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.super_block*, %struct.super_block** %4, align 8
  %7 = load i32, i32* @UDF_FLAG_VARCONV, align 4
  %8 = call i64 @UDF_QUERY_FLAG(%struct.super_block* %6, i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %2
  %11 = load %struct.super_block*, %struct.super_block** %4, align 8
  %12 = load i32, i32* %5, align 4
  %13 = call i32 @udf_fixed_to_variable(i32 %12)
  %14 = call %struct.buffer_head* @sb_getblk(%struct.super_block* %11, i32 %13)
  store %struct.buffer_head* %14, %struct.buffer_head** %3, align 8
  br label %19

15:                                               ; preds = %2
  %16 = load %struct.super_block*, %struct.super_block** %4, align 8
  %17 = load i32, i32* %5, align 4
  %18 = call %struct.buffer_head* @sb_getblk(%struct.super_block* %16, i32 %17)
  store %struct.buffer_head* %18, %struct.buffer_head** %3, align 8
  br label %19

19:                                               ; preds = %15, %10
  %20 = load %struct.buffer_head*, %struct.buffer_head** %3, align 8
  ret %struct.buffer_head* %20
}

declare dso_local i64 @UDF_QUERY_FLAG(%struct.super_block*, i32) #1

declare dso_local %struct.buffer_head* @sb_getblk(%struct.super_block*, i32) #1

declare dso_local i32 @udf_fixed_to_variable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
