; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/afs/extr_rxrpc.c_afs_alloc_flat_call.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/afs/extr_rxrpc.c_afs_alloc_flat_call.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.afs_call = type { i64, i64, i32, i32, i8*, i8*, %struct.afs_call_type* }
%struct.afs_call_type = type { i32 }

@GFP_NOFS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"CALL %p{%s} [%d]\00", align 1
@afs_outstanding_calls = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.afs_call* @afs_alloc_flat_call(%struct.afs_call_type* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.afs_call*, align 8
  %5 = alloca %struct.afs_call_type*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.afs_call*, align 8
  store %struct.afs_call_type* %0, %struct.afs_call_type** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load i32, i32* @GFP_NOFS, align 4
  %10 = call %struct.afs_call* @kzalloc(i32 48, i32 %9)
  store %struct.afs_call* %10, %struct.afs_call** %8, align 8
  %11 = load %struct.afs_call*, %struct.afs_call** %8, align 8
  %12 = icmp ne %struct.afs_call* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  br label %71

14:                                               ; preds = %3
  %15 = load %struct.afs_call*, %struct.afs_call** %8, align 8
  %16 = load %struct.afs_call_type*, %struct.afs_call_type** %5, align 8
  %17 = getelementptr inbounds %struct.afs_call_type, %struct.afs_call_type* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @atomic_read(i32* @afs_outstanding_calls)
  %20 = call i32 @_debug(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), %struct.afs_call* %15, i32 %18, i32 %19)
  %21 = call i32 @atomic_inc(i32* @afs_outstanding_calls)
  %22 = load %struct.afs_call_type*, %struct.afs_call_type** %5, align 8
  %23 = load %struct.afs_call*, %struct.afs_call** %8, align 8
  %24 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %23, i32 0, i32 6
  store %struct.afs_call_type* %22, %struct.afs_call_type** %24, align 8
  %25 = load i64, i64* %6, align 8
  %26 = load %struct.afs_call*, %struct.afs_call** %8, align 8
  %27 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %26, i32 0, i32 0
  store i64 %25, i64* %27, align 8
  %28 = load i64, i64* %7, align 8
  %29 = load %struct.afs_call*, %struct.afs_call** %8, align 8
  %30 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %29, i32 0, i32 1
  store i64 %28, i64* %30, align 8
  %31 = load i64, i64* %6, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %45

33:                                               ; preds = %14
  %34 = load i64, i64* %6, align 8
  %35 = load i32, i32* @GFP_NOFS, align 4
  %36 = call i8* @kmalloc(i64 %34, i32 %35)
  %37 = load %struct.afs_call*, %struct.afs_call** %8, align 8
  %38 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %37, i32 0, i32 5
  store i8* %36, i8** %38, align 8
  %39 = load %struct.afs_call*, %struct.afs_call** %8, align 8
  %40 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %39, i32 0, i32 5
  %41 = load i8*, i8** %40, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %44, label %43

43:                                               ; preds = %33
  br label %68

44:                                               ; preds = %33
  br label %45

45:                                               ; preds = %44, %14
  %46 = load i64, i64* %7, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %60

48:                                               ; preds = %45
  %49 = load i64, i64* %7, align 8
  %50 = load i32, i32* @GFP_NOFS, align 4
  %51 = call i8* @kmalloc(i64 %49, i32 %50)
  %52 = load %struct.afs_call*, %struct.afs_call** %8, align 8
  %53 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %52, i32 0, i32 4
  store i8* %51, i8** %53, align 8
  %54 = load %struct.afs_call*, %struct.afs_call** %8, align 8
  %55 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %54, i32 0, i32 4
  %56 = load i8*, i8** %55, align 8
  %57 = icmp ne i8* %56, null
  br i1 %57, label %59, label %58

58:                                               ; preds = %48
  br label %68

59:                                               ; preds = %48
  br label %60

60:                                               ; preds = %59, %45
  %61 = load %struct.afs_call*, %struct.afs_call** %8, align 8
  %62 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %61, i32 0, i32 3
  %63 = call i32 @init_waitqueue_head(i32* %62)
  %64 = load %struct.afs_call*, %struct.afs_call** %8, align 8
  %65 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %64, i32 0, i32 2
  %66 = call i32 @skb_queue_head_init(i32* %65)
  %67 = load %struct.afs_call*, %struct.afs_call** %8, align 8
  store %struct.afs_call* %67, %struct.afs_call** %4, align 8
  br label %72

68:                                               ; preds = %58, %43
  %69 = load %struct.afs_call*, %struct.afs_call** %8, align 8
  %70 = call i32 @afs_free_call(%struct.afs_call* %69)
  br label %71

71:                                               ; preds = %68, %13
  store %struct.afs_call* null, %struct.afs_call** %4, align 8
  br label %72

72:                                               ; preds = %71, %60
  %73 = load %struct.afs_call*, %struct.afs_call** %4, align 8
  ret %struct.afs_call* %73
}

declare dso_local %struct.afs_call* @kzalloc(i32, i32) #1

declare dso_local i32 @_debug(i8*, %struct.afs_call*, i32, i32) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i8* @kmalloc(i64, i32) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @skb_queue_head_init(i32*) #1

declare dso_local i32 @afs_free_call(%struct.afs_call*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
