; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_bmap.c_gfs2_metapath_ra.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_bmap.c_gfs2_metapath_ra.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_glock = type { i32 }
%struct.buffer_head = type { i32, i64, i64 }

@CREATE = common dso_local global i32 0, align 4
@end_buffer_read_sync = common dso_local global i32 0, align 4
@READA = common dso_local global i32 0, align 4
@REQ_META = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gfs2_glock*, %struct.buffer_head*, i32*)* @gfs2_metapath_ra to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gfs2_metapath_ra(%struct.gfs2_glock* %0, %struct.buffer_head* %1, i32* %2) #0 {
  %4 = alloca %struct.gfs2_glock*, align 8
  %5 = alloca %struct.buffer_head*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.buffer_head*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  store %struct.gfs2_glock* %0, %struct.gfs2_glock** %4, align 8
  store %struct.buffer_head* %1, %struct.buffer_head** %5, align 8
  store i32* %2, i32** %6, align 8
  %10 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %11 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %10, i32 0, i32 2
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %14 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = add nsw i64 %12, %15
  %17 = inttoptr i64 %16 to i32*
  store i32* %17, i32** %8, align 8
  %18 = load i32*, i32** %6, align 8
  store i32* %18, i32** %9, align 8
  br label %19

19:                                               ; preds = %57, %3
  %20 = load i32*, i32** %9, align 8
  %21 = load i32*, i32** %8, align 8
  %22 = icmp ult i32* %20, %21
  br i1 %22, label %23, label %60

23:                                               ; preds = %19
  %24 = load i32*, i32** %9, align 8
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %23
  br label %57

28:                                               ; preds = %23
  %29 = load %struct.gfs2_glock*, %struct.gfs2_glock** %4, align 8
  %30 = load i32*, i32** %9, align 8
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @be64_to_cpu(i32 %31)
  %33 = load i32, i32* @CREATE, align 4
  %34 = call %struct.buffer_head* @gfs2_getbuf(%struct.gfs2_glock* %29, i32 %32, i32 %33)
  store %struct.buffer_head* %34, %struct.buffer_head** %7, align 8
  %35 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %36 = call i64 @trylock_buffer(%struct.buffer_head* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %54

38:                                               ; preds = %28
  %39 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %40 = call i32 @buffer_uptodate(%struct.buffer_head* %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %51, label %42

42:                                               ; preds = %38
  %43 = load i32, i32* @end_buffer_read_sync, align 4
  %44 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %45 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 8
  %46 = load i32, i32* @READA, align 4
  %47 = load i32, i32* @REQ_META, align 4
  %48 = or i32 %46, %47
  %49 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %50 = call i32 @submit_bh(i32 %48, %struct.buffer_head* %49)
  br label %57

51:                                               ; preds = %38
  %52 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %53 = call i32 @unlock_buffer(%struct.buffer_head* %52)
  br label %54

54:                                               ; preds = %51, %28
  %55 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %56 = call i32 @brelse(%struct.buffer_head* %55)
  br label %57

57:                                               ; preds = %54, %42, %27
  %58 = load i32*, i32** %9, align 8
  %59 = getelementptr inbounds i32, i32* %58, i32 1
  store i32* %59, i32** %9, align 8
  br label %19

60:                                               ; preds = %19
  ret void
}

declare dso_local %struct.buffer_head* @gfs2_getbuf(%struct.gfs2_glock*, i32, i32) #1

declare dso_local i32 @be64_to_cpu(i32) #1

declare dso_local i64 @trylock_buffer(%struct.buffer_head*) #1

declare dso_local i32 @buffer_uptodate(%struct.buffer_head*) #1

declare dso_local i32 @submit_bh(i32, %struct.buffer_head*) #1

declare dso_local i32 @unlock_buffer(%struct.buffer_head*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
