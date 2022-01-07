; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-address.c_gimplify_mem_ref_parts.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-address.c_gimplify_mem_ref_parts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_address = type { i8*, i8* }

@NULL_TREE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.mem_address*)* @gimplify_mem_ref_parts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gimplify_mem_ref_parts(i32* %0, %struct.mem_address* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.mem_address*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.mem_address* %1, %struct.mem_address** %4, align 8
  %5 = load %struct.mem_address*, %struct.mem_address** %4, align 8
  %6 = getelementptr inbounds %struct.mem_address, %struct.mem_address* %5, i32 0, i32 1
  %7 = load i8*, i8** %6, align 8
  %8 = icmp ne i8* %7, null
  br i1 %8, label %9, label %18

9:                                                ; preds = %2
  %10 = load i32*, i32** %3, align 8
  %11 = load %struct.mem_address*, %struct.mem_address** %4, align 8
  %12 = getelementptr inbounds %struct.mem_address, %struct.mem_address* %11, i32 0, i32 1
  %13 = load i8*, i8** %12, align 8
  %14 = load i32, i32* @NULL_TREE, align 4
  %15 = call i8* @force_gimple_operand_bsi(i32* %10, i8* %13, i32 1, i32 %14)
  %16 = load %struct.mem_address*, %struct.mem_address** %4, align 8
  %17 = getelementptr inbounds %struct.mem_address, %struct.mem_address* %16, i32 0, i32 1
  store i8* %15, i8** %17, align 8
  br label %18

18:                                               ; preds = %9, %2
  %19 = load %struct.mem_address*, %struct.mem_address** %4, align 8
  %20 = getelementptr inbounds %struct.mem_address, %struct.mem_address* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %23, label %32

23:                                               ; preds = %18
  %24 = load i32*, i32** %3, align 8
  %25 = load %struct.mem_address*, %struct.mem_address** %4, align 8
  %26 = getelementptr inbounds %struct.mem_address, %struct.mem_address* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  %28 = load i32, i32* @NULL_TREE, align 4
  %29 = call i8* @force_gimple_operand_bsi(i32* %24, i8* %27, i32 1, i32 %28)
  %30 = load %struct.mem_address*, %struct.mem_address** %4, align 8
  %31 = getelementptr inbounds %struct.mem_address, %struct.mem_address* %30, i32 0, i32 0
  store i8* %29, i8** %31, align 8
  br label %32

32:                                               ; preds = %23, %18
  ret void
}

declare dso_local i8* @force_gimple_operand_bsi(i32*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
