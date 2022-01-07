; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_bmap.c_gfs2_write_alloc_required.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_bmap.c_gfs2_write_alloc_required.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_inode = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.gfs2_sbd = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.buffer_head = type { i32, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gfs2_write_alloc_required(%struct.gfs2_inode* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.gfs2_inode*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.gfs2_sbd*, align 8
  %11 = alloca %struct.buffer_head, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.gfs2_inode* %0, %struct.gfs2_inode** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %17 = load %struct.gfs2_inode*, %struct.gfs2_inode** %6, align 8
  %18 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %17, i32 0, i32 0
  %19 = call %struct.gfs2_sbd* @GFS2_SB(%struct.TYPE_6__* %18)
  store %struct.gfs2_sbd* %19, %struct.gfs2_sbd** %10, align 8
  %20 = load i32*, i32** %9, align 8
  store i32 0, i32* %20, align 4
  %21 = load i32, i32* %8, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %117

24:                                               ; preds = %4
  %25 = load %struct.gfs2_inode*, %struct.gfs2_inode** %6, align 8
  %26 = call i64 @gfs2_is_stuffed(%struct.gfs2_inode* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %43

28:                                               ; preds = %24
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* %8, align 4
  %31 = add i32 %29, %30
  %32 = zext i32 %31 to i64
  %33 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %10, align 8
  %34 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = sext i32 %36 to i64
  %38 = sub i64 %37, 4
  %39 = icmp ugt i64 %32, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %28
  %41 = load i32*, i32** %9, align 8
  store i32 1, i32* %41, align 4
  br label %42

42:                                               ; preds = %40, %28
  store i32 0, i32* %5, align 4
  br label %117

43:                                               ; preds = %24
  %44 = load i32*, i32** %9, align 8
  store i32 1, i32* %44, align 4
  %45 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %10, align 8
  %46 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %12, align 4
  %49 = load %struct.gfs2_inode*, %struct.gfs2_inode** %6, align 8
  %50 = call i32 @gfs2_is_dir(%struct.gfs2_inode* %49)
  %51 = call i32 @BUG_ON(i32 %50)
  %52 = load %struct.gfs2_inode*, %struct.gfs2_inode** %6, align 8
  %53 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %52, i32 0, i32 0
  %54 = call i32 @i_size_read(%struct.TYPE_6__* %53)
  %55 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %10, align 8
  %56 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = add nsw i32 %54, %58
  %60 = sub nsw i32 %59, 1
  %61 = load i32, i32* %12, align 4
  %62 = ashr i32 %60, %61
  store i32 %62, i32* %16, align 4
  %63 = load i32, i32* %7, align 4
  %64 = load i32, i32* %12, align 4
  %65 = ashr i32 %63, %64
  store i32 %65, i32* %13, align 4
  %66 = load i32, i32* %7, align 4
  %67 = load i32, i32* %8, align 4
  %68 = add i32 %66, %67
  %69 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %10, align 8
  %70 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = add i32 %68, %72
  %74 = sub i32 %73, 1
  %75 = load i32, i32* %12, align 4
  %76 = lshr i32 %74, %75
  store i32 %76, i32* %14, align 4
  %77 = load i32, i32* %14, align 4
  %78 = load i32, i32* %16, align 4
  %79 = icmp sgt i32 %77, %78
  br i1 %79, label %80, label %81

80:                                               ; preds = %43
  store i32 0, i32* %5, align 4
  br label %117

81:                                               ; preds = %43
  %82 = load i32, i32* %14, align 4
  %83 = load i32, i32* %13, align 4
  %84 = sub nsw i32 %82, %83
  %85 = load i32, i32* %12, align 4
  %86 = shl i32 %84, %85
  store i32 %86, i32* %15, align 4
  br label %87

87:                                               ; preds = %112, %81
  %88 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %11, i32 0, i32 1
  store i64 0, i64* %88, align 8
  %89 = load i32, i32* %15, align 4
  %90 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %11, i32 0, i32 0
  store i32 %89, i32* %90, align 8
  %91 = load %struct.gfs2_inode*, %struct.gfs2_inode** %6, align 8
  %92 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %91, i32 0, i32 0
  %93 = load i32, i32* %13, align 4
  %94 = call i32 @gfs2_block_map(%struct.TYPE_6__* %92, i32 %93, %struct.buffer_head* %11, i32 0)
  %95 = call i32 @buffer_mapped(%struct.buffer_head* %11)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %98, label %97

97:                                               ; preds = %87
  store i32 0, i32* %5, align 4
  br label %117

98:                                               ; preds = %87
  %99 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %11, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = load i32, i32* %15, align 4
  %102 = sub nsw i32 %101, %100
  store i32 %102, i32* %15, align 4
  %103 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %11, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.gfs2_inode*, %struct.gfs2_inode** %6, align 8
  %106 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = ashr i32 %104, %108
  %110 = load i32, i32* %13, align 4
  %111 = add nsw i32 %110, %109
  store i32 %111, i32* %13, align 4
  br label %112

112:                                              ; preds = %98
  %113 = load i32, i32* %15, align 4
  %114 = icmp sgt i32 %113, 0
  br i1 %114, label %87, label %115

115:                                              ; preds = %112
  %116 = load i32*, i32** %9, align 8
  store i32 0, i32* %116, align 4
  store i32 0, i32* %5, align 4
  br label %117

117:                                              ; preds = %115, %97, %80, %42, %23
  %118 = load i32, i32* %5, align 4
  ret i32 %118
}

declare dso_local %struct.gfs2_sbd* @GFS2_SB(%struct.TYPE_6__*) #1

declare dso_local i64 @gfs2_is_stuffed(%struct.gfs2_inode*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @gfs2_is_dir(%struct.gfs2_inode*) #1

declare dso_local i32 @i_size_read(%struct.TYPE_6__*) #1

declare dso_local i32 @gfs2_block_map(%struct.TYPE_6__*, i32, %struct.buffer_head*, i32) #1

declare dso_local i32 @buffer_mapped(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
