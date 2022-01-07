; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/fuse/extr_dev.c_fuse_request_free.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/fuse/extr_dev.c_fuse_request_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fuse_req = type { i64, i64, i64 }

@fuse_req_cachep = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fuse_request_free(%struct.fuse_req* %0) #0 {
  %2 = alloca %struct.fuse_req*, align 8
  store %struct.fuse_req* %0, %struct.fuse_req** %2, align 8
  %3 = load %struct.fuse_req*, %struct.fuse_req** %2, align 8
  %4 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load %struct.fuse_req*, %struct.fuse_req** %2, align 8
  %7 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %5, %8
  br i1 %9, label %10, label %19

10:                                               ; preds = %1
  %11 = load %struct.fuse_req*, %struct.fuse_req** %2, align 8
  %12 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = call i32 @kfree(i64 %13)
  %15 = load %struct.fuse_req*, %struct.fuse_req** %2, align 8
  %16 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = call i32 @kfree(i64 %17)
  br label %19

19:                                               ; preds = %10, %1
  %20 = load i32, i32* @fuse_req_cachep, align 4
  %21 = load %struct.fuse_req*, %struct.fuse_req** %2, align 8
  %22 = call i32 @kmem_cache_free(i32 %20, %struct.fuse_req* %21)
  ret void
}

declare dso_local i32 @kfree(i64) #1

declare dso_local i32 @kmem_cache_free(i32, %struct.fuse_req*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
