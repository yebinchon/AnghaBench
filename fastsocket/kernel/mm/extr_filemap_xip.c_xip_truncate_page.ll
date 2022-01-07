; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_filemap_xip.c_xip_truncate_page.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_filemap_xip.c_xip_truncate_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.address_space = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 (%struct.address_space*, i32, i32, i8**, i64*)* }
%struct.TYPE_3__ = type { i32 }

@PAGE_CACHE_SHIFT = common dso_local global i32 0, align 4
@PAGE_CACHE_SIZE = common dso_local global i32 0, align 4
@ENODATA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xip_truncate_page(%struct.address_space* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.address_space*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.address_space* %0, %struct.address_space** %4, align 8
  store i32 %1, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @PAGE_CACHE_SHIFT, align 4
  %15 = ashr i32 %13, %14
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @PAGE_CACHE_SIZE, align 4
  %18 = sub nsw i32 %17, 1
  %19 = and i32 %16, %18
  store i32 %19, i32* %7, align 4
  %20 = load %struct.address_space*, %struct.address_space** %4, align 8
  %21 = getelementptr inbounds %struct.address_space, %struct.address_space* %20, i32 0, i32 0
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32 (%struct.address_space*, i32, i32, i8**, i64*)*, i32 (%struct.address_space*, i32, i32, i8**, i64*)** %23, align 8
  %25 = icmp ne i32 (%struct.address_space*, i32, i32, i8**, i64*)* %24, null
  %26 = xor i1 %25, true
  %27 = zext i1 %26 to i32
  %28 = call i32 @BUG_ON(i32 %27)
  %29 = load %struct.address_space*, %struct.address_space** %4, align 8
  %30 = getelementptr inbounds %struct.address_space, %struct.address_space* %29, i32 0, i32 1
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = shl i32 1, %33
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* %8, align 4
  %37 = sub i32 %36, 1
  %38 = and i32 %35, %37
  store i32 %38, i32* %9, align 4
  %39 = load i32, i32* %9, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %72

42:                                               ; preds = %2
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* %9, align 4
  %45 = sub i32 %43, %44
  store i32 %45, i32* %9, align 4
  %46 = load %struct.address_space*, %struct.address_space** %4, align 8
  %47 = getelementptr inbounds %struct.address_space, %struct.address_space* %46, i32 0, i32 0
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i32 (%struct.address_space*, i32, i32, i8**, i64*)*, i32 (%struct.address_space*, i32, i32, i8**, i64*)** %49, align 8
  %51 = load %struct.address_space*, %struct.address_space** %4, align 8
  %52 = load i32, i32* %6, align 4
  %53 = call i32 %50(%struct.address_space* %51, i32 %52, i32 0, i8** %10, i64* %11)
  store i32 %53, i32* %12, align 4
  %54 = load i32, i32* %12, align 4
  %55 = call i64 @unlikely(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %65

57:                                               ; preds = %42
  %58 = load i32, i32* %12, align 4
  %59 = load i32, i32* @ENODATA, align 4
  %60 = sub nsw i32 0, %59
  %61 = icmp eq i32 %58, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %57
  store i32 0, i32* %3, align 4
  br label %72

63:                                               ; preds = %57
  %64 = load i32, i32* %12, align 4
  store i32 %64, i32* %3, align 4
  br label %72

65:                                               ; preds = %42
  %66 = load i8*, i8** %10, align 8
  %67 = load i32, i32* %7, align 4
  %68 = zext i32 %67 to i64
  %69 = getelementptr i8, i8* %66, i64 %68
  %70 = load i32, i32* %9, align 4
  %71 = call i32 @memset(i8* %69, i32 0, i32 %70)
  store i32 0, i32* %3, align 4
  br label %72

72:                                               ; preds = %65, %63, %62, %41
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
