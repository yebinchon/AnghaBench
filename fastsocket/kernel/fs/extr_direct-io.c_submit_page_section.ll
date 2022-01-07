; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_direct-io.c_submit_page_section.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_direct-io.c_submit_page_section.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dio = type { i32 }
%struct.dio_submit = type { i32, i32, i64, i32, i32, i32, %struct.page*, i64 }
%struct.page = type { i32 }
%struct.buffer_head = type { i32 }

@WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dio*, %struct.dio_submit*, %struct.page*, i32, i32, i64, %struct.buffer_head*)* @submit_page_section to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @submit_page_section(%struct.dio* %0, %struct.dio_submit* %1, %struct.page* %2, i32 %3, i32 %4, i64 %5, %struct.buffer_head* %6) #0 {
  %8 = alloca %struct.dio*, align 8
  %9 = alloca %struct.dio_submit*, align 8
  %10 = alloca %struct.page*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca %struct.buffer_head*, align 8
  %15 = alloca i32, align 4
  store %struct.dio* %0, %struct.dio** %8, align 8
  store %struct.dio_submit* %1, %struct.dio_submit** %9, align 8
  store %struct.page* %2, %struct.page** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i64 %5, i64* %13, align 8
  store %struct.buffer_head* %6, %struct.buffer_head** %14, align 8
  store i32 0, i32* %15, align 4
  %16 = load %struct.dio*, %struct.dio** %8, align 8
  %17 = getelementptr inbounds %struct.dio, %struct.dio* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @WRITE, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %7
  %23 = load i32, i32* %12, align 4
  %24 = call i32 @task_io_account_write(i32 %23)
  br label %25

25:                                               ; preds = %22, %7
  %26 = load %struct.dio_submit*, %struct.dio_submit** %9, align 8
  %27 = getelementptr inbounds %struct.dio_submit, %struct.dio_submit* %26, i32 0, i32 6
  %28 = load %struct.page*, %struct.page** %27, align 8
  %29 = load %struct.page*, %struct.page** %10, align 8
  %30 = icmp eq %struct.page* %28, %29
  br i1 %30, label %31, label %78

31:                                               ; preds = %25
  %32 = load %struct.dio_submit*, %struct.dio_submit** %9, align 8
  %33 = getelementptr inbounds %struct.dio_submit, %struct.dio_submit* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.dio_submit*, %struct.dio_submit** %9, align 8
  %36 = getelementptr inbounds %struct.dio_submit, %struct.dio_submit* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = add i32 %34, %37
  %39 = load i32, i32* %11, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %78

41:                                               ; preds = %31
  %42 = load %struct.dio_submit*, %struct.dio_submit** %9, align 8
  %43 = getelementptr inbounds %struct.dio_submit, %struct.dio_submit* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.dio_submit*, %struct.dio_submit** %9, align 8
  %46 = getelementptr inbounds %struct.dio_submit, %struct.dio_submit* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.dio_submit*, %struct.dio_submit** %9, align 8
  %49 = getelementptr inbounds %struct.dio_submit, %struct.dio_submit* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 8
  %51 = ashr i32 %47, %50
  %52 = sext i32 %51 to i64
  %53 = add nsw i64 %44, %52
  %54 = load i64, i64* %13, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %78

56:                                               ; preds = %41
  %57 = load i32, i32* %12, align 4
  %58 = load %struct.dio_submit*, %struct.dio_submit** %9, align 8
  %59 = getelementptr inbounds %struct.dio_submit, %struct.dio_submit* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = add i32 %60, %57
  store i32 %61, i32* %59, align 4
  %62 = load %struct.dio_submit*, %struct.dio_submit** %9, align 8
  %63 = getelementptr inbounds %struct.dio_submit, %struct.dio_submit* %62, i32 0, i32 7
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %77

66:                                               ; preds = %56
  %67 = load %struct.dio*, %struct.dio** %8, align 8
  %68 = load %struct.dio_submit*, %struct.dio_submit** %9, align 8
  %69 = load %struct.buffer_head*, %struct.buffer_head** %14, align 8
  %70 = call i32 @dio_send_cur_page(%struct.dio* %67, %struct.dio_submit* %68, %struct.buffer_head* %69)
  store i32 %70, i32* %15, align 4
  %71 = load %struct.dio_submit*, %struct.dio_submit** %9, align 8
  %72 = getelementptr inbounds %struct.dio_submit, %struct.dio_submit* %71, i32 0, i32 6
  %73 = load %struct.page*, %struct.page** %72, align 8
  %74 = call i32 @page_cache_release(%struct.page* %73)
  %75 = load %struct.dio_submit*, %struct.dio_submit** %9, align 8
  %76 = getelementptr inbounds %struct.dio_submit, %struct.dio_submit* %75, i32 0, i32 6
  store %struct.page* null, %struct.page** %76, align 8
  br label %77

77:                                               ; preds = %66, %56
  br label %122

78:                                               ; preds = %41, %31, %25
  %79 = load %struct.dio_submit*, %struct.dio_submit** %9, align 8
  %80 = getelementptr inbounds %struct.dio_submit, %struct.dio_submit* %79, i32 0, i32 6
  %81 = load %struct.page*, %struct.page** %80, align 8
  %82 = icmp ne %struct.page* %81, null
  br i1 %82, label %83, label %98

83:                                               ; preds = %78
  %84 = load %struct.dio*, %struct.dio** %8, align 8
  %85 = load %struct.dio_submit*, %struct.dio_submit** %9, align 8
  %86 = load %struct.buffer_head*, %struct.buffer_head** %14, align 8
  %87 = call i32 @dio_send_cur_page(%struct.dio* %84, %struct.dio_submit* %85, %struct.buffer_head* %86)
  store i32 %87, i32* %15, align 4
  %88 = load %struct.dio_submit*, %struct.dio_submit** %9, align 8
  %89 = getelementptr inbounds %struct.dio_submit, %struct.dio_submit* %88, i32 0, i32 6
  %90 = load %struct.page*, %struct.page** %89, align 8
  %91 = call i32 @page_cache_release(%struct.page* %90)
  %92 = load %struct.dio_submit*, %struct.dio_submit** %9, align 8
  %93 = getelementptr inbounds %struct.dio_submit, %struct.dio_submit* %92, i32 0, i32 6
  store %struct.page* null, %struct.page** %93, align 8
  %94 = load i32, i32* %15, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %83
  br label %122

97:                                               ; preds = %83
  br label %98

98:                                               ; preds = %97, %78
  %99 = load %struct.page*, %struct.page** %10, align 8
  %100 = call i32 @page_cache_get(%struct.page* %99)
  %101 = load %struct.page*, %struct.page** %10, align 8
  %102 = load %struct.dio_submit*, %struct.dio_submit** %9, align 8
  %103 = getelementptr inbounds %struct.dio_submit, %struct.dio_submit* %102, i32 0, i32 6
  store %struct.page* %101, %struct.page** %103, align 8
  %104 = load i32, i32* %11, align 4
  %105 = load %struct.dio_submit*, %struct.dio_submit** %9, align 8
  %106 = getelementptr inbounds %struct.dio_submit, %struct.dio_submit* %105, i32 0, i32 0
  store i32 %104, i32* %106, align 8
  %107 = load i32, i32* %12, align 4
  %108 = load %struct.dio_submit*, %struct.dio_submit** %9, align 8
  %109 = getelementptr inbounds %struct.dio_submit, %struct.dio_submit* %108, i32 0, i32 1
  store i32 %107, i32* %109, align 4
  %110 = load i64, i64* %13, align 8
  %111 = load %struct.dio_submit*, %struct.dio_submit** %9, align 8
  %112 = getelementptr inbounds %struct.dio_submit, %struct.dio_submit* %111, i32 0, i32 2
  store i64 %110, i64* %112, align 8
  %113 = load %struct.dio_submit*, %struct.dio_submit** %9, align 8
  %114 = getelementptr inbounds %struct.dio_submit, %struct.dio_submit* %113, i32 0, i32 5
  %115 = load i32, i32* %114, align 8
  %116 = load %struct.dio_submit*, %struct.dio_submit** %9, align 8
  %117 = getelementptr inbounds %struct.dio_submit, %struct.dio_submit* %116, i32 0, i32 3
  %118 = load i32, i32* %117, align 8
  %119 = shl i32 %115, %118
  %120 = load %struct.dio_submit*, %struct.dio_submit** %9, align 8
  %121 = getelementptr inbounds %struct.dio_submit, %struct.dio_submit* %120, i32 0, i32 4
  store i32 %119, i32* %121, align 4
  br label %122

122:                                              ; preds = %98, %96, %77
  %123 = load i32, i32* %15, align 4
  ret i32 %123
}

declare dso_local i32 @task_io_account_write(i32) #1

declare dso_local i32 @dio_send_cur_page(%struct.dio*, %struct.dio_submit*, %struct.buffer_head*) #1

declare dso_local i32 @page_cache_release(%struct.page*) #1

declare dso_local i32 @page_cache_get(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
