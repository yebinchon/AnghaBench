; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/afs/extr_file.c_afs_releasepage.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/afs/extr_file.c_afs_releasepage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.afs_writeback = type { i32 }
%struct.afs_vnode = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }

@.str = private unnamed_addr constant [22 x i8] c"{{%x:%u}[%lu],%lx},%x\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c" = T\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.page*, i32)* @afs_releasepage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @afs_releasepage(%struct.page* %0, i32 %1) #0 {
  %3 = alloca %struct.page*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.afs_writeback*, align 8
  %6 = alloca %struct.afs_vnode*, align 8
  store %struct.page* %0, %struct.page** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.page*, %struct.page** %3, align 8
  %8 = call i64 @page_private(%struct.page* %7)
  %9 = inttoptr i64 %8 to %struct.afs_writeback*
  store %struct.afs_writeback* %9, %struct.afs_writeback** %5, align 8
  %10 = load %struct.page*, %struct.page** %3, align 8
  %11 = getelementptr inbounds %struct.page, %struct.page* %10, i32 0, i32 2
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.afs_vnode* @AFS_FS_I(i32 %14)
  store %struct.afs_vnode* %15, %struct.afs_vnode** %6, align 8
  %16 = load %struct.afs_vnode*, %struct.afs_vnode** %6, align 8
  %17 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.afs_vnode*, %struct.afs_vnode** %6, align 8
  %21 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.page*, %struct.page** %3, align 8
  %25 = getelementptr inbounds %struct.page, %struct.page* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.page*, %struct.page** %3, align 8
  %28 = getelementptr inbounds %struct.page, %struct.page* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @_enter(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %19, i32 %23, i32 %26, i32 %29, i32 %30)
  %32 = load %struct.page*, %struct.page** %3, align 8
  %33 = call i64 @PagePrivate(%struct.page* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %46

35:                                               ; preds = %2
  %36 = load %struct.afs_writeback*, %struct.afs_writeback** %5, align 8
  %37 = icmp ne %struct.afs_writeback* %36, null
  br i1 %37, label %38, label %43

38:                                               ; preds = %35
  %39 = load %struct.page*, %struct.page** %3, align 8
  %40 = call i32 @set_page_private(%struct.page* %39, i32 0)
  %41 = load %struct.afs_writeback*, %struct.afs_writeback** %5, align 8
  %42 = call i32 @afs_put_writeback(%struct.afs_writeback* %41)
  br label %43

43:                                               ; preds = %38, %35
  %44 = load %struct.page*, %struct.page** %3, align 8
  %45 = call i32 @ClearPagePrivate(%struct.page* %44)
  br label %46

46:                                               ; preds = %43, %2
  %47 = call i32 @_leave(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  ret i32 1
}

declare dso_local i64 @page_private(%struct.page*) #1

declare dso_local %struct.afs_vnode* @AFS_FS_I(i32) #1

declare dso_local i32 @_enter(i8*, i32, i32, i32, i32, i32) #1

declare dso_local i64 @PagePrivate(%struct.page*) #1

declare dso_local i32 @set_page_private(%struct.page*, i32) #1

declare dso_local i32 @afs_put_writeback(%struct.afs_writeback*) #1

declare dso_local i32 @ClearPagePrivate(%struct.page*) #1

declare dso_local i32 @_leave(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
