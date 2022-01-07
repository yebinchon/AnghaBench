; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_dwarf2read.c_attr_form_is_block.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_dwarf2read.c_attr_form_is_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.attribute = type { i64 }

@DW_FORM_block1 = common dso_local global i64 0, align 8
@DW_FORM_block2 = common dso_local global i64 0, align 8
@DW_FORM_block4 = common dso_local global i64 0, align 8
@DW_FORM_block = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.attribute*)* @attr_form_is_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @attr_form_is_block(%struct.attribute* %0) #0 {
  %2 = alloca %struct.attribute*, align 8
  store %struct.attribute* %0, %struct.attribute** %2, align 8
  %3 = load %struct.attribute*, %struct.attribute** %2, align 8
  %4 = icmp eq %struct.attribute* %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  br label %33

6:                                                ; preds = %1
  %7 = load %struct.attribute*, %struct.attribute** %2, align 8
  %8 = getelementptr inbounds %struct.attribute, %struct.attribute* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @DW_FORM_block1, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %30, label %12

12:                                               ; preds = %6
  %13 = load %struct.attribute*, %struct.attribute** %2, align 8
  %14 = getelementptr inbounds %struct.attribute, %struct.attribute* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @DW_FORM_block2, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %30, label %18

18:                                               ; preds = %12
  %19 = load %struct.attribute*, %struct.attribute** %2, align 8
  %20 = getelementptr inbounds %struct.attribute, %struct.attribute* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @DW_FORM_block4, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %30, label %24

24:                                               ; preds = %18
  %25 = load %struct.attribute*, %struct.attribute** %2, align 8
  %26 = getelementptr inbounds %struct.attribute, %struct.attribute* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @DW_FORM_block, align 8
  %29 = icmp eq i64 %27, %28
  br label %30

30:                                               ; preds = %24, %18, %12, %6
  %31 = phi i1 [ true, %18 ], [ true, %12 ], [ true, %6 ], [ %29, %24 ]
  %32 = zext i1 %31 to i32
  br label %33

33:                                               ; preds = %30, %5
  %34 = phi i32 [ 0, %5 ], [ %32, %30 ]
  ret i32 %34
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
