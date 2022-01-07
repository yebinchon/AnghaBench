; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_inode.c_inode_init_always.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_inode.c_inode_init_always.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.address_space_operations = type { i32 }
%struct.inode_operations = type { i32 }
%struct.file_operations = type { i32 }
%struct.backing_dev_info = type { i32 }
%struct.super_block = type { %struct.TYPE_8__*, %struct.TYPE_5__*, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.backing_dev_info* }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.inode = type { i32, i64, i32, i32, %struct.address_space*, i32*, i32, i32, i32, i64, i64, i32*, i32*, i32*, i32, i64, i64, i64, i64, i32, i64, i64, %struct.file_operations*, %struct.inode_operations*, i32, i64, i32, %struct.super_block*, %struct.address_space }
%struct.address_space = type { %struct.backing_dev_info*, i64, i32*, i64, %struct.inode*, %struct.address_space_operations* }

@inode_init_always.empty_aops = internal constant %struct.address_space_operations zeroinitializer, align 4
@inode_init_always.empty_iops = internal constant %struct.inode_operations zeroinitializer, align 4
@inode_init_always.empty_fops = internal constant %struct.file_operations zeroinitializer, align 4
@GFP_HIGHUSER_MOVABLE = common dso_local global i32 0, align 4
@default_backing_dev_info = common dso_local global %struct.backing_dev_info zeroinitializer, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ACL_NOT_CACHED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @inode_init_always(%struct.super_block* %0, %struct.inode* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.address_space*, align 8
  %7 = alloca %struct.backing_dev_info*, align 8
  store %struct.super_block* %0, %struct.super_block** %4, align 8
  store %struct.inode* %1, %struct.inode** %5, align 8
  %8 = load %struct.inode*, %struct.inode** %5, align 8
  %9 = getelementptr inbounds %struct.inode, %struct.inode* %8, i32 0, i32 28
  store %struct.address_space* %9, %struct.address_space** %6, align 8
  %10 = load %struct.super_block*, %struct.super_block** %4, align 8
  %11 = load %struct.inode*, %struct.inode** %5, align 8
  %12 = getelementptr inbounds %struct.inode, %struct.inode* %11, i32 0, i32 27
  store %struct.super_block* %10, %struct.super_block** %12, align 8
  %13 = load %struct.super_block*, %struct.super_block** %4, align 8
  %14 = getelementptr inbounds %struct.super_block, %struct.super_block* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.inode*, %struct.inode** %5, align 8
  %17 = getelementptr inbounds %struct.inode, %struct.inode* %16, i32 0, i32 26
  store i32 %15, i32* %17, align 8
  %18 = load %struct.inode*, %struct.inode** %5, align 8
  %19 = getelementptr inbounds %struct.inode, %struct.inode* %18, i32 0, i32 25
  store i64 0, i64* %19, align 8
  %20 = load %struct.inode*, %struct.inode** %5, align 8
  %21 = getelementptr inbounds %struct.inode, %struct.inode* %20, i32 0, i32 24
  %22 = call i32 @atomic_set(i32* %21, i32 1)
  %23 = load %struct.inode*, %struct.inode** %5, align 8
  %24 = getelementptr inbounds %struct.inode, %struct.inode* %23, i32 0, i32 23
  store %struct.inode_operations* @inode_init_always.empty_iops, %struct.inode_operations** %24, align 8
  %25 = load %struct.inode*, %struct.inode** %5, align 8
  %26 = getelementptr inbounds %struct.inode, %struct.inode* %25, i32 0, i32 22
  store %struct.file_operations* @inode_init_always.empty_fops, %struct.file_operations** %26, align 8
  %27 = load %struct.inode*, %struct.inode** %5, align 8
  %28 = getelementptr inbounds %struct.inode, %struct.inode* %27, i32 0, i32 0
  store i32 1, i32* %28, align 8
  %29 = load %struct.inode*, %struct.inode** %5, align 8
  %30 = getelementptr inbounds %struct.inode, %struct.inode* %29, i32 0, i32 21
  store i64 0, i64* %30, align 8
  %31 = load %struct.inode*, %struct.inode** %5, align 8
  %32 = getelementptr inbounds %struct.inode, %struct.inode* %31, i32 0, i32 20
  store i64 0, i64* %32, align 8
  %33 = load %struct.inode*, %struct.inode** %5, align 8
  %34 = getelementptr inbounds %struct.inode, %struct.inode* %33, i32 0, i32 19
  %35 = call i32 @atomic_set(i32* %34, i32 0)
  %36 = load %struct.inode*, %struct.inode** %5, align 8
  %37 = getelementptr inbounds %struct.inode, %struct.inode* %36, i32 0, i32 18
  store i64 0, i64* %37, align 8
  %38 = load %struct.inode*, %struct.inode** %5, align 8
  %39 = getelementptr inbounds %struct.inode, %struct.inode* %38, i32 0, i32 17
  store i64 0, i64* %39, align 8
  %40 = load %struct.inode*, %struct.inode** %5, align 8
  %41 = getelementptr inbounds %struct.inode, %struct.inode* %40, i32 0, i32 16
  store i64 0, i64* %41, align 8
  %42 = load %struct.inode*, %struct.inode** %5, align 8
  %43 = getelementptr inbounds %struct.inode, %struct.inode* %42, i32 0, i32 15
  store i64 0, i64* %43, align 8
  %44 = load %struct.inode*, %struct.inode** %5, align 8
  %45 = getelementptr inbounds %struct.inode, %struct.inode* %44, i32 0, i32 13
  store i32* null, i32** %45, align 8
  %46 = load %struct.inode*, %struct.inode** %5, align 8
  %47 = getelementptr inbounds %struct.inode, %struct.inode* %46, i32 0, i32 12
  store i32* null, i32** %47, align 8
  %48 = load %struct.inode*, %struct.inode** %5, align 8
  %49 = getelementptr inbounds %struct.inode, %struct.inode* %48, i32 0, i32 11
  store i32* null, i32** %49, align 8
  %50 = load %struct.inode*, %struct.inode** %5, align 8
  %51 = getelementptr inbounds %struct.inode, %struct.inode* %50, i32 0, i32 10
  store i64 0, i64* %51, align 8
  %52 = load %struct.inode*, %struct.inode** %5, align 8
  %53 = getelementptr inbounds %struct.inode, %struct.inode* %52, i32 0, i32 9
  store i64 0, i64* %53, align 8
  %54 = load %struct.inode*, %struct.inode** %5, align 8
  %55 = call i64 @security_inode_alloc(%struct.inode* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %2
  br label %128

58:                                               ; preds = %2
  %59 = load %struct.inode*, %struct.inode** %5, align 8
  %60 = getelementptr inbounds %struct.inode, %struct.inode* %59, i32 0, i32 8
  %61 = call i32 @spin_lock_init(i32* %60)
  %62 = load %struct.inode*, %struct.inode** %5, align 8
  %63 = getelementptr inbounds %struct.inode, %struct.inode* %62, i32 0, i32 8
  %64 = load %struct.super_block*, %struct.super_block** %4, align 8
  %65 = getelementptr inbounds %struct.super_block, %struct.super_block* %64, i32 0, i32 1
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 2
  %68 = call i32 @lockdep_set_class(i32* %63, i32* %67)
  %69 = load %struct.inode*, %struct.inode** %5, align 8
  %70 = getelementptr inbounds %struct.inode, %struct.inode* %69, i32 0, i32 7
  %71 = call i32 @mutex_init(i32* %70)
  %72 = load %struct.inode*, %struct.inode** %5, align 8
  %73 = getelementptr inbounds %struct.inode, %struct.inode* %72, i32 0, i32 7
  %74 = load %struct.super_block*, %struct.super_block** %4, align 8
  %75 = getelementptr inbounds %struct.super_block, %struct.super_block* %74, i32 0, i32 1
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 1
  %78 = call i32 @lockdep_set_class(i32* %73, i32* %77)
  %79 = load %struct.inode*, %struct.inode** %5, align 8
  %80 = getelementptr inbounds %struct.inode, %struct.inode* %79, i32 0, i32 6
  %81 = call i32 @init_rwsem(i32* %80)
  %82 = load %struct.inode*, %struct.inode** %5, align 8
  %83 = getelementptr inbounds %struct.inode, %struct.inode* %82, i32 0, i32 6
  %84 = load %struct.super_block*, %struct.super_block** %4, align 8
  %85 = getelementptr inbounds %struct.super_block, %struct.super_block* %84, i32 0, i32 1
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 0
  %88 = call i32 @lockdep_set_class(i32* %83, i32* %87)
  %89 = load %struct.address_space*, %struct.address_space** %6, align 8
  %90 = getelementptr inbounds %struct.address_space, %struct.address_space* %89, i32 0, i32 5
  store %struct.address_space_operations* @inode_init_always.empty_aops, %struct.address_space_operations** %90, align 8
  %91 = load %struct.inode*, %struct.inode** %5, align 8
  %92 = load %struct.address_space*, %struct.address_space** %6, align 8
  %93 = getelementptr inbounds %struct.address_space, %struct.address_space* %92, i32 0, i32 4
  store %struct.inode* %91, %struct.inode** %93, align 8
  %94 = load %struct.address_space*, %struct.address_space** %6, align 8
  %95 = getelementptr inbounds %struct.address_space, %struct.address_space* %94, i32 0, i32 3
  store i64 0, i64* %95, align 8
  %96 = load %struct.address_space*, %struct.address_space** %6, align 8
  %97 = load i32, i32* @GFP_HIGHUSER_MOVABLE, align 4
  %98 = call i32 @mapping_set_gfp_mask(%struct.address_space* %96, i32 %97)
  %99 = load %struct.address_space*, %struct.address_space** %6, align 8
  %100 = getelementptr inbounds %struct.address_space, %struct.address_space* %99, i32 0, i32 2
  store i32* null, i32** %100, align 8
  %101 = load %struct.address_space*, %struct.address_space** %6, align 8
  %102 = getelementptr inbounds %struct.address_space, %struct.address_space* %101, i32 0, i32 0
  store %struct.backing_dev_info* @default_backing_dev_info, %struct.backing_dev_info** %102, align 8
  %103 = load %struct.address_space*, %struct.address_space** %6, align 8
  %104 = getelementptr inbounds %struct.address_space, %struct.address_space* %103, i32 0, i32 1
  store i64 0, i64* %104, align 8
  %105 = load %struct.super_block*, %struct.super_block** %4, align 8
  %106 = getelementptr inbounds %struct.super_block, %struct.super_block* %105, i32 0, i32 0
  %107 = load %struct.TYPE_8__*, %struct.TYPE_8__** %106, align 8
  %108 = icmp ne %struct.TYPE_8__* %107, null
  br i1 %108, label %109, label %122

109:                                              ; preds = %58
  %110 = load %struct.super_block*, %struct.super_block** %4, align 8
  %111 = getelementptr inbounds %struct.super_block, %struct.super_block* %110, i32 0, i32 0
  %112 = load %struct.TYPE_8__*, %struct.TYPE_8__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 0
  %114 = load %struct.TYPE_7__*, %struct.TYPE_7__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i32 0, i32 0
  %116 = load %struct.TYPE_6__*, %struct.TYPE_6__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 0
  %118 = load %struct.backing_dev_info*, %struct.backing_dev_info** %117, align 8
  store %struct.backing_dev_info* %118, %struct.backing_dev_info** %7, align 8
  %119 = load %struct.backing_dev_info*, %struct.backing_dev_info** %7, align 8
  %120 = load %struct.address_space*, %struct.address_space** %6, align 8
  %121 = getelementptr inbounds %struct.address_space, %struct.address_space* %120, i32 0, i32 0
  store %struct.backing_dev_info* %119, %struct.backing_dev_info** %121, align 8
  br label %122

122:                                              ; preds = %109, %58
  %123 = load %struct.inode*, %struct.inode** %5, align 8
  %124 = getelementptr inbounds %struct.inode, %struct.inode* %123, i32 0, i32 5
  store i32* null, i32** %124, align 8
  %125 = load %struct.address_space*, %struct.address_space** %6, align 8
  %126 = load %struct.inode*, %struct.inode** %5, align 8
  %127 = getelementptr inbounds %struct.inode, %struct.inode* %126, i32 0, i32 4
  store %struct.address_space* %125, %struct.address_space** %127, align 8
  store i32 0, i32* %3, align 4
  br label %131

128:                                              ; preds = %57
  %129 = load i32, i32* @ENOMEM, align 4
  %130 = sub nsw i32 0, %129
  store i32 %130, i32* %3, align 4
  br label %131

131:                                              ; preds = %128, %122
  %132 = load i32, i32* %3, align 4
  ret i32 %132
}

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i64 @security_inode_alloc(%struct.inode*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @lockdep_set_class(i32*, i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @init_rwsem(i32*) #1

declare dso_local i32 @mapping_set_gfp_mask(%struct.address_space*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
