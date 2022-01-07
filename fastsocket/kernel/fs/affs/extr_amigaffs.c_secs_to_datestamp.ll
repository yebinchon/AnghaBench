; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/affs/extr_amigaffs.c_secs_to_datestamp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/affs/extr_amigaffs.c_secs_to_datestamp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.affs_date = type { i8*, i8*, i8* }

@sys_tz = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @secs_to_datestamp(i32 %0, %struct.affs_date* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.affs_date*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.affs_date* %1, %struct.affs_date** %4, align 8
  %7 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sys_tz, i32 0, i32 0), align 4
  %8 = mul nsw i32 %7, 60
  %9 = add nsw i32 %8, 252460800
  %10 = load i32, i32* %3, align 4
  %11 = sub nsw i32 %10, %9
  store i32 %11, i32* %3, align 4
  %12 = load i32, i32* %3, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %15

15:                                               ; preds = %14, %2
  %16 = load i32, i32* %3, align 4
  %17 = sdiv i32 %16, 86400
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = mul nsw i32 %18, 86400
  %20 = load i32, i32* %3, align 4
  %21 = sub nsw i32 %20, %19
  store i32 %21, i32* %3, align 4
  %22 = load i32, i32* %3, align 4
  %23 = sdiv i32 %22, 60
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = mul nsw i32 %24, 60
  %26 = load i32, i32* %3, align 4
  %27 = sub nsw i32 %26, %25
  store i32 %27, i32* %3, align 4
  %28 = load i32, i32* %5, align 4
  %29 = call i8* @cpu_to_be32(i32 %28)
  %30 = load %struct.affs_date*, %struct.affs_date** %4, align 8
  %31 = getelementptr inbounds %struct.affs_date, %struct.affs_date* %30, i32 0, i32 2
  store i8* %29, i8** %31, align 8
  %32 = load i32, i32* %6, align 4
  %33 = call i8* @cpu_to_be32(i32 %32)
  %34 = load %struct.affs_date*, %struct.affs_date** %4, align 8
  %35 = getelementptr inbounds %struct.affs_date, %struct.affs_date* %34, i32 0, i32 1
  store i8* %33, i8** %35, align 8
  %36 = load i32, i32* %3, align 4
  %37 = mul nsw i32 %36, 50
  %38 = call i8* @cpu_to_be32(i32 %37)
  %39 = load %struct.affs_date*, %struct.affs_date** %4, align 8
  %40 = getelementptr inbounds %struct.affs_date, %struct.affs_date* %39, i32 0, i32 0
  store i8* %38, i8** %40, align 8
  ret void
}

declare dso_local i8* @cpu_to_be32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
