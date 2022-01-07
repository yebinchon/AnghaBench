; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext3/extr_namei.c_ext3_append.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext3/extr_namei.c_ext3_append.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buffer_head = type { i32 }
%struct.inode = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i64 }
%struct.TYPE_4__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.buffer_head* (i32*, %struct.inode*, i32*, i32*)* @ext3_append to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.buffer_head* @ext3_append(i32* %0, %struct.inode* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.buffer_head*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.inode* %1, %struct.inode** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %10 = load %struct.inode*, %struct.inode** %6, align 8
  %11 = getelementptr inbounds %struct.inode, %struct.inode* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.inode*, %struct.inode** %6, align 8
  %14 = getelementptr inbounds %struct.inode, %struct.inode* %13, i32 0, i32 1
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = ashr i32 %12, %17
  %19 = load i32*, i32** %7, align 8
  store i32 %18, i32* %19, align 4
  %20 = load i32*, i32** %5, align 8
  %21 = load %struct.inode*, %struct.inode** %6, align 8
  %22 = load i32*, i32** %7, align 8
  %23 = load i32, i32* %22, align 4
  %24 = load i32*, i32** %8, align 8
  %25 = call %struct.buffer_head* @ext3_bread(i32* %20, %struct.inode* %21, i32 %23, i32 1, i32* %24)
  store %struct.buffer_head* %25, %struct.buffer_head** %9, align 8
  %26 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %27 = icmp ne %struct.buffer_head* %26, null
  br i1 %27, label %28, label %57

28:                                               ; preds = %4
  %29 = load %struct.inode*, %struct.inode** %6, align 8
  %30 = getelementptr inbounds %struct.inode, %struct.inode* %29, i32 0, i32 1
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.inode*, %struct.inode** %6, align 8
  %35 = getelementptr inbounds %struct.inode, %struct.inode* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = sext i32 %36 to i64
  %38 = add nsw i64 %37, %33
  %39 = trunc i64 %38 to i32
  store i32 %39, i32* %35, align 8
  %40 = load %struct.inode*, %struct.inode** %6, align 8
  %41 = getelementptr inbounds %struct.inode, %struct.inode* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.inode*, %struct.inode** %6, align 8
  %44 = call %struct.TYPE_4__* @EXT3_I(%struct.inode* %43)
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  store i32 %42, i32* %45, align 4
  %46 = load i32*, i32** %5, align 8
  %47 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %48 = call i32 @ext3_journal_get_write_access(i32* %46, %struct.buffer_head* %47)
  %49 = load i32*, i32** %8, align 8
  store i32 %48, i32* %49, align 4
  %50 = load i32*, i32** %8, align 8
  %51 = load i32, i32* %50, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %28
  %54 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %55 = call i32 @brelse(%struct.buffer_head* %54)
  store %struct.buffer_head* null, %struct.buffer_head** %9, align 8
  br label %56

56:                                               ; preds = %53, %28
  br label %57

57:                                               ; preds = %56, %4
  %58 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  ret %struct.buffer_head* %58
}

declare dso_local %struct.buffer_head* @ext3_bread(i32*, %struct.inode*, i32, i32, i32*) #1

declare dso_local %struct.TYPE_4__* @EXT3_I(%struct.inode*) #1

declare dso_local i32 @ext3_journal_get_write_access(i32*, %struct.buffer_head*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
