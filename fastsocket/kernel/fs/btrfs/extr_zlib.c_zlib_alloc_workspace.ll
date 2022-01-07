; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_zlib.c_zlib_alloc_workspace.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_zlib.c_zlib_alloc_workspace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.list_head = type { i32 }
%struct.workspace = type { %struct.list_head, i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i8* }
%struct.TYPE_3__ = type { i8* }

@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PAGE_CACHE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.list_head* ()* @zlib_alloc_workspace to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.list_head* @zlib_alloc_workspace() #0 {
  %1 = alloca %struct.list_head*, align 8
  %2 = alloca %struct.workspace*, align 8
  %3 = load i32, i32* @GFP_NOFS, align 4
  %4 = call %struct.workspace* @kzalloc(i32 24, i32 %3)
  store %struct.workspace* %4, %struct.workspace** %2, align 8
  %5 = load %struct.workspace*, %struct.workspace** %2, align 8
  %6 = icmp ne %struct.workspace* %5, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %0
  %8 = load i32, i32* @ENOMEM, align 4
  %9 = sub nsw i32 0, %8
  %10 = call %struct.list_head* @ERR_PTR(i32 %9)
  store %struct.list_head* %10, %struct.list_head** %1, align 8
  br label %57

11:                                               ; preds = %0
  %12 = call i32 (...) @zlib_deflate_workspacesize()
  %13 = call i8* @vmalloc(i32 %12)
  %14 = load %struct.workspace*, %struct.workspace** %2, align 8
  %15 = getelementptr inbounds %struct.workspace, %struct.workspace* %14, i32 0, i32 3
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  store i8* %13, i8** %16, align 8
  %17 = call i32 (...) @zlib_inflate_workspacesize()
  %18 = call i8* @vmalloc(i32 %17)
  %19 = load %struct.workspace*, %struct.workspace** %2, align 8
  %20 = getelementptr inbounds %struct.workspace, %struct.workspace* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  store i8* %18, i8** %21, align 8
  %22 = load i32, i32* @PAGE_CACHE_SIZE, align 4
  %23 = load i32, i32* @GFP_NOFS, align 4
  %24 = call i32 @kmalloc(i32 %22, i32 %23)
  %25 = load %struct.workspace*, %struct.workspace** %2, align 8
  %26 = getelementptr inbounds %struct.workspace, %struct.workspace* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 4
  %27 = load %struct.workspace*, %struct.workspace** %2, align 8
  %28 = getelementptr inbounds %struct.workspace, %struct.workspace* %27, i32 0, i32 3
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %32, label %43

32:                                               ; preds = %11
  %33 = load %struct.workspace*, %struct.workspace** %2, align 8
  %34 = getelementptr inbounds %struct.workspace, %struct.workspace* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %38, label %43

38:                                               ; preds = %32
  %39 = load %struct.workspace*, %struct.workspace** %2, align 8
  %40 = getelementptr inbounds %struct.workspace, %struct.workspace* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %38, %32, %11
  br label %50

44:                                               ; preds = %38
  %45 = load %struct.workspace*, %struct.workspace** %2, align 8
  %46 = getelementptr inbounds %struct.workspace, %struct.workspace* %45, i32 0, i32 0
  %47 = call i32 @INIT_LIST_HEAD(%struct.list_head* %46)
  %48 = load %struct.workspace*, %struct.workspace** %2, align 8
  %49 = getelementptr inbounds %struct.workspace, %struct.workspace* %48, i32 0, i32 0
  store %struct.list_head* %49, %struct.list_head** %1, align 8
  br label %57

50:                                               ; preds = %43
  %51 = load %struct.workspace*, %struct.workspace** %2, align 8
  %52 = getelementptr inbounds %struct.workspace, %struct.workspace* %51, i32 0, i32 0
  %53 = call i32 @zlib_free_workspace(%struct.list_head* %52)
  %54 = load i32, i32* @ENOMEM, align 4
  %55 = sub nsw i32 0, %54
  %56 = call %struct.list_head* @ERR_PTR(i32 %55)
  store %struct.list_head* %56, %struct.list_head** %1, align 8
  br label %57

57:                                               ; preds = %50, %44, %7
  %58 = load %struct.list_head*, %struct.list_head** %1, align 8
  ret %struct.list_head* %58
}

declare dso_local %struct.workspace* @kzalloc(i32, i32) #1

declare dso_local %struct.list_head* @ERR_PTR(i32) #1

declare dso_local i8* @vmalloc(i32) #1

declare dso_local i32 @zlib_deflate_workspacesize(...) #1

declare dso_local i32 @zlib_inflate_workspacesize(...) #1

declare dso_local i32 @kmalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(%struct.list_head*) #1

declare dso_local i32 @zlib_free_workspace(%struct.list_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
