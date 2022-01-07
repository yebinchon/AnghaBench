; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext3/extr_super.c_ext3_destroy_inode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext3/extr_super.c_ext3_destroy_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [42 x i8] c"EXT3 Inode %p: orphan list check failed!\0A\00", align 1
@KERN_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@DUMP_PREFIX_ADDRESS = common dso_local global i32 0, align 4
@ext3_inode_cachep = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.inode*)* @ext3_destroy_inode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ext3_destroy_inode(%struct.inode* %0) #0 {
  %2 = alloca %struct.inode*, align 8
  store %struct.inode* %0, %struct.inode** %2, align 8
  %3 = load %struct.inode*, %struct.inode** %2, align 8
  %4 = call %struct.TYPE_5__* @EXT3_I(%struct.inode* %3)
  %5 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 0
  %6 = call i32 @list_empty(i32* %5)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %18, label %8

8:                                                ; preds = %1
  %9 = load %struct.inode*, %struct.inode** %2, align 8
  %10 = call %struct.TYPE_5__* @EXT3_I(%struct.inode* %9)
  %11 = call i32 @printk(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), %struct.TYPE_5__* %10)
  %12 = load i32, i32* @KERN_INFO, align 4
  %13 = load i32, i32* @DUMP_PREFIX_ADDRESS, align 4
  %14 = load %struct.inode*, %struct.inode** %2, align 8
  %15 = call %struct.TYPE_5__* @EXT3_I(%struct.inode* %14)
  %16 = call i32 @print_hex_dump(i32 %12, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i32 %13, i32 16, i32 4, %struct.TYPE_5__* %15, i32 4, i32 0)
  %17 = call i32 (...) @dump_stack()
  br label %18

18:                                               ; preds = %8, %1
  %19 = load i32, i32* @ext3_inode_cachep, align 4
  %20 = load %struct.inode*, %struct.inode** %2, align 8
  %21 = call %struct.TYPE_5__* @EXT3_I(%struct.inode* %20)
  %22 = call i32 @kmem_cache_free(i32 %19, %struct.TYPE_5__* %21)
  ret void
}

declare dso_local i32 @list_empty(i32*) #1

declare dso_local %struct.TYPE_5__* @EXT3_I(%struct.inode*) #1

declare dso_local i32 @printk(i8*, %struct.TYPE_5__*) #1

declare dso_local i32 @print_hex_dump(i32, i8*, i32, i32, i32, %struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @dump_stack(...) #1

declare dso_local i32 @kmem_cache_free(i32, %struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
