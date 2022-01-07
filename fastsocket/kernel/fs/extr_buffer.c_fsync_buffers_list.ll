; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_buffer.c_fsync_buffers_list.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_buffer.c_fsync_buffers_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.list_head = type { i32, i32 }
%struct.buffer_head = type { %struct.address_space*, i32 }
%struct.address_space = type { %struct.list_head }

@WRITE_SYNC_PLUG = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.list_head*)* @fsync_buffers_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsync_buffers_list(i32* %0, %struct.list_head* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.list_head*, align 8
  %6 = alloca %struct.buffer_head*, align 8
  %7 = alloca %struct.list_head, align 4
  %8 = alloca %struct.address_space*, align 8
  %9 = alloca %struct.address_space*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.list_head* %1, %struct.list_head** %5, align 8
  store %struct.address_space* null, %struct.address_space** %9, align 8
  store i32 0, i32* %10, align 4
  %12 = call i32 @INIT_LIST_HEAD(%struct.list_head* %7)
  %13 = load i32*, i32** %4, align 8
  %14 = call i32 @spin_lock(i32* %13)
  br label %15

15:                                               ; preds = %72, %2
  %16 = load %struct.list_head*, %struct.list_head** %5, align 8
  %17 = call i32 @list_empty(%struct.list_head* %16)
  %18 = icmp ne i32 %17, 0
  %19 = xor i1 %18, true
  br i1 %19, label %20, label %73

20:                                               ; preds = %15
  %21 = load %struct.list_head*, %struct.list_head** %5, align 8
  %22 = getelementptr inbounds %struct.list_head, %struct.list_head* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call %struct.buffer_head* @BH_ENTRY(i32 %23)
  store %struct.buffer_head* %24, %struct.buffer_head** %6, align 8
  %25 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %26 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %25, i32 0, i32 0
  %27 = load %struct.address_space*, %struct.address_space** %26, align 8
  store %struct.address_space* %27, %struct.address_space** %8, align 8
  %28 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %29 = call i32 @__remove_assoc_queue(%struct.buffer_head* %28)
  %30 = call i32 (...) @smp_mb()
  %31 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %32 = call i64 @buffer_dirty(%struct.buffer_head* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %20
  %35 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %36 = call i64 @buffer_locked(%struct.buffer_head* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %72

38:                                               ; preds = %34, %20
  %39 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %40 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %39, i32 0, i32 1
  %41 = call i32 @list_add(i32* %40, %struct.list_head* %7)
  %42 = load %struct.address_space*, %struct.address_space** %8, align 8
  %43 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %44 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %43, i32 0, i32 0
  store %struct.address_space* %42, %struct.address_space** %44, align 8
  %45 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %46 = call i64 @buffer_dirty(%struct.buffer_head* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %71

48:                                               ; preds = %38
  %49 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %50 = call i32 @get_bh(%struct.buffer_head* %49)
  %51 = load i32*, i32** %4, align 8
  %52 = call i32 @spin_unlock(i32* %51)
  %53 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %54 = load i32, i32* @WRITE_SYNC_PLUG, align 4
  %55 = call i32 @write_dirty_buffer(%struct.buffer_head* %53, i32 %54)
  %56 = load %struct.address_space*, %struct.address_space** %9, align 8
  %57 = icmp ne %struct.address_space* %56, null
  br i1 %57, label %58, label %65

58:                                               ; preds = %48
  %59 = load %struct.address_space*, %struct.address_space** %9, align 8
  %60 = load %struct.address_space*, %struct.address_space** %8, align 8
  %61 = icmp ne %struct.address_space* %59, %60
  br i1 %61, label %62, label %65

62:                                               ; preds = %58
  %63 = load %struct.address_space*, %struct.address_space** %9, align 8
  %64 = call i32 @blk_run_address_space(%struct.address_space* %63)
  br label %65

65:                                               ; preds = %62, %58, %48
  %66 = load %struct.address_space*, %struct.address_space** %8, align 8
  store %struct.address_space* %66, %struct.address_space** %9, align 8
  %67 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %68 = call i32 @brelse(%struct.buffer_head* %67)
  %69 = load i32*, i32** %4, align 8
  %70 = call i32 @spin_lock(i32* %69)
  br label %71

71:                                               ; preds = %65, %38
  br label %72

72:                                               ; preds = %71, %34
  br label %15

73:                                               ; preds = %15
  br label %74

74:                                               ; preds = %113, %73
  %75 = call i32 @list_empty(%struct.list_head* %7)
  %76 = icmp ne i32 %75, 0
  %77 = xor i1 %76, true
  br i1 %77, label %78, label %118

78:                                               ; preds = %74
  %79 = getelementptr inbounds %struct.list_head, %struct.list_head* %7, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call %struct.buffer_head* @BH_ENTRY(i32 %80)
  store %struct.buffer_head* %81, %struct.buffer_head** %6, align 8
  %82 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %83 = call i32 @get_bh(%struct.buffer_head* %82)
  %84 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %85 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %84, i32 0, i32 0
  %86 = load %struct.address_space*, %struct.address_space** %85, align 8
  store %struct.address_space* %86, %struct.address_space** %8, align 8
  %87 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %88 = call i32 @__remove_assoc_queue(%struct.buffer_head* %87)
  %89 = call i32 (...) @smp_mb()
  %90 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %91 = call i64 @buffer_dirty(%struct.buffer_head* %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %102

93:                                               ; preds = %78
  %94 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %95 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %94, i32 0, i32 1
  %96 = load %struct.address_space*, %struct.address_space** %8, align 8
  %97 = getelementptr inbounds %struct.address_space, %struct.address_space* %96, i32 0, i32 0
  %98 = call i32 @list_add(i32* %95, %struct.list_head* %97)
  %99 = load %struct.address_space*, %struct.address_space** %8, align 8
  %100 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %101 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %100, i32 0, i32 0
  store %struct.address_space* %99, %struct.address_space** %101, align 8
  br label %102

102:                                              ; preds = %93, %78
  %103 = load i32*, i32** %4, align 8
  %104 = call i32 @spin_unlock(i32* %103)
  %105 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %106 = call i32 @wait_on_buffer(%struct.buffer_head* %105)
  %107 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %108 = call i32 @buffer_uptodate(%struct.buffer_head* %107)
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %113, label %110

110:                                              ; preds = %102
  %111 = load i32, i32* @EIO, align 4
  %112 = sub nsw i32 0, %111
  store i32 %112, i32* %10, align 4
  br label %113

113:                                              ; preds = %110, %102
  %114 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %115 = call i32 @brelse(%struct.buffer_head* %114)
  %116 = load i32*, i32** %4, align 8
  %117 = call i32 @spin_lock(i32* %116)
  br label %74

118:                                              ; preds = %74
  %119 = load i32*, i32** %4, align 8
  %120 = call i32 @spin_unlock(i32* %119)
  %121 = load i32*, i32** %4, align 8
  %122 = load %struct.list_head*, %struct.list_head** %5, align 8
  %123 = call i32 @osync_buffers_list(i32* %121, %struct.list_head* %122)
  store i32 %123, i32* %11, align 4
  %124 = load i32, i32* %10, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %128

126:                                              ; preds = %118
  %127 = load i32, i32* %10, align 4
  store i32 %127, i32* %3, align 4
  br label %130

128:                                              ; preds = %118
  %129 = load i32, i32* %11, align 4
  store i32 %129, i32* %3, align 4
  br label %130

130:                                              ; preds = %128, %126
  %131 = load i32, i32* %3, align 4
  ret i32 %131
}

declare dso_local i32 @INIT_LIST_HEAD(%struct.list_head*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_empty(%struct.list_head*) #1

declare dso_local %struct.buffer_head* @BH_ENTRY(i32) #1

declare dso_local i32 @__remove_assoc_queue(%struct.buffer_head*) #1

declare dso_local i32 @smp_mb(...) #1

declare dso_local i64 @buffer_dirty(%struct.buffer_head*) #1

declare dso_local i64 @buffer_locked(%struct.buffer_head*) #1

declare dso_local i32 @list_add(i32*, %struct.list_head*) #1

declare dso_local i32 @get_bh(%struct.buffer_head*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @write_dirty_buffer(%struct.buffer_head*, i32) #1

declare dso_local i32 @blk_run_address_space(%struct.address_space*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @wait_on_buffer(%struct.buffer_head*) #1

declare dso_local i32 @buffer_uptodate(%struct.buffer_head*) #1

declare dso_local i32 @osync_buffers_list(i32*, %struct.list_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
