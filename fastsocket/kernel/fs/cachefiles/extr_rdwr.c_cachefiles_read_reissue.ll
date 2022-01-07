; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/cachefiles/extr_rdwr.c_cachefiles_read_reissue.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/cachefiles/extr_rdwr.c_cachefiles_read_reissue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cachefiles_object = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, %struct.address_space* }
%struct.address_space = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 (i32*, %struct.page*)* }
%struct.page = type { i32, i32, %struct.address_space* }
%struct.cachefiles_one_read = type { i32, i32, %struct.page* }

@.str = private unnamed_addr constant [20 x i8] c"{ino=%lx},{%lx,%lx}\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c" = -ENODATA [mapping]\00", align 1
@ENODATA = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c" = -ENODATA [gone]\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c" = -ENODATA [different]\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [13 x i8] c"reissue read\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"jumpstart %p {%lx}\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c" = -EINPROGRESS\00", align 1
@EINPROGRESS = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [6 x i8] c" = %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cachefiles_object*, %struct.cachefiles_one_read*)* @cachefiles_read_reissue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cachefiles_read_reissue(%struct.cachefiles_object* %0, %struct.cachefiles_one_read* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cachefiles_object*, align 8
  %5 = alloca %struct.cachefiles_one_read*, align 8
  %6 = alloca %struct.address_space*, align 8
  %7 = alloca %struct.page*, align 8
  %8 = alloca %struct.page*, align 8
  %9 = alloca i32, align 4
  store %struct.cachefiles_object* %0, %struct.cachefiles_object** %4, align 8
  store %struct.cachefiles_one_read* %1, %struct.cachefiles_one_read** %5, align 8
  %10 = load %struct.cachefiles_object*, %struct.cachefiles_object** %4, align 8
  %11 = getelementptr inbounds %struct.cachefiles_object, %struct.cachefiles_object* %10, i32 0, i32 1
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 1
  %16 = load %struct.address_space*, %struct.address_space** %15, align 8
  store %struct.address_space* %16, %struct.address_space** %6, align 8
  %17 = load %struct.cachefiles_one_read*, %struct.cachefiles_one_read** %5, align 8
  %18 = getelementptr inbounds %struct.cachefiles_one_read, %struct.cachefiles_one_read* %17, i32 0, i32 2
  %19 = load %struct.page*, %struct.page** %18, align 8
  store %struct.page* %19, %struct.page** %7, align 8
  %20 = load %struct.cachefiles_object*, %struct.cachefiles_object** %4, align 8
  %21 = getelementptr inbounds %struct.cachefiles_object, %struct.cachefiles_object* %20, i32 0, i32 1
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.page*, %struct.page** %7, align 8
  %28 = getelementptr inbounds %struct.page, %struct.page* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.page*, %struct.page** %7, align 8
  %31 = getelementptr inbounds %struct.page, %struct.page* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @_enter(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %26, i32 %29, i32 %32)
  %34 = load %struct.page*, %struct.page** %7, align 8
  %35 = getelementptr inbounds %struct.page, %struct.page* %34, i32 0, i32 2
  %36 = load %struct.address_space*, %struct.address_space** %35, align 8
  %37 = load %struct.address_space*, %struct.address_space** %6, align 8
  %38 = icmp ne %struct.address_space* %36, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %2
  %40 = call i32 (i8*, ...) @_leave(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %41 = load i32, i32* @ENODATA, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %3, align 4
  br label %134

43:                                               ; preds = %2
  %44 = load %struct.address_space*, %struct.address_space** %6, align 8
  %45 = load %struct.page*, %struct.page** %7, align 8
  %46 = getelementptr inbounds %struct.page, %struct.page* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call %struct.page* @find_get_page(%struct.address_space* %44, i32 %47)
  store %struct.page* %48, %struct.page** %8, align 8
  %49 = load %struct.page*, %struct.page** %8, align 8
  %50 = icmp ne %struct.page* %49, null
  br i1 %50, label %55, label %51

51:                                               ; preds = %43
  %52 = call i32 (i8*, ...) @_leave(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %53 = load i32, i32* @ENODATA, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %3, align 4
  br label %134

55:                                               ; preds = %43
  %56 = load %struct.page*, %struct.page** %7, align 8
  %57 = load %struct.page*, %struct.page** %8, align 8
  %58 = icmp ne %struct.page* %56, %57
  br i1 %58, label %59, label %65

59:                                               ; preds = %55
  %60 = load %struct.page*, %struct.page** %8, align 8
  %61 = call i32 @put_page(%struct.page* %60)
  %62 = call i32 (i8*, ...) @_leave(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  %63 = load i32, i32* @ENODATA, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %3, align 4
  br label %134

65:                                               ; preds = %55
  %66 = load %struct.page*, %struct.page** %8, align 8
  %67 = call i32 @put_page(%struct.page* %66)
  %68 = load %struct.cachefiles_one_read*, %struct.cachefiles_one_read** %5, align 8
  %69 = getelementptr inbounds %struct.cachefiles_one_read, %struct.cachefiles_one_read* %68, i32 0, i32 0
  %70 = call i32 @INIT_LIST_HEAD(i32* %69)
  %71 = load %struct.page*, %struct.page** %7, align 8
  %72 = load %struct.cachefiles_one_read*, %struct.cachefiles_one_read** %5, align 8
  %73 = getelementptr inbounds %struct.cachefiles_one_read, %struct.cachefiles_one_read* %72, i32 0, i32 1
  %74 = call i32 @add_page_wait_queue(%struct.page* %71, i32* %73)
  %75 = load %struct.page*, %struct.page** %7, align 8
  %76 = call i64 @trylock_page(%struct.page* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %103

78:                                               ; preds = %65
  %79 = load i32, i32* @EIO, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %9, align 4
  %81 = load %struct.page*, %struct.page** %7, align 8
  %82 = call i64 @PageError(%struct.page* %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %78
  br label %119

85:                                               ; preds = %78
  store i32 0, i32* %9, align 4
  %86 = load %struct.page*, %struct.page** %7, align 8
  %87 = call i64 @PageUptodate(%struct.page* %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %85
  br label %119

90:                                               ; preds = %85
  %91 = call i32 (i8*, ...) @_debug(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  %92 = load %struct.address_space*, %struct.address_space** %6, align 8
  %93 = getelementptr inbounds %struct.address_space, %struct.address_space* %92, i32 0, i32 0
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 0
  %96 = load i32 (i32*, %struct.page*)*, i32 (i32*, %struct.page*)** %95, align 8
  %97 = load %struct.page*, %struct.page** %7, align 8
  %98 = call i32 %96(i32* null, %struct.page* %97)
  store i32 %98, i32* %9, align 4
  %99 = load i32, i32* %9, align 4
  %100 = icmp slt i32 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %90
  br label %119

102:                                              ; preds = %90
  br label %103

103:                                              ; preds = %102, %65
  %104 = load %struct.page*, %struct.page** %7, align 8
  %105 = call i64 @trylock_page(%struct.page* %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %115

107:                                              ; preds = %103
  %108 = load %struct.page*, %struct.page** %7, align 8
  %109 = load %struct.page*, %struct.page** %7, align 8
  %110 = getelementptr inbounds %struct.page, %struct.page* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = call i32 (i8*, ...) @_debug(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), %struct.page* %108, i32 %111)
  %113 = load %struct.page*, %struct.page** %7, align 8
  %114 = call i32 @unlock_page(%struct.page* %113)
  br label %115

115:                                              ; preds = %107, %103
  %116 = call i32 (i8*, ...) @_leave(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0))
  %117 = load i32, i32* @EINPROGRESS, align 4
  %118 = sub nsw i32 0, %117
  store i32 %118, i32* %3, align 4
  br label %134

119:                                              ; preds = %101, %89, %84
  %120 = load %struct.page*, %struct.page** %7, align 8
  %121 = call i32 @unlock_page(%struct.page* %120)
  %122 = load %struct.cachefiles_object*, %struct.cachefiles_object** %4, align 8
  %123 = getelementptr inbounds %struct.cachefiles_object, %struct.cachefiles_object* %122, i32 0, i32 0
  %124 = call i32 @spin_lock_irq(i32* %123)
  %125 = load %struct.cachefiles_one_read*, %struct.cachefiles_one_read** %5, align 8
  %126 = getelementptr inbounds %struct.cachefiles_one_read, %struct.cachefiles_one_read* %125, i32 0, i32 0
  %127 = call i32 @list_del(i32* %126)
  %128 = load %struct.cachefiles_object*, %struct.cachefiles_object** %4, align 8
  %129 = getelementptr inbounds %struct.cachefiles_object, %struct.cachefiles_object* %128, i32 0, i32 0
  %130 = call i32 @spin_unlock_irq(i32* %129)
  %131 = load i32, i32* %9, align 4
  %132 = call i32 (i8*, ...) @_leave(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i32 %131)
  %133 = load i32, i32* %9, align 4
  store i32 %133, i32* %3, align 4
  br label %134

134:                                              ; preds = %119, %115, %59, %51, %39
  %135 = load i32, i32* %3, align 4
  ret i32 %135
}

declare dso_local i32 @_enter(i8*, i32, i32, i32) #1

declare dso_local i32 @_leave(i8*, ...) #1

declare dso_local %struct.page* @find_get_page(%struct.address_space*, i32) #1

declare dso_local i32 @put_page(%struct.page*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @add_page_wait_queue(%struct.page*, i32*) #1

declare dso_local i64 @trylock_page(%struct.page*) #1

declare dso_local i64 @PageError(%struct.page*) #1

declare dso_local i64 @PageUptodate(%struct.page*) #1

declare dso_local i32 @_debug(i8*, ...) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
