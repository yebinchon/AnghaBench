; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/exofs/extr_inode.c_exofs_write_begin.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/exofs/extr_inode.c_exofs_write_begin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.address_space = type { i32 }
%struct.page = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"simple_write_begin faild\0A\00", align 1
@PAGE_CACHE_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"__readpage_filler faild\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @exofs_write_begin(%struct.file* %0, %struct.address_space* %1, i32 %2, i32 %3, i32 %4, %struct.page** %5, i8** %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.file*, align 8
  %10 = alloca %struct.address_space*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.page**, align 8
  %15 = alloca i8**, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.page*, align 8
  store %struct.file* %0, %struct.file** %9, align 8
  store %struct.address_space* %1, %struct.address_space** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store %struct.page** %5, %struct.page*** %14, align 8
  store i8** %6, i8*** %15, align 8
  store i32 0, i32* %16, align 4
  %18 = load %struct.page**, %struct.page*** %14, align 8
  %19 = load %struct.page*, %struct.page** %18, align 8
  store %struct.page* %19, %struct.page** %17, align 8
  %20 = load %struct.page*, %struct.page** %17, align 8
  %21 = icmp eq %struct.page* %20, null
  br i1 %21, label %22, label %39

22:                                               ; preds = %7
  %23 = load %struct.file*, %struct.file** %9, align 8
  %24 = load %struct.address_space*, %struct.address_space** %10, align 8
  %25 = load i32, i32* %11, align 4
  %26 = load i32, i32* %12, align 4
  %27 = load i32, i32* %13, align 4
  %28 = load %struct.page**, %struct.page*** %14, align 8
  %29 = load i8**, i8*** %15, align 8
  %30 = call i32 @simple_write_begin(%struct.file* %23, %struct.address_space* %24, i32 %25, i32 %26, i32 %27, %struct.page** %28, i8** %29)
  store i32 %30, i32* %16, align 4
  %31 = load i32, i32* %16, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %22
  %34 = call i32 @EXOFS_DBGMSG(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %35 = load i32, i32* %16, align 4
  store i32 %35, i32* %8, align 4
  br label %59

36:                                               ; preds = %22
  %37 = load %struct.page**, %struct.page*** %14, align 8
  %38 = load %struct.page*, %struct.page** %37, align 8
  store %struct.page* %38, %struct.page** %17, align 8
  br label %39

39:                                               ; preds = %36, %7
  %40 = load %struct.page*, %struct.page** %17, align 8
  %41 = call i32 @PageUptodate(%struct.page* %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %57, label %43

43:                                               ; preds = %39
  %44 = load i32, i32* %12, align 4
  %45 = load i32, i32* @PAGE_CACHE_SIZE, align 4
  %46 = icmp ne i32 %44, %45
  br i1 %46, label %47, label %57

47:                                               ; preds = %43
  %48 = load %struct.page*, %struct.page** %17, align 8
  %49 = call i32 @_readpage(%struct.page* %48, i32 1)
  store i32 %49, i32* %16, align 4
  %50 = load i32, i32* %16, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %47
  %53 = load %struct.page*, %struct.page** %17, align 8
  %54 = call i32 @unlock_page(%struct.page* %53)
  %55 = call i32 @EXOFS_DBGMSG(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %56

56:                                               ; preds = %52, %47
  br label %57

57:                                               ; preds = %56, %43, %39
  %58 = load i32, i32* %16, align 4
  store i32 %58, i32* %8, align 4
  br label %59

59:                                               ; preds = %57, %33
  %60 = load i32, i32* %8, align 4
  ret i32 %60
}

declare dso_local i32 @simple_write_begin(%struct.file*, %struct.address_space*, i32, i32, i32, %struct.page**, i8**) #1

declare dso_local i32 @EXOFS_DBGMSG(i8*) #1

declare dso_local i32 @PageUptodate(%struct.page*) #1

declare dso_local i32 @_readpage(%struct.page*, i32) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
