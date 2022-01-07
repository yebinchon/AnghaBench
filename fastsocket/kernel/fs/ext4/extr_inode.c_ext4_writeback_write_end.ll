; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_inode.c_ext4_writeback_write_end.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_inode.c_ext4_writeback_write_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.address_space = type { %struct.inode* }
%struct.inode = type { i32, i64 }
%struct.page = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.address_space*, i32, i32, i32, %struct.page*, i8*)* @ext4_writeback_write_end to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext4_writeback_write_end(%struct.file* %0, %struct.address_space* %1, i32 %2, i32 %3, i32 %4, %struct.page* %5, i8* %6) #0 {
  %8 = alloca %struct.file*, align 8
  %9 = alloca %struct.address_space*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.page*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.inode*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %8, align 8
  store %struct.address_space* %1, %struct.address_space** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store %struct.page* %5, %struct.page** %13, align 8
  store i8* %6, i8** %14, align 8
  %19 = call i32* (...) @ext4_journal_current_handle()
  store i32* %19, i32** %15, align 8
  %20 = load %struct.address_space*, %struct.address_space** %9, align 8
  %21 = getelementptr inbounds %struct.address_space, %struct.address_space* %20, i32 0, i32 0
  %22 = load %struct.inode*, %struct.inode** %21, align 8
  store %struct.inode* %22, %struct.inode** %16, align 8
  store i32 0, i32* %17, align 4
  %23 = load %struct.inode*, %struct.inode** %16, align 8
  %24 = load i32, i32* %10, align 4
  %25 = load i32, i32* %11, align 4
  %26 = load i32, i32* %12, align 4
  %27 = call i32 @trace_ext4_writeback_write_end(%struct.inode* %23, i32 %24, i32 %25, i32 %26)
  %28 = load %struct.file*, %struct.file** %8, align 8
  %29 = load %struct.address_space*, %struct.address_space** %9, align 8
  %30 = load i32, i32* %10, align 4
  %31 = load i32, i32* %11, align 4
  %32 = load i32, i32* %12, align 4
  %33 = load %struct.page*, %struct.page** %13, align 8
  %34 = load i8*, i8** %14, align 8
  %35 = call i32 @ext4_generic_write_end(%struct.file* %28, %struct.address_space* %29, i32 %30, i32 %31, i32 %32, %struct.page* %33, i8* %34)
  store i32 %35, i32* %18, align 4
  %36 = load i32, i32* %18, align 4
  store i32 %36, i32* %12, align 4
  %37 = load i32, i32* %10, align 4
  %38 = load i32, i32* %11, align 4
  %39 = add i32 %37, %38
  %40 = load %struct.inode*, %struct.inode** %16, align 8
  %41 = getelementptr inbounds %struct.inode, %struct.inode* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp ugt i32 %39, %42
  br i1 %43, label %44, label %52

44:                                               ; preds = %7
  %45 = load %struct.inode*, %struct.inode** %16, align 8
  %46 = call i64 @ext4_can_truncate(%struct.inode* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %44
  %49 = load i32*, i32** %15, align 8
  %50 = load %struct.inode*, %struct.inode** %16, align 8
  %51 = call i32 @ext4_orphan_add(i32* %49, %struct.inode* %50)
  br label %52

52:                                               ; preds = %48, %44, %7
  %53 = load i32, i32* %18, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %52
  %56 = load i32, i32* %18, align 4
  store i32 %56, i32* %17, align 4
  br label %57

57:                                               ; preds = %55, %52
  %58 = load i32*, i32** %15, align 8
  %59 = call i32 @ext4_journal_stop(i32* %58)
  store i32 %59, i32* %18, align 4
  %60 = load i32, i32* %17, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %64, label %62

62:                                               ; preds = %57
  %63 = load i32, i32* %18, align 4
  store i32 %63, i32* %17, align 4
  br label %64

64:                                               ; preds = %62, %57
  %65 = load i32, i32* %10, align 4
  %66 = load i32, i32* %11, align 4
  %67 = add i32 %65, %66
  %68 = load %struct.inode*, %struct.inode** %16, align 8
  %69 = getelementptr inbounds %struct.inode, %struct.inode* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = icmp ugt i32 %67, %70
  br i1 %71, label %72, label %83

72:                                               ; preds = %64
  %73 = load %struct.inode*, %struct.inode** %16, align 8
  %74 = call i32 @ext4_truncate_failed_write(%struct.inode* %73)
  %75 = load %struct.inode*, %struct.inode** %16, align 8
  %76 = getelementptr inbounds %struct.inode, %struct.inode* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %72
  %80 = load %struct.inode*, %struct.inode** %16, align 8
  %81 = call i32 @ext4_orphan_del(i32* null, %struct.inode* %80)
  br label %82

82:                                               ; preds = %79, %72
  br label %83

83:                                               ; preds = %82, %64
  %84 = load i32, i32* %17, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %83
  %87 = load i32, i32* %17, align 4
  br label %90

88:                                               ; preds = %83
  %89 = load i32, i32* %12, align 4
  br label %90

90:                                               ; preds = %88, %86
  %91 = phi i32 [ %87, %86 ], [ %89, %88 ]
  ret i32 %91
}

declare dso_local i32* @ext4_journal_current_handle(...) #1

declare dso_local i32 @trace_ext4_writeback_write_end(%struct.inode*, i32, i32, i32) #1

declare dso_local i32 @ext4_generic_write_end(%struct.file*, %struct.address_space*, i32, i32, i32, %struct.page*, i8*) #1

declare dso_local i64 @ext4_can_truncate(%struct.inode*) #1

declare dso_local i32 @ext4_orphan_add(i32*, %struct.inode*) #1

declare dso_local i32 @ext4_journal_stop(i32*) #1

declare dso_local i32 @ext4_truncate_failed_write(%struct.inode*) #1

declare dso_local i32 @ext4_orphan_del(i32*, %struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
