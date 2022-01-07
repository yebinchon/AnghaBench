; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/exofs/extr_inode.c_update_read_page.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/exofs/extr_inode.c_update_read_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }

@EFAULT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"recovered read error\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.page*, i32)* @update_read_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @update_read_page(%struct.page* %0, i32 %1) #0 {
  %3 = alloca %struct.page*, align 8
  %4 = alloca i32, align 4
  store %struct.page* %0, %struct.page** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %17

7:                                                ; preds = %2
  %8 = load %struct.page*, %struct.page** %3, align 8
  %9 = call i32 @SetPageUptodate(%struct.page* %8)
  %10 = load %struct.page*, %struct.page** %3, align 8
  %11 = call i64 @PageError(%struct.page* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %7
  %14 = load %struct.page*, %struct.page** %3, align 8
  %15 = call i32 @ClearPageError(%struct.page* %14)
  br label %16

16:                                               ; preds = %13, %7
  br label %39

17:                                               ; preds = %2
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @EFAULT, align 4
  %20 = sub nsw i32 0, %19
  %21 = icmp eq i32 %18, %20
  br i1 %21, label %22, label %35

22:                                               ; preds = %17
  %23 = load %struct.page*, %struct.page** %3, align 8
  %24 = call i32 @clear_highpage(%struct.page* %23)
  %25 = load %struct.page*, %struct.page** %3, align 8
  %26 = call i32 @SetPageUptodate(%struct.page* %25)
  %27 = load %struct.page*, %struct.page** %3, align 8
  %28 = call i64 @PageError(%struct.page* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %22
  %31 = load %struct.page*, %struct.page** %3, align 8
  %32 = call i32 @ClearPageError(%struct.page* %31)
  br label %33

33:                                               ; preds = %30, %22
  store i32 0, i32* %4, align 4
  %34 = call i32 @EXOFS_DBGMSG(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %38

35:                                               ; preds = %17
  %36 = load %struct.page*, %struct.page** %3, align 8
  %37 = call i32 @SetPageError(%struct.page* %36)
  br label %38

38:                                               ; preds = %35, %33
  br label %39

39:                                               ; preds = %38, %16
  %40 = load i32, i32* %4, align 4
  ret i32 %40
}

declare dso_local i32 @SetPageUptodate(%struct.page*) #1

declare dso_local i64 @PageError(%struct.page*) #1

declare dso_local i32 @ClearPageError(%struct.page*) #1

declare dso_local i32 @clear_highpage(%struct.page*) #1

declare dso_local i32 @EXOFS_DBGMSG(i8*) #1

declare dso_local i32 @SetPageError(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
