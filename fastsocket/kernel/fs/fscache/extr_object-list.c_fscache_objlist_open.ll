; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/fscache/extr_object-list.c_fscache_objlist_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/fscache/extr_object-list.c_fscache_objlist_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { %struct.seq_file* }
%struct.seq_file = type { %struct.fscache_objlist_data* }
%struct.fscache_objlist_data = type { i32 }

@fscache_objlist_ops = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @fscache_objlist_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fscache_objlist_open(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.fscache_objlist_data*, align 8
  %7 = alloca %struct.seq_file*, align 8
  %8 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %9 = load %struct.file*, %struct.file** %5, align 8
  %10 = call i32 @seq_open(%struct.file* %9, i32* @fscache_objlist_ops)
  store i32 %10, i32* %8, align 4
  %11 = load i32, i32* %8, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* %8, align 4
  store i32 %14, i32* %3, align 4
  br label %35

15:                                               ; preds = %2
  %16 = load %struct.file*, %struct.file** %5, align 8
  %17 = getelementptr inbounds %struct.file, %struct.file* %16, i32 0, i32 0
  %18 = load %struct.seq_file*, %struct.seq_file** %17, align 8
  store %struct.seq_file* %18, %struct.seq_file** %7, align 8
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call %struct.fscache_objlist_data* @kmalloc(i32 4, i32 %19)
  store %struct.fscache_objlist_data* %20, %struct.fscache_objlist_data** %6, align 8
  %21 = load %struct.fscache_objlist_data*, %struct.fscache_objlist_data** %6, align 8
  %22 = icmp ne %struct.fscache_objlist_data* %21, null
  br i1 %22, label %29, label %23

23:                                               ; preds = %15
  %24 = load %struct.inode*, %struct.inode** %4, align 8
  %25 = load %struct.file*, %struct.file** %5, align 8
  %26 = call i32 @seq_release(%struct.inode* %24, %struct.file* %25)
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %35

29:                                               ; preds = %15
  %30 = load %struct.fscache_objlist_data*, %struct.fscache_objlist_data** %6, align 8
  %31 = call i32 @fscache_objlist_config(%struct.fscache_objlist_data* %30)
  %32 = load %struct.fscache_objlist_data*, %struct.fscache_objlist_data** %6, align 8
  %33 = load %struct.seq_file*, %struct.seq_file** %7, align 8
  %34 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %33, i32 0, i32 0
  store %struct.fscache_objlist_data* %32, %struct.fscache_objlist_data** %34, align 8
  store i32 0, i32* %3, align 4
  br label %35

35:                                               ; preds = %29, %23, %13
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local i32 @seq_open(%struct.file*, i32*) #1

declare dso_local %struct.fscache_objlist_data* @kmalloc(i32, i32) #1

declare dso_local i32 @seq_release(%struct.inode*, %struct.file*) #1

declare dso_local i32 @fscache_objlist_config(%struct.fscache_objlist_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
