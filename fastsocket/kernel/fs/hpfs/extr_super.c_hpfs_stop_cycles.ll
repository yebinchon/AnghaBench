; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/hpfs/extr_super.c_hpfs_stop_cycles.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/hpfs/extr_super.c_hpfs_stop_cycles.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"cycle detected on key %08x in %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hpfs_stop_cycles(%struct.super_block* %0, i32 %1, i32* %2, i32* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.super_block*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  store %struct.super_block* %0, %struct.super_block** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i8* %4, i8** %11, align 8
  %12 = load i32*, i32** %10, align 8
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %25

15:                                               ; preds = %5
  %16 = load i32*, i32** %9, align 8
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %8, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %25

20:                                               ; preds = %15
  %21 = load %struct.super_block*, %struct.super_block** %7, align 8
  %22 = load i32, i32* %8, align 4
  %23 = load i8*, i8** %11, align 8
  %24 = call i32 @hpfs_error(%struct.super_block* %21, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %22, i8* %23)
  store i32 1, i32* %6, align 4
  br label %40

25:                                               ; preds = %15, %5
  %26 = load i32*, i32** %10, align 8
  %27 = load i32, i32* %26, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %26, align 4
  %29 = load i32*, i32** %10, align 8
  %30 = load i32, i32* %29, align 4
  %31 = sub nsw i32 %30, 1
  %32 = load i32*, i32** %10, align 8
  %33 = load i32, i32* %32, align 4
  %34 = and i32 %31, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %25
  %37 = load i32, i32* %8, align 4
  %38 = load i32*, i32** %9, align 8
  store i32 %37, i32* %38, align 4
  br label %39

39:                                               ; preds = %36, %25
  store i32 0, i32* %6, align 4
  br label %40

40:                                               ; preds = %39, %20
  %41 = load i32, i32* %6, align 4
  ret i32 %41
}

declare dso_local i32 @hpfs_error(%struct.super_block*, i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
