; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_xprtsock.c_bc_malloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_xprtsock.c_bc_malloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_task = type { i32 }
%struct.page = type { i32 }
%struct.rpc_buffer = type { i32, i8* }

@PAGE_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @bc_malloc(%struct.rpc_task* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.rpc_task*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.page*, align 8
  %7 = alloca %struct.rpc_buffer*, align 8
  store %struct.rpc_task* %0, %struct.rpc_task** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load i64, i64* %5, align 8
  %9 = load i32, i32* @PAGE_SIZE, align 4
  %10 = sext i32 %9 to i64
  %11 = sub i64 %10, 16
  %12 = icmp ugt i64 %8, %11
  %13 = zext i1 %12 to i32
  %14 = call i32 @BUG_ON(i32 %13)
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.page* @alloc_page(i32 %15)
  store %struct.page* %16, %struct.page** %6, align 8
  %17 = load %struct.page*, %struct.page** %6, align 8
  %18 = icmp ne %struct.page* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %2
  store i8* null, i8** %3, align 8
  br label %29

20:                                               ; preds = %2
  %21 = load %struct.page*, %struct.page** %6, align 8
  %22 = call %struct.rpc_buffer* @page_address(%struct.page* %21)
  store %struct.rpc_buffer* %22, %struct.rpc_buffer** %7, align 8
  %23 = load i32, i32* @PAGE_SIZE, align 4
  %24 = load %struct.rpc_buffer*, %struct.rpc_buffer** %7, align 8
  %25 = getelementptr inbounds %struct.rpc_buffer, %struct.rpc_buffer* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 8
  %26 = load %struct.rpc_buffer*, %struct.rpc_buffer** %7, align 8
  %27 = getelementptr inbounds %struct.rpc_buffer, %struct.rpc_buffer* %26, i32 0, i32 1
  %28 = load i8*, i8** %27, align 8
  store i8* %28, i8** %3, align 8
  br label %29

29:                                               ; preds = %20, %19
  %30 = load i8*, i8** %3, align 8
  ret i8* %30
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local %struct.page* @alloc_page(i32) #1

declare dso_local %struct.rpc_buffer* @page_address(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
