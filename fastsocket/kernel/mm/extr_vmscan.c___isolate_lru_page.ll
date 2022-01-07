; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_vmscan.c___isolate_lru_page.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_vmscan.c___isolate_lru_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.address_space = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@ISOLATE_ACTIVE = common dso_local global i32 0, align 4
@ISOLATE_INACTIVE = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@ISOLATE_CLEAN = common dso_local global i32 0, align 4
@ISOLATE_ASYNC_MIGRATE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__isolate_lru_page(%struct.page* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.page*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.address_space*, align 8
  store %struct.page* %0, %struct.page** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* @EINVAL, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %9, align 4
  %13 = load %struct.page*, %struct.page** %5, align 8
  %14 = call i32 @PageLRU(%struct.page* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %3
  %17 = load i32, i32* %9, align 4
  store i32 %17, i32* %4, align 4
  br label %118

18:                                               ; preds = %3
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @ISOLATE_ACTIVE, align 4
  %21 = load i32, i32* @ISOLATE_INACTIVE, align 4
  %22 = or i32 %20, %21
  %23 = and i32 %19, %22
  %24 = load i32, i32* @ISOLATE_ACTIVE, align 4
  %25 = load i32, i32* @ISOLATE_INACTIVE, align 4
  %26 = or i32 %24, %25
  %27 = icmp eq i32 %23, %26
  %28 = zext i1 %27 to i32
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %8, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %46, label %31

31:                                               ; preds = %18
  %32 = load %struct.page*, %struct.page** %5, align 8
  %33 = call i32 @PageActive(%struct.page* %32)
  %34 = icmp ne i32 %33, 0
  %35 = xor i1 %34, true
  %36 = zext i1 %35 to i32
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* @ISOLATE_ACTIVE, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  %41 = xor i1 %40, true
  %42 = zext i1 %41 to i32
  %43 = icmp ne i32 %36, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %31
  %45 = load i32, i32* %9, align 4
  store i32 %45, i32* %4, align 4
  br label %118

46:                                               ; preds = %31, %18
  %47 = load i32, i32* %8, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %60, label %49

49:                                               ; preds = %46
  %50 = load %struct.page*, %struct.page** %5, align 8
  %51 = call i32 @page_is_file_cache(%struct.page* %50)
  %52 = icmp ne i32 %51, 0
  %53 = xor i1 %52, true
  %54 = xor i1 %53, true
  %55 = zext i1 %54 to i32
  %56 = load i32, i32* %7, align 4
  %57 = icmp ne i32 %55, %56
  br i1 %57, label %58, label %60

58:                                               ; preds = %49
  %59 = load i32, i32* %9, align 4
  store i32 %59, i32* %4, align 4
  br label %118

60:                                               ; preds = %49, %46
  %61 = load %struct.page*, %struct.page** %5, align 8
  %62 = call i64 @PageUnevictable(%struct.page* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %60
  %65 = load i32, i32* %9, align 4
  store i32 %65, i32* %4, align 4
  br label %118

66:                                               ; preds = %60
  %67 = load i32, i32* @EBUSY, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %9, align 4
  %69 = load i32, i32* %6, align 4
  %70 = load i32, i32* @ISOLATE_CLEAN, align 4
  %71 = load i32, i32* @ISOLATE_ASYNC_MIGRATE, align 4
  %72 = or i32 %70, %71
  %73 = and i32 %69, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %108

75:                                               ; preds = %66
  %76 = load %struct.page*, %struct.page** %5, align 8
  %77 = call i64 @PageWriteback(%struct.page* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %75
  %80 = load i32, i32* %9, align 4
  store i32 %80, i32* %4, align 4
  br label %118

81:                                               ; preds = %75
  %82 = load %struct.page*, %struct.page** %5, align 8
  %83 = call i64 @PageDirty(%struct.page* %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %107

85:                                               ; preds = %81
  %86 = load i32, i32* %6, align 4
  %87 = load i32, i32* @ISOLATE_CLEAN, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %85
  %91 = load i32, i32* %9, align 4
  store i32 %91, i32* %4, align 4
  br label %118

92:                                               ; preds = %85
  %93 = load %struct.page*, %struct.page** %5, align 8
  %94 = call %struct.address_space* @page_mapping(%struct.page* %93)
  store %struct.address_space* %94, %struct.address_space** %10, align 8
  %95 = load %struct.address_space*, %struct.address_space** %10, align 8
  %96 = icmp ne %struct.address_space* %95, null
  br i1 %96, label %97, label %106

97:                                               ; preds = %92
  %98 = load %struct.address_space*, %struct.address_space** %10, align 8
  %99 = getelementptr inbounds %struct.address_space, %struct.address_space* %98, i32 0, i32 0
  %100 = load %struct.TYPE_2__*, %struct.TYPE_2__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %106, label %104

104:                                              ; preds = %97
  %105 = load i32, i32* %9, align 4
  store i32 %105, i32* %4, align 4
  br label %118

106:                                              ; preds = %97, %92
  br label %107

107:                                              ; preds = %106, %81
  br label %108

108:                                              ; preds = %107, %66
  %109 = load %struct.page*, %struct.page** %5, align 8
  %110 = call i32 @get_page_unless_zero(%struct.page* %109)
  %111 = call i64 @likely(i32 %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %116

113:                                              ; preds = %108
  %114 = load %struct.page*, %struct.page** %5, align 8
  %115 = call i32 @ClearPageLRU(%struct.page* %114)
  store i32 0, i32* %9, align 4
  br label %116

116:                                              ; preds = %113, %108
  %117 = load i32, i32* %9, align 4
  store i32 %117, i32* %4, align 4
  br label %118

118:                                              ; preds = %116, %104, %90, %79, %64, %58, %44, %16
  %119 = load i32, i32* %4, align 4
  ret i32 %119
}

declare dso_local i32 @PageLRU(%struct.page*) #1

declare dso_local i32 @PageActive(%struct.page*) #1

declare dso_local i32 @page_is_file_cache(%struct.page*) #1

declare dso_local i64 @PageUnevictable(%struct.page*) #1

declare dso_local i64 @PageWriteback(%struct.page*) #1

declare dso_local i64 @PageDirty(%struct.page*) #1

declare dso_local %struct.address_space* @page_mapping(%struct.page*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @get_page_unless_zero(%struct.page*) #1

declare dso_local i32 @ClearPageLRU(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
