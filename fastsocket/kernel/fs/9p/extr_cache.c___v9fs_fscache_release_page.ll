; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/9p/extr_cache.c___v9fs_fscache_release_page.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/9p/extr_cache.c___v9fs_fscache_release_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.inode* }
%struct.inode = type { i32 }
%struct.v9fs_cookie = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__v9fs_fscache_release_page(%struct.page* %0, i32 %1) #0 {
  %3 = alloca %struct.page*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.v9fs_cookie*, align 8
  store %struct.page* %0, %struct.page** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.page*, %struct.page** %3, align 8
  %8 = getelementptr inbounds %struct.page, %struct.page* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load %struct.inode*, %struct.inode** %10, align 8
  store %struct.inode* %11, %struct.inode** %5, align 8
  %12 = load %struct.inode*, %struct.inode** %5, align 8
  %13 = call %struct.v9fs_cookie* @v9fs_inode2cookie(%struct.inode* %12)
  store %struct.v9fs_cookie* %13, %struct.v9fs_cookie** %6, align 8
  %14 = load %struct.v9fs_cookie*, %struct.v9fs_cookie** %6, align 8
  %15 = getelementptr inbounds %struct.v9fs_cookie, %struct.v9fs_cookie* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  %20 = call i32 @BUG_ON(i32 %19)
  %21 = load %struct.v9fs_cookie*, %struct.v9fs_cookie** %6, align 8
  %22 = getelementptr inbounds %struct.v9fs_cookie, %struct.v9fs_cookie* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.page*, %struct.page** %3, align 8
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @fscache_maybe_release_page(i32 %23, %struct.page* %24, i32 %25)
  ret i32 %26
}

declare dso_local %struct.v9fs_cookie* @v9fs_inode2cookie(%struct.inode*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @fscache_maybe_release_page(i32, %struct.page*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
