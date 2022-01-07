; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/console/extr_mdacon.c_mdacon_cursor.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/console/extr_mdacon.c_mdacon_cursor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vc_data = type { i32, i32, i32 }

@CM_ERASE = common dso_local global i32 0, align 4
@mda_vram_len = common dso_local global i32 0, align 4
@mda_num_columns = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vc_data*, i32)* @mdacon_cursor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mdacon_cursor(%struct.vc_data* %0, i32 %1) #0 {
  %3 = alloca %struct.vc_data*, align 8
  %4 = alloca i32, align 4
  store %struct.vc_data* %0, %struct.vc_data** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @CM_ERASE, align 4
  %7 = icmp eq i32 %5, %6
  br i1 %7, label %8, label %12

8:                                                ; preds = %2
  %9 = load i32, i32* @mda_vram_len, align 4
  %10 = sub nsw i32 %9, 1
  %11 = call i32 @mda_set_cursor(i32 %10)
  br label %41

12:                                               ; preds = %2
  %13 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %14 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @mda_num_columns, align 4
  %17 = mul nsw i32 %15, %16
  %18 = mul nsw i32 %17, 2
  %19 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %20 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = mul nsw i32 %21, 2
  %23 = add nsw i32 %18, %22
  %24 = call i32 @mda_set_cursor(i32 %23)
  %25 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %26 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = and i32 %27, 15
  switch i32 %28, label %39 [
    i32 130, label %29
    i32 131, label %31
    i32 128, label %33
    i32 132, label %35
    i32 129, label %37
  ]

29:                                               ; preds = %12
  %30 = call i32 @mda_set_cursor_size(i32 10, i32 13)
  br label %41

31:                                               ; preds = %12
  %32 = call i32 @mda_set_cursor_size(i32 7, i32 13)
  br label %41

33:                                               ; preds = %12
  %34 = call i32 @mda_set_cursor_size(i32 4, i32 13)
  br label %41

35:                                               ; preds = %12
  %36 = call i32 @mda_set_cursor_size(i32 1, i32 13)
  br label %41

37:                                               ; preds = %12
  %38 = call i32 @mda_set_cursor_size(i32 14, i32 13)
  br label %41

39:                                               ; preds = %12
  %40 = call i32 @mda_set_cursor_size(i32 12, i32 13)
  br label %41

41:                                               ; preds = %8, %39, %37, %35, %33, %31, %29
  ret void
}

declare dso_local i32 @mda_set_cursor(i32) #1

declare dso_local i32 @mda_set_cursor_size(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
