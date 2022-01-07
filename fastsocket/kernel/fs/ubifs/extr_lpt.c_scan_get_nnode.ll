; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_lpt.c_scan_get_nnode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_lpt.c_scan_get_nnode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i64, i32, i32, i8* }
%struct.lpt_scan_node = type { i32, %struct.TYPE_2__, %struct.ubifs_nnode }
%struct.TYPE_2__ = type { %struct.ubifs_nnode* }
%struct.ubifs_nnode = type { i32, %struct.ubifs_nnode*, i64, i8*, %struct.ubifs_nbranch* }
%struct.ubifs_nbranch = type { i64, i32, %struct.ubifs_nnode* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ubifs_nnode* (%struct.ubifs_info*, %struct.lpt_scan_node*, %struct.ubifs_nnode*, i32)* @scan_get_nnode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ubifs_nnode* @scan_get_nnode(%struct.ubifs_info* %0, %struct.lpt_scan_node* %1, %struct.ubifs_nnode* %2, i32 %3) #0 {
  %5 = alloca %struct.ubifs_nnode*, align 8
  %6 = alloca %struct.ubifs_info*, align 8
  %7 = alloca %struct.lpt_scan_node*, align 8
  %8 = alloca %struct.ubifs_nnode*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ubifs_nbranch*, align 8
  %11 = alloca %struct.ubifs_nnode*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store %struct.ubifs_info* %0, %struct.ubifs_info** %6, align 8
  store %struct.lpt_scan_node* %1, %struct.lpt_scan_node** %7, align 8
  store %struct.ubifs_nnode* %2, %struct.ubifs_nnode** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %15 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %14, i32 0, i32 3
  %16 = load i8*, i8** %15, align 8
  store i8* %16, i8** %12, align 8
  %17 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %8, align 8
  %18 = getelementptr inbounds %struct.ubifs_nnode, %struct.ubifs_nnode* %17, i32 0, i32 4
  %19 = load %struct.ubifs_nbranch*, %struct.ubifs_nbranch** %18, align 8
  %20 = load i32, i32* %9, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.ubifs_nbranch, %struct.ubifs_nbranch* %19, i64 %21
  store %struct.ubifs_nbranch* %22, %struct.ubifs_nbranch** %10, align 8
  %23 = load %struct.ubifs_nbranch*, %struct.ubifs_nbranch** %10, align 8
  %24 = getelementptr inbounds %struct.ubifs_nbranch, %struct.ubifs_nbranch* %23, i32 0, i32 2
  %25 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %24, align 8
  store %struct.ubifs_nnode* %25, %struct.ubifs_nnode** %11, align 8
  %26 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %11, align 8
  %27 = icmp ne %struct.ubifs_nnode* %26, null
  br i1 %27, label %28, label %36

28:                                               ; preds = %4
  %29 = load %struct.lpt_scan_node*, %struct.lpt_scan_node** %7, align 8
  %30 = getelementptr inbounds %struct.lpt_scan_node, %struct.lpt_scan_node* %29, i32 0, i32 0
  store i32 1, i32* %30, align 8
  %31 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %11, align 8
  %32 = load %struct.lpt_scan_node*, %struct.lpt_scan_node** %7, align 8
  %33 = getelementptr inbounds %struct.lpt_scan_node, %struct.lpt_scan_node* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  store %struct.ubifs_nnode* %31, %struct.ubifs_nnode** %34, align 8
  %35 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %11, align 8
  store %struct.ubifs_nnode* %35, %struct.ubifs_nnode** %5, align 8
  br label %132

36:                                               ; preds = %4
  %37 = load %struct.lpt_scan_node*, %struct.lpt_scan_node** %7, align 8
  %38 = getelementptr inbounds %struct.lpt_scan_node, %struct.lpt_scan_node* %37, i32 0, i32 2
  store %struct.ubifs_nnode* %38, %struct.ubifs_nnode** %11, align 8
  %39 = load %struct.lpt_scan_node*, %struct.lpt_scan_node** %7, align 8
  %40 = getelementptr inbounds %struct.lpt_scan_node, %struct.lpt_scan_node* %39, i32 0, i32 0
  store i32 0, i32* %40, align 8
  %41 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %11, align 8
  %42 = load %struct.lpt_scan_node*, %struct.lpt_scan_node** %7, align 8
  %43 = getelementptr inbounds %struct.lpt_scan_node, %struct.lpt_scan_node* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  store %struct.ubifs_nnode* %41, %struct.ubifs_nnode** %44, align 8
  %45 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %11, align 8
  %46 = call i32 @memset(%struct.ubifs_nnode* %45, i32 0, i32 40)
  %47 = load %struct.ubifs_nbranch*, %struct.ubifs_nbranch** %10, align 8
  %48 = getelementptr inbounds %struct.ubifs_nbranch, %struct.ubifs_nbranch* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %64

51:                                               ; preds = %36
  %52 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %53 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %63

56:                                               ; preds = %51
  %57 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %58 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %8, align 8
  %59 = load i32, i32* %9, align 4
  %60 = call i8* @calc_nnode_num_from_parent(%struct.ubifs_info* %57, %struct.ubifs_nnode* %58, i32 %59)
  %61 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %11, align 8
  %62 = getelementptr inbounds %struct.ubifs_nnode, %struct.ubifs_nnode* %61, i32 0, i32 3
  store i8* %60, i8** %62, align 8
  br label %63

63:                                               ; preds = %56, %51
  br label %95

64:                                               ; preds = %36
  %65 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %66 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.ubifs_nbranch*, %struct.ubifs_nbranch** %10, align 8
  %69 = getelementptr inbounds %struct.ubifs_nbranch, %struct.ubifs_nbranch* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i8*, i8** %12, align 8
  %72 = load %struct.ubifs_nbranch*, %struct.ubifs_nbranch** %10, align 8
  %73 = getelementptr inbounds %struct.ubifs_nbranch, %struct.ubifs_nbranch* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %76 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @ubi_read(i32 %67, i64 %70, i8* %71, i32 %74, i32 %77)
  store i32 %78, i32* %13, align 4
  %79 = load i32, i32* %13, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %64
  %82 = load i32, i32* %13, align 4
  %83 = call %struct.ubifs_nnode* @ERR_PTR(i32 %82)
  store %struct.ubifs_nnode* %83, %struct.ubifs_nnode** %5, align 8
  br label %132

84:                                               ; preds = %64
  %85 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %86 = load i8*, i8** %12, align 8
  %87 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %11, align 8
  %88 = call i32 @ubifs_unpack_nnode(%struct.ubifs_info* %85, i8* %86, %struct.ubifs_nnode* %87)
  store i32 %88, i32* %13, align 4
  %89 = load i32, i32* %13, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %84
  %92 = load i32, i32* %13, align 4
  %93 = call %struct.ubifs_nnode* @ERR_PTR(i32 %92)
  store %struct.ubifs_nnode* %93, %struct.ubifs_nnode** %5, align 8
  br label %132

94:                                               ; preds = %84
  br label %95

95:                                               ; preds = %94, %63
  %96 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %97 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %11, align 8
  %98 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %8, align 8
  %99 = load i32, i32* %9, align 4
  %100 = call i32 @validate_nnode(%struct.ubifs_info* %96, %struct.ubifs_nnode* %97, %struct.ubifs_nnode* %98, i32 %99)
  store i32 %100, i32* %13, align 4
  %101 = load i32, i32* %13, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %95
  %104 = load i32, i32* %13, align 4
  %105 = call %struct.ubifs_nnode* @ERR_PTR(i32 %104)
  store %struct.ubifs_nnode* %105, %struct.ubifs_nnode** %5, align 8
  br label %132

106:                                              ; preds = %95
  %107 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %108 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %118, label %111

111:                                              ; preds = %106
  %112 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %113 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %8, align 8
  %114 = load i32, i32* %9, align 4
  %115 = call i8* @calc_nnode_num_from_parent(%struct.ubifs_info* %112, %struct.ubifs_nnode* %113, i32 %114)
  %116 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %11, align 8
  %117 = getelementptr inbounds %struct.ubifs_nnode, %struct.ubifs_nnode* %116, i32 0, i32 3
  store i8* %115, i8** %117, align 8
  br label %118

118:                                              ; preds = %111, %106
  %119 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %8, align 8
  %120 = getelementptr inbounds %struct.ubifs_nnode, %struct.ubifs_nnode* %119, i32 0, i32 2
  %121 = load i64, i64* %120, align 8
  %122 = sub nsw i64 %121, 1
  %123 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %11, align 8
  %124 = getelementptr inbounds %struct.ubifs_nnode, %struct.ubifs_nnode* %123, i32 0, i32 2
  store i64 %122, i64* %124, align 8
  %125 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %8, align 8
  %126 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %11, align 8
  %127 = getelementptr inbounds %struct.ubifs_nnode, %struct.ubifs_nnode* %126, i32 0, i32 1
  store %struct.ubifs_nnode* %125, %struct.ubifs_nnode** %127, align 8
  %128 = load i32, i32* %9, align 4
  %129 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %11, align 8
  %130 = getelementptr inbounds %struct.ubifs_nnode, %struct.ubifs_nnode* %129, i32 0, i32 0
  store i32 %128, i32* %130, align 8
  %131 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %11, align 8
  store %struct.ubifs_nnode* %131, %struct.ubifs_nnode** %5, align 8
  br label %132

132:                                              ; preds = %118, %103, %91, %81, %28
  %133 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %5, align 8
  ret %struct.ubifs_nnode* %133
}

declare dso_local i32 @memset(%struct.ubifs_nnode*, i32, i32) #1

declare dso_local i8* @calc_nnode_num_from_parent(%struct.ubifs_info*, %struct.ubifs_nnode*, i32) #1

declare dso_local i32 @ubi_read(i32, i64, i8*, i32, i32) #1

declare dso_local %struct.ubifs_nnode* @ERR_PTR(i32) #1

declare dso_local i32 @ubifs_unpack_nnode(%struct.ubifs_info*, i8*, %struct.ubifs_nnode*) #1

declare dso_local i32 @validate_nnode(%struct.ubifs_info*, %struct.ubifs_nnode*, %struct.ubifs_nnode*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
