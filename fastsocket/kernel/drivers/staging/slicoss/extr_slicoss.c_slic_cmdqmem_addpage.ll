; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/slicoss/extr_slicoss.c_slic_cmdqmem_addpage.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/slicoss/extr_slicoss.c_slic_cmdqmem_addpage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32, %struct.slic_cmdqmem }
%struct.slic_cmdqmem = type { i64, i32**, i32* }

@SLIC_CMDQ_MAXPAGES = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.adapter*)* @slic_cmdqmem_addpage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @slic_cmdqmem_addpage(%struct.adapter* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca %struct.slic_cmdqmem*, align 8
  %5 = alloca i32*, align 8
  store %struct.adapter* %0, %struct.adapter** %3, align 8
  %6 = load %struct.adapter*, %struct.adapter** %3, align 8
  %7 = getelementptr inbounds %struct.adapter, %struct.adapter* %6, i32 0, i32 1
  store %struct.slic_cmdqmem* %7, %struct.slic_cmdqmem** %4, align 8
  %8 = load %struct.slic_cmdqmem*, %struct.slic_cmdqmem** %4, align 8
  %9 = getelementptr inbounds %struct.slic_cmdqmem, %struct.slic_cmdqmem* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @SLIC_CMDQ_MAXPAGES, align 8
  %12 = icmp uge i64 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store i32* null, i32** %2, align 8
  br label %52

14:                                               ; preds = %1
  %15 = load %struct.adapter*, %struct.adapter** %3, align 8
  %16 = getelementptr inbounds %struct.adapter, %struct.adapter* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @PAGE_SIZE, align 4
  %19 = load %struct.slic_cmdqmem*, %struct.slic_cmdqmem** %4, align 8
  %20 = getelementptr inbounds %struct.slic_cmdqmem, %struct.slic_cmdqmem* %19, i32 0, i32 2
  %21 = load i32*, i32** %20, align 8
  %22 = load %struct.slic_cmdqmem*, %struct.slic_cmdqmem** %4, align 8
  %23 = getelementptr inbounds %struct.slic_cmdqmem, %struct.slic_cmdqmem* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = getelementptr inbounds i32, i32* %21, i64 %24
  %26 = call i32* @pci_alloc_consistent(i32 %17, i32 %18, i32* %25)
  store i32* %26, i32** %5, align 8
  %27 = load i32*, i32** %5, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %14
  store i32* null, i32** %2, align 8
  br label %52

30:                                               ; preds = %14
  %31 = load i32*, i32** %5, align 8
  %32 = ptrtoint i32* %31 to i32
  %33 = and i32 %32, -4096
  %34 = load i32*, i32** %5, align 8
  %35 = ptrtoint i32* %34 to i32
  %36 = icmp eq i32 %33, %35
  %37 = zext i1 %36 to i32
  %38 = call i32 @ASSERT(i32 %37)
  %39 = load i32*, i32** %5, align 8
  %40 = load %struct.slic_cmdqmem*, %struct.slic_cmdqmem** %4, align 8
  %41 = getelementptr inbounds %struct.slic_cmdqmem, %struct.slic_cmdqmem* %40, i32 0, i32 1
  %42 = load i32**, i32*** %41, align 8
  %43 = load %struct.slic_cmdqmem*, %struct.slic_cmdqmem** %4, align 8
  %44 = getelementptr inbounds %struct.slic_cmdqmem, %struct.slic_cmdqmem* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = getelementptr inbounds i32*, i32** %42, i64 %45
  store i32* %39, i32** %46, align 8
  %47 = load %struct.slic_cmdqmem*, %struct.slic_cmdqmem** %4, align 8
  %48 = getelementptr inbounds %struct.slic_cmdqmem, %struct.slic_cmdqmem* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = add i64 %49, 1
  store i64 %50, i64* %48, align 8
  %51 = load i32*, i32** %5, align 8
  store i32* %51, i32** %2, align 8
  br label %52

52:                                               ; preds = %30, %29, %13
  %53 = load i32*, i32** %2, align 8
  ret i32* %53
}

declare dso_local i32* @pci_alloc_consistent(i32, i32, i32*) #1

declare dso_local i32 @ASSERT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
