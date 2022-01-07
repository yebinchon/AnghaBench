; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_super.c_set_anon_super.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_super.c_set_anon_super.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }

@unnamed_dev_ida = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@unnamed_dev_lock = common dso_local global i32 0, align 4
@unnamed_dev_start = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@MAX_ID_MASK = common dso_local global i32 0, align 4
@MINORBITS = common dso_local global i32 0, align 4
@EMFILE = common dso_local global i32 0, align 4
@MINORMASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @set_anon_super(%struct.super_block* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %4, align 8
  store i8* %1, i8** %5, align 8
  br label %8

8:                                                ; preds = %30, %2
  %9 = load i32, i32* @GFP_ATOMIC, align 4
  %10 = call i64 @ida_pre_get(i32* @unnamed_dev_ida, i32 %9)
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %8
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %65

15:                                               ; preds = %8
  %16 = call i32 @spin_lock(i32* @unnamed_dev_lock)
  %17 = load i32, i32* @unnamed_dev_start, align 4
  %18 = call i32 @ida_get_new_above(i32* @unnamed_dev_ida, i32 %17, i32* %6)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %15
  %22 = load i32, i32* %6, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* @unnamed_dev_start, align 4
  br label %24

24:                                               ; preds = %21, %15
  %25 = call i32 @spin_unlock(i32* @unnamed_dev_lock)
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* @EAGAIN, align 4
  %28 = sub nsw i32 0, %27
  %29 = icmp eq i32 %26, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %24
  br label %8

31:                                               ; preds = %24
  %32 = load i32, i32* %7, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %31
  %35 = load i32, i32* @EAGAIN, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %65

37:                                               ; preds = %31
  br label %38

38:                                               ; preds = %37
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* @MAX_ID_MASK, align 4
  %41 = and i32 %39, %40
  %42 = load i32, i32* @MINORBITS, align 4
  %43 = shl i32 1, %42
  %44 = icmp eq i32 %41, %43
  br i1 %44, label %45, label %58

45:                                               ; preds = %38
  %46 = call i32 @spin_lock(i32* @unnamed_dev_lock)
  %47 = load i32, i32* %6, align 4
  %48 = call i32 @ida_remove(i32* @unnamed_dev_ida, i32 %47)
  %49 = load i32, i32* @unnamed_dev_start, align 4
  %50 = load i32, i32* %6, align 4
  %51 = icmp sgt i32 %49, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %45
  %53 = load i32, i32* %6, align 4
  store i32 %53, i32* @unnamed_dev_start, align 4
  br label %54

54:                                               ; preds = %52, %45
  %55 = call i32 @spin_unlock(i32* @unnamed_dev_lock)
  %56 = load i32, i32* @EMFILE, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %3, align 4
  br label %65

58:                                               ; preds = %38
  %59 = load i32, i32* %6, align 4
  %60 = load i32, i32* @MINORMASK, align 4
  %61 = and i32 %59, %60
  %62 = call i32 @MKDEV(i32 0, i32 %61)
  %63 = load %struct.super_block*, %struct.super_block** %4, align 8
  %64 = getelementptr inbounds %struct.super_block, %struct.super_block* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 4
  store i32 0, i32* %3, align 4
  br label %65

65:                                               ; preds = %58, %54, %34, %12
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local i64 @ida_pre_get(i32*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @ida_get_new_above(i32*, i32, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @ida_remove(i32*, i32) #1

declare dso_local i32 @MKDEV(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
