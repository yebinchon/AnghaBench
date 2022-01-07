; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_request_sock.c_reqsk_queue_alloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_request_sock.c_reqsk_queue_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request_sock_queue = type { i32, %struct.listen_sock*, i32* }
%struct.listen_sock = type { i32, i32, i32 }

@u32 = common dso_local global i32 0, align 4
@sysctl_max_syn_backlog = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@__GFP_HIGHMEM = common dso_local global i32 0, align 4
@__GFP_ZERO = common dso_local global i32 0, align 4
@PAGE_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @reqsk_queue_alloc(%struct.request_sock_queue* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.request_sock_queue*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.listen_sock*, align 8
  store %struct.request_sock_queue* %0, %struct.request_sock_queue** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 12, i64* %6, align 8
  %8 = load i32, i32* @u32, align 4
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @sysctl_max_syn_backlog, align 4
  %11 = call i32 @min_t(i32 %8, i32 %9, i32 %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* @u32, align 4
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @max_t(i32 %12, i32 %13, i32 8)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = add i32 %15, 1
  %17 = call i32 @roundup_pow_of_two(i32 %16)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = zext i32 %18 to i64
  %20 = mul i64 %19, 8
  %21 = load i64, i64* %6, align 8
  %22 = add i64 %21, %20
  store i64 %22, i64* %6, align 8
  %23 = load i64, i64* %6, align 8
  %24 = load i64, i64* @PAGE_SIZE, align 8
  %25 = icmp ugt i64 %23, %24
  br i1 %25, label %26, label %35

26:                                               ; preds = %2
  %27 = load i64, i64* %6, align 8
  %28 = load i32, i32* @GFP_KERNEL, align 4
  %29 = load i32, i32* @__GFP_HIGHMEM, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @__GFP_ZERO, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @PAGE_KERNEL, align 4
  %34 = call %struct.listen_sock* @__vmalloc(i64 %27, i32 %32, i32 %33)
  store %struct.listen_sock* %34, %struct.listen_sock** %7, align 8
  br label %39

35:                                               ; preds = %2
  %36 = load i64, i64* %6, align 8
  %37 = load i32, i32* @GFP_KERNEL, align 4
  %38 = call %struct.listen_sock* @kzalloc(i64 %36, i32 %37)
  store %struct.listen_sock* %38, %struct.listen_sock** %7, align 8
  br label %39

39:                                               ; preds = %35, %26
  %40 = load %struct.listen_sock*, %struct.listen_sock** %7, align 8
  %41 = icmp eq %struct.listen_sock* %40, null
  br i1 %41, label %42, label %45

42:                                               ; preds = %39
  %43 = load i32, i32* @ENOMEM, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %3, align 4
  br label %82

45:                                               ; preds = %39
  %46 = load %struct.listen_sock*, %struct.listen_sock** %7, align 8
  %47 = getelementptr inbounds %struct.listen_sock, %struct.listen_sock* %46, i32 0, i32 0
  store i32 3, i32* %47, align 4
  br label %48

48:                                               ; preds = %56, %45
  %49 = load %struct.listen_sock*, %struct.listen_sock** %7, align 8
  %50 = getelementptr inbounds %struct.listen_sock, %struct.listen_sock* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = shl i32 1, %51
  %53 = load i32, i32* %5, align 4
  %54 = icmp ult i32 %52, %53
  br i1 %54, label %55, label %61

55:                                               ; preds = %48
  br label %56

56:                                               ; preds = %55
  %57 = load %struct.listen_sock*, %struct.listen_sock** %7, align 8
  %58 = getelementptr inbounds %struct.listen_sock, %struct.listen_sock* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %58, align 4
  br label %48

61:                                               ; preds = %48
  %62 = load %struct.listen_sock*, %struct.listen_sock** %7, align 8
  %63 = getelementptr inbounds %struct.listen_sock, %struct.listen_sock* %62, i32 0, i32 2
  %64 = call i32 @get_random_bytes(i32* %63, i32 4)
  %65 = load %struct.request_sock_queue*, %struct.request_sock_queue** %4, align 8
  %66 = getelementptr inbounds %struct.request_sock_queue, %struct.request_sock_queue* %65, i32 0, i32 0
  %67 = call i32 @rwlock_init(i32* %66)
  %68 = load %struct.request_sock_queue*, %struct.request_sock_queue** %4, align 8
  %69 = getelementptr inbounds %struct.request_sock_queue, %struct.request_sock_queue* %68, i32 0, i32 2
  store i32* null, i32** %69, align 8
  %70 = load i32, i32* %5, align 4
  %71 = load %struct.listen_sock*, %struct.listen_sock** %7, align 8
  %72 = getelementptr inbounds %struct.listen_sock, %struct.listen_sock* %71, i32 0, i32 1
  store i32 %70, i32* %72, align 4
  %73 = load %struct.request_sock_queue*, %struct.request_sock_queue** %4, align 8
  %74 = getelementptr inbounds %struct.request_sock_queue, %struct.request_sock_queue* %73, i32 0, i32 0
  %75 = call i32 @write_lock_bh(i32* %74)
  %76 = load %struct.listen_sock*, %struct.listen_sock** %7, align 8
  %77 = load %struct.request_sock_queue*, %struct.request_sock_queue** %4, align 8
  %78 = getelementptr inbounds %struct.request_sock_queue, %struct.request_sock_queue* %77, i32 0, i32 1
  store %struct.listen_sock* %76, %struct.listen_sock** %78, align 8
  %79 = load %struct.request_sock_queue*, %struct.request_sock_queue** %4, align 8
  %80 = getelementptr inbounds %struct.request_sock_queue, %struct.request_sock_queue* %79, i32 0, i32 0
  %81 = call i32 @write_unlock_bh(i32* %80)
  store i32 0, i32* %3, align 4
  br label %82

82:                                               ; preds = %61, %42
  %83 = load i32, i32* %3, align 4
  ret i32 %83
}

declare dso_local i32 @min_t(i32, i32, i32) #1

declare dso_local i32 @max_t(i32, i32, i32) #1

declare dso_local i32 @roundup_pow_of_two(i32) #1

declare dso_local %struct.listen_sock* @__vmalloc(i64, i32, i32) #1

declare dso_local %struct.listen_sock* @kzalloc(i64, i32) #1

declare dso_local i32 @get_random_bytes(i32*, i32) #1

declare dso_local i32 @rwlock_init(i32*) #1

declare dso_local i32 @write_lock_bh(i32*) #1

declare dso_local i32 @write_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
