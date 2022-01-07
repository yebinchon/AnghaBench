; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ufs/extr_inode.c_ufs1_update_inode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ufs/extr_inode.c_ufs1_update_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32, i32, i32, %struct.TYPE_20__, %struct.TYPE_18__, %struct.TYPE_16__, i32, i32, i32, %struct.super_block* }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_16__ = type { i32 }
%struct.super_block = type { i32 }
%struct.ufs_inode = type { %struct.TYPE_24__, %struct.TYPE_23__, i8*, i8*, i8*, %struct.TYPE_21__, %struct.TYPE_19__, %struct.TYPE_17__, i32, i8*, i8* }
%struct.TYPE_24__ = type { %struct.TYPE_14__, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32* }
%struct.TYPE_23__ = type { %struct.TYPE_22__ }
%struct.TYPE_22__ = type { i8*, i8* }
%struct.TYPE_21__ = type { i64, i8* }
%struct.TYPE_19__ = type { i64, i8* }
%struct.TYPE_17__ = type { i64, i8* }
%struct.ufs_inode_info = type { %struct.TYPE_13__, i32, i32, i32 }
%struct.TYPE_13__ = type { i32*, i32* }
%struct.TYPE_15__ = type { i32 }

@UFS_UID_MASK = common dso_local global i32 0, align 4
@UFS_UID_EFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.inode*, %struct.ufs_inode*)* @ufs1_update_inode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ufs1_update_inode(%struct.inode* %0, %struct.ufs_inode* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.ufs_inode*, align 8
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca %struct.ufs_inode_info*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.ufs_inode* %1, %struct.ufs_inode** %4, align 8
  %7 = load %struct.inode*, %struct.inode** %3, align 8
  %8 = getelementptr inbounds %struct.inode, %struct.inode* %7, i32 0, i32 10
  %9 = load %struct.super_block*, %struct.super_block** %8, align 8
  store %struct.super_block* %9, %struct.super_block** %5, align 8
  %10 = load %struct.inode*, %struct.inode** %3, align 8
  %11 = call %struct.ufs_inode_info* @UFS_I(%struct.inode* %10)
  store %struct.ufs_inode_info* %11, %struct.ufs_inode_info** %6, align 8
  %12 = load %struct.super_block*, %struct.super_block** %5, align 8
  %13 = load %struct.inode*, %struct.inode** %3, align 8
  %14 = getelementptr inbounds %struct.inode, %struct.inode* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = call i8* @cpu_to_fs16(%struct.super_block* %12, i32 %15)
  %17 = load %struct.ufs_inode*, %struct.ufs_inode** %4, align 8
  %18 = getelementptr inbounds %struct.ufs_inode, %struct.ufs_inode* %17, i32 0, i32 10
  store i8* %16, i8** %18, align 8
  %19 = load %struct.super_block*, %struct.super_block** %5, align 8
  %20 = load %struct.inode*, %struct.inode** %3, align 8
  %21 = getelementptr inbounds %struct.inode, %struct.inode* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i8* @cpu_to_fs16(%struct.super_block* %19, i32 %22)
  %24 = load %struct.ufs_inode*, %struct.ufs_inode** %4, align 8
  %25 = getelementptr inbounds %struct.ufs_inode, %struct.ufs_inode* %24, i32 0, i32 9
  store i8* %23, i8** %25, align 8
  %26 = load %struct.super_block*, %struct.super_block** %5, align 8
  %27 = load %struct.ufs_inode*, %struct.ufs_inode** %4, align 8
  %28 = load %struct.inode*, %struct.inode** %3, align 8
  %29 = getelementptr inbounds %struct.inode, %struct.inode* %28, i32 0, i32 9
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @ufs_set_inode_uid(%struct.super_block* %26, %struct.ufs_inode* %27, i32 %30)
  %32 = load %struct.super_block*, %struct.super_block** %5, align 8
  %33 = load %struct.ufs_inode*, %struct.ufs_inode** %4, align 8
  %34 = load %struct.inode*, %struct.inode** %3, align 8
  %35 = getelementptr inbounds %struct.inode, %struct.inode* %34, i32 0, i32 8
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @ufs_set_inode_gid(%struct.super_block* %32, %struct.ufs_inode* %33, i32 %36)
  %38 = load %struct.super_block*, %struct.super_block** %5, align 8
  %39 = load %struct.inode*, %struct.inode** %3, align 8
  %40 = getelementptr inbounds %struct.inode, %struct.inode* %39, i32 0, i32 7
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @cpu_to_fs64(%struct.super_block* %38, i32 %41)
  %43 = load %struct.ufs_inode*, %struct.ufs_inode** %4, align 8
  %44 = getelementptr inbounds %struct.ufs_inode, %struct.ufs_inode* %43, i32 0, i32 8
  store i32 %42, i32* %44, align 8
  %45 = load %struct.super_block*, %struct.super_block** %5, align 8
  %46 = load %struct.inode*, %struct.inode** %3, align 8
  %47 = getelementptr inbounds %struct.inode, %struct.inode* %46, i32 0, i32 6
  %48 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call i8* @cpu_to_fs32(%struct.super_block* %45, i32 %49)
  %51 = load %struct.ufs_inode*, %struct.ufs_inode** %4, align 8
  %52 = getelementptr inbounds %struct.ufs_inode, %struct.ufs_inode* %51, i32 0, i32 7
  %53 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %52, i32 0, i32 1
  store i8* %50, i8** %53, align 8
  %54 = load %struct.ufs_inode*, %struct.ufs_inode** %4, align 8
  %55 = getelementptr inbounds %struct.ufs_inode, %struct.ufs_inode* %54, i32 0, i32 7
  %56 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %55, i32 0, i32 0
  store i64 0, i64* %56, align 8
  %57 = load %struct.super_block*, %struct.super_block** %5, align 8
  %58 = load %struct.inode*, %struct.inode** %3, align 8
  %59 = getelementptr inbounds %struct.inode, %struct.inode* %58, i32 0, i32 5
  %60 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i8* @cpu_to_fs32(%struct.super_block* %57, i32 %61)
  %63 = load %struct.ufs_inode*, %struct.ufs_inode** %4, align 8
  %64 = getelementptr inbounds %struct.ufs_inode, %struct.ufs_inode* %63, i32 0, i32 6
  %65 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %64, i32 0, i32 1
  store i8* %62, i8** %65, align 8
  %66 = load %struct.ufs_inode*, %struct.ufs_inode** %4, align 8
  %67 = getelementptr inbounds %struct.ufs_inode, %struct.ufs_inode* %66, i32 0, i32 6
  %68 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %67, i32 0, i32 0
  store i64 0, i64* %68, align 8
  %69 = load %struct.super_block*, %struct.super_block** %5, align 8
  %70 = load %struct.inode*, %struct.inode** %3, align 8
  %71 = getelementptr inbounds %struct.inode, %struct.inode* %70, i32 0, i32 4
  %72 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = call i8* @cpu_to_fs32(%struct.super_block* %69, i32 %73)
  %75 = load %struct.ufs_inode*, %struct.ufs_inode** %4, align 8
  %76 = getelementptr inbounds %struct.ufs_inode, %struct.ufs_inode* %75, i32 0, i32 5
  %77 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %76, i32 0, i32 1
  store i8* %74, i8** %77, align 8
  %78 = load %struct.ufs_inode*, %struct.ufs_inode** %4, align 8
  %79 = getelementptr inbounds %struct.ufs_inode, %struct.ufs_inode* %78, i32 0, i32 5
  %80 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %79, i32 0, i32 0
  store i64 0, i64* %80, align 8
  %81 = load %struct.super_block*, %struct.super_block** %5, align 8
  %82 = load %struct.inode*, %struct.inode** %3, align 8
  %83 = getelementptr inbounds %struct.inode, %struct.inode* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = call i8* @cpu_to_fs32(%struct.super_block* %81, i32 %84)
  %86 = load %struct.ufs_inode*, %struct.ufs_inode** %4, align 8
  %87 = getelementptr inbounds %struct.ufs_inode, %struct.ufs_inode* %86, i32 0, i32 4
  store i8* %85, i8** %87, align 8
  %88 = load %struct.super_block*, %struct.super_block** %5, align 8
  %89 = load %struct.ufs_inode_info*, %struct.ufs_inode_info** %6, align 8
  %90 = getelementptr inbounds %struct.ufs_inode_info, %struct.ufs_inode_info* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 8
  %92 = call i8* @cpu_to_fs32(%struct.super_block* %88, i32 %91)
  %93 = load %struct.ufs_inode*, %struct.ufs_inode** %4, align 8
  %94 = getelementptr inbounds %struct.ufs_inode, %struct.ufs_inode* %93, i32 0, i32 3
  store i8* %92, i8** %94, align 8
  %95 = load %struct.super_block*, %struct.super_block** %5, align 8
  %96 = load %struct.inode*, %struct.inode** %3, align 8
  %97 = getelementptr inbounds %struct.inode, %struct.inode* %96, i32 0, i32 3
  %98 = load i32, i32* %97, align 4
  %99 = call i8* @cpu_to_fs32(%struct.super_block* %95, i32 %98)
  %100 = load %struct.ufs_inode*, %struct.ufs_inode** %4, align 8
  %101 = getelementptr inbounds %struct.ufs_inode, %struct.ufs_inode* %100, i32 0, i32 2
  store i8* %99, i8** %101, align 8
  %102 = load %struct.super_block*, %struct.super_block** %5, align 8
  %103 = call %struct.TYPE_15__* @UFS_SB(%struct.super_block* %102)
  %104 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* @UFS_UID_MASK, align 4
  %107 = and i32 %105, %106
  %108 = load i32, i32* @UFS_UID_EFT, align 4
  %109 = icmp eq i32 %107, %108
  br i1 %109, label %110, label %129

110:                                              ; preds = %2
  %111 = load %struct.super_block*, %struct.super_block** %5, align 8
  %112 = load %struct.ufs_inode_info*, %struct.ufs_inode_info** %6, align 8
  %113 = getelementptr inbounds %struct.ufs_inode_info, %struct.ufs_inode_info* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 4
  %115 = call i8* @cpu_to_fs32(%struct.super_block* %111, i32 %114)
  %116 = load %struct.ufs_inode*, %struct.ufs_inode** %4, align 8
  %117 = getelementptr inbounds %struct.ufs_inode, %struct.ufs_inode* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %118, i32 0, i32 1
  store i8* %115, i8** %119, align 8
  %120 = load %struct.super_block*, %struct.super_block** %5, align 8
  %121 = load %struct.ufs_inode_info*, %struct.ufs_inode_info** %6, align 8
  %122 = getelementptr inbounds %struct.ufs_inode_info, %struct.ufs_inode_info* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 8
  %124 = call i8* @cpu_to_fs32(%struct.super_block* %120, i32 %123)
  %125 = load %struct.ufs_inode*, %struct.ufs_inode** %4, align 8
  %126 = getelementptr inbounds %struct.ufs_inode, %struct.ufs_inode* %125, i32 0, i32 1
  %127 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %127, i32 0, i32 0
  store i8* %124, i8** %128, align 8
  br label %129

129:                                              ; preds = %110, %2
  %130 = load %struct.inode*, %struct.inode** %3, align 8
  %131 = getelementptr inbounds %struct.inode, %struct.inode* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 8
  %133 = call i64 @S_ISCHR(i32 %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %141, label %135

135:                                              ; preds = %129
  %136 = load %struct.inode*, %struct.inode** %3, align 8
  %137 = getelementptr inbounds %struct.inode, %struct.inode* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 8
  %139 = call i64 @S_ISBLK(i32 %138)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %154

141:                                              ; preds = %135, %129
  %142 = load %struct.ufs_inode_info*, %struct.ufs_inode_info** %6, align 8
  %143 = getelementptr inbounds %struct.ufs_inode_info, %struct.ufs_inode_info* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %143, i32 0, i32 1
  %145 = load i32*, i32** %144, align 8
  %146 = getelementptr inbounds i32, i32* %145, i64 0
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.ufs_inode*, %struct.ufs_inode** %4, align 8
  %149 = getelementptr inbounds %struct.ufs_inode, %struct.ufs_inode* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %149, i32 0, i32 1
  %151 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %150, i32 0, i32 0
  %152 = load i32*, i32** %151, align 8
  %153 = getelementptr inbounds i32, i32* %152, i64 0
  store i32 %147, i32* %153, align 4
  br label %178

154:                                              ; preds = %135
  %155 = load %struct.inode*, %struct.inode** %3, align 8
  %156 = getelementptr inbounds %struct.inode, %struct.inode* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %168

159:                                              ; preds = %154
  %160 = load %struct.ufs_inode*, %struct.ufs_inode** %4, align 8
  %161 = getelementptr inbounds %struct.ufs_inode, %struct.ufs_inode* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %161, i32 0, i32 1
  %163 = load %struct.ufs_inode_info*, %struct.ufs_inode_info** %6, align 8
  %164 = getelementptr inbounds %struct.ufs_inode_info, %struct.ufs_inode_info* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %164, i32 0, i32 1
  %166 = load i32*, i32** %165, align 8
  %167 = call i32 @memcpy(%struct.TYPE_14__* %162, i32* %166, i32 8)
  br label %177

168:                                              ; preds = %154
  %169 = load %struct.ufs_inode*, %struct.ufs_inode** %4, align 8
  %170 = getelementptr inbounds %struct.ufs_inode, %struct.ufs_inode* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %170, i32 0, i32 0
  %172 = load %struct.ufs_inode_info*, %struct.ufs_inode_info** %6, align 8
  %173 = getelementptr inbounds %struct.ufs_inode_info, %struct.ufs_inode_info* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %173, i32 0, i32 0
  %175 = load i32*, i32** %174, align 8
  %176 = call i32 @memcpy(%struct.TYPE_14__* %171, i32* %175, i32 8)
  br label %177

177:                                              ; preds = %168, %159
  br label %178

178:                                              ; preds = %177, %141
  %179 = load %struct.inode*, %struct.inode** %3, align 8
  %180 = getelementptr inbounds %struct.inode, %struct.inode* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %186, label %183

183:                                              ; preds = %178
  %184 = load %struct.ufs_inode*, %struct.ufs_inode** %4, align 8
  %185 = call i32 @memset(%struct.ufs_inode* %184, i32 0, i32 128)
  br label %186

186:                                              ; preds = %183, %178
  ret void
}

declare dso_local %struct.ufs_inode_info* @UFS_I(%struct.inode*) #1

declare dso_local i8* @cpu_to_fs16(%struct.super_block*, i32) #1

declare dso_local i32 @ufs_set_inode_uid(%struct.super_block*, %struct.ufs_inode*, i32) #1

declare dso_local i32 @ufs_set_inode_gid(%struct.super_block*, %struct.ufs_inode*, i32) #1

declare dso_local i32 @cpu_to_fs64(%struct.super_block*, i32) #1

declare dso_local i8* @cpu_to_fs32(%struct.super_block*, i32) #1

declare dso_local %struct.TYPE_15__* @UFS_SB(%struct.super_block*) #1

declare dso_local i64 @S_ISCHR(i32) #1

declare dso_local i64 @S_ISBLK(i32) #1

declare dso_local i32 @memcpy(%struct.TYPE_14__*, i32*, i32) #1

declare dso_local i32 @memset(%struct.ufs_inode*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
