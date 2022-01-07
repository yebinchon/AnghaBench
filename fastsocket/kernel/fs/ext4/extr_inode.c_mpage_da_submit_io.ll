; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_inode.c_mpage_da_submit_io.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_inode.c_mpage_da_submit_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpage_da_data = type { i64, i64, i32, %struct.TYPE_2__*, %struct.inode* }
%struct.TYPE_2__ = type { i64 }
%struct.inode = type { %struct.address_space* }
%struct.address_space = type { i32 }
%struct.pagevec = type { %struct.page** }
%struct.page = type { i64 }

@PAGEVEC_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mpage_da_data*)* @mpage_da_submit_io to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpage_da_submit_io(%struct.mpage_da_data* %0) #0 {
  %2 = alloca %struct.mpage_da_data*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.pagevec, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.inode*, align 8
  %12 = alloca %struct.address_space*, align 8
  %13 = alloca %struct.page*, align 8
  store %struct.mpage_da_data* %0, %struct.mpage_da_data** %2, align 8
  store i32 0, i32* %7, align 4
  %14 = load %struct.mpage_da_data*, %struct.mpage_da_data** %2, align 8
  %15 = getelementptr inbounds %struct.mpage_da_data, %struct.mpage_da_data* %14, i32 0, i32 4
  %16 = load %struct.inode*, %struct.inode** %15, align 8
  store %struct.inode* %16, %struct.inode** %11, align 8
  %17 = load %struct.inode*, %struct.inode** %11, align 8
  %18 = getelementptr inbounds %struct.inode, %struct.inode* %17, i32 0, i32 0
  %19 = load %struct.address_space*, %struct.address_space** %18, align 8
  store %struct.address_space* %19, %struct.address_space** %12, align 8
  %20 = load %struct.mpage_da_data*, %struct.mpage_da_data** %2, align 8
  %21 = getelementptr inbounds %struct.mpage_da_data, %struct.mpage_da_data* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.mpage_da_data*, %struct.mpage_da_data** %2, align 8
  %24 = getelementptr inbounds %struct.mpage_da_data, %struct.mpage_da_data* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp ule i64 %22, %25
  %27 = zext i1 %26 to i32
  %28 = call i32 @BUG_ON(i32 %27)
  %29 = load %struct.mpage_da_data*, %struct.mpage_da_data** %2, align 8
  %30 = getelementptr inbounds %struct.mpage_da_data, %struct.mpage_da_data* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  store i64 %31, i64* %5, align 8
  %32 = load %struct.mpage_da_data*, %struct.mpage_da_data** %2, align 8
  %33 = getelementptr inbounds %struct.mpage_da_data, %struct.mpage_da_data* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = sub i64 %34, 1
  store i64 %35, i64* %6, align 8
  %36 = call i32 @pagevec_init(%struct.pagevec* %4, i32 0)
  br label %37

37:                                               ; preds = %114, %1
  %38 = load i64, i64* %5, align 8
  %39 = load i64, i64* %6, align 8
  %40 = icmp ule i64 %38, %39
  br i1 %40, label %41, label %116

41:                                               ; preds = %37
  %42 = load %struct.address_space*, %struct.address_space** %12, align 8
  %43 = load i64, i64* %5, align 8
  %44 = load i32, i32* @PAGEVEC_SIZE, align 4
  %45 = call i32 @pagevec_lookup(%struct.pagevec* %4, %struct.address_space* %42, i64 %43, i32 %44)
  store i32 %45, i32* %9, align 4
  %46 = load i32, i32* %9, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %41
  br label %116

49:                                               ; preds = %41
  store i32 0, i32* %10, align 4
  br label %50

50:                                               ; preds = %111, %49
  %51 = load i32, i32* %10, align 4
  %52 = load i32, i32* %9, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %114

54:                                               ; preds = %50
  %55 = getelementptr inbounds %struct.pagevec, %struct.pagevec* %4, i32 0, i32 0
  %56 = load %struct.page**, %struct.page*** %55, align 8
  %57 = load i32, i32* %10, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.page*, %struct.page** %56, i64 %58
  %60 = load %struct.page*, %struct.page** %59, align 8
  store %struct.page* %60, %struct.page** %13, align 8
  %61 = load %struct.page*, %struct.page** %13, align 8
  %62 = getelementptr inbounds %struct.page, %struct.page* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  store i64 %63, i64* %5, align 8
  %64 = load i64, i64* %5, align 8
  %65 = load i64, i64* %6, align 8
  %66 = icmp ugt i64 %64, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %54
  br label %114

68:                                               ; preds = %54
  %69 = load i64, i64* %5, align 8
  %70 = add i64 %69, 1
  store i64 %70, i64* %5, align 8
  %71 = load %struct.page*, %struct.page** %13, align 8
  %72 = call i32 @PageLocked(%struct.page* %71)
  %73 = icmp ne i32 %72, 0
  %74 = xor i1 %73, true
  %75 = zext i1 %74 to i32
  %76 = call i32 @BUG_ON(i32 %75)
  %77 = load %struct.page*, %struct.page** %13, align 8
  %78 = call i32 @PageWriteback(%struct.page* %77)
  %79 = call i32 @BUG_ON(i32 %78)
  %80 = load %struct.mpage_da_data*, %struct.mpage_da_data** %2, align 8
  %81 = getelementptr inbounds %struct.mpage_da_data, %struct.mpage_da_data* %80, i32 0, i32 3
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  store i64 %84, i64* %3, align 8
  %85 = load %struct.page*, %struct.page** %13, align 8
  %86 = load %struct.mpage_da_data*, %struct.mpage_da_data** %2, align 8
  %87 = getelementptr inbounds %struct.mpage_da_data, %struct.mpage_da_data* %86, i32 0, i32 3
  %88 = load %struct.TYPE_2__*, %struct.TYPE_2__** %87, align 8
  %89 = call i32 @ext4_writepage(%struct.page* %85, %struct.TYPE_2__* %88)
  store i32 %89, i32* %8, align 4
  %90 = load i32, i32* %8, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %105, label %92

92:                                               ; preds = %68
  %93 = load i64, i64* %3, align 8
  %94 = load %struct.mpage_da_data*, %struct.mpage_da_data** %2, align 8
  %95 = getelementptr inbounds %struct.mpage_da_data, %struct.mpage_da_data* %94, i32 0, i32 3
  %96 = load %struct.TYPE_2__*, %struct.TYPE_2__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = icmp eq i64 %93, %98
  br i1 %99, label %100, label %105

100:                                              ; preds = %92
  %101 = load %struct.mpage_da_data*, %struct.mpage_da_data** %2, align 8
  %102 = getelementptr inbounds %struct.mpage_da_data, %struct.mpage_da_data* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 8
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %102, align 8
  br label %105

105:                                              ; preds = %100, %92, %68
  %106 = load i32, i32* %7, align 4
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %110

108:                                              ; preds = %105
  %109 = load i32, i32* %8, align 4
  store i32 %109, i32* %7, align 4
  br label %110

110:                                              ; preds = %108, %105
  br label %111

111:                                              ; preds = %110
  %112 = load i32, i32* %10, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %10, align 4
  br label %50

114:                                              ; preds = %67, %50
  %115 = call i32 @pagevec_release(%struct.pagevec* %4)
  br label %37

116:                                              ; preds = %48, %37
  %117 = load i32, i32* %7, align 4
  ret i32 %117
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @pagevec_init(%struct.pagevec*, i32) #1

declare dso_local i32 @pagevec_lookup(%struct.pagevec*, %struct.address_space*, i64, i32) #1

declare dso_local i32 @PageLocked(%struct.page*) #1

declare dso_local i32 @PageWriteback(%struct.page*) #1

declare dso_local i32 @ext4_writepage(%struct.page*, %struct.TYPE_2__*) #1

declare dso_local i32 @pagevec_release(%struct.pagevec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
