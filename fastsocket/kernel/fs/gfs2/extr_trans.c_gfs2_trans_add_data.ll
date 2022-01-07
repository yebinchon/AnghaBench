; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_trans.c_gfs2_trans_add_data.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_trans.c_gfs2_trans_add_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.gfs2_trans* }
%struct.gfs2_trans = type { i32, i32 }
%struct.gfs2_glock = type { i32, %struct.gfs2_sbd* }
%struct.gfs2_sbd = type { i32, i32 }
%struct.buffer_head = type { %struct.gfs2_bufdata*, %struct.TYPE_3__* }
%struct.gfs2_bufdata = type { i32, i32, %struct.gfs2_glock* }
%struct.TYPE_3__ = type { %struct.address_space* }
%struct.address_space = type { i32 }
%struct.gfs2_inode = type { i32 }

@current = common dso_local global %struct.TYPE_4__* null, align 8
@gfs2_databuf_lops = common dso_local global i32 0, align 4
@GLF_LFLUSH = common dso_local global i32 0, align 4
@GLF_DIRTY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gfs2_trans_add_data(%struct.gfs2_glock* %0, %struct.buffer_head* %1) #0 {
  %3 = alloca %struct.gfs2_glock*, align 8
  %4 = alloca %struct.buffer_head*, align 8
  %5 = alloca %struct.gfs2_trans*, align 8
  %6 = alloca %struct.gfs2_sbd*, align 8
  %7 = alloca %struct.address_space*, align 8
  %8 = alloca %struct.gfs2_inode*, align 8
  %9 = alloca %struct.gfs2_bufdata*, align 8
  store %struct.gfs2_glock* %0, %struct.gfs2_glock** %3, align 8
  store %struct.buffer_head* %1, %struct.buffer_head** %4, align 8
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load %struct.gfs2_trans*, %struct.gfs2_trans** %11, align 8
  store %struct.gfs2_trans* %12, %struct.gfs2_trans** %5, align 8
  %13 = load %struct.gfs2_glock*, %struct.gfs2_glock** %3, align 8
  %14 = getelementptr inbounds %struct.gfs2_glock, %struct.gfs2_glock* %13, i32 0, i32 1
  %15 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %14, align 8
  store %struct.gfs2_sbd* %15, %struct.gfs2_sbd** %6, align 8
  %16 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %17 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %16, i32 0, i32 1
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load %struct.address_space*, %struct.address_space** %19, align 8
  store %struct.address_space* %20, %struct.address_space** %7, align 8
  %21 = load %struct.address_space*, %struct.address_space** %7, align 8
  %22 = getelementptr inbounds %struct.address_space, %struct.address_space* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call %struct.gfs2_inode* @GFS2_I(i32 %23)
  store %struct.gfs2_inode* %24, %struct.gfs2_inode** %8, align 8
  %25 = load %struct.gfs2_inode*, %struct.gfs2_inode** %8, align 8
  %26 = call i32 @gfs2_is_jdata(%struct.gfs2_inode* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %2
  %29 = load %struct.gfs2_inode*, %struct.gfs2_inode** %8, align 8
  %30 = call i32 @gfs2_ordered_add_inode(%struct.gfs2_inode* %29)
  br label %110

31:                                               ; preds = %2
  %32 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %33 = call i32 @lock_buffer(%struct.buffer_head* %32)
  %34 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %6, align 8
  %35 = call i32 @gfs2_log_lock(%struct.gfs2_sbd* %34)
  %36 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %37 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %36, i32 0, i32 0
  %38 = load %struct.gfs2_bufdata*, %struct.gfs2_bufdata** %37, align 8
  store %struct.gfs2_bufdata* %38, %struct.gfs2_bufdata** %9, align 8
  %39 = load %struct.gfs2_bufdata*, %struct.gfs2_bufdata** %9, align 8
  %40 = icmp eq %struct.gfs2_bufdata* %39, null
  br i1 %40, label %41, label %59

41:                                               ; preds = %31
  %42 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %6, align 8
  %43 = call i32 @gfs2_log_unlock(%struct.gfs2_sbd* %42)
  %44 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %45 = call i32 @unlock_buffer(%struct.buffer_head* %44)
  %46 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %47 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %46, i32 0, i32 0
  %48 = load %struct.gfs2_bufdata*, %struct.gfs2_bufdata** %47, align 8
  %49 = icmp eq %struct.gfs2_bufdata* %48, null
  br i1 %49, label %50, label %54

50:                                               ; preds = %41
  %51 = load %struct.gfs2_glock*, %struct.gfs2_glock** %3, align 8
  %52 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %53 = call %struct.gfs2_bufdata* @gfs2_alloc_bufdata(%struct.gfs2_glock* %51, %struct.buffer_head* %52, i32* @gfs2_databuf_lops)
  store %struct.gfs2_bufdata* %53, %struct.gfs2_bufdata** %9, align 8
  br label %54

54:                                               ; preds = %50, %41
  %55 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %56 = call i32 @lock_buffer(%struct.buffer_head* %55)
  %57 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %6, align 8
  %58 = call i32 @gfs2_log_lock(%struct.gfs2_sbd* %57)
  br label %59

59:                                               ; preds = %54, %31
  %60 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %6, align 8
  %61 = load %struct.gfs2_bufdata*, %struct.gfs2_bufdata** %9, align 8
  %62 = getelementptr inbounds %struct.gfs2_bufdata, %struct.gfs2_bufdata* %61, i32 0, i32 2
  %63 = load %struct.gfs2_glock*, %struct.gfs2_glock** %62, align 8
  %64 = load %struct.gfs2_glock*, %struct.gfs2_glock** %3, align 8
  %65 = icmp eq %struct.gfs2_glock* %63, %64
  %66 = zext i1 %65 to i32
  %67 = call i32 @gfs2_assert(%struct.gfs2_sbd* %60, i32 %66)
  %68 = load %struct.gfs2_trans*, %struct.gfs2_trans** %5, align 8
  %69 = getelementptr inbounds %struct.gfs2_trans, %struct.gfs2_trans* %68, i32 0, i32 0
  store i32 1, i32* %69, align 4
  %70 = load %struct.gfs2_bufdata*, %struct.gfs2_bufdata** %9, align 8
  %71 = getelementptr inbounds %struct.gfs2_bufdata, %struct.gfs2_bufdata* %70, i32 0, i32 0
  %72 = call i64 @list_empty(i32* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %105

74:                                               ; preds = %59
  %75 = load i32, i32* @GLF_LFLUSH, align 4
  %76 = load %struct.gfs2_bufdata*, %struct.gfs2_bufdata** %9, align 8
  %77 = getelementptr inbounds %struct.gfs2_bufdata, %struct.gfs2_bufdata* %76, i32 0, i32 2
  %78 = load %struct.gfs2_glock*, %struct.gfs2_glock** %77, align 8
  %79 = getelementptr inbounds %struct.gfs2_glock, %struct.gfs2_glock* %78, i32 0, i32 0
  %80 = call i32 @set_bit(i32 %75, i32* %79)
  %81 = load i32, i32* @GLF_DIRTY, align 4
  %82 = load %struct.gfs2_bufdata*, %struct.gfs2_bufdata** %9, align 8
  %83 = getelementptr inbounds %struct.gfs2_bufdata, %struct.gfs2_bufdata* %82, i32 0, i32 2
  %84 = load %struct.gfs2_glock*, %struct.gfs2_glock** %83, align 8
  %85 = getelementptr inbounds %struct.gfs2_glock, %struct.gfs2_glock* %84, i32 0, i32 0
  %86 = call i32 @set_bit(i32 %81, i32* %85)
  %87 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %6, align 8
  %88 = load %struct.gfs2_bufdata*, %struct.gfs2_bufdata** %9, align 8
  %89 = getelementptr inbounds %struct.gfs2_bufdata, %struct.gfs2_bufdata* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @gfs2_pin(%struct.gfs2_sbd* %87, i32 %90)
  %92 = load %struct.gfs2_trans*, %struct.gfs2_trans** %5, align 8
  %93 = getelementptr inbounds %struct.gfs2_trans, %struct.gfs2_trans* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %93, align 4
  %96 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %6, align 8
  %97 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %97, align 4
  %100 = load %struct.gfs2_bufdata*, %struct.gfs2_bufdata** %9, align 8
  %101 = getelementptr inbounds %struct.gfs2_bufdata, %struct.gfs2_bufdata* %100, i32 0, i32 0
  %102 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %6, align 8
  %103 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %102, i32 0, i32 0
  %104 = call i32 @list_add_tail(i32* %101, i32* %103)
  br label %105

105:                                              ; preds = %74, %59
  %106 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %6, align 8
  %107 = call i32 @gfs2_log_unlock(%struct.gfs2_sbd* %106)
  %108 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %109 = call i32 @unlock_buffer(%struct.buffer_head* %108)
  br label %110

110:                                              ; preds = %105, %28
  ret void
}

declare dso_local %struct.gfs2_inode* @GFS2_I(i32) #1

declare dso_local i32 @gfs2_is_jdata(%struct.gfs2_inode*) #1

declare dso_local i32 @gfs2_ordered_add_inode(%struct.gfs2_inode*) #1

declare dso_local i32 @lock_buffer(%struct.buffer_head*) #1

declare dso_local i32 @gfs2_log_lock(%struct.gfs2_sbd*) #1

declare dso_local i32 @gfs2_log_unlock(%struct.gfs2_sbd*) #1

declare dso_local i32 @unlock_buffer(%struct.buffer_head*) #1

declare dso_local %struct.gfs2_bufdata* @gfs2_alloc_bufdata(%struct.gfs2_glock*, %struct.buffer_head*, i32*) #1

declare dso_local i32 @gfs2_assert(%struct.gfs2_sbd*, i32) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @gfs2_pin(%struct.gfs2_sbd*, i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
