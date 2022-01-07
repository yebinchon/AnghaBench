; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_compat_ioctl.c_ioctl32_insert_translation.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_compat_ioctl.c_ioctl32_insert_translation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ioctl_trans = type { %struct.ioctl_trans*, i32 }

@ioctl32_hash_table = common dso_local global %struct.ioctl_trans** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ioctl_trans*)* @ioctl32_insert_translation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ioctl32_insert_translation(%struct.ioctl_trans* %0) #0 {
  %2 = alloca %struct.ioctl_trans*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.ioctl_trans*, align 8
  store %struct.ioctl_trans* %0, %struct.ioctl_trans** %2, align 8
  %5 = load %struct.ioctl_trans*, %struct.ioctl_trans** %2, align 8
  %6 = getelementptr inbounds %struct.ioctl_trans, %struct.ioctl_trans* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 8
  %8 = call i64 @ioctl32_hash(i32 %7)
  store i64 %8, i64* %3, align 8
  %9 = load %struct.ioctl_trans**, %struct.ioctl_trans*** @ioctl32_hash_table, align 8
  %10 = load i64, i64* %3, align 8
  %11 = getelementptr inbounds %struct.ioctl_trans*, %struct.ioctl_trans** %9, i64 %10
  %12 = load %struct.ioctl_trans*, %struct.ioctl_trans** %11, align 8
  %13 = icmp ne %struct.ioctl_trans* %12, null
  br i1 %13, label %19, label %14

14:                                               ; preds = %1
  %15 = load %struct.ioctl_trans*, %struct.ioctl_trans** %2, align 8
  %16 = load %struct.ioctl_trans**, %struct.ioctl_trans*** @ioctl32_hash_table, align 8
  %17 = load i64, i64* %3, align 8
  %18 = getelementptr inbounds %struct.ioctl_trans*, %struct.ioctl_trans** %16, i64 %17
  store %struct.ioctl_trans* %15, %struct.ioctl_trans** %18, align 8
  br label %39

19:                                               ; preds = %1
  %20 = load %struct.ioctl_trans**, %struct.ioctl_trans*** @ioctl32_hash_table, align 8
  %21 = load i64, i64* %3, align 8
  %22 = getelementptr inbounds %struct.ioctl_trans*, %struct.ioctl_trans** %20, i64 %21
  %23 = load %struct.ioctl_trans*, %struct.ioctl_trans** %22, align 8
  store %struct.ioctl_trans* %23, %struct.ioctl_trans** %4, align 8
  br label %24

24:                                               ; preds = %29, %19
  %25 = load %struct.ioctl_trans*, %struct.ioctl_trans** %4, align 8
  %26 = getelementptr inbounds %struct.ioctl_trans, %struct.ioctl_trans* %25, i32 0, i32 0
  %27 = load %struct.ioctl_trans*, %struct.ioctl_trans** %26, align 8
  %28 = icmp ne %struct.ioctl_trans* %27, null
  br i1 %28, label %29, label %33

29:                                               ; preds = %24
  %30 = load %struct.ioctl_trans*, %struct.ioctl_trans** %4, align 8
  %31 = getelementptr inbounds %struct.ioctl_trans, %struct.ioctl_trans* %30, i32 0, i32 0
  %32 = load %struct.ioctl_trans*, %struct.ioctl_trans** %31, align 8
  store %struct.ioctl_trans* %32, %struct.ioctl_trans** %4, align 8
  br label %24

33:                                               ; preds = %24
  %34 = load %struct.ioctl_trans*, %struct.ioctl_trans** %2, align 8
  %35 = getelementptr inbounds %struct.ioctl_trans, %struct.ioctl_trans* %34, i32 0, i32 0
  store %struct.ioctl_trans* null, %struct.ioctl_trans** %35, align 8
  %36 = load %struct.ioctl_trans*, %struct.ioctl_trans** %2, align 8
  %37 = load %struct.ioctl_trans*, %struct.ioctl_trans** %4, align 8
  %38 = getelementptr inbounds %struct.ioctl_trans, %struct.ioctl_trans* %37, i32 0, i32 0
  store %struct.ioctl_trans* %36, %struct.ioctl_trans** %38, align 8
  br label %39

39:                                               ; preds = %33, %14
  ret void
}

declare dso_local i64 @ioctl32_hash(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
