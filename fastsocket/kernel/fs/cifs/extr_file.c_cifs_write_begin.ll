; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_file.c_cifs_write_begin.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_file.c_cifs_write_begin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.address_space = type { i32 }
%struct.page = type { i32 }
%struct.TYPE_2__ = type { i64 }

@PAGE_CACHE_SHIFT = common dso_local global i32 0, align 4
@PAGE_CACHE_SIZE = common dso_local global i32 0, align 4
@PAGE_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"write_begin from %lld len %d\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@O_ACCMODE = common dso_local global i32 0, align 4
@O_WRONLY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.address_space*, i32, i32, i32, %struct.page**, i8**)* @cifs_write_begin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cifs_write_begin(%struct.file* %0, %struct.address_space* %1, i32 %2, i32 %3, i32 %4, %struct.page** %5, i8** %6) #0 {
  %8 = alloca %struct.file*, align 8
  %9 = alloca %struct.address_space*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.page**, align 8
  %14 = alloca i8**, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.page*, align 8
  %20 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %8, align 8
  store %struct.address_space* %1, %struct.address_space** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store %struct.page** %5, %struct.page*** %13, align 8
  store i8** %6, i8*** %14, align 8
  %21 = load i32, i32* %10, align 4
  %22 = load i32, i32* @PAGE_CACHE_SHIFT, align 4
  %23 = ashr i32 %21, %22
  store i32 %23, i32* %15, align 4
  %24 = load i32, i32* %10, align 4
  %25 = load i32, i32* @PAGE_CACHE_SIZE, align 4
  %26 = sub nsw i32 %25, 1
  %27 = and i32 %24, %26
  store i32 %27, i32* %16, align 4
  %28 = load i32, i32* %10, align 4
  %29 = load i32, i32* @PAGE_MASK, align 4
  %30 = and i32 %28, %29
  store i32 %30, i32* %17, align 4
  store i32 0, i32* %20, align 4
  %31 = load i32, i32* %10, align 4
  %32 = sext i32 %31 to i64
  %33 = load i32, i32* %11, align 4
  %34 = call i32 @cFYI(i32 1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i64 %32, i32 %33)
  %35 = load %struct.address_space*, %struct.address_space** %9, align 8
  %36 = load i32, i32* %15, align 4
  %37 = load i32, i32* %12, align 4
  %38 = call %struct.page* @grab_cache_page_write_begin(%struct.address_space* %35, i32 %36, i32 %37)
  store %struct.page* %38, %struct.page** %19, align 8
  %39 = load %struct.page*, %struct.page** %19, align 8
  %40 = icmp ne %struct.page* %39, null
  br i1 %40, label %44, label %41

41:                                               ; preds = %7
  %42 = load i32, i32* @ENOMEM, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %20, align 4
  br label %104

44:                                               ; preds = %7
  %45 = load %struct.page*, %struct.page** %19, align 8
  %46 = call i64 @PageUptodate(%struct.page* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %44
  br label %104

49:                                               ; preds = %44
  %50 = load i32, i32* %11, align 4
  %51 = load i32, i32* @PAGE_CACHE_SIZE, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %49
  br label %104

54:                                               ; preds = %49
  %55 = load %struct.address_space*, %struct.address_space** %9, align 8
  %56 = getelementptr inbounds %struct.address_space, %struct.address_space* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call %struct.TYPE_2__* @CIFS_I(i32 %57)
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %90

62:                                               ; preds = %54
  %63 = load %struct.address_space*, %struct.address_space** %9, align 8
  %64 = getelementptr inbounds %struct.address_space, %struct.address_space* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @i_size_read(i32 %65)
  store i32 %66, i32* %18, align 4
  %67 = load i32, i32* %17, align 4
  %68 = load i32, i32* %18, align 4
  %69 = icmp sge i32 %67, %68
  br i1 %69, label %79, label %70

70:                                               ; preds = %62
  %71 = load i32, i32* %16, align 4
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %89

73:                                               ; preds = %70
  %74 = load i32, i32* %10, align 4
  %75 = load i32, i32* %11, align 4
  %76 = add i32 %74, %75
  %77 = load i32, i32* %18, align 4
  %78 = icmp uge i32 %76, %77
  br i1 %78, label %79, label %89

79:                                               ; preds = %73, %62
  %80 = load %struct.page*, %struct.page** %19, align 8
  %81 = load i32, i32* %16, align 4
  %82 = load i32, i32* %16, align 4
  %83 = load i32, i32* %11, align 4
  %84 = add i32 %82, %83
  %85 = load i32, i32* @PAGE_CACHE_SIZE, align 4
  %86 = call i32 @zero_user_segments(%struct.page* %80, i32 0, i32 %81, i32 %84, i32 %85)
  %87 = load %struct.page*, %struct.page** %19, align 8
  %88 = call i32 @SetPageChecked(%struct.page* %87)
  br label %104

89:                                               ; preds = %73, %70
  br label %90

90:                                               ; preds = %89, %54
  %91 = load %struct.file*, %struct.file** %8, align 8
  %92 = getelementptr inbounds %struct.file, %struct.file* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @O_ACCMODE, align 4
  %95 = and i32 %93, %94
  %96 = load i32, i32* @O_WRONLY, align 4
  %97 = icmp ne i32 %95, %96
  br i1 %97, label %98, label %102

98:                                               ; preds = %90
  %99 = load %struct.file*, %struct.file** %8, align 8
  %100 = load %struct.page*, %struct.page** %19, align 8
  %101 = call i32 @cifs_readpage_worker(%struct.file* %99, %struct.page* %100, i32* %17)
  br label %103

102:                                              ; preds = %90
  br label %103

103:                                              ; preds = %102, %98
  br label %104

104:                                              ; preds = %103, %79, %53, %48, %41
  %105 = load %struct.page*, %struct.page** %19, align 8
  %106 = load %struct.page**, %struct.page*** %13, align 8
  store %struct.page* %105, %struct.page** %106, align 8
  %107 = load i32, i32* %20, align 4
  ret i32 %107
}

declare dso_local i32 @cFYI(i32, i8*, i64, i32) #1

declare dso_local %struct.page* @grab_cache_page_write_begin(%struct.address_space*, i32, i32) #1

declare dso_local i64 @PageUptodate(%struct.page*) #1

declare dso_local %struct.TYPE_2__* @CIFS_I(i32) #1

declare dso_local i32 @i_size_read(i32) #1

declare dso_local i32 @zero_user_segments(%struct.page*, i32, i32, i32, i32) #1

declare dso_local i32 @SetPageChecked(%struct.page*) #1

declare dso_local i32 @cifs_readpage_worker(%struct.file*, %struct.page*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
