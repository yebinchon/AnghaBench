; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_aops.c_gfs2_releasepage.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_aops.c_gfs2_releasepage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { %struct.address_space* }
%struct.address_space = type { i32 }
%struct.gfs2_sbd = type { i32 }
%struct.buffer_head = type { %struct.buffer_head*, %struct.gfs2_bufdata*, i32 }
%struct.gfs2_bufdata = type { %struct.buffer_head*, i32, i64 }

@gfs2_bufdata_cachep = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gfs2_releasepage(%struct.page* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.page*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.address_space*, align 8
  %7 = alloca %struct.gfs2_sbd*, align 8
  %8 = alloca %struct.buffer_head*, align 8
  %9 = alloca %struct.buffer_head*, align 8
  %10 = alloca %struct.gfs2_bufdata*, align 8
  store %struct.page* %0, %struct.page** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.page*, %struct.page** %4, align 8
  %12 = getelementptr inbounds %struct.page, %struct.page* %11, i32 0, i32 0
  %13 = load %struct.address_space*, %struct.address_space** %12, align 8
  store %struct.address_space* %13, %struct.address_space** %6, align 8
  %14 = load %struct.address_space*, %struct.address_space** %6, align 8
  %15 = call %struct.gfs2_sbd* @gfs2_mapping2sbd(%struct.address_space* %14)
  store %struct.gfs2_sbd* %15, %struct.gfs2_sbd** %7, align 8
  %16 = load %struct.page*, %struct.page** %4, align 8
  %17 = call i32 @page_has_buffers(%struct.page* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %144

20:                                               ; preds = %2
  %21 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %7, align 8
  %22 = call i32 @gfs2_log_lock(%struct.gfs2_sbd* %21)
  %23 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %7, align 8
  %24 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %23, i32 0, i32 0
  %25 = call i32 @spin_lock(i32* %24)
  %26 = load %struct.page*, %struct.page** %4, align 8
  %27 = call %struct.buffer_head* @page_buffers(%struct.page* %26)
  store %struct.buffer_head* %27, %struct.buffer_head** %8, align 8
  store %struct.buffer_head* %27, %struct.buffer_head** %9, align 8
  br label %28

28:                                               ; preds = %59, %20
  %29 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %30 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %29, i32 0, i32 2
  %31 = call i64 @atomic_read(i32* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %28
  br label %138

34:                                               ; preds = %28
  %35 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %36 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %35, i32 0, i32 1
  %37 = load %struct.gfs2_bufdata*, %struct.gfs2_bufdata** %36, align 8
  store %struct.gfs2_bufdata* %37, %struct.gfs2_bufdata** %10, align 8
  %38 = load %struct.gfs2_bufdata*, %struct.gfs2_bufdata** %10, align 8
  %39 = icmp ne %struct.gfs2_bufdata* %38, null
  br i1 %39, label %40, label %46

40:                                               ; preds = %34
  %41 = load %struct.gfs2_bufdata*, %struct.gfs2_bufdata** %10, align 8
  %42 = getelementptr inbounds %struct.gfs2_bufdata, %struct.gfs2_bufdata* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %40
  br label %138

46:                                               ; preds = %40, %34
  %47 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %48 = call i64 @buffer_pinned(%struct.buffer_head* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %54, label %50

50:                                               ; preds = %46
  %51 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %52 = call i64 @buffer_dirty(%struct.buffer_head* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %50, %46
  br label %131

55:                                               ; preds = %50
  %56 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %57 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %56, i32 0, i32 0
  %58 = load %struct.buffer_head*, %struct.buffer_head** %57, align 8
  store %struct.buffer_head* %58, %struct.buffer_head** %8, align 8
  br label %59

59:                                               ; preds = %55
  %60 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %61 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %62 = icmp ne %struct.buffer_head* %60, %61
  br i1 %62, label %28, label %63

63:                                               ; preds = %59
  %64 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %7, align 8
  %65 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %64, i32 0, i32 0
  %66 = call i32 @spin_unlock(i32* %65)
  %67 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %7, align 8
  %68 = call i32 @gfs2_log_unlock(%struct.gfs2_sbd* %67)
  %69 = load %struct.page*, %struct.page** %4, align 8
  %70 = call %struct.buffer_head* @page_buffers(%struct.page* %69)
  store %struct.buffer_head* %70, %struct.buffer_head** %8, align 8
  store %struct.buffer_head* %70, %struct.buffer_head** %9, align 8
  br label %71

71:                                               ; preds = %124, %63
  %72 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %7, align 8
  %73 = call i32 @gfs2_log_lock(%struct.gfs2_sbd* %72)
  %74 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %75 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %74, i32 0, i32 1
  %76 = load %struct.gfs2_bufdata*, %struct.gfs2_bufdata** %75, align 8
  store %struct.gfs2_bufdata* %76, %struct.gfs2_bufdata** %10, align 8
  %77 = load %struct.gfs2_bufdata*, %struct.gfs2_bufdata** %10, align 8
  %78 = icmp ne %struct.gfs2_bufdata* %77, null
  br i1 %78, label %79, label %111

79:                                               ; preds = %71
  %80 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %7, align 8
  %81 = load %struct.gfs2_bufdata*, %struct.gfs2_bufdata** %10, align 8
  %82 = getelementptr inbounds %struct.gfs2_bufdata, %struct.gfs2_bufdata* %81, i32 0, i32 0
  %83 = load %struct.buffer_head*, %struct.buffer_head** %82, align 8
  %84 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %85 = icmp eq %struct.buffer_head* %83, %84
  %86 = zext i1 %85 to i32
  %87 = call i32 @gfs2_assert_warn(%struct.gfs2_sbd* %80, i32 %86)
  %88 = load %struct.gfs2_bufdata*, %struct.gfs2_bufdata** %10, align 8
  %89 = getelementptr inbounds %struct.gfs2_bufdata, %struct.gfs2_bufdata* %88, i32 0, i32 1
  %90 = call i32 @list_empty(i32* %89)
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %102, label %92

92:                                               ; preds = %79
  %93 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %94 = call i64 @buffer_pinned(%struct.buffer_head* %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %100, label %96

96:                                               ; preds = %92
  %97 = load %struct.gfs2_bufdata*, %struct.gfs2_bufdata** %10, align 8
  %98 = getelementptr inbounds %struct.gfs2_bufdata, %struct.gfs2_bufdata* %97, i32 0, i32 1
  %99 = call i32 @list_del_init(i32* %98)
  br label %101

100:                                              ; preds = %92
  store %struct.gfs2_bufdata* null, %struct.gfs2_bufdata** %10, align 8
  br label %101

101:                                              ; preds = %100, %96
  br label %102

102:                                              ; preds = %101, %79
  %103 = load %struct.gfs2_bufdata*, %struct.gfs2_bufdata** %10, align 8
  %104 = icmp ne %struct.gfs2_bufdata* %103, null
  br i1 %104, label %105, label %108

105:                                              ; preds = %102
  %106 = load %struct.gfs2_bufdata*, %struct.gfs2_bufdata** %10, align 8
  %107 = getelementptr inbounds %struct.gfs2_bufdata, %struct.gfs2_bufdata* %106, i32 0, i32 0
  store %struct.buffer_head* null, %struct.buffer_head** %107, align 8
  br label %108

108:                                              ; preds = %105, %102
  %109 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %110 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %109, i32 0, i32 1
  store %struct.gfs2_bufdata* null, %struct.gfs2_bufdata** %110, align 8
  br label %111

111:                                              ; preds = %108, %71
  %112 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %7, align 8
  %113 = call i32 @gfs2_log_unlock(%struct.gfs2_sbd* %112)
  %114 = load %struct.gfs2_bufdata*, %struct.gfs2_bufdata** %10, align 8
  %115 = icmp ne %struct.gfs2_bufdata* %114, null
  br i1 %115, label %116, label %120

116:                                              ; preds = %111
  %117 = load i32, i32* @gfs2_bufdata_cachep, align 4
  %118 = load %struct.gfs2_bufdata*, %struct.gfs2_bufdata** %10, align 8
  %119 = call i32 @kmem_cache_free(i32 %117, %struct.gfs2_bufdata* %118)
  br label %120

120:                                              ; preds = %116, %111
  %121 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %122 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %121, i32 0, i32 0
  %123 = load %struct.buffer_head*, %struct.buffer_head** %122, align 8
  store %struct.buffer_head* %123, %struct.buffer_head** %8, align 8
  br label %124

124:                                              ; preds = %120
  %125 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %126 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %127 = icmp ne %struct.buffer_head* %125, %126
  br i1 %127, label %71, label %128

128:                                              ; preds = %124
  %129 = load %struct.page*, %struct.page** %4, align 8
  %130 = call i32 @try_to_free_buffers(%struct.page* %129)
  store i32 %130, i32* %3, align 4
  br label %144

131:                                              ; preds = %54
  %132 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %133 = call i64 @buffer_dirty(%struct.buffer_head* %132)
  %134 = call i32 @WARN_ON(i64 %133)
  %135 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %136 = call i64 @buffer_pinned(%struct.buffer_head* %135)
  %137 = call i32 @WARN_ON(i64 %136)
  br label %138

138:                                              ; preds = %131, %45, %33
  %139 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %7, align 8
  %140 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %139, i32 0, i32 0
  %141 = call i32 @spin_unlock(i32* %140)
  %142 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %7, align 8
  %143 = call i32 @gfs2_log_unlock(%struct.gfs2_sbd* %142)
  store i32 0, i32* %3, align 4
  br label %144

144:                                              ; preds = %138, %128, %19
  %145 = load i32, i32* %3, align 4
  ret i32 %145
}

declare dso_local %struct.gfs2_sbd* @gfs2_mapping2sbd(%struct.address_space*) #1

declare dso_local i32 @page_has_buffers(%struct.page*) #1

declare dso_local i32 @gfs2_log_lock(%struct.gfs2_sbd*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.buffer_head* @page_buffers(%struct.page*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i64 @buffer_pinned(%struct.buffer_head*) #1

declare dso_local i64 @buffer_dirty(%struct.buffer_head*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @gfs2_log_unlock(%struct.gfs2_sbd*) #1

declare dso_local i32 @gfs2_assert_warn(%struct.gfs2_sbd*, i32) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @kmem_cache_free(i32, %struct.gfs2_bufdata*) #1

declare dso_local i32 @try_to_free_buffers(%struct.page*) #1

declare dso_local i32 @WARN_ON(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
