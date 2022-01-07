; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_disk-io.c_verify_parent_transid.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_disk-io.c_verify_parent_transid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.extent_io_tree = type { i32 }
%struct.extent_buffer = type { i64, i64 }
%struct.extent_state = type { i32 }

@EAGAIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [61 x i8] c"parent transid verify failed on %llu wanted %llu found %llu\0A\00", align 1
@GFP_NOFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.extent_io_tree*, %struct.extent_buffer*, i64, i32)* @verify_parent_transid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @verify_parent_transid(%struct.extent_io_tree* %0, %struct.extent_buffer* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.extent_io_tree*, align 8
  %7 = alloca %struct.extent_buffer*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.extent_state*, align 8
  %11 = alloca i32, align 4
  store %struct.extent_io_tree* %0, %struct.extent_io_tree** %6, align 8
  store %struct.extent_buffer* %1, %struct.extent_buffer** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.extent_state* null, %struct.extent_state** %10, align 8
  %12 = load i64, i64* %8, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %4
  %15 = load %struct.extent_buffer*, %struct.extent_buffer** %7, align 8
  %16 = call i64 @btrfs_header_generation(%struct.extent_buffer* %15)
  %17 = load i64, i64* %8, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %14, %4
  store i32 0, i32* %5, align 4
  br label %75

20:                                               ; preds = %14
  %21 = load i32, i32* %9, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %20
  %24 = load i32, i32* @EAGAIN, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %5, align 4
  br label %75

26:                                               ; preds = %20
  %27 = load %struct.extent_io_tree*, %struct.extent_io_tree** %6, align 8
  %28 = load %struct.extent_buffer*, %struct.extent_buffer** %7, align 8
  %29 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.extent_buffer*, %struct.extent_buffer** %7, align 8
  %32 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.extent_buffer*, %struct.extent_buffer** %7, align 8
  %35 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = add nsw i64 %33, %36
  %38 = sub nsw i64 %37, 1
  %39 = call i32 @lock_extent_bits(%struct.extent_io_tree* %27, i64 %30, i64 %38, i32 0, %struct.extent_state** %10)
  %40 = load %struct.extent_buffer*, %struct.extent_buffer** %7, align 8
  %41 = call i64 @extent_buffer_uptodate(%struct.extent_buffer* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %26
  %44 = load %struct.extent_buffer*, %struct.extent_buffer** %7, align 8
  %45 = call i64 @btrfs_header_generation(%struct.extent_buffer* %44)
  %46 = load i64, i64* %8, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %43
  store i32 0, i32* %11, align 4
  br label %59

49:                                               ; preds = %43, %26
  %50 = load %struct.extent_buffer*, %struct.extent_buffer** %7, align 8
  %51 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* %8, align 8
  %54 = load %struct.extent_buffer*, %struct.extent_buffer** %7, align 8
  %55 = call i64 @btrfs_header_generation(%struct.extent_buffer* %54)
  %56 = call i32 @printk_ratelimited(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), i64 %52, i64 %53, i64 %55)
  store i32 1, i32* %11, align 4
  %57 = load %struct.extent_buffer*, %struct.extent_buffer** %7, align 8
  %58 = call i32 @clear_extent_buffer_uptodate(%struct.extent_buffer* %57)
  br label %59

59:                                               ; preds = %49, %48
  %60 = load %struct.extent_io_tree*, %struct.extent_io_tree** %6, align 8
  %61 = load %struct.extent_buffer*, %struct.extent_buffer** %7, align 8
  %62 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.extent_buffer*, %struct.extent_buffer** %7, align 8
  %65 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.extent_buffer*, %struct.extent_buffer** %7, align 8
  %68 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = add nsw i64 %66, %69
  %71 = sub nsw i64 %70, 1
  %72 = load i32, i32* @GFP_NOFS, align 4
  %73 = call i32 @unlock_extent_cached(%struct.extent_io_tree* %60, i64 %63, i64 %71, %struct.extent_state** %10, i32 %72)
  %74 = load i32, i32* %11, align 4
  store i32 %74, i32* %5, align 4
  br label %75

75:                                               ; preds = %59, %23, %19
  %76 = load i32, i32* %5, align 4
  ret i32 %76
}

declare dso_local i64 @btrfs_header_generation(%struct.extent_buffer*) #1

declare dso_local i32 @lock_extent_bits(%struct.extent_io_tree*, i64, i64, i32, %struct.extent_state**) #1

declare dso_local i64 @extent_buffer_uptodate(%struct.extent_buffer*) #1

declare dso_local i32 @printk_ratelimited(i8*, i64, i64, i64) #1

declare dso_local i32 @clear_extent_buffer_uptodate(%struct.extent_buffer*) #1

declare dso_local i32 @unlock_extent_cached(%struct.extent_io_tree*, i64, i64, %struct.extent_state**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
