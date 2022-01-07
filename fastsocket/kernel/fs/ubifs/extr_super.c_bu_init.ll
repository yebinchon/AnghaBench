; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_super.c_bu_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_super.c_bu_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i32, i64, %struct.TYPE_3__, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@__GFP_NOWARN = common dso_local global i32 0, align 4
@UBIFS_KMALLOC_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [63 x i8] c"Cannot allocate %d bytes of memory for bulk-read, disabling it\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ubifs_info*)* @bu_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bu_init(%struct.ubifs_info* %0) #0 {
  %2 = alloca %struct.ubifs_info*, align 8
  store %struct.ubifs_info* %0, %struct.ubifs_info** %2, align 8
  %3 = load %struct.ubifs_info*, %struct.ubifs_info** %2, align 8
  %4 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 8
  %6 = icmp eq i32 %5, 1
  %7 = zext i1 %6 to i32
  %8 = call i32 @ubifs_assert(i32 %7)
  %9 = load %struct.ubifs_info*, %struct.ubifs_info** %2, align 8
  %10 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %9, i32 0, i32 3
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  br label %52

15:                                               ; preds = %1
  br label %16

16:                                               ; preds = %38, %15
  %17 = load %struct.ubifs_info*, %struct.ubifs_info** %2, align 8
  %18 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = load i32, i32* @__GFP_NOWARN, align 4
  %22 = or i32 %20, %21
  %23 = call i64 @kmalloc(i64 %19, i32 %22)
  %24 = load %struct.ubifs_info*, %struct.ubifs_info** %2, align 8
  %25 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %24, i32 0, i32 3
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  store i64 %23, i64* %26, align 8
  %27 = load %struct.ubifs_info*, %struct.ubifs_info** %2, align 8
  %28 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %27, i32 0, i32 3
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %52, label %32

32:                                               ; preds = %16
  %33 = load %struct.ubifs_info*, %struct.ubifs_info** %2, align 8
  %34 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @UBIFS_KMALLOC_OK, align 8
  %37 = icmp sgt i64 %35, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %32
  %39 = load i64, i64* @UBIFS_KMALLOC_OK, align 8
  %40 = load %struct.ubifs_info*, %struct.ubifs_info** %2, align 8
  %41 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %40, i32 0, i32 1
  store i64 %39, i64* %41, align 8
  br label %16

42:                                               ; preds = %32
  %43 = load %struct.ubifs_info*, %struct.ubifs_info** %2, align 8
  %44 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = call i32 @ubifs_warn(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0), i64 %45)
  %47 = load %struct.ubifs_info*, %struct.ubifs_info** %2, align 8
  %48 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  store i32 1, i32* %49, align 8
  %50 = load %struct.ubifs_info*, %struct.ubifs_info** %2, align 8
  %51 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %50, i32 0, i32 0
  store i32 0, i32* %51, align 8
  br label %52

52:                                               ; preds = %14, %42, %16
  ret void
}

declare dso_local i32 @ubifs_assert(i32) #1

declare dso_local i64 @kmalloc(i64, i32) #1

declare dso_local i32 @ubifs_warn(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
