; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_super.c_ext4_li_info_new.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_super.c_ext4_li_info_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ext4_lazy_init = type { i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EXT4_LAZYINIT_QUIT = common dso_local global i32 0, align 4
@ext4_li_info = common dso_local global %struct.ext4_lazy_init* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @ext4_li_info_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext4_li_info_new() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.ext4_lazy_init*, align 8
  store %struct.ext4_lazy_init* null, %struct.ext4_lazy_init** %2, align 8
  %3 = load i32, i32* @GFP_KERNEL, align 4
  %4 = call %struct.ext4_lazy_init* @kzalloc(i32 12, i32 %3)
  store %struct.ext4_lazy_init* %4, %struct.ext4_lazy_init** %2, align 8
  %5 = load %struct.ext4_lazy_init*, %struct.ext4_lazy_init** %2, align 8
  %6 = icmp ne %struct.ext4_lazy_init* %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %0
  %8 = load i32, i32* @ENOMEM, align 4
  %9 = sub nsw i32 0, %8
  store i32 %9, i32* %1, align 4
  br label %23

10:                                               ; preds = %0
  %11 = load %struct.ext4_lazy_init*, %struct.ext4_lazy_init** %2, align 8
  %12 = getelementptr inbounds %struct.ext4_lazy_init, %struct.ext4_lazy_init* %11, i32 0, i32 2
  %13 = call i32 @INIT_LIST_HEAD(i32* %12)
  %14 = load %struct.ext4_lazy_init*, %struct.ext4_lazy_init** %2, align 8
  %15 = getelementptr inbounds %struct.ext4_lazy_init, %struct.ext4_lazy_init* %14, i32 0, i32 1
  %16 = call i32 @mutex_init(i32* %15)
  %17 = load i32, i32* @EXT4_LAZYINIT_QUIT, align 4
  %18 = load %struct.ext4_lazy_init*, %struct.ext4_lazy_init** %2, align 8
  %19 = getelementptr inbounds %struct.ext4_lazy_init, %struct.ext4_lazy_init* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = or i32 %20, %17
  store i32 %21, i32* %19, align 4
  %22 = load %struct.ext4_lazy_init*, %struct.ext4_lazy_init** %2, align 8
  store %struct.ext4_lazy_init* %22, %struct.ext4_lazy_init** @ext4_li_info, align 8
  store i32 0, i32* %1, align 4
  br label %23

23:                                               ; preds = %10, %7
  %24 = load i32, i32* %1, align 4
  ret i32 %24
}

declare dso_local %struct.ext4_lazy_init* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
