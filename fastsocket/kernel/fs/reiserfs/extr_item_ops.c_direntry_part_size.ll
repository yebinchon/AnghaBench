; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_item_ops.c_direntry_part_size.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_item_ops.c_direntry_part_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.virtual_item = type { %struct.direntry_uarea* }
%struct.direntry_uarea = type { i32, i64* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.virtual_item*, i32, i32)* @direntry_part_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @direntry_part_size(%struct.virtual_item* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.virtual_item*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.direntry_uarea*, align 8
  store %struct.virtual_item* %0, %struct.virtual_item** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %12 = load %struct.virtual_item*, %struct.virtual_item** %4, align 8
  %13 = getelementptr inbounds %struct.virtual_item, %struct.virtual_item* %12, i32 0, i32 0
  %14 = load %struct.direntry_uarea*, %struct.direntry_uarea** %13, align 8
  store %struct.direntry_uarea* %14, %struct.direntry_uarea** %11, align 8
  store i32 0, i32* %8, align 4
  %15 = load i32, i32* %5, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  store i32 0, i32* %9, align 4
  br label %24

18:                                               ; preds = %3
  %19 = load %struct.direntry_uarea*, %struct.direntry_uarea** %11, align 8
  %20 = getelementptr inbounds %struct.direntry_uarea, %struct.direntry_uarea* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* %6, align 4
  %23 = sub nsw i32 %21, %22
  store i32 %23, i32* %9, align 4
  br label %24

24:                                               ; preds = %18, %17
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* %6, align 4
  %27 = add nsw i32 %25, %26
  %28 = sub nsw i32 %27, 1
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %9, align 4
  store i32 %29, i32* %7, align 4
  br label %30

30:                                               ; preds = %46, %24
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* %10, align 4
  %33 = icmp sle i32 %31, %32
  br i1 %33, label %34, label %49

34:                                               ; preds = %30
  %35 = load %struct.direntry_uarea*, %struct.direntry_uarea** %11, align 8
  %36 = getelementptr inbounds %struct.direntry_uarea, %struct.direntry_uarea* %35, i32 0, i32 1
  %37 = load i64*, i64** %36, align 8
  %38 = load i32, i32* %7, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i64, i64* %37, i64 %39
  %41 = load i64, i64* %40, align 8
  %42 = load i32, i32* %8, align 4
  %43 = sext i32 %42 to i64
  %44 = add nsw i64 %43, %41
  %45 = trunc i64 %44 to i32
  store i32 %45, i32* %8, align 4
  br label %46

46:                                               ; preds = %34
  %47 = load i32, i32* %7, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %7, align 4
  br label %30

49:                                               ; preds = %30
  %50 = load i32, i32* %8, align 4
  ret i32 %50
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
