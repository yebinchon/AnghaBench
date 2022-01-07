; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/usbip/extr_stub_main.c_add_match_busid.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/usbip/extr_stub_main.c_add_match_busid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@busid_table_lock = common dso_local global i32 0, align 4
@MAX_BUSID = common dso_local global i32 0, align 4
@busid_table = common dso_local global i32** null, align 8
@BUSID_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @add_match_busid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_match_busid(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = call i32 @match_busid(i8* %5)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %40

9:                                                ; preds = %1
  %10 = call i32 @spin_lock(i32* @busid_table_lock)
  store i32 0, i32* %4, align 4
  br label %11

11:                                               ; preds = %35, %9
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @MAX_BUSID, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %38

15:                                               ; preds = %11
  %16 = load i32**, i32*** @busid_table, align 8
  %17 = load i32, i32* %4, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32*, i32** %16, i64 %18
  %20 = load i32*, i32** %19, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %34, label %24

24:                                               ; preds = %15
  %25 = load i32**, i32*** @busid_table, align 8
  %26 = load i32, i32* %4, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32*, i32** %25, i64 %27
  %29 = load i32*, i32** %28, align 8
  %30 = load i8*, i8** %3, align 8
  %31 = load i32, i32* @BUSID_SIZE, align 4
  %32 = call i32 @strncpy(i32* %29, i8* %30, i32 %31)
  %33 = call i32 @spin_unlock(i32* @busid_table_lock)
  store i32 0, i32* %2, align 4
  br label %40

34:                                               ; preds = %15
  br label %35

35:                                               ; preds = %34
  %36 = load i32, i32* %4, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %4, align 4
  br label %11

38:                                               ; preds = %11
  %39 = call i32 @spin_unlock(i32* @busid_table_lock)
  store i32 -1, i32* %2, align 4
  br label %40

40:                                               ; preds = %38, %24, %8
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

declare dso_local i32 @match_busid(i8*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @strncpy(i32*, i8*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
