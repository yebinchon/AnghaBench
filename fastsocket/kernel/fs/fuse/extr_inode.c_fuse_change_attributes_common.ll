; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/fuse/extr_inode.c_fuse_change_attributes_common.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/fuse/extr_inode.c_fuse_change_attributes_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, %struct.TYPE_8__*, i32, %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_5__, i32, i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.fuse_attr = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.fuse_conn = type { i32, i64 }
%struct.fuse_inode = type { i32, i32, i32, i64 }

@S_IFMT = common dso_local global i32 0, align 4
@FUSE_DEFAULT_PERMISSIONS = common dso_local global i32 0, align 4
@S_ISVTX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fuse_change_attributes_common(%struct.inode* %0, %struct.fuse_attr* %1, i32 %2) #0 {
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.fuse_attr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.fuse_conn*, align 8
  %8 = alloca %struct.fuse_inode*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.fuse_attr* %1, %struct.fuse_attr** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.inode*, %struct.inode** %4, align 8
  %10 = call %struct.fuse_conn* @get_fuse_conn(%struct.inode* %9)
  store %struct.fuse_conn* %10, %struct.fuse_conn** %7, align 8
  %11 = load %struct.inode*, %struct.inode** %4, align 8
  %12 = call %struct.fuse_inode* @get_fuse_inode(%struct.inode* %11)
  store %struct.fuse_inode* %12, %struct.fuse_inode** %8, align 8
  %13 = load %struct.fuse_conn*, %struct.fuse_conn** %7, align 8
  %14 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = add nsw i64 %15, 1
  store i64 %16, i64* %14, align 8
  %17 = load %struct.fuse_inode*, %struct.fuse_inode** %8, align 8
  %18 = getelementptr inbounds %struct.fuse_inode, %struct.fuse_inode* %17, i32 0, i32 3
  store i64 %16, i64* %18, align 8
  %19 = load i32, i32* %6, align 4
  %20 = load %struct.fuse_inode*, %struct.fuse_inode** %8, align 8
  %21 = getelementptr inbounds %struct.fuse_inode, %struct.fuse_inode* %20, i32 0, i32 2
  store i32 %19, i32* %21, align 8
  %22 = load %struct.fuse_attr*, %struct.fuse_attr** %5, align 8
  %23 = getelementptr inbounds %struct.fuse_attr, %struct.fuse_attr* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @fuse_squash_ino(i32 %24)
  %26 = load %struct.inode*, %struct.inode** %4, align 8
  %27 = getelementptr inbounds %struct.inode, %struct.inode* %26, i32 0, i32 10
  store i32 %25, i32* %27, align 4
  %28 = load %struct.inode*, %struct.inode** %4, align 8
  %29 = getelementptr inbounds %struct.inode, %struct.inode* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @S_IFMT, align 4
  %32 = and i32 %30, %31
  %33 = load %struct.fuse_attr*, %struct.fuse_attr** %5, align 8
  %34 = getelementptr inbounds %struct.fuse_attr, %struct.fuse_attr* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = and i32 %35, 4095
  %37 = or i32 %32, %36
  %38 = load %struct.inode*, %struct.inode** %4, align 8
  %39 = getelementptr inbounds %struct.inode, %struct.inode* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  %40 = load %struct.fuse_attr*, %struct.fuse_attr** %5, align 8
  %41 = getelementptr inbounds %struct.fuse_attr, %struct.fuse_attr* %40, i32 0, i32 12
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.inode*, %struct.inode** %4, align 8
  %44 = getelementptr inbounds %struct.inode, %struct.inode* %43, i32 0, i32 9
  store i32 %42, i32* %44, align 8
  %45 = load %struct.fuse_attr*, %struct.fuse_attr** %5, align 8
  %46 = getelementptr inbounds %struct.fuse_attr, %struct.fuse_attr* %45, i32 0, i32 11
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.inode*, %struct.inode** %4, align 8
  %49 = getelementptr inbounds %struct.inode, %struct.inode* %48, i32 0, i32 8
  store i32 %47, i32* %49, align 4
  %50 = load %struct.fuse_attr*, %struct.fuse_attr** %5, align 8
  %51 = getelementptr inbounds %struct.fuse_attr, %struct.fuse_attr* %50, i32 0, i32 10
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.inode*, %struct.inode** %4, align 8
  %54 = getelementptr inbounds %struct.inode, %struct.inode* %53, i32 0, i32 7
  store i32 %52, i32* %54, align 8
  %55 = load %struct.fuse_attr*, %struct.fuse_attr** %5, align 8
  %56 = getelementptr inbounds %struct.fuse_attr, %struct.fuse_attr* %55, i32 0, i32 9
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.inode*, %struct.inode** %4, align 8
  %59 = getelementptr inbounds %struct.inode, %struct.inode* %58, i32 0, i32 6
  store i32 %57, i32* %59, align 4
  %60 = load %struct.fuse_attr*, %struct.fuse_attr** %5, align 8
  %61 = getelementptr inbounds %struct.fuse_attr, %struct.fuse_attr* %60, i32 0, i32 8
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.inode*, %struct.inode** %4, align 8
  %64 = getelementptr inbounds %struct.inode, %struct.inode* %63, i32 0, i32 5
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 1
  store i32 %62, i32* %65, align 4
  %66 = load %struct.fuse_attr*, %struct.fuse_attr** %5, align 8
  %67 = getelementptr inbounds %struct.fuse_attr, %struct.fuse_attr* %66, i32 0, i32 7
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.inode*, %struct.inode** %4, align 8
  %70 = getelementptr inbounds %struct.inode, %struct.inode* %69, i32 0, i32 5
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 0
  store i32 %68, i32* %71, align 4
  %72 = load %struct.fuse_attr*, %struct.fuse_attr** %5, align 8
  %73 = getelementptr inbounds %struct.fuse_attr, %struct.fuse_attr* %72, i32 0, i32 6
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.inode*, %struct.inode** %4, align 8
  %76 = getelementptr inbounds %struct.inode, %struct.inode* %75, i32 0, i32 4
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 1
  store i32 %74, i32* %77, align 4
  %78 = load %struct.fuse_attr*, %struct.fuse_attr** %5, align 8
  %79 = getelementptr inbounds %struct.fuse_attr, %struct.fuse_attr* %78, i32 0, i32 5
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.inode*, %struct.inode** %4, align 8
  %82 = getelementptr inbounds %struct.inode, %struct.inode* %81, i32 0, i32 4
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 0
  store i32 %80, i32* %83, align 4
  %84 = load %struct.fuse_attr*, %struct.fuse_attr** %5, align 8
  %85 = getelementptr inbounds %struct.fuse_attr, %struct.fuse_attr* %84, i32 0, i32 4
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.inode*, %struct.inode** %4, align 8
  %88 = getelementptr inbounds %struct.inode, %struct.inode* %87, i32 0, i32 3
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 1
  store i32 %86, i32* %89, align 4
  %90 = load %struct.fuse_attr*, %struct.fuse_attr** %5, align 8
  %91 = getelementptr inbounds %struct.fuse_attr, %struct.fuse_attr* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.inode*, %struct.inode** %4, align 8
  %94 = getelementptr inbounds %struct.inode, %struct.inode* %93, i32 0, i32 3
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 0
  store i32 %92, i32* %95, align 4
  %96 = load %struct.fuse_attr*, %struct.fuse_attr** %5, align 8
  %97 = getelementptr inbounds %struct.fuse_attr, %struct.fuse_attr* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %107

100:                                              ; preds = %3
  %101 = load %struct.fuse_attr*, %struct.fuse_attr** %5, align 8
  %102 = getelementptr inbounds %struct.fuse_attr, %struct.fuse_attr* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = call i32 @ilog2(i64 %103)
  %105 = load %struct.inode*, %struct.inode** %4, align 8
  %106 = getelementptr inbounds %struct.inode, %struct.inode* %105, i32 0, i32 2
  store i32 %104, i32* %106, align 8
  br label %115

107:                                              ; preds = %3
  %108 = load %struct.inode*, %struct.inode** %4, align 8
  %109 = getelementptr inbounds %struct.inode, %struct.inode* %108, i32 0, i32 1
  %110 = load %struct.TYPE_8__*, %struct.TYPE_8__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.inode*, %struct.inode** %4, align 8
  %114 = getelementptr inbounds %struct.inode, %struct.inode* %113, i32 0, i32 2
  store i32 %112, i32* %114, align 8
  br label %115

115:                                              ; preds = %107, %100
  %116 = load %struct.inode*, %struct.inode** %4, align 8
  %117 = getelementptr inbounds %struct.inode, %struct.inode* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = load %struct.fuse_inode*, %struct.fuse_inode** %8, align 8
  %120 = getelementptr inbounds %struct.fuse_inode, %struct.fuse_inode* %119, i32 0, i32 0
  store i32 %118, i32* %120, align 8
  %121 = load %struct.fuse_conn*, %struct.fuse_conn** %7, align 8
  %122 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = load i32, i32* @FUSE_DEFAULT_PERMISSIONS, align 4
  %125 = and i32 %123, %124
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %134, label %127

127:                                              ; preds = %115
  %128 = load i32, i32* @S_ISVTX, align 4
  %129 = xor i32 %128, -1
  %130 = load %struct.inode*, %struct.inode** %4, align 8
  %131 = getelementptr inbounds %struct.inode, %struct.inode* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = and i32 %132, %129
  store i32 %133, i32* %131, align 8
  br label %134

134:                                              ; preds = %127, %115
  %135 = load %struct.fuse_attr*, %struct.fuse_attr** %5, align 8
  %136 = getelementptr inbounds %struct.fuse_attr, %struct.fuse_attr* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 8
  %138 = load %struct.fuse_inode*, %struct.fuse_inode** %8, align 8
  %139 = getelementptr inbounds %struct.fuse_inode, %struct.fuse_inode* %138, i32 0, i32 1
  store i32 %137, i32* %139, align 4
  ret void
}

declare dso_local %struct.fuse_conn* @get_fuse_conn(%struct.inode*) #1

declare dso_local %struct.fuse_inode* @get_fuse_inode(%struct.inode*) #1

declare dso_local i32 @fuse_squash_ino(i32) #1

declare dso_local i32 @ilog2(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
