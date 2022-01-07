; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/fscache/extr_page.c___fscache_uncache_all_inode_pages.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/fscache/extr_page.c___fscache_uncache_all_inode_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fscache_cookie = type { i32 }
%struct.inode = type { %struct.address_space* }
%struct.address_space = type { i64 }
%struct.pagevec = type { %struct.page** }
%struct.page = type { i64 }

@.str = private unnamed_addr constant [6 x i8] c"%p,%p\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c" [no pages]\00", align 1
@PAGEVEC_SIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__fscache_uncache_all_inode_pages(%struct.fscache_cookie* %0, %struct.inode* %1) #0 {
  %3 = alloca %struct.fscache_cookie*, align 8
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.address_space*, align 8
  %6 = alloca %struct.pagevec, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.page*, align 8
  store %struct.fscache_cookie* %0, %struct.fscache_cookie** %3, align 8
  store %struct.inode* %1, %struct.inode** %4, align 8
  %10 = load %struct.inode*, %struct.inode** %4, align 8
  %11 = getelementptr inbounds %struct.inode, %struct.inode* %10, i32 0, i32 0
  %12 = load %struct.address_space*, %struct.address_space** %11, align 8
  store %struct.address_space* %12, %struct.address_space** %5, align 8
  %13 = load %struct.fscache_cookie*, %struct.fscache_cookie** %3, align 8
  %14 = load %struct.inode*, %struct.inode** %4, align 8
  %15 = call i32 @_enter(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), %struct.fscache_cookie* %13, %struct.inode* %14)
  %16 = load %struct.address_space*, %struct.address_space** %5, align 8
  %17 = icmp ne %struct.address_space* %16, null
  br i1 %17, label %18, label %23

18:                                               ; preds = %2
  %19 = load %struct.address_space*, %struct.address_space** %5, align 8
  %20 = getelementptr inbounds %struct.address_space, %struct.address_space* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %18, %2
  %24 = call i32 @_leave(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  br label %72

25:                                               ; preds = %18
  %26 = call i32 @pagevec_init(%struct.pagevec* %6, i32 0)
  store i64 0, i64* %7, align 8
  br label %27

27:                                               ; preds = %66, %25
  %28 = load %struct.address_space*, %struct.address_space** %5, align 8
  %29 = load i64, i64* %7, align 8
  %30 = load i32, i32* @PAGEVEC_SIZE, align 4
  %31 = call i32 @pagevec_lookup(%struct.pagevec* %6, %struct.address_space* %28, i64 %29, i32 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %27
  br label %70

34:                                               ; preds = %27
  store i32 0, i32* %8, align 4
  br label %35

35:                                               ; preds = %60, %34
  %36 = load i32, i32* %8, align 4
  %37 = call i32 @pagevec_count(%struct.pagevec* %6)
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %63

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.pagevec, %struct.pagevec* %6, i32 0, i32 0
  %41 = load %struct.page**, %struct.page*** %40, align 8
  %42 = load i32, i32* %8, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.page*, %struct.page** %41, i64 %43
  %45 = load %struct.page*, %struct.page** %44, align 8
  store %struct.page* %45, %struct.page** %9, align 8
  %46 = load %struct.page*, %struct.page** %9, align 8
  %47 = getelementptr inbounds %struct.page, %struct.page* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  store i64 %48, i64* %7, align 8
  %49 = load %struct.page*, %struct.page** %9, align 8
  %50 = call i64 @PageFsCache(%struct.page* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %59

52:                                               ; preds = %39
  %53 = load %struct.fscache_cookie*, %struct.fscache_cookie** %3, align 8
  %54 = load %struct.page*, %struct.page** %9, align 8
  %55 = call i32 @__fscache_wait_on_page_write(%struct.fscache_cookie* %53, %struct.page* %54)
  %56 = load %struct.fscache_cookie*, %struct.fscache_cookie** %3, align 8
  %57 = load %struct.page*, %struct.page** %9, align 8
  %58 = call i32 @__fscache_uncache_page(%struct.fscache_cookie* %56, %struct.page* %57)
  br label %59

59:                                               ; preds = %52, %39
  br label %60

60:                                               ; preds = %59
  %61 = load i32, i32* %8, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %8, align 4
  br label %35

63:                                               ; preds = %35
  %64 = call i32 @pagevec_release(%struct.pagevec* %6)
  %65 = call i32 (...) @cond_resched()
  br label %66

66:                                               ; preds = %63
  %67 = load i64, i64* %7, align 8
  %68 = add nsw i64 %67, 1
  store i64 %68, i64* %7, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %27, label %70

70:                                               ; preds = %66, %33
  %71 = call i32 @_leave(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0))
  br label %72

72:                                               ; preds = %70, %23
  ret void
}

declare dso_local i32 @_enter(i8*, %struct.fscache_cookie*, %struct.inode*) #1

declare dso_local i32 @_leave(i8*) #1

declare dso_local i32 @pagevec_init(%struct.pagevec*, i32) #1

declare dso_local i32 @pagevec_lookup(%struct.pagevec*, %struct.address_space*, i64, i32) #1

declare dso_local i32 @pagevec_count(%struct.pagevec*) #1

declare dso_local i64 @PageFsCache(%struct.page*) #1

declare dso_local i32 @__fscache_wait_on_page_write(%struct.fscache_cookie*, %struct.page*) #1

declare dso_local i32 @__fscache_uncache_page(%struct.fscache_cookie*, %struct.page*) #1

declare dso_local i32 @pagevec_release(%struct.pagevec*) #1

declare dso_local i32 @cond_resched(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
