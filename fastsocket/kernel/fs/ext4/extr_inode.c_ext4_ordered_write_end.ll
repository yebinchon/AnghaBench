; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_inode.c_ext4_ordered_write_end.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_inode.c_ext4_ordered_write_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.address_space = type { %struct.inode* }
%struct.inode = type { i32, i64 }
%struct.page = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.address_space*, i32, i32, i32, %struct.page*, i8*)* @ext4_ordered_write_end to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext4_ordered_write_end(%struct.file* %0, %struct.address_space* %1, i32 %2, i32 %3, i32 %4, %struct.page* %5, i8* %6) #0 {
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
  %27 = call i32 @trace_ext4_ordered_write_end(%struct.inode* %23, i32 %24, i32 %25, i32 %26)
  %28 = load i32*, i32** %15, align 8
  %29 = load %struct.inode*, %struct.inode** %16, align 8
  %30 = call i32 @ext4_jbd2_file_inode(i32* %28, %struct.inode* %29)
  store i32 %30, i32* %17, align 4
  %31 = load i32, i32* %17, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %64

33:                                               ; preds = %7
  %34 = load %struct.file*, %struct.file** %8, align 8
  %35 = load %struct.address_space*, %struct.address_space** %9, align 8
  %36 = load i32, i32* %10, align 4
  %37 = load i32, i32* %11, align 4
  %38 = load i32, i32* %12, align 4
  %39 = load %struct.page*, %struct.page** %13, align 8
  %40 = load i8*, i8** %14, align 8
  %41 = call i32 @ext4_generic_write_end(%struct.file* %34, %struct.address_space* %35, i32 %36, i32 %37, i32 %38, %struct.page* %39, i8* %40)
  store i32 %41, i32* %18, align 4
  %42 = load i32, i32* %18, align 4
  store i32 %42, i32* %12, align 4
  %43 = load i32, i32* %10, align 4
  %44 = load i32, i32* %11, align 4
  %45 = add i32 %43, %44
  %46 = load %struct.inode*, %struct.inode** %16, align 8
  %47 = getelementptr inbounds %struct.inode, %struct.inode* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp ugt i32 %45, %48
  br i1 %49, label %50, label %58

50:                                               ; preds = %33
  %51 = load %struct.inode*, %struct.inode** %16, align 8
  %52 = call i64 @ext4_can_truncate(%struct.inode* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %50
  %55 = load i32*, i32** %15, align 8
  %56 = load %struct.inode*, %struct.inode** %16, align 8
  %57 = call i32 @ext4_orphan_add(i32* %55, %struct.inode* %56)
  br label %58

58:                                               ; preds = %54, %50, %33
  %59 = load i32, i32* %18, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %58
  %62 = load i32, i32* %18, align 4
  store i32 %62, i32* %17, align 4
  br label %63

63:                                               ; preds = %61, %58
  br label %69

64:                                               ; preds = %7
  %65 = load %struct.page*, %struct.page** %13, align 8
  %66 = call i32 @unlock_page(%struct.page* %65)
  %67 = load %struct.page*, %struct.page** %13, align 8
  %68 = call i32 @page_cache_release(%struct.page* %67)
  br label %69

69:                                               ; preds = %64, %63
  %70 = load i32*, i32** %15, align 8
  %71 = call i32 @ext4_journal_stop(i32* %70)
  store i32 %71, i32* %18, align 4
  %72 = load i32, i32* %17, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %76, label %74

74:                                               ; preds = %69
  %75 = load i32, i32* %18, align 4
  store i32 %75, i32* %17, align 4
  br label %76

76:                                               ; preds = %74, %69
  %77 = load i32, i32* %10, align 4
  %78 = load i32, i32* %11, align 4
  %79 = add i32 %77, %78
  %80 = load %struct.inode*, %struct.inode** %16, align 8
  %81 = getelementptr inbounds %struct.inode, %struct.inode* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = icmp ugt i32 %79, %82
  br i1 %83, label %84, label %95

84:                                               ; preds = %76
  %85 = load %struct.inode*, %struct.inode** %16, align 8
  %86 = call i32 @ext4_truncate_failed_write(%struct.inode* %85)
  %87 = load %struct.inode*, %struct.inode** %16, align 8
  %88 = getelementptr inbounds %struct.inode, %struct.inode* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %84
  %92 = load %struct.inode*, %struct.inode** %16, align 8
  %93 = call i32 @ext4_orphan_del(i32* null, %struct.inode* %92)
  br label %94

94:                                               ; preds = %91, %84
  br label %95

95:                                               ; preds = %94, %76
  %96 = load i32, i32* %17, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %95
  %99 = load i32, i32* %17, align 4
  br label %102

100:                                              ; preds = %95
  %101 = load i32, i32* %12, align 4
  br label %102

102:                                              ; preds = %100, %98
  %103 = phi i32 [ %99, %98 ], [ %101, %100 ]
  ret i32 %103
}

declare dso_local i32* @ext4_journal_current_handle(...) #1

declare dso_local i32 @trace_ext4_ordered_write_end(%struct.inode*, i32, i32, i32) #1

declare dso_local i32 @ext4_jbd2_file_inode(i32*, %struct.inode*) #1

declare dso_local i32 @ext4_generic_write_end(%struct.file*, %struct.address_space*, i32, i32, i32, %struct.page*, i8*) #1

declare dso_local i64 @ext4_can_truncate(%struct.inode*) #1

declare dso_local i32 @ext4_orphan_add(i32*, %struct.inode*) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

declare dso_local i32 @page_cache_release(%struct.page*) #1

declare dso_local i32 @ext4_journal_stop(i32*) #1

declare dso_local i32 @ext4_truncate_failed_write(%struct.inode*) #1

declare dso_local i32 @ext4_orphan_del(i32*, %struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
