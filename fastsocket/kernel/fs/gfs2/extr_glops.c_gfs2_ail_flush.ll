; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_glops.c_gfs2_ail_flush.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_glops.c_gfs2_ail_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_glock = type { i32, %struct.gfs2_sbd* }
%struct.gfs2_sbd = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gfs2_ail_flush(%struct.gfs2_glock* %0, i32 %1) #0 {
  %3 = alloca %struct.gfs2_glock*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.gfs2_sbd*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.gfs2_glock* %0, %struct.gfs2_glock** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.gfs2_glock*, %struct.gfs2_glock** %3, align 8
  %10 = getelementptr inbounds %struct.gfs2_glock, %struct.gfs2_glock* %9, i32 0, i32 1
  %11 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %10, align 8
  store %struct.gfs2_sbd* %11, %struct.gfs2_sbd** %5, align 8
  %12 = load %struct.gfs2_glock*, %struct.gfs2_glock** %3, align 8
  %13 = getelementptr inbounds %struct.gfs2_glock, %struct.gfs2_glock* %12, i32 0, i32 0
  %14 = call i32 @atomic_read(i32* %13)
  store i32 %14, i32* %6, align 4
  %15 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %5, align 8
  %16 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = sext i32 %18 to i64
  %20 = sub i64 %19, 4
  %21 = udiv i64 %20, 4
  %22 = trunc i64 %21 to i32
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %2
  br label %59

26:                                               ; preds = %2
  br label %27

27:                                               ; preds = %31, %26
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp ugt i32 %28, %29
  br i1 %30, label %31, label %43

31:                                               ; preds = %27
  %32 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %5, align 8
  %33 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = sext i32 %35 to i64
  %37 = sub i64 %36, 4
  %38 = udiv i64 %37, 4
  %39 = load i32, i32* %7, align 4
  %40 = zext i32 %39 to i64
  %41 = add i64 %40, %38
  %42 = trunc i64 %41 to i32
  store i32 %42, i32* %7, align 4
  br label %27

43:                                               ; preds = %27
  %44 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %5, align 8
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @gfs2_trans_begin(%struct.gfs2_sbd* %44, i32 0, i32 %45)
  store i32 %46, i32* %8, align 4
  %47 = load i32, i32* %8, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %43
  br label %59

50:                                               ; preds = %43
  %51 = load %struct.gfs2_glock*, %struct.gfs2_glock** %3, align 8
  %52 = load i32, i32* %4, align 4
  %53 = load i32, i32* %7, align 4
  %54 = call i32 @__gfs2_ail_flush(%struct.gfs2_glock* %51, i32 %52, i32 %53)
  %55 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %5, align 8
  %56 = call i32 @gfs2_trans_end(%struct.gfs2_sbd* %55)
  %57 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %5, align 8
  %58 = call i32 @gfs2_log_flush(%struct.gfs2_sbd* %57, i32* null)
  br label %59

59:                                               ; preds = %50, %49, %25
  ret void
}

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @gfs2_trans_begin(%struct.gfs2_sbd*, i32, i32) #1

declare dso_local i32 @__gfs2_ail_flush(%struct.gfs2_glock*, i32, i32) #1

declare dso_local i32 @gfs2_trans_end(%struct.gfs2_sbd*) #1

declare dso_local i32 @gfs2_log_flush(%struct.gfs2_sbd*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
