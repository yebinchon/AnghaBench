; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_glops.c_gfs2_ail_error.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_glops.c_gfs2_ail_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_glock = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.buffer_head = type { %struct.TYPE_4__*, i32, i64 }
%struct.TYPE_4__ = type { i32, i32 }

@.str = private unnamed_addr constant [71 x i8] c"AIL buffer %p: blocknr %llu state 0x%08lx mapping %p page state 0x%lx\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"AIL glock %u:%llu mapping %p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gfs2_glock*, %struct.buffer_head*)* @gfs2_ail_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gfs2_ail_error(%struct.gfs2_glock* %0, %struct.buffer_head* %1) #0 {
  %3 = alloca %struct.gfs2_glock*, align 8
  %4 = alloca %struct.buffer_head*, align 8
  store %struct.gfs2_glock* %0, %struct.gfs2_glock** %3, align 8
  store %struct.buffer_head* %1, %struct.buffer_head** %4, align 8
  %5 = load %struct.gfs2_glock*, %struct.gfs2_glock** %3, align 8
  %6 = getelementptr inbounds %struct.gfs2_glock, %struct.gfs2_glock* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %9 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %10 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %9, i32 0, i32 2
  %11 = load i64, i64* %10, align 8
  %12 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %13 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %16 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %15, i32 0, i32 0
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %21 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %20, i32 0, i32 0
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 (i32, i8*, %struct.buffer_head*, i64, i32, ...) @fs_err(i32 %7, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str, i64 0, i64 0), %struct.buffer_head* %8, i64 %11, i32 %14, i32 %19, i32 %24)
  %26 = load %struct.gfs2_glock*, %struct.gfs2_glock** %3, align 8
  %27 = getelementptr inbounds %struct.gfs2_glock, %struct.gfs2_glock* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.gfs2_glock*, %struct.gfs2_glock** %3, align 8
  %30 = getelementptr inbounds %struct.gfs2_glock, %struct.gfs2_glock* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = sext i32 %32 to i64
  %34 = inttoptr i64 %33 to %struct.buffer_head*
  %35 = load %struct.gfs2_glock*, %struct.gfs2_glock** %3, align 8
  %36 = getelementptr inbounds %struct.gfs2_glock, %struct.gfs2_glock* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = sext i32 %38 to i64
  %40 = load %struct.gfs2_glock*, %struct.gfs2_glock** %3, align 8
  %41 = call i32 @gfs2_glock2aspace(%struct.gfs2_glock* %40)
  %42 = call i32 (i32, i8*, %struct.buffer_head*, i64, i32, ...) @fs_err(i32 %28, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), %struct.buffer_head* %34, i64 %39, i32 %41)
  %43 = call i32 (...) @BUG()
  ret void
}

declare dso_local i32 @fs_err(i32, i8*, %struct.buffer_head*, i64, i32, ...) #1

declare dso_local i32 @gfs2_glock2aspace(%struct.gfs2_glock*) #1

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
