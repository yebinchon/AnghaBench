; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/dlm/extr_debug_fs.c_table_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/dlm/extr_debug_fs.c_table_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { %struct.seq_file*, i32* }
%struct.seq_file = type { i32 }

@format1_fops = common dso_local global i32 0, align 4
@format1_seq_ops = common dso_local global i32 0, align 4
@format2_fops = common dso_local global i32 0, align 4
@format2_seq_ops = common dso_local global i32 0, align 4
@format3_fops = common dso_local global i32 0, align 4
@format3_seq_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @table_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @table_open(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.seq_file*, align 8
  %7 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  store i32 -1, i32* %7, align 4
  %8 = load %struct.file*, %struct.file** %5, align 8
  %9 = getelementptr inbounds %struct.file, %struct.file* %8, i32 0, i32 1
  %10 = load i32*, i32** %9, align 8
  %11 = icmp eq i32* %10, @format1_fops
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load %struct.file*, %struct.file** %5, align 8
  %14 = call i32 @seq_open(%struct.file* %13, i32* @format1_seq_ops)
  store i32 %14, i32* %7, align 4
  br label %33

15:                                               ; preds = %2
  %16 = load %struct.file*, %struct.file** %5, align 8
  %17 = getelementptr inbounds %struct.file, %struct.file* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  %19 = icmp eq i32* %18, @format2_fops
  br i1 %19, label %20, label %23

20:                                               ; preds = %15
  %21 = load %struct.file*, %struct.file** %5, align 8
  %22 = call i32 @seq_open(%struct.file* %21, i32* @format2_seq_ops)
  store i32 %22, i32* %7, align 4
  br label %32

23:                                               ; preds = %15
  %24 = load %struct.file*, %struct.file** %5, align 8
  %25 = getelementptr inbounds %struct.file, %struct.file* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = icmp eq i32* %26, @format3_fops
  br i1 %27, label %28, label %31

28:                                               ; preds = %23
  %29 = load %struct.file*, %struct.file** %5, align 8
  %30 = call i32 @seq_open(%struct.file* %29, i32* @format3_seq_ops)
  store i32 %30, i32* %7, align 4
  br label %31

31:                                               ; preds = %28, %23
  br label %32

32:                                               ; preds = %31, %20
  br label %33

33:                                               ; preds = %32, %12
  %34 = load i32, i32* %7, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %33
  %37 = load i32, i32* %7, align 4
  store i32 %37, i32* %3, align 4
  br label %47

38:                                               ; preds = %33
  %39 = load %struct.file*, %struct.file** %5, align 8
  %40 = getelementptr inbounds %struct.file, %struct.file* %39, i32 0, i32 0
  %41 = load %struct.seq_file*, %struct.seq_file** %40, align 8
  store %struct.seq_file* %41, %struct.seq_file** %6, align 8
  %42 = load %struct.inode*, %struct.inode** %4, align 8
  %43 = getelementptr inbounds %struct.inode, %struct.inode* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.seq_file*, %struct.seq_file** %6, align 8
  %46 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 4
  store i32 0, i32* %3, align 4
  br label %47

47:                                               ; preds = %38, %36
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local i32 @seq_open(%struct.file*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
