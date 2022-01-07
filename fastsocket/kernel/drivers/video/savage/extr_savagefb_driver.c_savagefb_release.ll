; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/savage/extr_savagefb_driver.c_savagefb_release.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/savage/extr_savagefb_driver.c_savagefb_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.savagefb_par* }
%struct.savagefb_par = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fb_info*, i32)* @savagefb_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @savagefb_release(%struct.fb_info* %0, i32 %1) #0 {
  %3 = alloca %struct.fb_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.savagefb_par*, align 8
  store %struct.fb_info* %0, %struct.fb_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %7 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %6, i32 0, i32 0
  %8 = load %struct.savagefb_par*, %struct.savagefb_par** %7, align 8
  store %struct.savagefb_par* %8, %struct.savagefb_par** %5, align 8
  %9 = load %struct.savagefb_par*, %struct.savagefb_par** %5, align 8
  %10 = getelementptr inbounds %struct.savagefb_par, %struct.savagefb_par* %9, i32 0, i32 1
  %11 = call i32 @mutex_lock(i32* %10)
  %12 = load %struct.savagefb_par*, %struct.savagefb_par** %5, align 8
  %13 = getelementptr inbounds %struct.savagefb_par, %struct.savagefb_par* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp eq i32 %14, 1
  br i1 %15, label %16, label %24

16:                                               ; preds = %2
  %17 = load %struct.savagefb_par*, %struct.savagefb_par** %5, align 8
  %18 = load %struct.savagefb_par*, %struct.savagefb_par** %5, align 8
  %19 = getelementptr inbounds %struct.savagefb_par, %struct.savagefb_par* %18, i32 0, i32 3
  %20 = call i32 @savage_set_default_par(%struct.savagefb_par* %17, i32* %19)
  %21 = load %struct.savagefb_par*, %struct.savagefb_par** %5, align 8
  %22 = getelementptr inbounds %struct.savagefb_par, %struct.savagefb_par* %21, i32 0, i32 2
  %23 = call i32 @restore_vga(i32* %22)
  br label %24

24:                                               ; preds = %16, %2
  %25 = load %struct.savagefb_par*, %struct.savagefb_par** %5, align 8
  %26 = getelementptr inbounds %struct.savagefb_par, %struct.savagefb_par* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = add nsw i32 %27, -1
  store i32 %28, i32* %26, align 4
  %29 = load %struct.savagefb_par*, %struct.savagefb_par** %5, align 8
  %30 = getelementptr inbounds %struct.savagefb_par, %struct.savagefb_par* %29, i32 0, i32 1
  %31 = call i32 @mutex_unlock(i32* %30)
  ret i32 0
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @savage_set_default_par(%struct.savagefb_par*, i32*) #1

declare dso_local i32 @restore_vga(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
