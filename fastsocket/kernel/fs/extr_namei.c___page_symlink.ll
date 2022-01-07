; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_namei.c___page_symlink.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_namei.c___page_symlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.address_space* }
%struct.address_space = type { i32 }
%struct.page = type { i32 }

@AOP_FLAG_UNINTERRUPTIBLE = common dso_local global i32 0, align 4
@AOP_FLAG_NOFS = common dso_local global i32 0, align 4
@KM_USER0 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__page_symlink(%struct.inode* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.address_space*, align 8
  %11 = alloca %struct.page*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %16 = load %struct.inode*, %struct.inode** %6, align 8
  %17 = getelementptr inbounds %struct.inode, %struct.inode* %16, i32 0, i32 0
  %18 = load %struct.address_space*, %struct.address_space** %17, align 8
  store %struct.address_space* %18, %struct.address_space** %10, align 8
  %19 = load i32, i32* @AOP_FLAG_UNINTERRUPTIBLE, align 4
  store i32 %19, i32* %15, align 4
  %20 = load i32, i32* %9, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %4
  %23 = load i32, i32* @AOP_FLAG_NOFS, align 4
  %24 = load i32, i32* %15, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %15, align 4
  br label %26

26:                                               ; preds = %22, %4
  br label %27

27:                                               ; preds = %64, %26
  %28 = load %struct.address_space*, %struct.address_space** %10, align 8
  %29 = load i32, i32* %8, align 4
  %30 = sub nsw i32 %29, 1
  %31 = load i32, i32* %15, align 4
  %32 = call i32 @pagecache_write_begin(i32* null, %struct.address_space* %28, i32 0, i32 %30, i32 %31, %struct.page** %11, i8** %12)
  store i32 %32, i32* %13, align 4
  %33 = load i32, i32* %13, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %27
  br label %68

36:                                               ; preds = %27
  %37 = load %struct.page*, %struct.page** %11, align 8
  %38 = load i32, i32* @KM_USER0, align 4
  %39 = call i8* @kmap_atomic(%struct.page* %37, i32 %38)
  store i8* %39, i8** %14, align 8
  %40 = load i8*, i8** %14, align 8
  %41 = load i8*, i8** %7, align 8
  %42 = load i32, i32* %8, align 4
  %43 = sub nsw i32 %42, 1
  %44 = call i32 @memcpy(i8* %40, i8* %41, i32 %43)
  %45 = load i8*, i8** %14, align 8
  %46 = load i32, i32* @KM_USER0, align 4
  %47 = call i32 @kunmap_atomic(i8* %45, i32 %46)
  %48 = load %struct.address_space*, %struct.address_space** %10, align 8
  %49 = load i32, i32* %8, align 4
  %50 = sub nsw i32 %49, 1
  %51 = load i32, i32* %8, align 4
  %52 = sub nsw i32 %51, 1
  %53 = load %struct.page*, %struct.page** %11, align 8
  %54 = load i8*, i8** %12, align 8
  %55 = call i32 @pagecache_write_end(i32* null, %struct.address_space* %48, i32 0, i32 %50, i32 %52, %struct.page* %53, i8* %54)
  store i32 %55, i32* %13, align 4
  %56 = load i32, i32* %13, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %36
  br label %68

59:                                               ; preds = %36
  %60 = load i32, i32* %13, align 4
  %61 = load i32, i32* %8, align 4
  %62 = sub nsw i32 %61, 1
  %63 = icmp slt i32 %60, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %59
  br label %27

65:                                               ; preds = %59
  %66 = load %struct.inode*, %struct.inode** %6, align 8
  %67 = call i32 @mark_inode_dirty(%struct.inode* %66)
  store i32 0, i32* %5, align 4
  br label %70

68:                                               ; preds = %58, %35
  %69 = load i32, i32* %13, align 4
  store i32 %69, i32* %5, align 4
  br label %70

70:                                               ; preds = %68, %65
  %71 = load i32, i32* %5, align 4
  ret i32 %71
}

declare dso_local i32 @pagecache_write_begin(i32*, %struct.address_space*, i32, i32, i32, %struct.page**, i8**) #1

declare dso_local i8* @kmap_atomic(%struct.page*, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @kunmap_atomic(i8*, i32) #1

declare dso_local i32 @pagecache_write_end(i32*, %struct.address_space*, i32, i32, i32, %struct.page*, i8*) #1

declare dso_local i32 @mark_inode_dirty(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
