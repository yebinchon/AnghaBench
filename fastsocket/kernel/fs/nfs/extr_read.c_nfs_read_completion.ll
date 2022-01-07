; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_read.c_nfs_read_completion.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_read.c_nfs_read_completion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_pgio_header = type { i64, i32 (%struct.nfs_pgio_header*)*, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.nfs_page = type { i64, %struct.page* }
%struct.page = type { i32 }

@NFS_IOHDR_REDO = common dso_local global i32 0, align 4
@NFS_IOHDR_EOF = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@PAGE_MASK = common dso_local global i32 0, align 4
@NFS_IOHDR_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfs_pgio_header*)* @nfs_read_completion to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfs_read_completion(%struct.nfs_pgio_header* %0) #0 {
  %2 = alloca %struct.nfs_pgio_header*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.nfs_page*, align 8
  %5 = alloca %struct.page*, align 8
  store %struct.nfs_pgio_header* %0, %struct.nfs_pgio_header** %2, align 8
  store i64 0, i64* %3, align 8
  %6 = load i32, i32* @NFS_IOHDR_REDO, align 4
  %7 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %2, align 8
  %8 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %7, i32 0, i32 2
  %9 = call i64 @test_bit(i32 %6, i32* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  br label %95

12:                                               ; preds = %1
  br label %13

13:                                               ; preds = %89, %12
  %14 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %2, align 8
  %15 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %14, i32 0, i32 3
  %16 = call i32 @list_empty(%struct.TYPE_2__* %15)
  %17 = icmp ne i32 %16, 0
  %18 = xor i1 %17, true
  br i1 %18, label %19, label %94

19:                                               ; preds = %13
  %20 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %2, align 8
  %21 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %20, i32 0, i32 3
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call %struct.nfs_page* @nfs_list_entry(i32 %23)
  store %struct.nfs_page* %24, %struct.nfs_page** %4, align 8
  %25 = load %struct.nfs_page*, %struct.nfs_page** %4, align 8
  %26 = getelementptr inbounds %struct.nfs_page, %struct.nfs_page* %25, i32 0, i32 1
  %27 = load %struct.page*, %struct.page** %26, align 8
  store %struct.page* %27, %struct.page** %5, align 8
  %28 = load i32, i32* @NFS_IOHDR_EOF, align 4
  %29 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %2, align 8
  %30 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %29, i32 0, i32 2
  %31 = call i64 @test_bit(i32 %28, i32* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %65

33:                                               ; preds = %19
  %34 = load i64, i64* %3, align 8
  %35 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %2, align 8
  %36 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ugt i64 %34, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %33
  %40 = load %struct.page*, %struct.page** %5, align 8
  %41 = load i64, i64* @PAGE_SIZE, align 8
  %42 = call i32 @zero_user(%struct.page* %40, i32 0, i64 %41)
  br label %64

43:                                               ; preds = %33
  %44 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %2, align 8
  %45 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* %3, align 8
  %48 = sub i64 %46, %47
  %49 = load i64, i64* @PAGE_SIZE, align 8
  %50 = icmp ult i64 %48, %49
  br i1 %50, label %51, label %63

51:                                               ; preds = %43
  %52 = load %struct.page*, %struct.page** %5, align 8
  %53 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %2, align 8
  %54 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i32, i32* @PAGE_MASK, align 4
  %57 = xor i32 %56, -1
  %58 = sext i32 %57 to i64
  %59 = and i64 %55, %58
  %60 = trunc i64 %59 to i32
  %61 = load i64, i64* @PAGE_SIZE, align 8
  %62 = call i32 @zero_user_segment(%struct.page* %52, i32 %60, i64 %61)
  br label %63

63:                                               ; preds = %51, %43
  br label %64

64:                                               ; preds = %63, %39
  br label %65

65:                                               ; preds = %64, %19
  %66 = load %struct.nfs_page*, %struct.nfs_page** %4, align 8
  %67 = getelementptr inbounds %struct.nfs_page, %struct.nfs_page* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* %3, align 8
  %70 = add i64 %69, %68
  store i64 %70, i64* %3, align 8
  %71 = load i32, i32* @NFS_IOHDR_ERROR, align 4
  %72 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %2, align 8
  %73 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %72, i32 0, i32 2
  %74 = call i64 @test_bit(i32 %71, i32* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %86

76:                                               ; preds = %65
  %77 = load i64, i64* %3, align 8
  %78 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %2, align 8
  %79 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = icmp ule i64 %77, %80
  br i1 %81, label %82, label %85

82:                                               ; preds = %76
  %83 = load %struct.page*, %struct.page** %5, align 8
  %84 = call i32 @SetPageUptodate(%struct.page* %83)
  br label %85

85:                                               ; preds = %82, %76
  br label %89

86:                                               ; preds = %65
  %87 = load %struct.page*, %struct.page** %5, align 8
  %88 = call i32 @SetPageUptodate(%struct.page* %87)
  br label %89

89:                                               ; preds = %86, %85
  %90 = load %struct.nfs_page*, %struct.nfs_page** %4, align 8
  %91 = call i32 @nfs_list_remove_request(%struct.nfs_page* %90)
  %92 = load %struct.nfs_page*, %struct.nfs_page** %4, align 8
  %93 = call i32 @nfs_readpage_release(%struct.nfs_page* %92)
  br label %13

94:                                               ; preds = %13
  br label %95

95:                                               ; preds = %94, %11
  %96 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %2, align 8
  %97 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %96, i32 0, i32 1
  %98 = load i32 (%struct.nfs_pgio_header*)*, i32 (%struct.nfs_pgio_header*)** %97, align 8
  %99 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %2, align 8
  %100 = call i32 %98(%struct.nfs_pgio_header* %99)
  ret void
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @list_empty(%struct.TYPE_2__*) #1

declare dso_local %struct.nfs_page* @nfs_list_entry(i32) #1

declare dso_local i32 @zero_user(%struct.page*, i32, i64) #1

declare dso_local i32 @zero_user_segment(%struct.page*, i32, i64) #1

declare dso_local i32 @SetPageUptodate(%struct.page*) #1

declare dso_local i32 @nfs_list_remove_request(%struct.nfs_page*) #1

declare dso_local i32 @nfs_readpage_release(%struct.nfs_page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
