; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/linux-2.6/extr_xfs_iops.c_xfs_setup_inode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/linux-2.6/extr_xfs_iops.c_xfs_setup_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_inode = type { %struct.TYPE_13__, %struct.TYPE_24__, %struct.TYPE_16__*, i32, %struct.inode }
%struct.TYPE_13__ = type { i32, %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_24__ = type { i32, %struct.TYPE_23__, %struct.TYPE_21__, %struct.TYPE_19__, i32, i32, i32, i32, i32 }
%struct.TYPE_23__ = type { i32, i32 }
%struct.TYPE_21__ = type { i32, i32 }
%struct.TYPE_19__ = type { i32, i32 }
%struct.TYPE_16__ = type { i32 }
%struct.inode = type { i32, i32, i32, i32*, %struct.TYPE_14__*, i32*, i32, %struct.TYPE_22__, %struct.TYPE_20__, %struct.TYPE_18__, i32, i32, i32, i32, i32 }
%struct.TYPE_14__ = type { i32* }
%struct.TYPE_22__ = type { i32, i32 }
%struct.TYPE_20__ = type { i32, i32 }
%struct.TYPE_18__ = type { i32, i32 }
%struct.TYPE_15__ = type { i32 }

@I_NEW = common dso_local global i32 0, align 4
@I_LOCK = common dso_local global i32 0, align 4
@S_IFMT = common dso_local global i32 0, align 4
@xfs_inode_operations = common dso_local global i32 0, align 4
@xfs_file_operations = common dso_local global i32 0, align 4
@xfs_address_space_operations = common dso_local global i32 0, align 4
@xfs_dir_ci_inode_operations = common dso_local global i32 0, align 4
@xfs_dir_inode_operations = common dso_local global i32 0, align 4
@xfs_dir_file_operations = common dso_local global i32 0, align 4
@xfs_symlink_inode_operations = common dso_local global i32 0, align 4
@XFS_IFINLINE = common dso_local global i32 0, align 4
@XFS_INEW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xfs_setup_inode(%struct.xfs_inode* %0) #0 {
  %2 = alloca %struct.xfs_inode*, align 8
  %3 = alloca %struct.inode*, align 8
  store %struct.xfs_inode* %0, %struct.xfs_inode** %2, align 8
  %4 = load %struct.xfs_inode*, %struct.xfs_inode** %2, align 8
  %5 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %4, i32 0, i32 4
  store %struct.inode* %5, %struct.inode** %3, align 8
  %6 = load %struct.xfs_inode*, %struct.xfs_inode** %2, align 8
  %7 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %6, i32 0, i32 3
  %8 = load i32, i32* %7, align 8
  %9 = load %struct.inode*, %struct.inode** %3, align 8
  %10 = getelementptr inbounds %struct.inode, %struct.inode* %9, i32 0, i32 14
  store i32 %8, i32* %10, align 4
  %11 = load i32, i32* @I_NEW, align 4
  %12 = load i32, i32* @I_LOCK, align 4
  %13 = or i32 %11, %12
  %14 = load %struct.inode*, %struct.inode** %3, align 8
  %15 = getelementptr inbounds %struct.inode, %struct.inode* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 8
  %16 = load %struct.xfs_inode*, %struct.xfs_inode** %2, align 8
  %17 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %16, i32 0, i32 2
  %18 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.inode*, %struct.inode** %3, align 8
  %22 = call i32 @inode_add_to_lists(i32 %20, %struct.inode* %21)
  %23 = load %struct.xfs_inode*, %struct.xfs_inode** %2, align 8
  %24 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.inode*, %struct.inode** %3, align 8
  %28 = getelementptr inbounds %struct.inode, %struct.inode* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 4
  %29 = load %struct.xfs_inode*, %struct.xfs_inode** %2, align 8
  %30 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %30, i32 0, i32 8
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.inode*, %struct.inode** %3, align 8
  %34 = getelementptr inbounds %struct.inode, %struct.inode* %33, i32 0, i32 13
  store i32 %32, i32* %34, align 8
  %35 = load %struct.xfs_inode*, %struct.xfs_inode** %2, align 8
  %36 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %36, i32 0, i32 7
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.inode*, %struct.inode** %3, align 8
  %40 = getelementptr inbounds %struct.inode, %struct.inode* %39, i32 0, i32 12
  store i32 %38, i32* %40, align 4
  %41 = load %struct.xfs_inode*, %struct.xfs_inode** %2, align 8
  %42 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %42, i32 0, i32 6
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.inode*, %struct.inode** %3, align 8
  %46 = getelementptr inbounds %struct.inode, %struct.inode* %45, i32 0, i32 11
  store i32 %44, i32* %46, align 8
  %47 = load %struct.inode*, %struct.inode** %3, align 8
  %48 = getelementptr inbounds %struct.inode, %struct.inode* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @S_IFMT, align 4
  %51 = and i32 %49, %50
  switch i32 %51, label %69 [
    i32 132, label %52
    i32 131, label %52
  ]

52:                                               ; preds = %1, %1
  %53 = load %struct.xfs_inode*, %struct.xfs_inode** %2, align 8
  %54 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @sysv_major(i32 %57)
  %59 = and i32 %58, 511
  %60 = load %struct.xfs_inode*, %struct.xfs_inode** %2, align 8
  %61 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @sysv_minor(i32 %64)
  %66 = call i32 @MKDEV(i32 %59, i32 %65)
  %67 = load %struct.inode*, %struct.inode** %3, align 8
  %68 = getelementptr inbounds %struct.inode, %struct.inode* %67, i32 0, i32 2
  store i32 %66, i32* %68, align 8
  br label %72

69:                                               ; preds = %1
  %70 = load %struct.inode*, %struct.inode** %3, align 8
  %71 = getelementptr inbounds %struct.inode, %struct.inode* %70, i32 0, i32 2
  store i32 0, i32* %71, align 8
  br label %72

72:                                               ; preds = %69, %52
  %73 = load %struct.xfs_inode*, %struct.xfs_inode** %2, align 8
  %74 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %74, i32 0, i32 5
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.inode*, %struct.inode** %3, align 8
  %78 = getelementptr inbounds %struct.inode, %struct.inode* %77, i32 0, i32 10
  store i32 %76, i32* %78, align 4
  %79 = load %struct.inode*, %struct.inode** %3, align 8
  %80 = load %struct.xfs_inode*, %struct.xfs_inode** %2, align 8
  %81 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %81, i32 0, i32 4
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @i_size_write(%struct.inode* %79, i32 %83)
  %85 = load %struct.xfs_inode*, %struct.xfs_inode** %2, align 8
  %86 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %86, i32 0, i32 3
  %88 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.inode*, %struct.inode** %3, align 8
  %91 = getelementptr inbounds %struct.inode, %struct.inode* %90, i32 0, i32 9
  %92 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %91, i32 0, i32 1
  store i32 %89, i32* %92, align 4
  %93 = load %struct.xfs_inode*, %struct.xfs_inode** %2, align 8
  %94 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %94, i32 0, i32 3
  %96 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.inode*, %struct.inode** %3, align 8
  %99 = getelementptr inbounds %struct.inode, %struct.inode* %98, i32 0, i32 9
  %100 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %99, i32 0, i32 0
  store i32 %97, i32* %100, align 4
  %101 = load %struct.xfs_inode*, %struct.xfs_inode** %2, align 8
  %102 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %102, i32 0, i32 2
  %104 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.inode*, %struct.inode** %3, align 8
  %107 = getelementptr inbounds %struct.inode, %struct.inode* %106, i32 0, i32 8
  %108 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %107, i32 0, i32 1
  store i32 %105, i32* %108, align 4
  %109 = load %struct.xfs_inode*, %struct.xfs_inode** %2, align 8
  %110 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %110, i32 0, i32 2
  %112 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.inode*, %struct.inode** %3, align 8
  %115 = getelementptr inbounds %struct.inode, %struct.inode* %114, i32 0, i32 8
  %116 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %115, i32 0, i32 0
  store i32 %113, i32* %116, align 4
  %117 = load %struct.xfs_inode*, %struct.xfs_inode** %2, align 8
  %118 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.inode*, %struct.inode** %3, align 8
  %123 = getelementptr inbounds %struct.inode, %struct.inode* %122, i32 0, i32 7
  %124 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %123, i32 0, i32 1
  store i32 %121, i32* %124, align 4
  %125 = load %struct.xfs_inode*, %struct.xfs_inode** %2, align 8
  %126 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %125, i32 0, i32 1
  %127 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %126, i32 0, i32 1
  %128 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.inode*, %struct.inode** %3, align 8
  %131 = getelementptr inbounds %struct.inode, %struct.inode* %130, i32 0, i32 7
  %132 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %131, i32 0, i32 0
  store i32 %129, i32* %132, align 4
  %133 = load %struct.inode*, %struct.inode** %3, align 8
  %134 = load %struct.xfs_inode*, %struct.xfs_inode** %2, align 8
  %135 = call i32 @xfs_diflags_to_iflags(%struct.inode* %133, %struct.xfs_inode* %134)
  %136 = load %struct.inode*, %struct.inode** %3, align 8
  %137 = getelementptr inbounds %struct.inode, %struct.inode* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* @S_IFMT, align 4
  %140 = and i32 %138, %139
  switch i32 %140, label %183 [
    i32 128, label %141
    i32 130, label %150
    i32 129, label %167
  ]

141:                                              ; preds = %72
  %142 = load %struct.inode*, %struct.inode** %3, align 8
  %143 = getelementptr inbounds %struct.inode, %struct.inode* %142, i32 0, i32 3
  store i32* @xfs_inode_operations, i32** %143, align 8
  %144 = load %struct.inode*, %struct.inode** %3, align 8
  %145 = getelementptr inbounds %struct.inode, %struct.inode* %144, i32 0, i32 5
  store i32* @xfs_file_operations, i32** %145, align 8
  %146 = load %struct.inode*, %struct.inode** %3, align 8
  %147 = getelementptr inbounds %struct.inode, %struct.inode* %146, i32 0, i32 4
  %148 = load %struct.TYPE_14__*, %struct.TYPE_14__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %148, i32 0, i32 0
  store i32* @xfs_address_space_operations, i32** %149, align 8
  br label %194

150:                                              ; preds = %72
  %151 = load %struct.inode*, %struct.inode** %3, align 8
  %152 = getelementptr inbounds %struct.inode, %struct.inode* %151, i32 0, i32 6
  %153 = load i32, i32* %152, align 8
  %154 = call %struct.TYPE_15__* @XFS_M(i32 %153)
  %155 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %154, i32 0, i32 0
  %156 = call i32 @xfs_sb_version_hasasciici(i32* %155)
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %161

158:                                              ; preds = %150
  %159 = load %struct.inode*, %struct.inode** %3, align 8
  %160 = getelementptr inbounds %struct.inode, %struct.inode* %159, i32 0, i32 3
  store i32* @xfs_dir_ci_inode_operations, i32** %160, align 8
  br label %164

161:                                              ; preds = %150
  %162 = load %struct.inode*, %struct.inode** %3, align 8
  %163 = getelementptr inbounds %struct.inode, %struct.inode* %162, i32 0, i32 3
  store i32* @xfs_dir_inode_operations, i32** %163, align 8
  br label %164

164:                                              ; preds = %161, %158
  %165 = load %struct.inode*, %struct.inode** %3, align 8
  %166 = getelementptr inbounds %struct.inode, %struct.inode* %165, i32 0, i32 5
  store i32* @xfs_dir_file_operations, i32** %166, align 8
  br label %194

167:                                              ; preds = %72
  %168 = load %struct.inode*, %struct.inode** %3, align 8
  %169 = getelementptr inbounds %struct.inode, %struct.inode* %168, i32 0, i32 3
  store i32* @xfs_symlink_inode_operations, i32** %169, align 8
  %170 = load %struct.xfs_inode*, %struct.xfs_inode** %2, align 8
  %171 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = load i32, i32* @XFS_IFINLINE, align 4
  %175 = and i32 %173, %174
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %182, label %177

177:                                              ; preds = %167
  %178 = load %struct.inode*, %struct.inode** %3, align 8
  %179 = getelementptr inbounds %struct.inode, %struct.inode* %178, i32 0, i32 4
  %180 = load %struct.TYPE_14__*, %struct.TYPE_14__** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %180, i32 0, i32 0
  store i32* @xfs_address_space_operations, i32** %181, align 8
  br label %182

182:                                              ; preds = %177, %167
  br label %194

183:                                              ; preds = %72
  %184 = load %struct.inode*, %struct.inode** %3, align 8
  %185 = getelementptr inbounds %struct.inode, %struct.inode* %184, i32 0, i32 3
  store i32* @xfs_inode_operations, i32** %185, align 8
  %186 = load %struct.inode*, %struct.inode** %3, align 8
  %187 = load %struct.inode*, %struct.inode** %3, align 8
  %188 = getelementptr inbounds %struct.inode, %struct.inode* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 4
  %190 = load %struct.inode*, %struct.inode** %3, align 8
  %191 = getelementptr inbounds %struct.inode, %struct.inode* %190, i32 0, i32 2
  %192 = load i32, i32* %191, align 8
  %193 = call i32 @init_special_inode(%struct.inode* %186, i32 %189, i32 %192)
  br label %194

194:                                              ; preds = %183, %182, %164, %141
  %195 = load %struct.xfs_inode*, %struct.xfs_inode** %2, align 8
  %196 = load i32, i32* @XFS_INEW, align 4
  %197 = call i32 @xfs_iflags_clear(%struct.xfs_inode* %195, i32 %196)
  %198 = call i32 (...) @barrier()
  %199 = load %struct.inode*, %struct.inode** %3, align 8
  %200 = call i32 @unlock_new_inode(%struct.inode* %199)
  ret void
}

declare dso_local i32 @inode_add_to_lists(i32, %struct.inode*) #1

declare dso_local i32 @MKDEV(i32, i32) #1

declare dso_local i32 @sysv_major(i32) #1

declare dso_local i32 @sysv_minor(i32) #1

declare dso_local i32 @i_size_write(%struct.inode*, i32) #1

declare dso_local i32 @xfs_diflags_to_iflags(%struct.inode*, %struct.xfs_inode*) #1

declare dso_local i32 @xfs_sb_version_hasasciici(i32*) #1

declare dso_local %struct.TYPE_15__* @XFS_M(i32) #1

declare dso_local i32 @init_special_inode(%struct.inode*, i32, i32) #1

declare dso_local i32 @xfs_iflags_clear(%struct.xfs_inode*, i32) #1

declare dso_local i32 @barrier(...) #1

declare dso_local i32 @unlock_new_inode(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
