; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/fuse/extr_dev.c_fuse_put_request.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/fuse/extr_dev.c_fuse_put_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fuse_conn = type { i32 }
%struct.fuse_req = type { i64, i64, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fuse_put_request(%struct.fuse_conn* %0, %struct.fuse_req* %1) #0 {
  %3 = alloca %struct.fuse_conn*, align 8
  %4 = alloca %struct.fuse_req*, align 8
  store %struct.fuse_conn* %0, %struct.fuse_conn** %3, align 8
  store %struct.fuse_req* %1, %struct.fuse_req** %4, align 8
  %5 = load %struct.fuse_req*, %struct.fuse_req** %4, align 8
  %6 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %5, i32 0, i32 2
  %7 = call i64 @atomic_dec_and_test(i32* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %31

9:                                                ; preds = %2
  %10 = load %struct.fuse_req*, %struct.fuse_req** %4, align 8
  %11 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %9
  %15 = load %struct.fuse_conn*, %struct.fuse_conn** %3, align 8
  %16 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %15, i32 0, i32 0
  %17 = call i32 @atomic_dec(i32* %16)
  br label %18

18:                                               ; preds = %14, %9
  %19 = load %struct.fuse_req*, %struct.fuse_req** %4, align 8
  %20 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %18
  %24 = load %struct.fuse_conn*, %struct.fuse_conn** %3, align 8
  %25 = load %struct.fuse_req*, %struct.fuse_req** %4, align 8
  %26 = call i32 @put_reserved_req(%struct.fuse_conn* %24, %struct.fuse_req* %25)
  br label %30

27:                                               ; preds = %18
  %28 = load %struct.fuse_req*, %struct.fuse_req** %4, align 8
  %29 = call i32 @fuse_request_free(%struct.fuse_req* %28)
  br label %30

30:                                               ; preds = %27, %23
  br label %31

31:                                               ; preds = %30, %2
  ret void
}

declare dso_local i64 @atomic_dec_and_test(i32*) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @put_reserved_req(%struct.fuse_conn*, %struct.fuse_req*) #1

declare dso_local i32 @fuse_request_free(%struct.fuse_req*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
