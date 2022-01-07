; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_vt8623fb.c_vt8623fb_release.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_vt8623fb.c_vt8623fb_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.vt8623fb_info* }
%struct.vt8623fb_info = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fb_info*, i32)* @vt8623fb_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vt8623fb_release(%struct.fb_info* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fb_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.vt8623fb_info*, align 8
  store %struct.fb_info* %0, %struct.fb_info** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %8 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %7, i32 0, i32 0
  %9 = load %struct.vt8623fb_info*, %struct.vt8623fb_info** %8, align 8
  store %struct.vt8623fb_info* %9, %struct.vt8623fb_info** %6, align 8
  %10 = load %struct.vt8623fb_info*, %struct.vt8623fb_info** %6, align 8
  %11 = getelementptr inbounds %struct.vt8623fb_info, %struct.vt8623fb_info* %10, i32 0, i32 1
  %12 = call i32 @mutex_lock(i32* %11)
  %13 = load %struct.vt8623fb_info*, %struct.vt8623fb_info** %6, align 8
  %14 = getelementptr inbounds %struct.vt8623fb_info, %struct.vt8623fb_info* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %2
  %18 = load %struct.vt8623fb_info*, %struct.vt8623fb_info** %6, align 8
  %19 = getelementptr inbounds %struct.vt8623fb_info, %struct.vt8623fb_info* %18, i32 0, i32 1
  %20 = call i32 @mutex_unlock(i32* %19)
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %40

23:                                               ; preds = %2
  %24 = load %struct.vt8623fb_info*, %struct.vt8623fb_info** %6, align 8
  %25 = getelementptr inbounds %struct.vt8623fb_info, %struct.vt8623fb_info* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp eq i32 %26, 1
  br i1 %27, label %28, label %32

28:                                               ; preds = %23
  %29 = load %struct.vt8623fb_info*, %struct.vt8623fb_info** %6, align 8
  %30 = getelementptr inbounds %struct.vt8623fb_info, %struct.vt8623fb_info* %29, i32 0, i32 2
  %31 = call i32 @restore_vga(i32* %30)
  br label %32

32:                                               ; preds = %28, %23
  %33 = load %struct.vt8623fb_info*, %struct.vt8623fb_info** %6, align 8
  %34 = getelementptr inbounds %struct.vt8623fb_info, %struct.vt8623fb_info* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = add nsw i32 %35, -1
  store i32 %36, i32* %34, align 4
  %37 = load %struct.vt8623fb_info*, %struct.vt8623fb_info** %6, align 8
  %38 = getelementptr inbounds %struct.vt8623fb_info, %struct.vt8623fb_info* %37, i32 0, i32 1
  %39 = call i32 @mutex_unlock(i32* %38)
  store i32 0, i32* %3, align 4
  br label %40

40:                                               ; preds = %32, %17
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @restore_vga(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
