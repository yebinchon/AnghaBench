; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dst/extr_dcore.c_dst_security_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dst/extr_dcore.c_dst_security_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dst_node = type { i32, i32 }
%struct.dst_ctl = type { i32 }
%struct.dst_secure = type { i32, i32 }

@ENODEV = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dst_node*, %struct.dst_ctl*, i8*, i32)* @dst_security_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dst_security_init(%struct.dst_node* %0, %struct.dst_ctl* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.dst_node*, align 8
  %7 = alloca %struct.dst_ctl*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.dst_secure*, align 8
  store %struct.dst_node* %0, %struct.dst_node** %6, align 8
  store %struct.dst_ctl* %1, %struct.dst_ctl** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load %struct.dst_node*, %struct.dst_node** %6, align 8
  %12 = icmp ne %struct.dst_node* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %4
  %14 = load i32, i32* @ENODEV, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %5, align 4
  br label %48

16:                                               ; preds = %4
  %17 = load i32, i32* %9, align 4
  %18 = zext i32 %17 to i64
  %19 = icmp ne i64 %18, 4
  br i1 %19, label %20, label %23

20:                                               ; preds = %16
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %5, align 4
  br label %48

23:                                               ; preds = %16
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call %struct.dst_secure* @kmalloc(i32 8, i32 %24)
  store %struct.dst_secure* %25, %struct.dst_secure** %10, align 8
  %26 = load %struct.dst_secure*, %struct.dst_secure** %10, align 8
  %27 = icmp ne %struct.dst_secure* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %23
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %5, align 4
  br label %48

31:                                               ; preds = %23
  %32 = load %struct.dst_secure*, %struct.dst_secure** %10, align 8
  %33 = getelementptr inbounds %struct.dst_secure, %struct.dst_secure* %32, i32 0, i32 1
  %34 = load i8*, i8** %8, align 8
  %35 = load i32, i32* %9, align 4
  %36 = call i32 @memcpy(i32* %33, i8* %34, i32 %35)
  %37 = load %struct.dst_node*, %struct.dst_node** %6, align 8
  %38 = getelementptr inbounds %struct.dst_node, %struct.dst_node* %37, i32 0, i32 0
  %39 = call i32 @mutex_lock(i32* %38)
  %40 = load %struct.dst_secure*, %struct.dst_secure** %10, align 8
  %41 = getelementptr inbounds %struct.dst_secure, %struct.dst_secure* %40, i32 0, i32 0
  %42 = load %struct.dst_node*, %struct.dst_node** %6, align 8
  %43 = getelementptr inbounds %struct.dst_node, %struct.dst_node* %42, i32 0, i32 1
  %44 = call i32 @list_add_tail(i32* %41, i32* %43)
  %45 = load %struct.dst_node*, %struct.dst_node** %6, align 8
  %46 = getelementptr inbounds %struct.dst_node, %struct.dst_node* %45, i32 0, i32 0
  %47 = call i32 @mutex_unlock(i32* %46)
  store i32 0, i32* %5, align 4
  br label %48

48:                                               ; preds = %31, %28, %20, %13
  %49 = load i32, i32* %5, align 4
  ret i32 %49
}

declare dso_local %struct.dst_secure* @kmalloc(i32, i32) #1

declare dso_local i32 @memcpy(i32*, i8*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
