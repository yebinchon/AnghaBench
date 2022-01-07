; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/cluster/extr_heartbeat.c_o2hb_read_slots.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/cluster/extr_heartbeat.c_o2hb_read_slots.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.o2hb_region = type { i32 }
%struct.o2hb_bio_wait_ctxt = type { i32, i32 }
%struct.bio = type { i32 }

@READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.o2hb_region*, i32)* @o2hb_read_slots to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @o2hb_read_slots(%struct.o2hb_region* %0, i32 %1) #0 {
  %3 = alloca %struct.o2hb_region*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.o2hb_bio_wait_ctxt, align 4
  %8 = alloca %struct.bio*, align 8
  store %struct.o2hb_region* %0, %struct.o2hb_region** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %9 = call i32 @o2hb_bio_wait_init(%struct.o2hb_bio_wait_ctxt* %7)
  br label %10

10:                                               ; preds = %26, %2
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp ult i32 %11, %12
  br i1 %13, label %14, label %32

14:                                               ; preds = %10
  %15 = load %struct.o2hb_region*, %struct.o2hb_region** %3, align 8
  %16 = load i32, i32* %4, align 4
  %17 = call %struct.bio* @o2hb_setup_one_bio(%struct.o2hb_region* %15, %struct.o2hb_bio_wait_ctxt* %7, i32* %5, i32 %16)
  store %struct.bio* %17, %struct.bio** %8, align 8
  %18 = load %struct.bio*, %struct.bio** %8, align 8
  %19 = call i64 @IS_ERR(%struct.bio* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %14
  %22 = load %struct.bio*, %struct.bio** %8, align 8
  %23 = call i32 @PTR_ERR(%struct.bio* %22)
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @mlog_errno(i32 %24)
  br label %33

26:                                               ; preds = %14
  %27 = getelementptr inbounds %struct.o2hb_bio_wait_ctxt, %struct.o2hb_bio_wait_ctxt* %7, i32 0, i32 1
  %28 = call i32 @atomic_inc(i32* %27)
  %29 = load i32, i32* @READ, align 4
  %30 = load %struct.bio*, %struct.bio** %8, align 8
  %31 = call i32 @submit_bio(i32 %29, %struct.bio* %30)
  br label %10

32:                                               ; preds = %10
  store i32 0, i32* %6, align 4
  br label %33

33:                                               ; preds = %32, %21
  %34 = load %struct.o2hb_region*, %struct.o2hb_region** %3, align 8
  %35 = call i32 @o2hb_wait_on_io(%struct.o2hb_region* %34, %struct.o2hb_bio_wait_ctxt* %7)
  %36 = getelementptr inbounds %struct.o2hb_bio_wait_ctxt, %struct.o2hb_bio_wait_ctxt* %7, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %33
  %40 = load i32, i32* %6, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %39
  %43 = getelementptr inbounds %struct.o2hb_bio_wait_ctxt, %struct.o2hb_bio_wait_ctxt* %7, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %6, align 4
  br label %45

45:                                               ; preds = %42, %39, %33
  %46 = load i32, i32* %6, align 4
  ret i32 %46
}

declare dso_local i32 @o2hb_bio_wait_init(%struct.o2hb_bio_wait_ctxt*) #1

declare dso_local %struct.bio* @o2hb_setup_one_bio(%struct.o2hb_region*, %struct.o2hb_bio_wait_ctxt*, i32*, i32) #1

declare dso_local i64 @IS_ERR(%struct.bio*) #1

declare dso_local i32 @PTR_ERR(%struct.bio*) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @submit_bio(i32, %struct.bio*) #1

declare dso_local i32 @o2hb_wait_on_io(%struct.o2hb_region*, %struct.o2hb_bio_wait_ctxt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
