; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_direct-io.c_dio_get_page.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_direct-io.c_dio_get_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.dio = type { %struct.page** }
%struct.dio_submit = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.page* (%struct.dio*, %struct.dio_submit*)* @dio_get_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.page* @dio_get_page(%struct.dio* %0, %struct.dio_submit* %1) #0 {
  %3 = alloca %struct.page*, align 8
  %4 = alloca %struct.dio*, align 8
  %5 = alloca %struct.dio_submit*, align 8
  %6 = alloca i32, align 4
  store %struct.dio* %0, %struct.dio** %4, align 8
  store %struct.dio_submit* %1, %struct.dio_submit** %5, align 8
  %7 = load %struct.dio_submit*, %struct.dio_submit** %5, align 8
  %8 = call i64 @dio_pages_present(%struct.dio_submit* %7)
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %25

10:                                               ; preds = %2
  %11 = load %struct.dio*, %struct.dio** %4, align 8
  %12 = load %struct.dio_submit*, %struct.dio_submit** %5, align 8
  %13 = call i32 @dio_refill_pages(%struct.dio* %11, %struct.dio_submit* %12)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %10
  %17 = load i32, i32* %6, align 4
  %18 = call %struct.page* @ERR_PTR(i32 %17)
  store %struct.page* %18, %struct.page** %3, align 8
  br label %36

19:                                               ; preds = %10
  %20 = load %struct.dio_submit*, %struct.dio_submit** %5, align 8
  %21 = call i64 @dio_pages_present(%struct.dio_submit* %20)
  %22 = icmp eq i64 %21, 0
  %23 = zext i1 %22 to i32
  %24 = call i32 @BUG_ON(i32 %23)
  br label %25

25:                                               ; preds = %19, %2
  %26 = load %struct.dio*, %struct.dio** %4, align 8
  %27 = getelementptr inbounds %struct.dio, %struct.dio* %26, i32 0, i32 0
  %28 = load %struct.page**, %struct.page*** %27, align 8
  %29 = load %struct.dio_submit*, %struct.dio_submit** %5, align 8
  %30 = getelementptr inbounds %struct.dio_submit, %struct.dio_submit* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %30, align 4
  %33 = sext i32 %31 to i64
  %34 = getelementptr inbounds %struct.page*, %struct.page** %28, i64 %33
  %35 = load %struct.page*, %struct.page** %34, align 8
  store %struct.page* %35, %struct.page** %3, align 8
  br label %36

36:                                               ; preds = %25, %16
  %37 = load %struct.page*, %struct.page** %3, align 8
  ret %struct.page* %37
}

declare dso_local i64 @dio_pages_present(%struct.dio_submit*) #1

declare dso_local i32 @dio_refill_pages(%struct.dio*, %struct.dio_submit*) #1

declare dso_local %struct.page* @ERR_PTR(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
