; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_buffer.c_mark_buffer_dirty_inode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_buffer.c_mark_buffer_dirty_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buffer_head = type { %struct.address_space*, i32, %struct.TYPE_2__* }
%struct.address_space = type { i32, i32, %struct.address_space* }
%struct.TYPE_2__ = type { %struct.address_space* }
%struct.inode = type { %struct.address_space* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mark_buffer_dirty_inode(%struct.buffer_head* %0, %struct.inode* %1) #0 {
  %3 = alloca %struct.buffer_head*, align 8
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.address_space*, align 8
  %6 = alloca %struct.address_space*, align 8
  store %struct.buffer_head* %0, %struct.buffer_head** %3, align 8
  store %struct.inode* %1, %struct.inode** %4, align 8
  %7 = load %struct.inode*, %struct.inode** %4, align 8
  %8 = getelementptr inbounds %struct.inode, %struct.inode* %7, i32 0, i32 0
  %9 = load %struct.address_space*, %struct.address_space** %8, align 8
  store %struct.address_space* %9, %struct.address_space** %5, align 8
  %10 = load %struct.buffer_head*, %struct.buffer_head** %3, align 8
  %11 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %10, i32 0, i32 2
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load %struct.address_space*, %struct.address_space** %13, align 8
  store %struct.address_space* %14, %struct.address_space** %6, align 8
  %15 = load %struct.buffer_head*, %struct.buffer_head** %3, align 8
  %16 = call i32 @mark_buffer_dirty(%struct.buffer_head* %15)
  %17 = load %struct.address_space*, %struct.address_space** %5, align 8
  %18 = getelementptr inbounds %struct.address_space, %struct.address_space* %17, i32 0, i32 2
  %19 = load %struct.address_space*, %struct.address_space** %18, align 8
  %20 = icmp ne %struct.address_space* %19, null
  br i1 %20, label %25, label %21

21:                                               ; preds = %2
  %22 = load %struct.address_space*, %struct.address_space** %6, align 8
  %23 = load %struct.address_space*, %struct.address_space** %5, align 8
  %24 = getelementptr inbounds %struct.address_space, %struct.address_space* %23, i32 0, i32 2
  store %struct.address_space* %22, %struct.address_space** %24, align 8
  br label %33

25:                                               ; preds = %2
  %26 = load %struct.address_space*, %struct.address_space** %5, align 8
  %27 = getelementptr inbounds %struct.address_space, %struct.address_space* %26, i32 0, i32 2
  %28 = load %struct.address_space*, %struct.address_space** %27, align 8
  %29 = load %struct.address_space*, %struct.address_space** %6, align 8
  %30 = icmp ne %struct.address_space* %28, %29
  %31 = zext i1 %30 to i32
  %32 = call i32 @BUG_ON(i32 %31)
  br label %33

33:                                               ; preds = %25, %21
  %34 = load %struct.buffer_head*, %struct.buffer_head** %3, align 8
  %35 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %34, i32 0, i32 0
  %36 = load %struct.address_space*, %struct.address_space** %35, align 8
  %37 = icmp ne %struct.address_space* %36, null
  br i1 %37, label %53, label %38

38:                                               ; preds = %33
  %39 = load %struct.address_space*, %struct.address_space** %6, align 8
  %40 = getelementptr inbounds %struct.address_space, %struct.address_space* %39, i32 0, i32 0
  %41 = call i32 @spin_lock(i32* %40)
  %42 = load %struct.buffer_head*, %struct.buffer_head** %3, align 8
  %43 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %42, i32 0, i32 1
  %44 = load %struct.address_space*, %struct.address_space** %5, align 8
  %45 = getelementptr inbounds %struct.address_space, %struct.address_space* %44, i32 0, i32 1
  %46 = call i32 @list_move_tail(i32* %43, i32* %45)
  %47 = load %struct.address_space*, %struct.address_space** %5, align 8
  %48 = load %struct.buffer_head*, %struct.buffer_head** %3, align 8
  %49 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %48, i32 0, i32 0
  store %struct.address_space* %47, %struct.address_space** %49, align 8
  %50 = load %struct.address_space*, %struct.address_space** %6, align 8
  %51 = getelementptr inbounds %struct.address_space, %struct.address_space* %50, i32 0, i32 0
  %52 = call i32 @spin_unlock(i32* %51)
  br label %53

53:                                               ; preds = %38, %33
  ret void
}

declare dso_local i32 @mark_buffer_dirty(%struct.buffer_head*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_move_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
