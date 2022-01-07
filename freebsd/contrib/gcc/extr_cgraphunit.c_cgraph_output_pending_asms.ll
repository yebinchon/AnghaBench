; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_cgraphunit.c_cgraph_output_pending_asms.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_cgraphunit.c_cgraph_output_pending_asms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cgraph_asm_node = type { i32, %struct.cgraph_asm_node* }

@errorcount = common dso_local global i64 0, align 8
@sorrycount = common dso_local global i64 0, align 8
@cgraph_asm_nodes = common dso_local global %struct.cgraph_asm_node* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @cgraph_output_pending_asms to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cgraph_output_pending_asms() #0 {
  %1 = alloca %struct.cgraph_asm_node*, align 8
  %2 = load i64, i64* @errorcount, align 8
  %3 = icmp ne i64 %2, 0
  br i1 %3, label %7, label %4

4:                                                ; preds = %0
  %5 = load i64, i64* @sorrycount, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %4, %0
  br label %23

8:                                                ; preds = %4
  %9 = load %struct.cgraph_asm_node*, %struct.cgraph_asm_node** @cgraph_asm_nodes, align 8
  store %struct.cgraph_asm_node* %9, %struct.cgraph_asm_node** %1, align 8
  br label %10

10:                                               ; preds = %18, %8
  %11 = load %struct.cgraph_asm_node*, %struct.cgraph_asm_node** %1, align 8
  %12 = icmp ne %struct.cgraph_asm_node* %11, null
  br i1 %12, label %13, label %22

13:                                               ; preds = %10
  %14 = load %struct.cgraph_asm_node*, %struct.cgraph_asm_node** %1, align 8
  %15 = getelementptr inbounds %struct.cgraph_asm_node, %struct.cgraph_asm_node* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @assemble_asm(i32 %16)
  br label %18

18:                                               ; preds = %13
  %19 = load %struct.cgraph_asm_node*, %struct.cgraph_asm_node** %1, align 8
  %20 = getelementptr inbounds %struct.cgraph_asm_node, %struct.cgraph_asm_node* %19, i32 0, i32 1
  %21 = load %struct.cgraph_asm_node*, %struct.cgraph_asm_node** %20, align 8
  store %struct.cgraph_asm_node* %21, %struct.cgraph_asm_node** %1, align 8
  br label %10

22:                                               ; preds = %10
  store %struct.cgraph_asm_node* null, %struct.cgraph_asm_node** @cgraph_asm_nodes, align 8
  br label %23

23:                                               ; preds = %22, %7
  ret void
}

declare dso_local i32 @assemble_asm(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
