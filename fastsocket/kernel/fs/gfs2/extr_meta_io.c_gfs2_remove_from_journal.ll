; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_meta_io.c_gfs2_remove_from_journal.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_meta_io.c_gfs2_remove_from_journal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buffer_head = type { %struct.gfs2_bufdata*, i32, %struct.TYPE_2__* }
%struct.gfs2_bufdata = type { i32*, i32, i64, i32 }
%struct.TYPE_2__ = type { %struct.address_space* }
%struct.address_space = type { i32 }
%struct.gfs2_trans = type { i32, i32, i32 }
%struct.gfs2_sbd = type { i32, i32, i32 }

@gfs2_bufdata_cachep = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gfs2_remove_from_journal(%struct.buffer_head* %0, %struct.gfs2_trans* %1, i32 %2) #0 {
  %4 = alloca %struct.buffer_head*, align 8
  %5 = alloca %struct.gfs2_trans*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.address_space*, align 8
  %8 = alloca %struct.gfs2_sbd*, align 8
  %9 = alloca %struct.gfs2_bufdata*, align 8
  %10 = alloca i32, align 4
  store %struct.buffer_head* %0, %struct.buffer_head** %4, align 8
  store %struct.gfs2_trans* %1, %struct.gfs2_trans** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %12 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %11, i32 0, i32 2
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load %struct.address_space*, %struct.address_space** %14, align 8
  store %struct.address_space* %15, %struct.address_space** %7, align 8
  %16 = load %struct.address_space*, %struct.address_space** %7, align 8
  %17 = call %struct.gfs2_sbd* @gfs2_mapping2sbd(%struct.address_space* %16)
  store %struct.gfs2_sbd* %17, %struct.gfs2_sbd** %8, align 8
  %18 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %19 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %18, i32 0, i32 0
  %20 = load %struct.gfs2_bufdata*, %struct.gfs2_bufdata** %19, align 8
  store %struct.gfs2_bufdata* %20, %struct.gfs2_bufdata** %9, align 8
  store i32 0, i32* %10, align 4
  %21 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %22 = call i64 @test_clear_buffer_pinned(%struct.buffer_head* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %65

24:                                               ; preds = %3
  %25 = load %struct.gfs2_bufdata*, %struct.gfs2_bufdata** %9, align 8
  %26 = call i32 @trace_gfs2_pin(%struct.gfs2_bufdata* %25, i32 0)
  %27 = load %struct.gfs2_bufdata*, %struct.gfs2_bufdata** %9, align 8
  %28 = getelementptr inbounds %struct.gfs2_bufdata, %struct.gfs2_bufdata* %27, i32 0, i32 3
  %29 = call i32 @list_del_init(i32* %28)
  %30 = load i32, i32* %6, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %46

32:                                               ; preds = %24
  %33 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %8, align 8
  %34 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %8, align 8
  %35 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @gfs2_assert_warn(%struct.gfs2_sbd* %33, i32 %36)
  %38 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %8, align 8
  %39 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = add nsw i32 %40, -1
  store i32 %41, i32* %39, align 4
  %42 = load %struct.gfs2_trans*, %struct.gfs2_trans** %5, align 8
  %43 = getelementptr inbounds %struct.gfs2_trans, %struct.gfs2_trans* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %43, align 4
  br label %60

46:                                               ; preds = %24
  %47 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %8, align 8
  %48 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %8, align 8
  %49 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @gfs2_assert_warn(%struct.gfs2_sbd* %47, i32 %50)
  %52 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %8, align 8
  %53 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = add nsw i32 %54, -1
  store i32 %55, i32* %53, align 4
  %56 = load %struct.gfs2_trans*, %struct.gfs2_trans** %5, align 8
  %57 = getelementptr inbounds %struct.gfs2_trans, %struct.gfs2_trans* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %57, align 4
  br label %60

60:                                               ; preds = %46, %32
  %61 = load %struct.gfs2_trans*, %struct.gfs2_trans** %5, align 8
  %62 = getelementptr inbounds %struct.gfs2_trans, %struct.gfs2_trans* %61, i32 0, i32 0
  store i32 1, i32* %62, align 4
  %63 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %64 = call i32 @brelse(%struct.buffer_head* %63)
  store i32 1, i32* %10, align 4
  br label %65

65:                                               ; preds = %60, %3
  %66 = load %struct.gfs2_bufdata*, %struct.gfs2_bufdata** %9, align 8
  %67 = icmp ne %struct.gfs2_bufdata* %66, null
  br i1 %67, label %68, label %105

68:                                               ; preds = %65
  %69 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %8, align 8
  %70 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %69, i32 0, i32 0
  %71 = call i32 @spin_lock(i32* %70)
  %72 = load %struct.gfs2_bufdata*, %struct.gfs2_bufdata** %9, align 8
  %73 = getelementptr inbounds %struct.gfs2_bufdata, %struct.gfs2_bufdata* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %91

76:                                               ; preds = %68
  %77 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %78 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %77, i32 0, i32 0
  store %struct.gfs2_bufdata* null, %struct.gfs2_bufdata** %78, align 8
  %79 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %80 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.gfs2_bufdata*, %struct.gfs2_bufdata** %9, align 8
  %83 = getelementptr inbounds %struct.gfs2_bufdata, %struct.gfs2_bufdata* %82, i32 0, i32 1
  store i32 %81, i32* %83, align 8
  %84 = load %struct.gfs2_bufdata*, %struct.gfs2_bufdata** %9, align 8
  %85 = call i32 @gfs2_remove_from_ail(%struct.gfs2_bufdata* %84)
  %86 = load %struct.gfs2_bufdata*, %struct.gfs2_bufdata** %9, align 8
  %87 = getelementptr inbounds %struct.gfs2_bufdata, %struct.gfs2_bufdata* %86, i32 0, i32 0
  store i32* null, i32** %87, align 8
  %88 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %8, align 8
  %89 = load %struct.gfs2_bufdata*, %struct.gfs2_bufdata** %9, align 8
  %90 = call i32 @gfs2_trans_add_revoke(%struct.gfs2_sbd* %88, %struct.gfs2_bufdata* %89)
  br label %101

91:                                               ; preds = %68
  %92 = load i32, i32* %10, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %100

94:                                               ; preds = %91
  %95 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %96 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %95, i32 0, i32 0
  store %struct.gfs2_bufdata* null, %struct.gfs2_bufdata** %96, align 8
  %97 = load i32, i32* @gfs2_bufdata_cachep, align 4
  %98 = load %struct.gfs2_bufdata*, %struct.gfs2_bufdata** %9, align 8
  %99 = call i32 @kmem_cache_free(i32 %97, %struct.gfs2_bufdata* %98)
  br label %100

100:                                              ; preds = %94, %91
  br label %101

101:                                              ; preds = %100, %76
  %102 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %8, align 8
  %103 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %102, i32 0, i32 0
  %104 = call i32 @spin_unlock(i32* %103)
  br label %105

105:                                              ; preds = %101, %65
  %106 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %107 = call i32 @clear_buffer_dirty(%struct.buffer_head* %106)
  %108 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %109 = call i32 @clear_buffer_uptodate(%struct.buffer_head* %108)
  ret void
}

declare dso_local %struct.gfs2_sbd* @gfs2_mapping2sbd(%struct.address_space*) #1

declare dso_local i64 @test_clear_buffer_pinned(%struct.buffer_head*) #1

declare dso_local i32 @trace_gfs2_pin(%struct.gfs2_bufdata*, i32) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @gfs2_assert_warn(%struct.gfs2_sbd*, i32) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @gfs2_remove_from_ail(%struct.gfs2_bufdata*) #1

declare dso_local i32 @gfs2_trans_add_revoke(%struct.gfs2_sbd*, %struct.gfs2_bufdata*) #1

declare dso_local i32 @kmem_cache_free(i32, %struct.gfs2_bufdata*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @clear_buffer_dirty(%struct.buffer_head*) #1

declare dso_local i32 @clear_buffer_uptodate(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
