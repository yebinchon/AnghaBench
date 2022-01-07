; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_buffer.c_cont_write_begin_newtrunc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_buffer.c_cont_write_begin_newtrunc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.address_space = type { %struct.inode* }
%struct.inode = type { i32 }
%struct.page = type { i32 }

@PAGE_CACHE_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cont_write_begin_newtrunc(%struct.file* %0, %struct.address_space* %1, i32 %2, i32 %3, i32 %4, %struct.page** %5, i8** %6, i32* %7, i32* %8) #0 {
  %10 = alloca %struct.file*, align 8
  %11 = alloca %struct.address_space*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.page**, align 8
  %16 = alloca i8**, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca %struct.inode*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %10, align 8
  store %struct.address_space* %1, %struct.address_space** %11, align 8
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store %struct.page** %5, %struct.page*** %15, align 8
  store i8** %6, i8*** %16, align 8
  store i32* %7, i32** %17, align 8
  store i32* %8, i32** %18, align 8
  %23 = load %struct.address_space*, %struct.address_space** %11, align 8
  %24 = getelementptr inbounds %struct.address_space, %struct.address_space* %23, i32 0, i32 0
  %25 = load %struct.inode*, %struct.inode** %24, align 8
  store %struct.inode* %25, %struct.inode** %19, align 8
  %26 = load %struct.inode*, %struct.inode** %19, align 8
  %27 = getelementptr inbounds %struct.inode, %struct.inode* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = shl i32 1, %28
  store i32 %29, i32* %20, align 4
  %30 = load %struct.file*, %struct.file** %10, align 8
  %31 = load %struct.address_space*, %struct.address_space** %11, align 8
  %32 = load i32, i32* %12, align 4
  %33 = load i32*, i32** %18, align 8
  %34 = call i32 @cont_expand_zero(%struct.file* %30, %struct.address_space* %31, i32 %32, i32* %33)
  store i32 %34, i32* %22, align 4
  %35 = load i32, i32* %22, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %9
  br label %76

38:                                               ; preds = %9
  %39 = load i32*, i32** %18, align 8
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @PAGE_CACHE_MASK, align 4
  %42 = xor i32 %41, -1
  %43 = and i32 %40, %42
  store i32 %43, i32* %21, align 4
  %44 = load i32, i32* %12, align 4
  %45 = load i32, i32* %13, align 4
  %46 = add i32 %44, %45
  %47 = load i32*, i32** %18, align 8
  %48 = load i32, i32* %47, align 4
  %49 = icmp ugt i32 %46, %48
  br i1 %49, label %50, label %65

50:                                               ; preds = %38
  %51 = load i32, i32* %21, align 4
  %52 = load i32, i32* %20, align 4
  %53 = sub i32 %52, 1
  %54 = and i32 %51, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %65

56:                                               ; preds = %50
  %57 = load i32, i32* %20, align 4
  %58 = sub i32 %57, 1
  %59 = load i32*, i32** %18, align 8
  %60 = load i32, i32* %59, align 4
  %61 = or i32 %60, %58
  store i32 %61, i32* %59, align 4
  %62 = load i32*, i32** %18, align 8
  %63 = load i32, i32* %62, align 4
  %64 = add i32 %63, 1
  store i32 %64, i32* %62, align 4
  br label %65

65:                                               ; preds = %56, %50, %38
  %66 = load %struct.page**, %struct.page*** %15, align 8
  store %struct.page* null, %struct.page** %66, align 8
  %67 = load %struct.file*, %struct.file** %10, align 8
  %68 = load %struct.address_space*, %struct.address_space** %11, align 8
  %69 = load i32, i32* %12, align 4
  %70 = load i32, i32* %13, align 4
  %71 = load i32, i32* %14, align 4
  %72 = load %struct.page**, %struct.page*** %15, align 8
  %73 = load i8**, i8*** %16, align 8
  %74 = load i32*, i32** %17, align 8
  %75 = call i32 @block_write_begin_newtrunc(%struct.file* %67, %struct.address_space* %68, i32 %69, i32 %70, i32 %71, %struct.page** %72, i8** %73, i32* %74)
  store i32 %75, i32* %22, align 4
  br label %76

76:                                               ; preds = %65, %37
  %77 = load i32, i32* %22, align 4
  ret i32 %77
}

declare dso_local i32 @cont_expand_zero(%struct.file*, %struct.address_space*, i32, i32*) #1

declare dso_local i32 @block_write_begin_newtrunc(%struct.file*, %struct.address_space*, i32, i32, i32, %struct.page**, i8**, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
