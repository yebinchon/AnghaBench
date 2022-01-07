; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_inode.c_walk_page_buffers.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_inode.c_walk_page_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buffer_head = type { i32, %struct.buffer_head* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.buffer_head*, i32, i32, i32*, i32 (i32*, %struct.buffer_head*)*)* @walk_page_buffers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @walk_page_buffers(i32* %0, %struct.buffer_head* %1, i32 %2, i32 %3, i32* %4, i32 (i32*, %struct.buffer_head*)* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca %struct.buffer_head*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32 (i32*, %struct.buffer_head*)*, align 8
  %13 = alloca %struct.buffer_head*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.buffer_head*, align 8
  store i32* %0, i32** %7, align 8
  store %struct.buffer_head* %1, %struct.buffer_head** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i32 (i32*, %struct.buffer_head*)* %5, i32 (i32*, %struct.buffer_head*)** %12, align 8
  %20 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %21 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %16, align 4
  store i32 0, i32* %18, align 4
  %23 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  store %struct.buffer_head* %23, %struct.buffer_head** %13, align 8
  store i32 0, i32* %14, align 4
  br label %24

24:                                               ; preds = %73, %6
  %25 = load i32, i32* %18, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %37

27:                                               ; preds = %24
  %28 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %29 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %30 = icmp ne %struct.buffer_head* %28, %29
  br i1 %30, label %35, label %31

31:                                               ; preds = %27
  %32 = load i32, i32* %14, align 4
  %33 = icmp ne i32 %32, 0
  %34 = xor i1 %33, true
  br label %35

35:                                               ; preds = %31, %27
  %36 = phi i1 [ true, %27 ], [ %34, %31 ]
  br label %37

37:                                               ; preds = %35, %24
  %38 = phi i1 [ false, %24 ], [ %36, %35 ]
  br i1 %38, label %39, label %76

39:                                               ; preds = %37
  %40 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %41 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %40, i32 0, i32 1
  %42 = load %struct.buffer_head*, %struct.buffer_head** %41, align 8
  store %struct.buffer_head* %42, %struct.buffer_head** %19, align 8
  %43 = load i32, i32* %14, align 4
  %44 = load i32, i32* %16, align 4
  %45 = add i32 %43, %44
  store i32 %45, i32* %15, align 4
  %46 = load i32, i32* %15, align 4
  %47 = load i32, i32* %9, align 4
  %48 = icmp ule i32 %46, %47
  br i1 %48, label %53, label %49

49:                                               ; preds = %39
  %50 = load i32, i32* %14, align 4
  %51 = load i32, i32* %10, align 4
  %52 = icmp uge i32 %50, %51
  br i1 %52, label %53, label %63

53:                                               ; preds = %49, %39
  %54 = load i32*, i32** %11, align 8
  %55 = icmp ne i32* %54, null
  br i1 %55, label %56, label %62

56:                                               ; preds = %53
  %57 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %58 = call i32 @buffer_uptodate(%struct.buffer_head* %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %62, label %60

60:                                               ; preds = %56
  %61 = load i32*, i32** %11, align 8
  store i32 1, i32* %61, align 4
  br label %62

62:                                               ; preds = %60, %56, %53
  br label %73

63:                                               ; preds = %49
  %64 = load i32 (i32*, %struct.buffer_head*)*, i32 (i32*, %struct.buffer_head*)** %12, align 8
  %65 = load i32*, i32** %7, align 8
  %66 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %67 = call i32 %64(i32* %65, %struct.buffer_head* %66)
  store i32 %67, i32* %17, align 4
  %68 = load i32, i32* %18, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %72, label %70

70:                                               ; preds = %63
  %71 = load i32, i32* %17, align 4
  store i32 %71, i32* %18, align 4
  br label %72

72:                                               ; preds = %70, %63
  br label %73

73:                                               ; preds = %72, %62
  %74 = load i32, i32* %15, align 4
  store i32 %74, i32* %14, align 4
  %75 = load %struct.buffer_head*, %struct.buffer_head** %19, align 8
  store %struct.buffer_head* %75, %struct.buffer_head** %13, align 8
  br label %24

76:                                               ; preds = %37
  %77 = load i32, i32* %18, align 4
  ret i32 %77
}

declare dso_local i32 @buffer_uptodate(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
