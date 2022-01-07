; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-loop-im.c_gather_mem_refs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-loop-im.c_gather_mem_refs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_ref = type { i32 }
%struct.loop = type { i32 }

@memref_hash = common dso_local global i32 0, align 4
@memref_eq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mem_ref* (%struct.loop*, i32)* @gather_mem_refs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mem_ref* @gather_mem_refs(%struct.loop* %0, i32 %1) #0 {
  %3 = alloca %struct.loop*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.mem_ref*, align 8
  %9 = alloca i32, align 4
  store %struct.loop* %0, %struct.loop** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.loop*, %struct.loop** %3, align 8
  %11 = call i32* @get_loop_body(%struct.loop* %10)
  store i32* %11, i32** %5, align 8
  store %struct.mem_ref* null, %struct.mem_ref** %8, align 8
  %12 = load i32, i32* @memref_hash, align 4
  %13 = load i32, i32* @memref_eq, align 4
  %14 = call i32 @htab_create(i32 100, i32 %12, i32 %13, i32* null)
  store i32 %14, i32* %9, align 4
  store i32 0, i32* %7, align 4
  br label %15

15:                                               ; preds = %43, %2
  %16 = load i32, i32* %7, align 4
  %17 = load %struct.loop*, %struct.loop** %3, align 8
  %18 = getelementptr inbounds %struct.loop, %struct.loop* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp ult i32 %16, %19
  br i1 %20, label %21, label %46

21:                                               ; preds = %15
  %22 = load i32*, i32** %5, align 8
  %23 = load i32, i32* %7, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @bsi_start(i32 %26)
  store i32 %27, i32* %6, align 4
  br label %28

28:                                               ; preds = %40, %21
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @bsi_end_p(i32 %29)
  %31 = icmp ne i32 %30, 0
  %32 = xor i1 %31, true
  br i1 %32, label %33, label %42

33:                                               ; preds = %28
  %34 = load %struct.loop*, %struct.loop** %3, align 8
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @bsi_stmt(i32 %37)
  %39 = call i32 @gather_mem_refs_stmt(%struct.loop* %34, i32 %35, i32 %36, i32 %38, %struct.mem_ref** %8)
  br label %40

40:                                               ; preds = %33
  %41 = call i32 @bsi_next(i32* %6)
  br label %28

42:                                               ; preds = %28
  br label %43

43:                                               ; preds = %42
  %44 = load i32, i32* %7, align 4
  %45 = add i32 %44, 1
  store i32 %45, i32* %7, align 4
  br label %15

46:                                               ; preds = %15
  %47 = load i32*, i32** %5, align 8
  %48 = call i32 @free(i32* %47)
  %49 = load i32, i32* %9, align 4
  %50 = call i32 @htab_delete(i32 %49)
  %51 = load %struct.mem_ref*, %struct.mem_ref** %8, align 8
  ret %struct.mem_ref* %51
}

declare dso_local i32* @get_loop_body(%struct.loop*) #1

declare dso_local i32 @htab_create(i32, i32, i32, i32*) #1

declare dso_local i32 @bsi_start(i32) #1

declare dso_local i32 @bsi_end_p(i32) #1

declare dso_local i32 @gather_mem_refs_stmt(%struct.loop*, i32, i32, i32, %struct.mem_ref**) #1

declare dso_local i32 @bsi_stmt(i32) #1

declare dso_local i32 @bsi_next(i32*) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @htab_delete(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
