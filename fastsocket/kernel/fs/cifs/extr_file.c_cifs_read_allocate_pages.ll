; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_file.c_cifs_read_allocate_pages.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_file.c_cifs_read_allocate_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cifs_readdata = type { %struct.page** }
%struct.page = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@__GFP_HIGHMEM = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cifs_readdata*, i32)* @cifs_read_allocate_pages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cifs_read_allocate_pages(%struct.cifs_readdata* %0, i32 %1) #0 {
  %3 = alloca %struct.cifs_readdata*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.page*, align 8
  %7 = alloca i32, align 4
  store %struct.cifs_readdata* %0, %struct.cifs_readdata** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %7, align 4
  br label %8

8:                                                ; preds = %30, %2
  %9 = load i32, i32* %7, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp ult i32 %9, %10
  br i1 %11, label %12, label %33

12:                                               ; preds = %8
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = load i32, i32* @__GFP_HIGHMEM, align 4
  %15 = or i32 %13, %14
  %16 = call %struct.page* @alloc_page(i32 %15)
  store %struct.page* %16, %struct.page** %6, align 8
  %17 = load %struct.page*, %struct.page** %6, align 8
  %18 = icmp ne %struct.page* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %12
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %5, align 4
  br label %33

22:                                               ; preds = %12
  %23 = load %struct.page*, %struct.page** %6, align 8
  %24 = load %struct.cifs_readdata*, %struct.cifs_readdata** %3, align 8
  %25 = getelementptr inbounds %struct.cifs_readdata, %struct.cifs_readdata* %24, i32 0, i32 0
  %26 = load %struct.page**, %struct.page*** %25, align 8
  %27 = load i32, i32* %7, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds %struct.page*, %struct.page** %26, i64 %28
  store %struct.page* %23, %struct.page** %29, align 8
  br label %30

30:                                               ; preds = %22
  %31 = load i32, i32* %7, align 4
  %32 = add i32 %31, 1
  store i32 %32, i32* %7, align 4
  br label %8

33:                                               ; preds = %19, %8
  %34 = load i32, i32* %5, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %60

36:                                               ; preds = %33
  store i32 0, i32* %7, align 4
  br label %37

37:                                               ; preds = %56, %36
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* %4, align 4
  %40 = icmp ult i32 %38, %39
  br i1 %40, label %41, label %59

41:                                               ; preds = %37
  %42 = load %struct.cifs_readdata*, %struct.cifs_readdata** %3, align 8
  %43 = getelementptr inbounds %struct.cifs_readdata, %struct.cifs_readdata* %42, i32 0, i32 0
  %44 = load %struct.page**, %struct.page*** %43, align 8
  %45 = load i32, i32* %7, align 4
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds %struct.page*, %struct.page** %44, i64 %46
  %48 = load %struct.page*, %struct.page** %47, align 8
  %49 = call i32 @put_page(%struct.page* %48)
  %50 = load %struct.cifs_readdata*, %struct.cifs_readdata** %3, align 8
  %51 = getelementptr inbounds %struct.cifs_readdata, %struct.cifs_readdata* %50, i32 0, i32 0
  %52 = load %struct.page**, %struct.page*** %51, align 8
  %53 = load i32, i32* %7, align 4
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds %struct.page*, %struct.page** %52, i64 %54
  store %struct.page* null, %struct.page** %55, align 8
  br label %56

56:                                               ; preds = %41
  %57 = load i32, i32* %7, align 4
  %58 = add i32 %57, 1
  store i32 %58, i32* %7, align 4
  br label %37

59:                                               ; preds = %37
  br label %60

60:                                               ; preds = %59, %33
  %61 = load i32, i32* %5, align 4
  ret i32 %61
}

declare dso_local %struct.page* @alloc_page(i32) #1

declare dso_local i32 @put_page(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
