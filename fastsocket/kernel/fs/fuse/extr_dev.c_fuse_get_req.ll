; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/fuse/extr_dev.c_fuse_get_req.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/fuse/extr_dev.c_fuse_get_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fuse_req = type { i32 }
%struct.fuse_conn = type { i32, i32, i32, i32 }

@EINTR = common dso_local global i32 0, align 4
@ENOTCONN = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.fuse_req* @fuse_get_req(%struct.fuse_conn* %0, i32 %1) #0 {
  %3 = alloca %struct.fuse_req*, align 8
  %4 = alloca %struct.fuse_conn*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.fuse_req*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.fuse_conn* %0, %struct.fuse_conn** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.fuse_conn*, %struct.fuse_conn** %4, align 8
  %11 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %10, i32 0, i32 0
  %12 = call i32 @atomic_inc(i32* %11)
  %13 = call i32 @block_sigs(i32* %7)
  %14 = load %struct.fuse_conn*, %struct.fuse_conn** %4, align 8
  %15 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.fuse_conn*, %struct.fuse_conn** %4, align 8
  %18 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  %23 = call i32 @wait_event_interruptible(i32 %16, i32 %22)
  store i32 %23, i32* %8, align 4
  %24 = call i32 @restore_sigs(i32* %7)
  %25 = load i32, i32* @EINTR, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %8, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %2
  br label %52

30:                                               ; preds = %2
  %31 = load i32, i32* @ENOTCONN, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %9, align 4
  %33 = load %struct.fuse_conn*, %struct.fuse_conn** %4, align 8
  %34 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %30
  br label %52

38:                                               ; preds = %30
  %39 = load i32, i32* %5, align 4
  %40 = call %struct.fuse_req* @fuse_request_alloc(i32 %39)
  store %struct.fuse_req* %40, %struct.fuse_req** %6, align 8
  %41 = load i32, i32* @ENOMEM, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %9, align 4
  %43 = load %struct.fuse_req*, %struct.fuse_req** %6, align 8
  %44 = icmp ne %struct.fuse_req* %43, null
  br i1 %44, label %46, label %45

45:                                               ; preds = %38
  br label %52

46:                                               ; preds = %38
  %47 = load %struct.fuse_req*, %struct.fuse_req** %6, align 8
  %48 = call i32 @fuse_req_init_context(%struct.fuse_req* %47)
  %49 = load %struct.fuse_req*, %struct.fuse_req** %6, align 8
  %50 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %49, i32 0, i32 0
  store i32 1, i32* %50, align 4
  %51 = load %struct.fuse_req*, %struct.fuse_req** %6, align 8
  store %struct.fuse_req* %51, %struct.fuse_req** %3, align 8
  br label %58

52:                                               ; preds = %45, %37, %29
  %53 = load %struct.fuse_conn*, %struct.fuse_conn** %4, align 8
  %54 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %53, i32 0, i32 0
  %55 = call i32 @atomic_dec(i32* %54)
  %56 = load i32, i32* %9, align 4
  %57 = call %struct.fuse_req* @ERR_PTR(i32 %56)
  store %struct.fuse_req* %57, %struct.fuse_req** %3, align 8
  br label %58

58:                                               ; preds = %52, %46
  %59 = load %struct.fuse_req*, %struct.fuse_req** %3, align 8
  ret %struct.fuse_req* %59
}

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @block_sigs(i32*) #1

declare dso_local i32 @wait_event_interruptible(i32, i32) #1

declare dso_local i32 @restore_sigs(i32*) #1

declare dso_local %struct.fuse_req* @fuse_request_alloc(i32) #1

declare dso_local i32 @fuse_req_init_context(%struct.fuse_req*) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local %struct.fuse_req* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
