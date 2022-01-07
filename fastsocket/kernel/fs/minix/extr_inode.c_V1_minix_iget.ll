; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/minix/extr_inode.c_V1_minix_iget.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/minix/extr_inode.c_V1_minix_iget.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i64, %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_5__, i32, i32, i64, i64, i32, i32, i32 }
%struct.TYPE_7__ = type { i64, i32 }
%struct.TYPE_6__ = type { i64, i32 }
%struct.TYPE_5__ = type { i64, i32 }
%struct.buffer_head = type { i32 }
%struct.minix_inode = type { i32*, i32, i32, i32, i64, i64, i32 }
%struct.minix_inode_info = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32* }

@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.inode* (%struct.inode*)* @V1_minix_iget to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.inode* @V1_minix_iget(%struct.inode* %0) #0 {
  %2 = alloca %struct.inode*, align 8
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.buffer_head*, align 8
  %5 = alloca %struct.minix_inode*, align 8
  %6 = alloca %struct.minix_inode_info*, align 8
  %7 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %3, align 8
  %8 = load %struct.inode*, %struct.inode** %3, align 8
  %9 = call %struct.minix_inode_info* @minix_i(%struct.inode* %8)
  store %struct.minix_inode_info* %9, %struct.minix_inode_info** %6, align 8
  %10 = load %struct.inode*, %struct.inode** %3, align 8
  %11 = getelementptr inbounds %struct.inode, %struct.inode* %10, i32 0, i32 10
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.inode*, %struct.inode** %3, align 8
  %14 = getelementptr inbounds %struct.inode, %struct.inode* %13, i32 0, i32 9
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.minix_inode* @minix_V1_raw_inode(i32 %12, i32 %15, %struct.buffer_head** %4)
  store %struct.minix_inode* %16, %struct.minix_inode** %5, align 8
  %17 = load %struct.minix_inode*, %struct.minix_inode** %5, align 8
  %18 = icmp ne %struct.minix_inode* %17, null
  br i1 %18, label %25, label %19

19:                                               ; preds = %1
  %20 = load %struct.inode*, %struct.inode** %3, align 8
  %21 = call i32 @iget_failed(%struct.inode* %20)
  %22 = load i32, i32* @EIO, align 4
  %23 = sub nsw i32 0, %22
  %24 = call %struct.inode* @ERR_PTR(i32 %23)
  store %struct.inode* %24, %struct.inode** %2, align 8
  br label %109

25:                                               ; preds = %1
  %26 = load %struct.minix_inode*, %struct.minix_inode** %5, align 8
  %27 = getelementptr inbounds %struct.minix_inode, %struct.minix_inode* %26, i32 0, i32 6
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.inode*, %struct.inode** %3, align 8
  %30 = getelementptr inbounds %struct.inode, %struct.inode* %29, i32 0, i32 8
  store i32 %28, i32* %30, align 8
  %31 = load %struct.minix_inode*, %struct.minix_inode** %5, align 8
  %32 = getelementptr inbounds %struct.minix_inode, %struct.minix_inode* %31, i32 0, i32 5
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.inode*, %struct.inode** %3, align 8
  %35 = getelementptr inbounds %struct.inode, %struct.inode* %34, i32 0, i32 7
  store i64 %33, i64* %35, align 8
  %36 = load %struct.minix_inode*, %struct.minix_inode** %5, align 8
  %37 = getelementptr inbounds %struct.minix_inode, %struct.minix_inode* %36, i32 0, i32 4
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.inode*, %struct.inode** %3, align 8
  %40 = getelementptr inbounds %struct.inode, %struct.inode* %39, i32 0, i32 6
  store i64 %38, i64* %40, align 8
  %41 = load %struct.minix_inode*, %struct.minix_inode** %5, align 8
  %42 = getelementptr inbounds %struct.minix_inode, %struct.minix_inode* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.inode*, %struct.inode** %3, align 8
  %45 = getelementptr inbounds %struct.inode, %struct.inode* %44, i32 0, i32 5
  store i32 %43, i32* %45, align 4
  %46 = load %struct.minix_inode*, %struct.minix_inode** %5, align 8
  %47 = getelementptr inbounds %struct.minix_inode, %struct.minix_inode* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.inode*, %struct.inode** %3, align 8
  %50 = getelementptr inbounds %struct.inode, %struct.inode* %49, i32 0, i32 4
  store i32 %48, i32* %50, align 8
  %51 = load %struct.minix_inode*, %struct.minix_inode** %5, align 8
  %52 = getelementptr inbounds %struct.minix_inode, %struct.minix_inode* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.inode*, %struct.inode** %3, align 8
  %55 = getelementptr inbounds %struct.inode, %struct.inode* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 1
  store i32 %53, i32* %56, align 8
  %57 = load %struct.inode*, %struct.inode** %3, align 8
  %58 = getelementptr inbounds %struct.inode, %struct.inode* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 1
  store i32 %53, i32* %59, align 8
  %60 = load %struct.inode*, %struct.inode** %3, align 8
  %61 = getelementptr inbounds %struct.inode, %struct.inode* %60, i32 0, i32 3
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 1
  store i32 %53, i32* %62, align 8
  %63 = load %struct.inode*, %struct.inode** %3, align 8
  %64 = getelementptr inbounds %struct.inode, %struct.inode* %63, i32 0, i32 3
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  store i64 0, i64* %65, align 8
  %66 = load %struct.inode*, %struct.inode** %3, align 8
  %67 = getelementptr inbounds %struct.inode, %struct.inode* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  store i64 0, i64* %68, align 8
  %69 = load %struct.inode*, %struct.inode** %3, align 8
  %70 = getelementptr inbounds %struct.inode, %struct.inode* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 0
  store i64 0, i64* %71, align 8
  %72 = load %struct.inode*, %struct.inode** %3, align 8
  %73 = getelementptr inbounds %struct.inode, %struct.inode* %72, i32 0, i32 0
  store i64 0, i64* %73, align 8
  store i32 0, i32* %7, align 4
  br label %74

74:                                               ; preds = %92, %25
  %75 = load i32, i32* %7, align 4
  %76 = icmp slt i32 %75, 9
  br i1 %76, label %77, label %95

77:                                               ; preds = %74
  %78 = load %struct.minix_inode*, %struct.minix_inode** %5, align 8
  %79 = getelementptr inbounds %struct.minix_inode, %struct.minix_inode* %78, i32 0, i32 0
  %80 = load i32*, i32** %79, align 8
  %81 = load i32, i32* %7, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %80, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.minix_inode_info*, %struct.minix_inode_info** %6, align 8
  %86 = getelementptr inbounds %struct.minix_inode_info, %struct.minix_inode_info* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 0
  %88 = load i32*, i32** %87, align 8
  %89 = load i32, i32* %7, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  store i32 %84, i32* %91, align 4
  br label %92

92:                                               ; preds = %77
  %93 = load i32, i32* %7, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %7, align 4
  br label %74

95:                                               ; preds = %74
  %96 = load %struct.inode*, %struct.inode** %3, align 8
  %97 = load %struct.minix_inode*, %struct.minix_inode** %5, align 8
  %98 = getelementptr inbounds %struct.minix_inode, %struct.minix_inode* %97, i32 0, i32 0
  %99 = load i32*, i32** %98, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 0
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @old_decode_dev(i32 %101)
  %103 = call i32 @minix_set_inode(%struct.inode* %96, i32 %102)
  %104 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %105 = call i32 @brelse(%struct.buffer_head* %104)
  %106 = load %struct.inode*, %struct.inode** %3, align 8
  %107 = call i32 @unlock_new_inode(%struct.inode* %106)
  %108 = load %struct.inode*, %struct.inode** %3, align 8
  store %struct.inode* %108, %struct.inode** %2, align 8
  br label %109

109:                                              ; preds = %95, %19
  %110 = load %struct.inode*, %struct.inode** %2, align 8
  ret %struct.inode* %110
}

declare dso_local %struct.minix_inode_info* @minix_i(%struct.inode*) #1

declare dso_local %struct.minix_inode* @minix_V1_raw_inode(i32, i32, %struct.buffer_head**) #1

declare dso_local i32 @iget_failed(%struct.inode*) #1

declare dso_local %struct.inode* @ERR_PTR(i32) #1

declare dso_local i32 @minix_set_inode(%struct.inode*, i32) #1

declare dso_local i32 @old_decode_dev(i32) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @unlock_new_inode(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
