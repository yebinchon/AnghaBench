; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext3/extr_inode.c_ext3_reserve_inode_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext3/extr_inode.c_ext3_reserve_inode_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.ext3_iloc = type { i32* }

@.str = private unnamed_addr constant [17 x i8] c"get_write_access\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ext3_reserve_inode_write(i32* %0, %struct.inode* %1, %struct.ext3_iloc* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.ext3_iloc*, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.inode* %1, %struct.inode** %5, align 8
  store %struct.ext3_iloc* %2, %struct.ext3_iloc** %6, align 8
  store i32 0, i32* %7, align 4
  %8 = load i32*, i32** %4, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %10, label %37

10:                                               ; preds = %3
  %11 = load %struct.inode*, %struct.inode** %5, align 8
  %12 = load %struct.ext3_iloc*, %struct.ext3_iloc** %6, align 8
  %13 = call i32 @ext3_get_inode_loc(%struct.inode* %11, %struct.ext3_iloc* %12)
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %36, label %16

16:                                               ; preds = %10
  %17 = load %struct.ext3_iloc*, %struct.ext3_iloc** %6, align 8
  %18 = getelementptr inbounds %struct.ext3_iloc, %struct.ext3_iloc* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = call i32 @BUFFER_TRACE(i32* %19, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %21 = load i32*, i32** %4, align 8
  %22 = load %struct.ext3_iloc*, %struct.ext3_iloc** %6, align 8
  %23 = getelementptr inbounds %struct.ext3_iloc, %struct.ext3_iloc* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = call i32 @ext3_journal_get_write_access(i32* %21, i32* %24)
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %16
  %29 = load %struct.ext3_iloc*, %struct.ext3_iloc** %6, align 8
  %30 = getelementptr inbounds %struct.ext3_iloc, %struct.ext3_iloc* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = call i32 @brelse(i32* %31)
  %33 = load %struct.ext3_iloc*, %struct.ext3_iloc** %6, align 8
  %34 = getelementptr inbounds %struct.ext3_iloc, %struct.ext3_iloc* %33, i32 0, i32 0
  store i32* null, i32** %34, align 8
  br label %35

35:                                               ; preds = %28, %16
  br label %36

36:                                               ; preds = %35, %10
  br label %37

37:                                               ; preds = %36, %3
  %38 = load %struct.inode*, %struct.inode** %5, align 8
  %39 = getelementptr inbounds %struct.inode, %struct.inode* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %7, align 4
  %42 = call i32 @ext3_std_error(i32 %40, i32 %41)
  %43 = load i32, i32* %7, align 4
  ret i32 %43
}

declare dso_local i32 @ext3_get_inode_loc(%struct.inode*, %struct.ext3_iloc*) #1

declare dso_local i32 @BUFFER_TRACE(i32*, i8*) #1

declare dso_local i32 @ext3_journal_get_write_access(i32*, i32*) #1

declare dso_local i32 @brelse(i32*) #1

declare dso_local i32 @ext3_std_error(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
