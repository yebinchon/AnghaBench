; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/rds/extr_rdma.c_rds_atomic_free_op.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/rds/extr_rdma.c_rds_atomic_free_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rm_atomic_op = type { i64, i32*, i32 }
%struct.page = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rds_atomic_free_op(%struct.rm_atomic_op* %0) #0 {
  %2 = alloca %struct.rm_atomic_op*, align 8
  %3 = alloca %struct.page*, align 8
  store %struct.rm_atomic_op* %0, %struct.rm_atomic_op** %2, align 8
  %4 = load %struct.rm_atomic_op*, %struct.rm_atomic_op** %2, align 8
  %5 = getelementptr inbounds %struct.rm_atomic_op, %struct.rm_atomic_op* %4, i32 0, i32 2
  %6 = load i32, i32* %5, align 8
  %7 = call %struct.page* @sg_page(i32 %6)
  store %struct.page* %7, %struct.page** %3, align 8
  %8 = load %struct.page*, %struct.page** %3, align 8
  %9 = call i32 @set_page_dirty(%struct.page* %8)
  %10 = load %struct.page*, %struct.page** %3, align 8
  %11 = call i32 @put_page(%struct.page* %10)
  %12 = load %struct.rm_atomic_op*, %struct.rm_atomic_op** %2, align 8
  %13 = getelementptr inbounds %struct.rm_atomic_op, %struct.rm_atomic_op* %12, i32 0, i32 1
  %14 = load i32*, i32** %13, align 8
  %15 = call i32 @kfree(i32* %14)
  %16 = load %struct.rm_atomic_op*, %struct.rm_atomic_op** %2, align 8
  %17 = getelementptr inbounds %struct.rm_atomic_op, %struct.rm_atomic_op* %16, i32 0, i32 1
  store i32* null, i32** %17, align 8
  %18 = load %struct.rm_atomic_op*, %struct.rm_atomic_op** %2, align 8
  %19 = getelementptr inbounds %struct.rm_atomic_op, %struct.rm_atomic_op* %18, i32 0, i32 0
  store i64 0, i64* %19, align 8
  ret void
}

declare dso_local %struct.page* @sg_page(i32) #1

declare dso_local i32 @set_page_dirty(%struct.page*) #1

declare dso_local i32 @put_page(%struct.page*) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
