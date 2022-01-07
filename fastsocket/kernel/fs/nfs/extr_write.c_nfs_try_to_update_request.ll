; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_write.c_nfs_try_to_update_request.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_write.c_nfs_try_to_update_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_page = type { i32, i32, i32 }
%struct.inode = type { i32 }
%struct.page = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.nfs_page* (%struct.inode*, %struct.page*, i32, i32)* @nfs_try_to_update_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.nfs_page* @nfs_try_to_update_request(%struct.inode* %0, %struct.page* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.nfs_page*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.page*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.nfs_page*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %6, align 8
  store %struct.page* %1, %struct.page** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load %struct.page*, %struct.page** %7, align 8
  %15 = call i32 @PagePrivate(%struct.page* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %4
  store %struct.nfs_page* null, %struct.nfs_page** %5, align 8
  br label %126

18:                                               ; preds = %4
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* %9, align 4
  %21 = add i32 %19, %20
  store i32 %21, i32* %12, align 4
  %22 = load %struct.inode*, %struct.inode** %6, align 8
  %23 = getelementptr inbounds %struct.inode, %struct.inode* %22, i32 0, i32 0
  %24 = call i32 @spin_lock(i32* %23)
  br label %25

25:                                               ; preds = %65, %18
  %26 = load %struct.page*, %struct.page** %7, align 8
  %27 = call %struct.nfs_page* @nfs_page_find_request_locked(%struct.page* %26)
  store %struct.nfs_page* %27, %struct.nfs_page** %10, align 8
  %28 = load %struct.nfs_page*, %struct.nfs_page** %10, align 8
  %29 = icmp eq %struct.nfs_page* %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  br label %103

31:                                               ; preds = %25
  %32 = load %struct.nfs_page*, %struct.nfs_page** %10, align 8
  %33 = getelementptr inbounds %struct.nfs_page, %struct.nfs_page* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.nfs_page*, %struct.nfs_page** %10, align 8
  %36 = getelementptr inbounds %struct.nfs_page, %struct.nfs_page* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = add i32 %34, %37
  store i32 %38, i32* %11, align 4
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* %11, align 4
  %41 = icmp ugt i32 %39, %40
  br i1 %41, label %48, label %42

42:                                               ; preds = %31
  %43 = load i32, i32* %12, align 4
  %44 = load %struct.nfs_page*, %struct.nfs_page** %10, align 8
  %45 = getelementptr inbounds %struct.nfs_page, %struct.nfs_page* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = icmp ult i32 %43, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %42, %31
  br label %114

49:                                               ; preds = %42
  %50 = load %struct.nfs_page*, %struct.nfs_page** %10, align 8
  %51 = call i64 @nfs_lock_request(%struct.nfs_page* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %49
  br label %69

54:                                               ; preds = %49
  %55 = load %struct.inode*, %struct.inode** %6, align 8
  %56 = getelementptr inbounds %struct.inode, %struct.inode* %55, i32 0, i32 0
  %57 = call i32 @spin_unlock(i32* %56)
  %58 = load %struct.nfs_page*, %struct.nfs_page** %10, align 8
  %59 = call i32 @nfs_wait_on_request(%struct.nfs_page* %58)
  store i32 %59, i32* %13, align 4
  %60 = load %struct.nfs_page*, %struct.nfs_page** %10, align 8
  %61 = call i32 @nfs_release_request(%struct.nfs_page* %60)
  %62 = load i32, i32* %13, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %54
  br label %123

65:                                               ; preds = %54
  %66 = load %struct.inode*, %struct.inode** %6, align 8
  %67 = getelementptr inbounds %struct.inode, %struct.inode* %66, i32 0, i32 0
  %68 = call i32 @spin_lock(i32* %67)
  br label %25

69:                                               ; preds = %53
  %70 = load i32, i32* %8, align 4
  %71 = load %struct.nfs_page*, %struct.nfs_page** %10, align 8
  %72 = getelementptr inbounds %struct.nfs_page, %struct.nfs_page* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = icmp ult i32 %70, %73
  br i1 %74, label %75, label %82

75:                                               ; preds = %69
  %76 = load i32, i32* %8, align 4
  %77 = load %struct.nfs_page*, %struct.nfs_page** %10, align 8
  %78 = getelementptr inbounds %struct.nfs_page, %struct.nfs_page* %77, i32 0, i32 0
  store i32 %76, i32* %78, align 4
  %79 = load i32, i32* %8, align 4
  %80 = load %struct.nfs_page*, %struct.nfs_page** %10, align 8
  %81 = getelementptr inbounds %struct.nfs_page, %struct.nfs_page* %80, i32 0, i32 2
  store i32 %79, i32* %81, align 4
  br label %82

82:                                               ; preds = %75, %69
  %83 = load i32, i32* %12, align 4
  %84 = load i32, i32* %11, align 4
  %85 = icmp ugt i32 %83, %84
  br i1 %85, label %86, label %94

86:                                               ; preds = %82
  %87 = load i32, i32* %12, align 4
  %88 = load %struct.nfs_page*, %struct.nfs_page** %10, align 8
  %89 = getelementptr inbounds %struct.nfs_page, %struct.nfs_page* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = sub i32 %87, %90
  %92 = load %struct.nfs_page*, %struct.nfs_page** %10, align 8
  %93 = getelementptr inbounds %struct.nfs_page, %struct.nfs_page* %92, i32 0, i32 1
  store i32 %91, i32* %93, align 4
  br label %102

94:                                               ; preds = %82
  %95 = load i32, i32* %11, align 4
  %96 = load %struct.nfs_page*, %struct.nfs_page** %10, align 8
  %97 = getelementptr inbounds %struct.nfs_page, %struct.nfs_page* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = sub i32 %95, %98
  %100 = load %struct.nfs_page*, %struct.nfs_page** %10, align 8
  %101 = getelementptr inbounds %struct.nfs_page, %struct.nfs_page* %100, i32 0, i32 1
  store i32 %99, i32* %101, align 4
  br label %102

102:                                              ; preds = %94, %86
  br label %103

103:                                              ; preds = %102, %30
  %104 = load %struct.inode*, %struct.inode** %6, align 8
  %105 = getelementptr inbounds %struct.inode, %struct.inode* %104, i32 0, i32 0
  %106 = call i32 @spin_unlock(i32* %105)
  %107 = load %struct.nfs_page*, %struct.nfs_page** %10, align 8
  %108 = icmp ne %struct.nfs_page* %107, null
  br i1 %108, label %109, label %112

109:                                              ; preds = %103
  %110 = load %struct.nfs_page*, %struct.nfs_page** %10, align 8
  %111 = call i32 @nfs_clear_request_commit(%struct.nfs_page* %110)
  br label %112

112:                                              ; preds = %109, %103
  %113 = load %struct.nfs_page*, %struct.nfs_page** %10, align 8
  store %struct.nfs_page* %113, %struct.nfs_page** %5, align 8
  br label %126

114:                                              ; preds = %48
  %115 = load %struct.inode*, %struct.inode** %6, align 8
  %116 = getelementptr inbounds %struct.inode, %struct.inode* %115, i32 0, i32 0
  %117 = call i32 @spin_unlock(i32* %116)
  %118 = load %struct.nfs_page*, %struct.nfs_page** %10, align 8
  %119 = call i32 @nfs_release_request(%struct.nfs_page* %118)
  %120 = load %struct.inode*, %struct.inode** %6, align 8
  %121 = load %struct.page*, %struct.page** %7, align 8
  %122 = call i32 @nfs_wb_page(%struct.inode* %120, %struct.page* %121)
  store i32 %122, i32* %13, align 4
  br label %123

123:                                              ; preds = %114, %64
  %124 = load i32, i32* %13, align 4
  %125 = call %struct.nfs_page* @ERR_PTR(i32 %124)
  store %struct.nfs_page* %125, %struct.nfs_page** %5, align 8
  br label %126

126:                                              ; preds = %123, %112, %17
  %127 = load %struct.nfs_page*, %struct.nfs_page** %5, align 8
  ret %struct.nfs_page* %127
}

declare dso_local i32 @PagePrivate(%struct.page*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.nfs_page* @nfs_page_find_request_locked(%struct.page*) #1

declare dso_local i64 @nfs_lock_request(%struct.nfs_page*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @nfs_wait_on_request(%struct.nfs_page*) #1

declare dso_local i32 @nfs_release_request(%struct.nfs_page*) #1

declare dso_local i32 @nfs_clear_request_commit(%struct.nfs_page*) #1

declare dso_local i32 @nfs_wb_page(%struct.inode*, %struct.page*) #1

declare dso_local %struct.nfs_page* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
