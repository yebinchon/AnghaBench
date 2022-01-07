; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_meta_io.c_gfs2_meta_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_meta_io.c_gfs2_meta_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.gfs2_trans* }
%struct.gfs2_trans = type { i64 }
%struct.gfs2_glock = type { %struct.gfs2_sbd* }
%struct.gfs2_sbd = type { i32 }
%struct.buffer_head = type { i32 }

@SDF_SHUTDOWN = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@CREATE = common dso_local global i32 0, align 4
@end_buffer_read_sync = common dso_local global i32 0, align 4
@READ_SYNC = common dso_local global i32 0, align 4
@BIO_RW_META = common dso_local global i32 0, align 4
@DIO_WAIT = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gfs2_meta_read(%struct.gfs2_glock* %0, i32 %1, i32 %2, %struct.buffer_head** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.gfs2_glock*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.buffer_head**, align 8
  %10 = alloca %struct.gfs2_sbd*, align 8
  %11 = alloca %struct.buffer_head*, align 8
  %12 = alloca %struct.gfs2_trans*, align 8
  store %struct.gfs2_glock* %0, %struct.gfs2_glock** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.buffer_head** %3, %struct.buffer_head*** %9, align 8
  %13 = load %struct.gfs2_glock*, %struct.gfs2_glock** %6, align 8
  %14 = getelementptr inbounds %struct.gfs2_glock, %struct.gfs2_glock* %13, i32 0, i32 0
  %15 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %14, align 8
  store %struct.gfs2_sbd* %15, %struct.gfs2_sbd** %10, align 8
  %16 = load i32, i32* @SDF_SHUTDOWN, align 4
  %17 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %10, align 8
  %18 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %17, i32 0, i32 0
  %19 = call i32 @test_bit(i32 %16, i32* %18)
  %20 = call i64 @unlikely(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %4
  %23 = load i32, i32* @EIO, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %5, align 4
  br label %87

25:                                               ; preds = %4
  %26 = load %struct.gfs2_glock*, %struct.gfs2_glock** %6, align 8
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* @CREATE, align 4
  %29 = call %struct.buffer_head* @gfs2_getbuf(%struct.gfs2_glock* %26, i32 %27, i32 %28)
  store %struct.buffer_head* %29, %struct.buffer_head** %11, align 8
  %30 = load %struct.buffer_head**, %struct.buffer_head*** %9, align 8
  store %struct.buffer_head* %29, %struct.buffer_head** %30, align 8
  %31 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %32 = call i32 @lock_buffer(%struct.buffer_head* %31)
  %33 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %34 = call i64 @buffer_uptodate(%struct.buffer_head* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %25
  %37 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %38 = call i32 @unlock_buffer(%struct.buffer_head* %37)
  store i32 0, i32* %5, align 4
  br label %87

39:                                               ; preds = %25
  %40 = load i32, i32* @end_buffer_read_sync, align 4
  %41 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %42 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 4
  %43 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %44 = call i32 @get_bh(%struct.buffer_head* %43)
  %45 = load i32, i32* @READ_SYNC, align 4
  %46 = load i32, i32* @BIO_RW_META, align 4
  %47 = shl i32 1, %46
  %48 = or i32 %45, %47
  %49 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %50 = call i32 @submit_bh(i32 %48, %struct.buffer_head* %49)
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* @DIO_WAIT, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %39
  store i32 0, i32* %5, align 4
  br label %87

56:                                               ; preds = %39
  %57 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %58 = call i32 @wait_on_buffer(%struct.buffer_head* %57)
  %59 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %60 = call i64 @buffer_uptodate(%struct.buffer_head* %59)
  %61 = icmp ne i64 %60, 0
  %62 = xor i1 %61, true
  %63 = zext i1 %62 to i32
  %64 = call i64 @unlikely(i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %86

66:                                               ; preds = %56
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load %struct.gfs2_trans*, %struct.gfs2_trans** %68, align 8
  store %struct.gfs2_trans* %69, %struct.gfs2_trans** %12, align 8
  %70 = load %struct.gfs2_trans*, %struct.gfs2_trans** %12, align 8
  %71 = icmp ne %struct.gfs2_trans* %70, null
  br i1 %71, label %72, label %81

72:                                               ; preds = %66
  %73 = load %struct.gfs2_trans*, %struct.gfs2_trans** %12, align 8
  %74 = getelementptr inbounds %struct.gfs2_trans, %struct.gfs2_trans* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %72
  %78 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %10, align 8
  %79 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %80 = call i32 @gfs2_io_error_bh(%struct.gfs2_sbd* %78, %struct.buffer_head* %79)
  br label %81

81:                                               ; preds = %77, %72, %66
  %82 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %83 = call i32 @brelse(%struct.buffer_head* %82)
  %84 = load i32, i32* @EIO, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %5, align 4
  br label %87

86:                                               ; preds = %56
  store i32 0, i32* %5, align 4
  br label %87

87:                                               ; preds = %86, %81, %55, %36, %22
  %88 = load i32, i32* %5, align 4
  ret i32 %88
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local %struct.buffer_head* @gfs2_getbuf(%struct.gfs2_glock*, i32, i32) #1

declare dso_local i32 @lock_buffer(%struct.buffer_head*) #1

declare dso_local i64 @buffer_uptodate(%struct.buffer_head*) #1

declare dso_local i32 @unlock_buffer(%struct.buffer_head*) #1

declare dso_local i32 @get_bh(%struct.buffer_head*) #1

declare dso_local i32 @submit_bh(i32, %struct.buffer_head*) #1

declare dso_local i32 @wait_on_buffer(%struct.buffer_head*) #1

declare dso_local i32 @gfs2_io_error_bh(%struct.gfs2_sbd*, %struct.buffer_head*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
