; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/hpfs/extr_buffer.c_hpfs_mark_4buffers_dirty.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/hpfs/extr_buffer.c_hpfs_mark_4buffers_dirty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.quad_buffer_head = type { %struct.TYPE_2__**, i64 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"hpfs_mark_4buffers_dirty\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hpfs_mark_4buffers_dirty(%struct.quad_buffer_head* %0) #0 {
  %2 = alloca %struct.quad_buffer_head*, align 8
  store %struct.quad_buffer_head* %0, %struct.quad_buffer_head** %2, align 8
  %3 = call i32 @PRINTK(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %4 = load %struct.quad_buffer_head*, %struct.quad_buffer_head** %2, align 8
  %5 = getelementptr inbounds %struct.quad_buffer_head, %struct.quad_buffer_head* %4, i32 0, i32 0
  %6 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %6, i64 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.quad_buffer_head*, %struct.quad_buffer_head** %2, align 8
  %12 = getelementptr inbounds %struct.quad_buffer_head, %struct.quad_buffer_head* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = call i32 @memcpy(i32 %10, i64 %13, i32 512)
  %15 = load %struct.quad_buffer_head*, %struct.quad_buffer_head** %2, align 8
  %16 = getelementptr inbounds %struct.quad_buffer_head, %struct.quad_buffer_head* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %17, i64 1
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.quad_buffer_head*, %struct.quad_buffer_head** %2, align 8
  %23 = getelementptr inbounds %struct.quad_buffer_head, %struct.quad_buffer_head* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = add nsw i64 %24, 512
  %26 = call i32 @memcpy(i32 %21, i64 %25, i32 512)
  %27 = load %struct.quad_buffer_head*, %struct.quad_buffer_head** %2, align 8
  %28 = getelementptr inbounds %struct.quad_buffer_head, %struct.quad_buffer_head* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %29, i64 2
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.quad_buffer_head*, %struct.quad_buffer_head** %2, align 8
  %35 = getelementptr inbounds %struct.quad_buffer_head, %struct.quad_buffer_head* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = add nsw i64 %36, 1024
  %38 = call i32 @memcpy(i32 %33, i64 %37, i32 512)
  %39 = load %struct.quad_buffer_head*, %struct.quad_buffer_head** %2, align 8
  %40 = getelementptr inbounds %struct.quad_buffer_head, %struct.quad_buffer_head* %39, i32 0, i32 0
  %41 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %41, i64 3
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.quad_buffer_head*, %struct.quad_buffer_head** %2, align 8
  %47 = getelementptr inbounds %struct.quad_buffer_head, %struct.quad_buffer_head* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = add nsw i64 %48, 1536
  %50 = call i32 @memcpy(i32 %45, i64 %49, i32 512)
  %51 = load %struct.quad_buffer_head*, %struct.quad_buffer_head** %2, align 8
  %52 = getelementptr inbounds %struct.quad_buffer_head, %struct.quad_buffer_head* %51, i32 0, i32 0
  %53 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %53, i64 0
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = call i32 @mark_buffer_dirty(%struct.TYPE_2__* %55)
  %57 = load %struct.quad_buffer_head*, %struct.quad_buffer_head** %2, align 8
  %58 = getelementptr inbounds %struct.quad_buffer_head, %struct.quad_buffer_head* %57, i32 0, i32 0
  %59 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %59, i64 1
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = call i32 @mark_buffer_dirty(%struct.TYPE_2__* %61)
  %63 = load %struct.quad_buffer_head*, %struct.quad_buffer_head** %2, align 8
  %64 = getelementptr inbounds %struct.quad_buffer_head, %struct.quad_buffer_head* %63, i32 0, i32 0
  %65 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %65, i64 2
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = call i32 @mark_buffer_dirty(%struct.TYPE_2__* %67)
  %69 = load %struct.quad_buffer_head*, %struct.quad_buffer_head** %2, align 8
  %70 = getelementptr inbounds %struct.quad_buffer_head, %struct.quad_buffer_head* %69, i32 0, i32 0
  %71 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %71, i64 3
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %72, align 8
  %74 = call i32 @mark_buffer_dirty(%struct.TYPE_2__* %73)
  ret void
}

declare dso_local i32 @PRINTK(i8*) #1

declare dso_local i32 @memcpy(i32, i64, i32) #1

declare dso_local i32 @mark_buffer_dirty(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
