; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_meta_io.c_gfs2_meta_ra.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_meta_io.c_gfs2_meta_ra.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buffer_head = type { i32 }
%struct.gfs2_glock = type { %struct.gfs2_sbd* }
%struct.gfs2_sbd = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@gt_max_readahead = common dso_local global i32 0, align 4
@CREATE = common dso_local global i32 0, align 4
@READ_SYNC = common dso_local global i32 0, align 4
@BIO_RW_META = common dso_local global i32 0, align 4
@READA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.buffer_head* @gfs2_meta_ra(%struct.gfs2_glock* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.gfs2_glock*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.gfs2_sbd*, align 8
  %8 = alloca %struct.buffer_head*, align 8
  %9 = alloca %struct.buffer_head*, align 8
  %10 = alloca i32, align 4
  store %struct.gfs2_glock* %0, %struct.gfs2_glock** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load %struct.gfs2_glock*, %struct.gfs2_glock** %4, align 8
  %12 = getelementptr inbounds %struct.gfs2_glock, %struct.gfs2_glock* %11, i32 0, i32 0
  %13 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %12, align 8
  store %struct.gfs2_sbd* %13, %struct.gfs2_sbd** %7, align 8
  %14 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %7, align 8
  %15 = load i32, i32* @gt_max_readahead, align 4
  %16 = call i32 @gfs2_tune_get(%struct.gfs2_sbd* %14, i32 %15)
  %17 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %7, align 8
  %18 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = ashr i32 %16, %20
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp ne i32 %22, 0
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i32
  %26 = call i32 @BUG_ON(i32 %25)
  %27 = load i32, i32* %10, align 4
  %28 = icmp slt i32 %27, 1
  br i1 %28, label %29, label %30

29:                                               ; preds = %3
  store i32 1, i32* %10, align 4
  br label %30

30:                                               ; preds = %29, %3
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* %10, align 4
  %33 = icmp sgt i32 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %30
  %35 = load i32, i32* %10, align 4
  store i32 %35, i32* %6, align 4
  br label %36

36:                                               ; preds = %34, %30
  %37 = load %struct.gfs2_glock*, %struct.gfs2_glock** %4, align 8
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* @CREATE, align 4
  %40 = call %struct.buffer_head* @gfs2_getbuf(%struct.gfs2_glock* %37, i32 %38, i32 %39)
  store %struct.buffer_head* %40, %struct.buffer_head** %8, align 8
  %41 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %42 = call i64 @buffer_uptodate(%struct.buffer_head* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %36
  br label %97

45:                                               ; preds = %36
  %46 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %47 = call i32 @buffer_locked(%struct.buffer_head* %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %55, label %49

49:                                               ; preds = %45
  %50 = load i32, i32* @READ_SYNC, align 4
  %51 = load i32, i32* @BIO_RW_META, align 4
  %52 = shl i32 1, %51
  %53 = or i32 %50, %52
  %54 = call i32 @ll_rw_block(i32 %53, i32 1, %struct.buffer_head** %8)
  br label %55

55:                                               ; preds = %49, %45
  %56 = load i32, i32* %5, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %5, align 4
  %58 = load i32, i32* %6, align 4
  %59 = add nsw i32 %58, -1
  store i32 %59, i32* %6, align 4
  br label %60

60:                                               ; preds = %93, %55
  %61 = load i32, i32* %6, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %94

63:                                               ; preds = %60
  %64 = load %struct.gfs2_glock*, %struct.gfs2_glock** %4, align 8
  %65 = load i32, i32* %5, align 4
  %66 = load i32, i32* @CREATE, align 4
  %67 = call %struct.buffer_head* @gfs2_getbuf(%struct.gfs2_glock* %64, i32 %65, i32 %66)
  store %struct.buffer_head* %67, %struct.buffer_head** %9, align 8
  %68 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %69 = call i64 @buffer_uptodate(%struct.buffer_head* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %78, label %71

71:                                               ; preds = %63
  %72 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %73 = call i32 @buffer_locked(%struct.buffer_head* %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %78, label %75

75:                                               ; preds = %71
  %76 = load i32, i32* @READA, align 4
  %77 = call i32 @ll_rw_block(i32 %76, i32 1, %struct.buffer_head** %9)
  br label %78

78:                                               ; preds = %75, %71, %63
  %79 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %80 = call i32 @brelse(%struct.buffer_head* %79)
  %81 = load i32, i32* %5, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %5, align 4
  %83 = load i32, i32* %6, align 4
  %84 = add nsw i32 %83, -1
  store i32 %84, i32* %6, align 4
  %85 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %86 = call i32 @buffer_locked(%struct.buffer_head* %85)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %93, label %88

88:                                               ; preds = %78
  %89 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %90 = call i64 @buffer_uptodate(%struct.buffer_head* %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %88
  br label %97

93:                                               ; preds = %88, %78
  br label %60

94:                                               ; preds = %60
  %95 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %96 = call i32 @wait_on_buffer(%struct.buffer_head* %95)
  br label %97

97:                                               ; preds = %94, %92, %44
  %98 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  ret %struct.buffer_head* %98
}

declare dso_local i32 @gfs2_tune_get(%struct.gfs2_sbd*, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local %struct.buffer_head* @gfs2_getbuf(%struct.gfs2_glock*, i32, i32) #1

declare dso_local i64 @buffer_uptodate(%struct.buffer_head*) #1

declare dso_local i32 @buffer_locked(%struct.buffer_head*) #1

declare dso_local i32 @ll_rw_block(i32, i32, %struct.buffer_head**) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @wait_on_buffer(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
