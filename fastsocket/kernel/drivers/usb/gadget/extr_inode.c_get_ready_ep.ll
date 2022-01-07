; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_inode.c_get_ready_ep.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_inode.c_get_ready_ep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ep_data = type { i32, i32 }

@O_NONBLOCK = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"%s: ep %p not available, state %d\0A\00", align 1
@shortname = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.ep_data*)* @get_ready_ep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_ready_ep(i32 %0, %struct.ep_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.ep_data*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.ep_data* %1, %struct.ep_data** %5, align 8
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @O_NONBLOCK, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %32

11:                                               ; preds = %2
  %12 = load %struct.ep_data*, %struct.ep_data** %5, align 8
  %13 = getelementptr inbounds %struct.ep_data, %struct.ep_data* %12, i32 0, i32 1
  %14 = call i64 @down_trylock(i32* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %11
  br label %26

17:                                               ; preds = %11
  %18 = load %struct.ep_data*, %struct.ep_data** %5, align 8
  %19 = getelementptr inbounds %struct.ep_data, %struct.ep_data* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 129
  br i1 %21, label %22, label %29

22:                                               ; preds = %17
  %23 = load %struct.ep_data*, %struct.ep_data** %5, align 8
  %24 = getelementptr inbounds %struct.ep_data, %struct.ep_data* %23, i32 0, i32 1
  %25 = call i32 @up(i32* %24)
  br label %26

26:                                               ; preds = %22, %16
  %27 = load i32, i32* @EAGAIN, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %6, align 4
  br label %30

29:                                               ; preds = %17
  store i32 0, i32* %6, align 4
  br label %30

30:                                               ; preds = %29, %26
  %31 = load i32, i32* %6, align 4
  store i32 %31, i32* %3, align 4
  br label %59

32:                                               ; preds = %2
  %33 = load %struct.ep_data*, %struct.ep_data** %5, align 8
  %34 = getelementptr inbounds %struct.ep_data, %struct.ep_data* %33, i32 0, i32 1
  %35 = call i32 @down_interruptible(i32* %34)
  store i32 %35, i32* %6, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %32
  %38 = load i32, i32* %6, align 4
  store i32 %38, i32* %3, align 4
  br label %59

39:                                               ; preds = %32
  %40 = load %struct.ep_data*, %struct.ep_data** %5, align 8
  %41 = getelementptr inbounds %struct.ep_data, %struct.ep_data* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  switch i32 %42, label %44 [
    i32 129, label %43
    i32 128, label %51
  ]

43:                                               ; preds = %39
  br label %57

44:                                               ; preds = %39
  %45 = load i32, i32* @shortname, align 4
  %46 = load %struct.ep_data*, %struct.ep_data** %5, align 8
  %47 = load %struct.ep_data*, %struct.ep_data** %5, align 8
  %48 = getelementptr inbounds %struct.ep_data, %struct.ep_data* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @pr_debug(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %45, %struct.ep_data* %46, i32 %49)
  br label %51

51:                                               ; preds = %39, %44
  %52 = load i32, i32* @ENODEV, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %6, align 4
  %54 = load %struct.ep_data*, %struct.ep_data** %5, align 8
  %55 = getelementptr inbounds %struct.ep_data, %struct.ep_data* %54, i32 0, i32 1
  %56 = call i32 @up(i32* %55)
  br label %57

57:                                               ; preds = %51, %43
  %58 = load i32, i32* %6, align 4
  store i32 %58, i32* %3, align 4
  br label %59

59:                                               ; preds = %57, %37, %30
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local i64 @down_trylock(i32*) #1

declare dso_local i32 @up(i32*) #1

declare dso_local i32 @down_interruptible(i32*) #1

declare dso_local i32 @pr_debug(i8*, i32, %struct.ep_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
