; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext3/extr_inode.c_ext3_can_truncate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext3/extr_inode.c_ext3_can_truncate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ext3_can_truncate(%struct.inode* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.inode*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  %4 = load %struct.inode*, %struct.inode** %3, align 8
  %5 = call i64 @IS_APPEND(%struct.inode* %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %11, label %7

7:                                                ; preds = %1
  %8 = load %struct.inode*, %struct.inode** %3, align 8
  %9 = call i64 @IS_IMMUTABLE(%struct.inode* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %7, %1
  store i32 0, i32* %2, align 4
  br label %39

12:                                               ; preds = %7
  %13 = load %struct.inode*, %struct.inode** %3, align 8
  %14 = getelementptr inbounds %struct.inode, %struct.inode* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i64 @S_ISREG(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %12
  store i32 1, i32* %2, align 4
  br label %39

19:                                               ; preds = %12
  %20 = load %struct.inode*, %struct.inode** %3, align 8
  %21 = getelementptr inbounds %struct.inode, %struct.inode* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @S_ISDIR(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  store i32 1, i32* %2, align 4
  br label %39

26:                                               ; preds = %19
  %27 = load %struct.inode*, %struct.inode** %3, align 8
  %28 = getelementptr inbounds %struct.inode, %struct.inode* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i64 @S_ISLNK(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %26
  %33 = load %struct.inode*, %struct.inode** %3, align 8
  %34 = call i32 @ext3_inode_is_fast_symlink(%struct.inode* %33)
  %35 = icmp ne i32 %34, 0
  %36 = xor i1 %35, true
  %37 = zext i1 %36 to i32
  store i32 %37, i32* %2, align 4
  br label %39

38:                                               ; preds = %26
  store i32 0, i32* %2, align 4
  br label %39

39:                                               ; preds = %38, %32, %25, %18, %11
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local i64 @IS_APPEND(%struct.inode*) #1

declare dso_local i64 @IS_IMMUTABLE(%struct.inode*) #1

declare dso_local i64 @S_ISREG(i32) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i64 @S_ISLNK(i32) #1

declare dso_local i32 @ext3_inode_is_fast_symlink(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
