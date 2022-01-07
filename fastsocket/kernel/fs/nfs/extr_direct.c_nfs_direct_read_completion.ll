; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_direct.c_nfs_direct_read_completion.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_direct.c_nfs_direct_read_completion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_pgio_header = type { i64, i32 (%struct.nfs_pgio_header*)*, %struct.TYPE_2__, i32, i32, %struct.nfs_direct_req* }
%struct.TYPE_2__ = type { i32 }
%struct.nfs_direct_req = type { i32, i32, i32 }
%struct.nfs_page = type { i64, %struct.page* }
%struct.page = type { i32 }

@NFS_IOHDR_REDO = common dso_local global i32 0, align 4
@NFS_IOHDR_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfs_pgio_header*)* @nfs_direct_read_completion to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfs_direct_read_completion(%struct.nfs_pgio_header* %0) #0 {
  %2 = alloca %struct.nfs_pgio_header*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.nfs_direct_req*, align 8
  %5 = alloca %struct.nfs_page*, align 8
  %6 = alloca %struct.page*, align 8
  store %struct.nfs_pgio_header* %0, %struct.nfs_pgio_header** %2, align 8
  store i64 0, i64* %3, align 8
  %7 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %2, align 8
  %8 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %7, i32 0, i32 5
  %9 = load %struct.nfs_direct_req*, %struct.nfs_direct_req** %8, align 8
  store %struct.nfs_direct_req* %9, %struct.nfs_direct_req** %4, align 8
  %10 = load i32, i32* @NFS_IOHDR_REDO, align 4
  %11 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %2, align 8
  %12 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %11, i32 0, i32 4
  %13 = call i64 @test_bit(i32 %10, i32* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  br label %88

16:                                               ; preds = %1
  %17 = load %struct.nfs_direct_req*, %struct.nfs_direct_req** %4, align 8
  %18 = getelementptr inbounds %struct.nfs_direct_req, %struct.nfs_direct_req* %17, i32 0, i32 0
  %19 = call i32 @spin_lock(i32* %18)
  %20 = load i32, i32* @NFS_IOHDR_ERROR, align 4
  %21 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %2, align 8
  %22 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %21, i32 0, i32 4
  %23 = call i64 @test_bit(i32 %20, i32* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %36

25:                                               ; preds = %16
  %26 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %2, align 8
  %27 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %25
  %31 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %2, align 8
  %32 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.nfs_direct_req*, %struct.nfs_direct_req** %4, align 8
  %35 = getelementptr inbounds %struct.nfs_direct_req, %struct.nfs_direct_req* %34, i32 0, i32 2
  store i32 %33, i32* %35, align 4
  br label %46

36:                                               ; preds = %25, %16
  %37 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %2, align 8
  %38 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.nfs_direct_req*, %struct.nfs_direct_req** %4, align 8
  %41 = getelementptr inbounds %struct.nfs_direct_req, %struct.nfs_direct_req* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = sext i32 %42 to i64
  %44 = add nsw i64 %43, %39
  %45 = trunc i64 %44 to i32
  store i32 %45, i32* %41, align 4
  br label %46

46:                                               ; preds = %36, %30
  %47 = load %struct.nfs_direct_req*, %struct.nfs_direct_req** %4, align 8
  %48 = getelementptr inbounds %struct.nfs_direct_req, %struct.nfs_direct_req* %47, i32 0, i32 0
  %49 = call i32 @spin_unlock(i32* %48)
  br label %50

50:                                               ; preds = %77, %46
  %51 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %2, align 8
  %52 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %51, i32 0, i32 2
  %53 = call i32 @list_empty(%struct.TYPE_2__* %52)
  %54 = icmp ne i32 %53, 0
  %55 = xor i1 %54, true
  br i1 %55, label %56, label %87

56:                                               ; preds = %50
  %57 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %2, align 8
  %58 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call %struct.nfs_page* @nfs_list_entry(i32 %60)
  store %struct.nfs_page* %61, %struct.nfs_page** %5, align 8
  %62 = load %struct.nfs_page*, %struct.nfs_page** %5, align 8
  %63 = getelementptr inbounds %struct.nfs_page, %struct.nfs_page* %62, i32 0, i32 1
  %64 = load %struct.page*, %struct.page** %63, align 8
  store %struct.page* %64, %struct.page** %6, align 8
  %65 = load %struct.page*, %struct.page** %6, align 8
  %66 = call i32 @PageCompound(%struct.page* %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %77, label %68

68:                                               ; preds = %56
  %69 = load i64, i64* %3, align 8
  %70 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %2, align 8
  %71 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = icmp ult i64 %69, %72
  br i1 %73, label %74, label %77

74:                                               ; preds = %68
  %75 = load %struct.page*, %struct.page** %6, align 8
  %76 = call i32 @set_page_dirty(%struct.page* %75)
  br label %77

77:                                               ; preds = %74, %68, %56
  %78 = load %struct.nfs_page*, %struct.nfs_page** %5, align 8
  %79 = getelementptr inbounds %struct.nfs_page, %struct.nfs_page* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* %3, align 8
  %82 = add i64 %81, %80
  store i64 %82, i64* %3, align 8
  %83 = load %struct.nfs_page*, %struct.nfs_page** %5, align 8
  %84 = call i32 @nfs_list_remove_request(%struct.nfs_page* %83)
  %85 = load %struct.nfs_page*, %struct.nfs_page** %5, align 8
  %86 = call i32 @nfs_direct_readpage_release(%struct.nfs_page* %85)
  br label %50

87:                                               ; preds = %50
  br label %88

88:                                               ; preds = %87, %15
  %89 = load %struct.nfs_direct_req*, %struct.nfs_direct_req** %4, align 8
  %90 = call i64 @put_dreq(%struct.nfs_direct_req* %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %88
  %93 = load %struct.nfs_direct_req*, %struct.nfs_direct_req** %4, align 8
  %94 = call i32 @nfs_direct_complete(%struct.nfs_direct_req* %93)
  br label %95

95:                                               ; preds = %92, %88
  %96 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %2, align 8
  %97 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %96, i32 0, i32 1
  %98 = load i32 (%struct.nfs_pgio_header*)*, i32 (%struct.nfs_pgio_header*)** %97, align 8
  %99 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %2, align 8
  %100 = call i32 %98(%struct.nfs_pgio_header* %99)
  ret void
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @list_empty(%struct.TYPE_2__*) #1

declare dso_local %struct.nfs_page* @nfs_list_entry(i32) #1

declare dso_local i32 @PageCompound(%struct.page*) #1

declare dso_local i32 @set_page_dirty(%struct.page*) #1

declare dso_local i32 @nfs_list_remove_request(%struct.nfs_page*) #1

declare dso_local i32 @nfs_direct_readpage_release(%struct.nfs_page*) #1

declare dso_local i64 @put_dreq(%struct.nfs_direct_req*) #1

declare dso_local i32 @nfs_direct_complete(%struct.nfs_direct_req*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
