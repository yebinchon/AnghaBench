; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_anon_inodes.c_anon_inode_getfd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_anon_inodes.c_anon_inode_getfd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file_operations = type { i32 }
%struct.file = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @anon_inode_getfd(i8* %0, %struct.file_operations* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.file_operations*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.file*, align 8
  store i8* %0, i8** %6, align 8
  store %struct.file_operations* %1, %struct.file_operations** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load i32, i32* %9, align 4
  %14 = call i32 @get_unused_fd_flags(i32 %13)
  store i32 %14, i32* %10, align 4
  %15 = load i32, i32* %10, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %4
  %18 = load i32, i32* %10, align 4
  store i32 %18, i32* %5, align 4
  br label %41

19:                                               ; preds = %4
  %20 = load i32, i32* %10, align 4
  store i32 %20, i32* %11, align 4
  %21 = load i8*, i8** %6, align 8
  %22 = load %struct.file_operations*, %struct.file_operations** %7, align 8
  %23 = load i8*, i8** %8, align 8
  %24 = load i32, i32* %9, align 4
  %25 = call %struct.file* @anon_inode_getfile(i8* %21, %struct.file_operations* %22, i8* %23, i32 %24)
  store %struct.file* %25, %struct.file** %12, align 8
  %26 = load %struct.file*, %struct.file** %12, align 8
  %27 = call i64 @IS_ERR(%struct.file* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %19
  %30 = load %struct.file*, %struct.file** %12, align 8
  %31 = call i32 @PTR_ERR(%struct.file* %30)
  store i32 %31, i32* %10, align 4
  br label %37

32:                                               ; preds = %19
  %33 = load i32, i32* %11, align 4
  %34 = load %struct.file*, %struct.file** %12, align 8
  %35 = call i32 @fd_install(i32 %33, %struct.file* %34)
  %36 = load i32, i32* %11, align 4
  store i32 %36, i32* %5, align 4
  br label %41

37:                                               ; preds = %29
  %38 = load i32, i32* %11, align 4
  %39 = call i32 @put_unused_fd(i32 %38)
  %40 = load i32, i32* %10, align 4
  store i32 %40, i32* %5, align 4
  br label %41

41:                                               ; preds = %37, %32, %17
  %42 = load i32, i32* %5, align 4
  ret i32 %42
}

declare dso_local i32 @get_unused_fd_flags(i32) #1

declare dso_local %struct.file* @anon_inode_getfile(i8*, %struct.file_operations*, i8*, i32) #1

declare dso_local i64 @IS_ERR(%struct.file*) #1

declare dso_local i32 @PTR_ERR(%struct.file*) #1

declare dso_local i32 @fd_install(i32, %struct.file*) #1

declare dso_local i32 @put_unused_fd(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
