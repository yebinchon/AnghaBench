; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ufs/extr_util.c_ubh_bforget.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ufs/extr_util.c_ubh_bforget.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ufs_buffer_head = type { i32, i64* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ubh_bforget(%struct.ufs_buffer_head* %0) #0 {
  %2 = alloca %struct.ufs_buffer_head*, align 8
  %3 = alloca i32, align 4
  store %struct.ufs_buffer_head* %0, %struct.ufs_buffer_head** %2, align 8
  %4 = load %struct.ufs_buffer_head*, %struct.ufs_buffer_head** %2, align 8
  %5 = icmp ne %struct.ufs_buffer_head* %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  br label %36

7:                                                ; preds = %1
  store i32 0, i32* %3, align 4
  br label %8

8:                                                ; preds = %33, %7
  %9 = load i32, i32* %3, align 4
  %10 = load %struct.ufs_buffer_head*, %struct.ufs_buffer_head** %2, align 8
  %11 = getelementptr inbounds %struct.ufs_buffer_head, %struct.ufs_buffer_head* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp ult i32 %9, %12
  br i1 %13, label %14, label %36

14:                                               ; preds = %8
  %15 = load %struct.ufs_buffer_head*, %struct.ufs_buffer_head** %2, align 8
  %16 = getelementptr inbounds %struct.ufs_buffer_head, %struct.ufs_buffer_head* %15, i32 0, i32 1
  %17 = load i64*, i64** %16, align 8
  %18 = load i32, i32* %3, align 4
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds i64, i64* %17, i64 %19
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %32

23:                                               ; preds = %14
  %24 = load %struct.ufs_buffer_head*, %struct.ufs_buffer_head** %2, align 8
  %25 = getelementptr inbounds %struct.ufs_buffer_head, %struct.ufs_buffer_head* %24, i32 0, i32 1
  %26 = load i64*, i64** %25, align 8
  %27 = load i32, i32* %3, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds i64, i64* %26, i64 %28
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @bforget(i64 %30)
  br label %32

32:                                               ; preds = %23, %14
  br label %33

33:                                               ; preds = %32
  %34 = load i32, i32* %3, align 4
  %35 = add i32 %34, 1
  store i32 %35, i32* %3, align 4
  br label %8

36:                                               ; preds = %6, %8
  ret void
}

declare dso_local i32 @bforget(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
