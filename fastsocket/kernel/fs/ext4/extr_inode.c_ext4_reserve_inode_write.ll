; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_inode.c_ext4_reserve_inode_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_inode.c_ext4_reserve_inode_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.ext4_iloc = type { i32* }

@.str = private unnamed_addr constant [17 x i8] c"get_write_access\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ext4_reserve_inode_write(i32* %0, %struct.inode* %1, %struct.ext4_iloc* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.ext4_iloc*, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.inode* %1, %struct.inode** %5, align 8
  store %struct.ext4_iloc* %2, %struct.ext4_iloc** %6, align 8
  %8 = load %struct.inode*, %struct.inode** %5, align 8
  %9 = load %struct.ext4_iloc*, %struct.ext4_iloc** %6, align 8
  %10 = call i32 @ext4_get_inode_loc(%struct.inode* %8, %struct.ext4_iloc* %9)
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %33, label %13

13:                                               ; preds = %3
  %14 = load %struct.ext4_iloc*, %struct.ext4_iloc** %6, align 8
  %15 = getelementptr inbounds %struct.ext4_iloc, %struct.ext4_iloc* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = call i32 @BUFFER_TRACE(i32* %16, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %18 = load i32*, i32** %4, align 8
  %19 = load %struct.ext4_iloc*, %struct.ext4_iloc** %6, align 8
  %20 = getelementptr inbounds %struct.ext4_iloc, %struct.ext4_iloc* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = call i32 @ext4_journal_get_write_access(i32* %18, i32* %21)
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %13
  %26 = load %struct.ext4_iloc*, %struct.ext4_iloc** %6, align 8
  %27 = getelementptr inbounds %struct.ext4_iloc, %struct.ext4_iloc* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = call i32 @brelse(i32* %28)
  %30 = load %struct.ext4_iloc*, %struct.ext4_iloc** %6, align 8
  %31 = getelementptr inbounds %struct.ext4_iloc, %struct.ext4_iloc* %30, i32 0, i32 0
  store i32* null, i32** %31, align 8
  br label %32

32:                                               ; preds = %25, %13
  br label %33

33:                                               ; preds = %32, %3
  %34 = load %struct.inode*, %struct.inode** %5, align 8
  %35 = getelementptr inbounds %struct.inode, %struct.inode* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @ext4_std_error(i32 %36, i32 %37)
  %39 = load i32, i32* %7, align 4
  ret i32 %39
}

declare dso_local i32 @ext4_get_inode_loc(%struct.inode*, %struct.ext4_iloc*) #1

declare dso_local i32 @BUFFER_TRACE(i32*, i8*) #1

declare dso_local i32 @ext4_journal_get_write_access(i32*, i32*) #1

declare dso_local i32 @brelse(i32*) #1

declare dso_local i32 @ext4_std_error(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
